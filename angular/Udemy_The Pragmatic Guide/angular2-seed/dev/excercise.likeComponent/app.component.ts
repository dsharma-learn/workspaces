import {Component} from 'angular2/core';
import {LikeComponent} from './like.component';

@Component({
    selector: 'my-app',
    template: `<h1>{{title}}</h1>
                    <br>
                    <h2> Showing likes:       </h2>                    
                    <like [iLike]="tweets.iLike" [count]="tweets.totalLike">  </like>
              `,
    directives:[LikeComponent]
})

export class AppComponent { 
    
    title="AngularApp";
    tweets={
        totalLike:12,
        iLike:false
    }

}