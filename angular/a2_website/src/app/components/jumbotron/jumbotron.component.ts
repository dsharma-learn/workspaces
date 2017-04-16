import { Component } from '@angular/core';

@Component({
  moduleId:module.id,
  selector: 'jumbotron',
  templateUrl: './jumbotron.component.html',
  styleUrls: ['./jumbotron.component.css']
})
export class JumbotronComponent {
    private jbtHeading:string;
    private jbtText:string;
    private jbtBtnText:string;
    private jbtBtnUlr:string;

    constructor () {
        this.jbtHeading="Hello World";
        this.jbtText="This is a simple hero unit, a simple jumbotron style ";
        this.jbtBtnText="Read More";
        this.jbtBtnUlr="/about";
    }
}
