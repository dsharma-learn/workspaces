import {Component} from 'angular2/core';
import {InputComponent} from './bindings/input.component';
import {ConfirmComponent} from './bindings/confirm.component';

@Component({
    selector: 'my-app',
    template: `
        <div class='container'> 
            <my-input (submitted)="onSubmit($event)" [mySelf]="confirmedMySelf"> </my-input> 
        </div>
        <div class='container'> 
            <my-confirm (confirmed)="onConfirm($event)" [mySelf]="mySelf"> </my-confirm> 
        </div>
    `,
    directives:[InputComponent, ConfirmComponent]
})
export class AppComponent {
    mySelf={name:'', age:''};
    confirmedMySelf={name:'', age:''};
    
    onSubmit (mySelf:{name:string, age:string}) {
       this.mySelf={name:mySelf.name,age:mySelf.age};
       console.log ("(AppComponent.onSubmit) mySelf:",mySelf)
    }


    onConfirm (mySelf:{name:string, age:string}) {
       this.confirmedMySelf={name:mySelf.name,age:mySelf.age};
       console.log ("(AppComponent.onConfirm) mySelf:",mySelf)
    }

}
