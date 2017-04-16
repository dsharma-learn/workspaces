import { Component, Input } from 'angular2/core';

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
})
export class FavoriteComponent {
    @Input() isFavorite=true;
    
    onClick (){
       this.isFavorite = !this.isFavorite;     
    }
}