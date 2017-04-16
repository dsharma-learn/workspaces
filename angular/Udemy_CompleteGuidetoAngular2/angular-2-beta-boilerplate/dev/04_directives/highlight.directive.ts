import {Directive, ElementRef, OnInit} from 'angular2/core';

@Directive({
    selector:'[myHighlight]'
})
export class HighlightDirective implements OnInit {
    private _defaultColor='green';
    
    constructor (private _elRef: ElementRef){}
    
    ngOnInit():any{
        console.log ("reached here");
        console.log (this._elRef.nativeElement);
        this._elRef.nativeElement.style.backgroundColor=this._defaultColor;
        console.log ("color:", this._elRef.nativeElement.style.backgroundColor);
    }
} 