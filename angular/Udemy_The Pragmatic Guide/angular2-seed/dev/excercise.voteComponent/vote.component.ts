import { Component, Input } from 'angular2/core';

@Component({
    selector:'vote',
    template:`
               <div width=20px>
                    <i 
                            class="glyphicon glyphicon-menu-up"
                            [class.highlighted-up]="highlightUp"
                            (click)="onClickUp()">
                    </i> 

                    <span> {{voteCount}} </span>  

                    <i 
                            class="glyphicon glyphicon-menu-down"
                            [class.highlighted-down]="highlightDown"
                            (click)="onClickDown()">
                    </i> 

               </div> 
            `,
    styles:[`
            .glyphicon-menu-up{
                color:#ccc;
                cursor:pointer;
            }            
            .highlighted-up{
                color: orange;
            }

            .glyphicon-menu-down{
                color:#ccc;
                cursor:pointer;
            }
            .highlighted-up{
                color: orange;
            }
            `]            
})  
export class VoteComponent {
    @Input() voteCount=0;
    @Input() myVote=0;
    
    highlightUp=false;
    highlightDown=false;
    
    
    onClickUp (){
       if (this.myVote < 1) { 
            this.voteCount+=1; 
            this.myVote+=1; 
            
            this.highlightUp=this.myVote==1;
       }
    }      

    onClickDown (){
       if (this.myVote>-1) { 
            this.voteCount-=1; 
            this.myVote-=1; 
            this.highlightDown=this.myVote==-1;
       }
    }      
 }