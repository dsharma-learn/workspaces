System.register(['angular2/core'], function(exports_1, context_1) {
    "use strict";
    var __moduleName = context_1 && context_1.id;
    var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
        var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
        if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
        else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
        return c > 3 && r && Object.defineProperty(target, key, r), r;
    };
    var __metadata = (this && this.__metadata) || function (k, v) {
        if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };
    var core_1;
    var VoteComponent;
    return {
        setters:[
            function (core_1_1) {
                core_1 = core_1_1;
            }],
        execute: function() {
            VoteComponent = (function () {
                function VoteComponent() {
                    this.voteCount = 0;
                    this.myVote = 0;
                    this.highlightUp = false;
                    this.highlightDown = false;
                }
                VoteComponent.prototype.onClickUp = function () {
                    if (this.myVote < 1) {
                        this.voteCount += 1;
                        this.myVote += 1;
                        this.highlightUp = this.myVote == 1;
                    }
                };
                VoteComponent.prototype.onClickDown = function () {
                    if (this.myVote > -1) {
                        this.voteCount -= 1;
                        this.myVote -= 1;
                        this.highlightDown = this.myVote == -1;
                    }
                };
                __decorate([
                    core_1.Input(), 
                    __metadata('design:type', Object)
                ], VoteComponent.prototype, "voteCount", void 0);
                __decorate([
                    core_1.Input(), 
                    __metadata('design:type', Object)
                ], VoteComponent.prototype, "myVote", void 0);
                VoteComponent = __decorate([
                    core_1.Component({
                        selector: 'vote',
                        template: "\n               <div width=20px>\n                    <i \n                            class=\"glyphicon glyphicon-menu-up\"\n                            [class.highlighted-up]=\"highlightUp\"\n                            (click)=\"onClickUp()\">\n                    </i> \n\n                    <span> {{voteCount}} </span>  \n\n                    <i \n                            class=\"glyphicon glyphicon-menu-down\"\n                            [class.highlighted-down]=\"highlightDown\"\n                            (click)=\"onClickDown()\">\n                    </i> \n\n               </div> \n            ",
                        styles: ["\n            .glyphicon-menu-up{\n                color:#ccc;\n                cursor:pointer;\n            }            \n            .highlighted-up{\n                color: orange;\n            }\n\n            .glyphicon-menu-down{\n                color:#ccc;\n                cursor:pointer;\n            }\n            .highlighted-up{\n                color: orange;\n            }\n            "]
                    }), 
                    __metadata('design:paramtypes', [])
                ], VoteComponent);
                return VoteComponent;
            }());
            exports_1("VoteComponent", VoteComponent);
        }
    }
});
//# sourceMappingURL=vote.component.js.map