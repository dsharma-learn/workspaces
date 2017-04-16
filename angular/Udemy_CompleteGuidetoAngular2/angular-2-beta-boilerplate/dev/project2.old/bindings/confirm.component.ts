import {Component,EventEmitter} from 'angular2/core';

@Component({
    selector:'my-confirm',
    template:`
        <h1>You submitted the following details. Is this correct? </h1>
        
        <p> You are <span> {{mySelf.name}}</span> and you're <span> {{mySelf.age}}</span> years old. Please click on confirm if you have made any change.    
        </p>
        
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
        <button [disabled]="!isValid" (click)="onConfirm()"> Confirm</button>             
    `,
    inputs:['mySelf'],
    outputs:['confirmed']
})
export class ConfirmComponent {
        
     mySelf={name:'', age:''};
     isFilled=false;
     isValid=false;   
     confirmed = new EventEmitter <{name:String, age:string}>();
     
     onKeyup() {
         
        // Check if the data is filled
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
     
     
     onConfirm () {
         this.confirmed.emit(this.mySelf);
     }
}