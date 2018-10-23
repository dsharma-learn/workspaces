import {ModuleWithProviders} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';

import {HomeComponent} from './components/home/home.component';
import {AboutComponent} from './components/about/about.component';

import {ConfigureLayersComponent} from './components/configureLayers/configureLayers.component';
import {CreateTfrWFComponent} from './components/createTfrWF/createTfrWF.component';
import {RuleAuthoringComponent} from './components/ruleAuthoring/ruleAuthoring.component';
import {ViewTfrWFComponent} from './components/viewTfrWF/viewTfrWF.component';


const appRoutes: Routes = [
  {
      path:'',
      component: HomeComponent
  }, 
  {
      path:'about',
      component: AboutComponent
  }, 
  {
      path:'configureLayers',
      component: ConfigureLayersComponent
  }, 
  {
      path:'ruleAuthoring',
      component: RuleAuthoringComponent
  }, 
  {
      path:'createTfrWF',
      component: CreateTfrWFComponent
  }, 
  {
      path:'viewTfrWF',
      component: ViewTfrWFComponent
  }
];

export const routing:ModuleWithProviders=RouterModule.forRoot(appRoutes);