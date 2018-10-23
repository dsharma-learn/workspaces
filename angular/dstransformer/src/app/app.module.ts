import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { NavbarComponent} from './components/navbar/navbar.component';
import { AboutComponent} from './components/about/about.component';
import { HomeComponent} from './components/home/home.component';
import { JumbotronComponent} from './components/jumbotron/jumbotron.component';

import {ConfigureLayersComponent} from './components/configureLayers/configureLayers.component';
import {CreateTfrWFComponent} from './components/createTfrWF/createTfrWF.component';
import {RuleAuthoringComponent} from './components/ruleAuthoring/ruleAuthoring.component';
import {ViewTfrWFComponent} from './components/viewTfrWF/viewTfrWF.component';

import {RuleEngineService} from './services/ruleengine.service';

import { routing } from './app.routing';


import { AppComponent } from './app.component';

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent, AboutComponent, HomeComponent, JumbotronComponent,
    ConfigureLayersComponent, CreateTfrWFComponent, RuleAuthoringComponent, ViewTfrWFComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    routing
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
