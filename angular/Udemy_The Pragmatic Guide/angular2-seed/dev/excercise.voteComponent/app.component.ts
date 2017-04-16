import {Component} from 'angular2/core';
import {VoteComponent} from './vote.component';

@Component({
    selector: 'my-app',
    template: `<h1>{{title}}</h1>
                    <br>
                    <h2> Showing Votes:       </h2>                    
                    <vote>  </vote>
              `,
    directives:[VoteComponent]
})

export class AppComponent { 
    
    title="AngularApp";
    vote={
        voteCount:12,
        myVote:0
    }

}