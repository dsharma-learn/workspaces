import {Component} from 'angular2/core';
import {HighlightDirective} from './highlight.directive'

@Component({
    selector:'my-attribute-directives',
    template:` 
        <div myHighlight>
            Highlight Me
        </div>

        <br><br>
        
        <div myHighlight>
            Highlight Me again
        </div>
    `,
    directives: [HighlightDirective] 
})
export class AttributeDirectivesComponent {
    
} 