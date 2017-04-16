import { Component, Input, Output, EventEmitter } from 'angular2/core';

@Component({
    selector:'favorite',
    templateUrl:'app/template.example1/favorite.template.html',
    styles:[`
            .glyphicon-star{
                color:orange;
            }
            `]
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