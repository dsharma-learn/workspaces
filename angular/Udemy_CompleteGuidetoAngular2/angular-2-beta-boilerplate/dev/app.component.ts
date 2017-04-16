import {Component} from 'angular2/core';
import {MyComponent} from './my-component.component';

@Component({
    selector: 'my-app',
    template: `
        <h1>Angular 2 Boilerplate</h1>
        <p>Hello Angular 2!</p>
        <h2> Now comes my component </h2>
        <my-component> </my-component>
    `,
    directives:[MyComponent]
})
export class AppComponent {

}