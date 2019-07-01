import { Component, OnInit, Inject } from '@angular/core';
import { Nacionalnost } from 'src/app/models/nacionalnost';
import { MatSnackBar, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';
import { Igrac } from 'src/app/models/igrac';
import { IgracService } from 'src/app/services/igrac.service';
import { NacionalnostService } from 'src/app/services/nacionalnost.service';
@Component({
  selector: 'app-igrac-dialog',
  templateUrl: './igrac-dialog.component.html',
  styleUrls: ['./igrac-dialog.component.css']
})
export class IgracDialogComponent implements OnInit {

  nacionalnost: Nacionalnost[];
  public flag: number;

  constructor(public snackBar: MatSnackBar,
              public dialogRef: MatDialogRef<IgracDialogComponent>,
              @Inject(MAT_DIALOG_DATA) public data: Igrac,
              public igracService: IgracService,
              public nacionalnostService: NacionalnostService) { }

  ngOnInit() {
    this.nacionalnostService.getAllNacionalnosti().subscribe(nacionalnost => 
      this.nacionalnost = nacionalnost
    );
  }

  public add(): void {
    this.data.id = -1; // moze i bez ovoga
    this.igracService.addIgrac(this.data);
    this.snackBar.open("Uspešno dodat igrač", "U redu", {
      duration: 2500
    });
  }

  public update(): void {
    this.igracService.updateIgrac(this.data);
    this.snackBar.open("Uspešno modifikovan igrač", "U redu", {
      duration: 2500
    });
  }

  public delete(): void {
    this.igracService.deleteIgrac(this.data.id);
    this.snackBar.open("Uspešno obrisan igrač", "U redu", {
      duration: 2500
    });
  }

  public cancel(): void {
    this.dialogRef.close();
    this.snackBar.open("Odustali ste", "U redu", {
      duration: 1000
    });
  }

  public compareTo(a, b) {
    return a.id == b.id;
  }
}
