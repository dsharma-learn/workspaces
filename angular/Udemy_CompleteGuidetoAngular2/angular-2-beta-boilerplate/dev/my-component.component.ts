import {Component, OnInit} from 'angular2/core';
import {TestComponent} from './test.component';

@Component({
    selector:'my-component',
    template:`
        Hi {{name}}. This is my component! 
        <span [class.is-awesome]="inputElement.value==='yes'" 
              [class.is-superawesome]="inputElement.value==='super'"  >
                Angular 2 is awesome.
        </span>
        
        <br> <br>   
        Is it Awesome?  
        <input type="text" #inputElement (keyup)="0">

        <br> <br>   
            
        <button [disabled]="inputElement.value!=='yes'">Only enabled if yes was entered</button>    

        <test> </test>

    `,
    styleUrls: ['src/css/mycomponent.css'],
    directives:[TestComponent]
})
export class MyComponent implements OnInit {
    name:String;
    ngOnInit():any {
        name='Deepak Sharma ';
    }
}