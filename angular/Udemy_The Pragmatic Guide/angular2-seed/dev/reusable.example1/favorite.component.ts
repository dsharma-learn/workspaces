import { Component, Input, Output, EventEmitter } from 'angular2/core';

@Component({
    selector:'favorite',
    template:`
               <i 
                    class="glyphicon glyphicon-star"
                    [class.glyphicon-star]="isFavorite"
                    [class.glyphicon-star-empty]="!isFavorite"
                    (click)="onClick()">
               </i> 
            `
//            inputs:['isFavorite:is-favorite'] - Alternative way of defining the input and the name with which it should be known.
//            outputs:['change']   
})
export class FavoriteComponent {
    @Input() isFavorite=false;
    
    @Output() change = new EventEmitter();
//    @Input('is-favorite') isFavorite=true;  -- If another public name for input is needed then pass in to the annotation 
    
    onClick (){
       this.isFavorite = !this.isFavorite;
       // Custom change event is being published here. 
       this.change.emit(null);     // No parameter
       this.change.emit({newValue:this.isFavorite});     // 
    }
}