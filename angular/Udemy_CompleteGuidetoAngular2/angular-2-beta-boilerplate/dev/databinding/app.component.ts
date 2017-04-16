import {Component} from 'angular2/core';
//import {PuzzleComponent} from './puzzle.component';

@Component({
    selector: 'my-app',
    template: `
                <h3> This is Databinding test code </h3>            
                <h4>Interpolation Examples </h4>
                <br>Example 1: {{name}}
                <br>Example 2: {{testAttributeBinding()}}
                <br>Example 3: {{1==2}}
                <br>Example 4: {{"test"}}
                <br>Example 5: <input type="text" value="{{name}}" class="{{'red'}}">


                <h4>Property Binding Examples </h4>
                <br>Example 1: <input type="text" [value]="name" class="{{'red'}}">
                <br>Example 2: <input type="text" [value]="name" [ngClass]="'red'">
                <br>Example 3: <input type="text" [value]="name" [ngClass]="{red:true}">

                <h4>Event Binding Examples </h4>
                <br>Example 1: <input type="text" [value]="name" [ngClass]="{red:true}" (keyup)="onKeyup(inputElement.value)" #inputElement>
                <p> {{values}}</p>
                
                <br>
                <h4>2-Way Binding Examples </h4>
                <input type="text" [(ngModel)]="name">
                <p>Your Name: {{name}} </p>
        `
})
export class AppComponent {
    name="deepak";
    values='';
    
    onKeyup (inputElement) {
        console.log (inputElement);
        this.values=inputElement;
    }
        
    testAttributeBinding() {
        return 1==1
    }
}