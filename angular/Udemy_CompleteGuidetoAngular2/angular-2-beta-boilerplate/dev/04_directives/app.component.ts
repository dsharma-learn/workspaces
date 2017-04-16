import {Component} from 'angular2/core';
import {AttributeDirectivesComponent} from './attribute-directives.component';
 
@Component({
    selector: 'my-app',
    template: `
        <h1> Hello World</h1>
        <my-attribute-directives> </my-attribute-directives>
    `,
    directives: [AttributeDirectivesComponent] 
})
export class AppComponent {

}