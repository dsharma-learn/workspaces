import { Component } from '@angular/core';

import {RuleEngineService} from '../../services/ruleengine.service';

@Component({
  moduleId:module.id,
  selector: 'ruleAuthoring',
  templateUrl: './ruleAuthoring.component.html',
//  styleUrls: ['./ruleAuthoring.component.css']
})
export class RuleAuthoringComponent {

  constructor (private _ruleengineservice: RuleEngineService) {
    console.log (this._ruleengineservice.getJSON());
  }

  getRules () {
    this._ruleengineservice.getJSON();
    console.log (this._ruleengineservice.getJSON());
  }

}
 