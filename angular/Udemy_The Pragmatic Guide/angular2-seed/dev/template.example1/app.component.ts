import {Component} from 'angular2/core';
import {FavoriteComponent} from './favorite.component';

@Component({
    selector: 'my-app',
    template: `<h1>{{post.title}}</h1>

                    <h2> Showing Favorite:       </h2>

                    <i class="glyphicon glyphicon-star"> </i> 


                    <favorite [isFavorite]="post.isFavorite" (change)="onFavoriteChange($event)">  </favorite>
              `,
    directives:[FavoriteComponent]
})

export class AppComponent { 
     post= {
         title:'My First Angular 2 App - TemplateURL example',
         isFavorite:true
     }
     
     onFavoriteChange($event) {
         console.log ("Event",$event);
     }
        
}