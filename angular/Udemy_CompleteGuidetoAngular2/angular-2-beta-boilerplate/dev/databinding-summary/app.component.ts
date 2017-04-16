import {Component} from 'angular2/core';
import {PropertyBindingComponent} from './property-binding.Component';

@Component({
    selector: 'my-app',
    template: ` 
        <section class="parent">
                <h1> This is a parent Component</h1>
                <h4> Please enter your name </h4> 
                <input type="text" [(ngModel)]="name" >
                <br>
                Name: {{name}}
                <br>
                <section class="child">
                        <my-property-binding [myName]="name" [myAge]="30" (hobbiesChanged)="hobbies = $event"></my-property-binding>
                </section>
                
                <p> My hobbies are {{hobbies}}</p> 
        </section> 
    
        `,
        directives:[PropertyBindingComponent]
})
export class AppComponent {
        name: String;
        hobbies: String;
}