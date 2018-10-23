import { Component } from '@angular/core';

@Component({
  moduleId:module.id,
  selector: 'jumbotron',
  templateUrl: './jumbotron.component.html',
  styleUrls: ['./jumbotron.component.css']
})
export class JumbotronComponent {

    // Layers 
    private jbtHeadingConfigureLayers:string;
    private jbtTextConfigureLayers:string;
    private jbtBtnTextConfigureLayers:string;
    private jbtBtnUrlConfigureLayers:string;

    // RuleAuthoring 
    private jbtHeadingRuleAuthoring:string;
    private jbtTextRuleAuthoring:string;
    private jbtBtnTextRuleAuthoring:string;
    private jbtBtnUrlRuleAuthoring:string;

    // Create Transformation Workflow
    private jbtHeadingCreateTfrWF:string;
    private jbtTextCreateTfrWF:string;
    private jbtBtnTextCreateTfrWF:string;
    private jbtBtnUrlCreateTfrWF:string;

    // View Transformation Workflow
    private jbtHeadingViewTfrWF:string;
    private jbtTextViewTfrWF:string;
    private jbtBtnTextViewTfrWF:string;
    private jbtBtnUrlViewTfrWF:string;

    constructor () {
        this.jbtHeadingConfigureLayers="Configure Layers";
        this.jbtTextConfigureLayers="Configure Layers ";
        this.jbtBtnTextConfigureLayers="Configure";
        this.jbtBtnUrlConfigureLayers="/configureLayers";

        this.jbtHeadingRuleAuthoring="Rules Authoring";
        this.jbtTextRuleAuthoring="Author Rules";
        this.jbtBtnTextRuleAuthoring="Author";
        this.jbtBtnUrlRuleAuthoring="/ruleAuthoring";

        this.jbtHeadingCreateTfrWF="Create Workflow";
        this.jbtTextCreateTfrWF="Create and Define Transformation Workflow";
        this.jbtBtnTextCreateTfrWF="Create";
        this.jbtBtnUrlCreateTfrWF="/createTfrWF";

        this.jbtHeadingViewTfrWF="View Workflow";
        this.jbtTextViewTfrWF="View Existing Transformation Workflows ";
        this.jbtBtnTextViewTfrWF="View";
        this.jbtBtnUrlViewTfrWF="/viewTfrWF";
    }
}
