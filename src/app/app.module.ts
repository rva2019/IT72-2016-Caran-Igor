import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './component/core/home/home.component';
import { IgracComponent } from './component/igrac/igrac.component';
import { TimComponent } from './component/tim/tim.component';
import { LigaComponent } from './component/liga/liga.component';
import { NacionalnostComponent } from './component/nacionalnost/nacionalnost.component';
import { IgracDialogComponent } from './component/dialog/igrac-dialog/igrac-dialog.component';
import { LigaDialogComponent } from './component/dialog/liga-dialog/liga-dialog.component';
import { NacionalnostDialogComponent } from './component/dialog/nacionalnost-dialog/nacionalnost-dialog.component';
import { TimDialogComponent } from './component/dialog/tim-dialog/tim-dialog.component';
import { AuthorComponent } from './component/core/author/author.component';
import { HelpComponent } from './component/core/help/help.component';

import { MatButtonModule, 
  MatIconModule, 
  MatSidenavModule,
  MatExpansionModule,
  MatListModule,
  MatGridListModule,
  MatOptionModule,
  MatTableModule,
  MatToolbarModule,
  MatSelectModule,
  MatSnackBarModule,
  MatInputModule,
  MatDialogModule,
  MatDatepickerModule,
  MatCheckboxModule,
  MatNativeDateModule,
  MatSortModule,
  MatPaginatorModule} from '@angular/material';
  import { HttpClientModule } from '@angular/common/http';
  import { FormsModule } from '@angular/forms';
  import { RouterModule, Routes } from '@angular/router';
  import { LigaService } from './services/liga.service';
  import { TimService } from './services/tim.service';
  import { IgracService } from './services/igrac.service';
  import { NacionalnostService } from './services/nacionalnost.service';
const Routes = [
  { path: 'nacionalnost', component: NacionalnostComponent },
  { path: 'liga', component: LigaComponent },
  { path: 'tim', component: TimComponent },
  { path: 'igrac', component: IgracComponent },
  { path: 'home', component: HomeComponent },
  { path: 'author', component: AuthorComponent },
  { path: '', redirectTo: '/home', pathMatch: 'full'},
];

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    IgracComponent,
    TimComponent,
    LigaComponent,
    NacionalnostComponent,
    IgracDialogComponent,
    LigaDialogComponent,
    NacionalnostDialogComponent,
    TimDialogComponent,
    AuthorComponent,
    HelpComponent
  ],
  imports: [ 
  BrowserModule,
  BrowserAnimationsModule,
  MatButtonModule,
  MatIconModule,
  MatSidenavModule,
  MatListModule,
  MatGridListModule,
  MatExpansionModule,
  MatTableModule,
  MatToolbarModule,
  MatSelectModule,
  MatOptionModule,
  HttpClientModule,
  MatSnackBarModule,
  MatDialogModule,
  MatInputModule,
  FormsModule,
  MatCheckboxModule,
  MatNativeDateModule,
  MatDatepickerModule,
  MatSortModule,
  MatPaginatorModule,
  RouterModule.forRoot(Routes)
],
entryComponents: [
  NacionalnostDialogComponent,
  LigaDialogComponent,
  TimDialogComponent,
  IgracDialogComponent
],
providers: [NacionalnostService,
            LigaService,
            TimService,
            IgracService],
bootstrap: [AppComponent]
})
export class AppModule { }
