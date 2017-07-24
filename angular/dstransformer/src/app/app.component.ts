import { Component } from '@angular/core';
import { RuleEngineService } from "./services/ruleengine.service";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'], 
  providers: [RuleEngineService],
})
export class AppComponent {
  title = 'app works!';
}
