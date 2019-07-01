package rva.ctrls;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import rva.jpa.Liga;
import rva.rep.LigaRepository;
@Api(tags = {"Liga CRUD operacije"})
@RestController
public class LigaRestController {
	@Autowired
	private LigaRepository ligaRepository;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@ApiOperation(value = "Vraća kolekciju svih liga iz baze podataka")
	@CrossOrigin
	@GetMapping("liga")
	public Collection<Liga> getLige(){
		return ligaRepository.findAll();
	}
	@ApiOperation(value = "Vraća ligu iz baze podataka čija je id vrednost prosleđena kao path varijabla")
	@CrossOrigin
	@GetMapping("liga/{id}")
	public Liga getLiga(@PathVariable ("id") Integer id){
		return ligaRepository.getOne(id);
	}
	@ApiOperation(value = "Vraća kolekciju svih liga iz baze podataka koji u nazivu sadrže string prosleđen kao path varijabla")
	@CrossOrigin
	@GetMapping("ligaNaziv/{naziv}")
	public Collection<Liga> getLigaByNaziv(@PathVariable ("naziv") String naziv){
		return ligaRepository.findByNazivContainingIgnoreCase(naziv);
	}
	@ApiOperation(value = "Briše ligu iz baze podataka čija je id vrednost prosleđena kao path varijabla")
	@CrossOrigin
	@DeleteMapping("liga/{id}")
	public ResponseEntity<Liga> deleteLiga(@PathVariable ("id") Integer id){
		if(!ligaRepository.existsById(id))
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		jdbcTemplate.execute("delete from tim where liga = "+id);	
		ligaRepository.deleteById(id);
		if(id == 22)
			jdbcTemplate.execute("INSERT INTO \"liga\"(\"id\", \"naziv\", \"oznaka\")VALUES(22, 'Naziv test', 'Oznaka test')");
		return new ResponseEntity<>(HttpStatus.OK);
	}

	// insert
	@CrossOrigin
	@PostMapping("liga")
	@ApiOperation(value = "Upisuje ligu u bazu podataka")
	public ResponseEntity<Liga> insertLiga(@RequestBody Liga liga){
		if(!ligaRepository.existsById(liga.getId())){
			ligaRepository.save(liga);
			return new ResponseEntity<>(HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.CONFLICT);
	}

	// update
	@CrossOrigin
	@PutMapping("liga")
	@ApiOperation(value = "Modifikuje postojeću ligu u bazi podataka")
	public ResponseEntity<Liga> updateLiga(@RequestBody Liga liga){
		if(!ligaRepository.existsById(liga.getId()))
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		ligaRepository.save(liga);
		return new ResponseEntity<>(HttpStatus.OK);
	}
}
