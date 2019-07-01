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

import rva.jpa.Igrac;
import rva.jpa.Nacionalnost;
import rva.jpa.Tim;
import rva.rep.IgracRepository;
import rva.rep.NacionalnostRepository;
import rva.rep.TimRepository;
@RestController
public class IgracRestController {
	
	@Autowired
	private IgracRepository igracRepository;
	@Autowired
	private TimRepository timRepository;
	@Autowired
	private NacionalnostRepository nacionalnostRepository;
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@CrossOrigin
	@GetMapping("igrac")
	public Collection<Igrac> getIgraci(){
		return igracRepository.findAll();
	}
	@CrossOrigin
	@GetMapping("igrac/{id}")
	public ResponseEntity<Igrac> getIgrac(@PathVariable("id") Integer id){
		Igrac igrac = igracRepository.getOne(id);
		return new ResponseEntity<Igrac>(igrac, HttpStatus.OK);
	}
	@CrossOrigin
	@GetMapping("igracTimId/{id}")
	public Collection<Igrac> igracTim(@PathVariable("id") int id){
		Tim t = timRepository.getOne(id);
		return igracRepository.findByTim(t);
	}
	@CrossOrigin
	@GetMapping("igracNacionalnostId/{id}")
	public Collection<Igrac> igracNacionalnost(@PathVariable("id") int id){
		Nacionalnost n = nacionalnostRepository.getOne(id);
		return igracRepository.findByNacionalnost(n);
	}
	@CrossOrigin
	@GetMapping("igracIme/{ime}")
	public Collection<Igrac> getIgracIme(@PathVariable("ime") String ime){
		return igracRepository.findByImeContainingIgnoreCase(ime);
	}
	
	@CrossOrigin
	@DeleteMapping ("igrac/{id}")
	public ResponseEntity<Igrac> deleteIgrac(@PathVariable("id") Integer id){
		if(!igracRepository.existsById(id))
			return new ResponseEntity<Igrac>(HttpStatus.NO_CONTENT);
		igracRepository.deleteById(id);
		if(id == 77)
			jdbcTemplate.execute("INSERT INTO \"igrac\"(\"id\", \"broj_reg\", \"datum_rodjenja\", \"ime\", \"prezime\", \"nacionalnost\", \"tim\" )VALUES(77, 'broj test', '01-01-1997', 'ime test', 'prezime test', 1, 1)");
		return new ResponseEntity<>(HttpStatus.OK);
	}

	//insert
	@CrossOrigin
	@PostMapping("igrac")
	public ResponseEntity<Void> insertIgrac(@RequestBody Igrac igrac){
		if(igracRepository.existsById(igrac.getId()))
			return new ResponseEntity<Void>(HttpStatus.CONFLICT);
		igracRepository.save(igrac);
		return new ResponseEntity<Void>(HttpStatus.OK);
	}

	//update
	@CrossOrigin
	@PutMapping("igrac")
	public ResponseEntity<Void> updateIgrac(@RequestBody Igrac igrac){
		if(!igracRepository.existsById(igrac.getId()))
			return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
		igracRepository.save(igrac);
		return new ResponseEntity<Void>(HttpStatus.OK);
	}
}
