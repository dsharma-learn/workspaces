    import {Component,Input, Output, EventEmitter} from 'angular2/core';


    @Component({
        selector:'my-property-binding',
        template:` 
        
        <h2> This is a Child Component</h2>                
        <p> Hey my name is {{name}} and I am {{age}} years old !!! </p>
        <h4>My hobbies are</h4>
        <input type='text' (keyup)="onHobbiesChange(hobbies.value)" #hobbies>
        `,
        inputs:['name:myName'],
        outputs:['hobbiesChanged']
    })
    export class PropertyBindingComponent {
        name="deepak";
        @Input('myAge') age=20;
        
        //@Output()
        hobbiesChanged = new EventEmitter<String> ();
        
        onHobbiesChange(hobbies:String) {
            this.hobbiesChanged.emit(hobbies);
        }
    }