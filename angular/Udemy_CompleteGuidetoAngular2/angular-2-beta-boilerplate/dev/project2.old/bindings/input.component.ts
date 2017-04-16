import {Component,EventEmitter} from 'angular2/core';

@Component({
    selector:'my-input',
    template:`
        <h1> Your Details Please </h1>
        <div>
            <Label for="name"> You Name:</Label>
            <input type="text" id="name" [(ngModel)]="mySelf.name"  (keyup)="onKeyup()">
        </div>


        <div>
            <Label for="age"> You Age:</Label>
            <input type="text" id="age" [(ngModel)]="mySelf.age" (keyup)="onKeyup()">
        </div>
             
        <br> 
        <div> Filled Out: {{isFilled?'Yes':'No'}} </div>     
        <div> Valid: {{isValid?'Yes':'No'}} </div>
        <br> 
        <button [disabled]="!isValid" (click)="onSubmit()"> Submit</button>             
    `,
    outputs:['submitted']
})
export class InputComponent {
     mySelf={name:'', age:''};
     isFilled=false;
     isValid=false;   
     submitted = new EventEmitter <{name:String, age:string}>();
     
     onKeyup() {
         
        // Check if te data is filled
        if (this.mySelf.age !='' && this.mySelf.name != '') {
             this.isFilled = true;
        } else {
            this.isFilled=false;             
        }
         
        // Check validity          
        if ( this.mySelf.name != '' && /^\d+$/.test (this.mySelf.age)) {
          this.isValid = true;
        } else {
           this.isValid=false;             
        } 
         
     }
     
     
     onSubmit () {
         this.submitted.emit(this.mySelf);
     }
}