import {Component} from 'angular2/core';
import {CoursesComponent} from './courses.component';
import {AuthorsComponent} from './authors.component';
import {FavoriteComponent} from './favorite.component';
//import {AuthorsComponent} from './courses.component'

@Component({
    selector: 'my-app',
    template: `<h1>My First Angular 2 App</h1>
    
                        
                    <br>
                    <br>
                    <h2> Showing Favorite:       </h2>
                    
                    <favorite >  </favorite>

                        
                    <br>
                    <br>
                    <h2> Class Binding       </h2>
                    <button class="btn btn-primary" [class.active]="isActive">Submit PropBinding 1</button> 

                    <h2> Style Binding       </h2>
                    <button 
                            class="btn btn-primary" 
                            [style.backgroundColor]="isActive?'blue': 'gray'">Submit PropBinding 2</button>

                    <br>
                    <br>
                    <h2>Event Binding       </h2>
                     <!--when subscribing, pass it -->      
                    <div (click)="onDivClick($event)">    
                        <button on-click="onClick($event)">Submit EventBinding prefix</button> 
                    </div>       
                            
                    <div (click)="onDivClick($event)">    
                        <button (click)="onClick($event)">Submit EventBinding ())</button> 
                    </div>       
                    
                    <br>
                    <br>
                    <br>                                                
                    <div>   
                        The Normal Way:  
                        <input type=text [value]="title" (input)="title=$event.target.value">
                        <input type=button (click)="title=''" value="Clear"/>
                        Preview: {{title}}  
                    </div>       

                    <br>
                    <br>
                    <br>                                                

                    <h2> Two way binding       </h2>
                    <div>   
                        The Angular2 Way:  
                        <input type=text [(ngModel)]="title1">
                        <input type=button (click)="title1=''" value="Clear"/>
                        Preview: {{title1}}  
                    </div>       

                    <br>
                    <br>                                                

                    <div>   
                        The Angular2 Way: Option 2 
                        <input type=text bindon-ngModel="title2">
                        <input type=button (click)="title2=''" value="Clear"/>
                        Preview: {{title2}}  
                    </div>       

                       
                             
                    <courses> </courses>
                    <authors> </authors>
              `,
    directives:[CoursesComponent,AuthorsComponent,FavoriteComponent]
})

export class AppComponent { 
    
    title="AngularApp";
    title1="AngularApp 1";
    title2="AngularApp 2";
    onClick ($event) {

        $event.stopPropagation(); // This is to stop propagation of events
        console.log ("Clicked", $event);
    }
    
    onDivClick ($event) {
        console.log ("Clicked in div", $event);
    }
    
}