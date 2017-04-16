import {Component} from 'angular2/core';
import {PuzzleComponent} from './puzzle.component';

@Component({
    selector: 'my-app',
    template: `
                <h1> This is My Puzzle Demo </h1>
                <my-puzzle> </my-puzzle>
        `,
    directives:[PuzzleComponent]
})
export class AppComponent {

}