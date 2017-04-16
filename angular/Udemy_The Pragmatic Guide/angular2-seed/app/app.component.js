System.register(['angular2/core', './courses.component', './authors.component', './favorite.component'], function(exports_1, context_1) {
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
    var core_1, courses_component_1, authors_component_1, favorite_component_1;
    var AppComponent;
    return {
        setters:[
            function (core_1_1) {
                core_1 = core_1_1;
            },
            function (courses_component_1_1) {
                courses_component_1 = courses_component_1_1;
            },
            function (authors_component_1_1) {
                authors_component_1 = authors_component_1_1;
            },
            function (favorite_component_1_1) {
                favorite_component_1 = favorite_component_1_1;
            }],
        execute: function() {
            //import {AuthorsComponent} from './courses.component'
            AppComponent = (function () {
                function AppComponent() {
                    this.title = "AngularApp";
                    this.title1 = "AngularApp 1";
                    this.title2 = "AngularApp 2";
                }
                AppComponent.prototype.onClick = function ($event) {
                    $event.stopPropagation(); // This is to stop propagation of events
                    console.log("Clicked", $event);
                };
                AppComponent.prototype.onDivClick = function ($event) {
                    console.log("Clicked in div", $event);
                };
                AppComponent = __decorate([
                    core_1.Component({
                        selector: 'my-app',
                        template: "<h1>My First Angular 2 App</h1>\n    \n                        \n                    <br>\n                    <br>\n                    <h2> Showing Favorite:       </h2>\n                    \n                    <favorite >  </favorite>\n\n                        \n                    <br>\n                    <br>\n                    <h2> Class Binding       </h2>\n                    <button class=\"btn btn-primary\" [class.active]=\"isActive\">Submit PropBinding 1</button> \n\n                    <h2> Style Binding       </h2>\n                    <button \n                            class=\"btn btn-primary\" \n                            [style.backgroundColor]=\"isActive?'blue': 'gray'\">Submit PropBinding 2</button>\n\n                    <br>\n                    <br>\n                    <h2>Event Binding       </h2>\n                     <!--when subscribing, pass it -->      \n                    <div (click)=\"onDivClick($event)\">    \n                        <button on-click=\"onClick($event)\">Submit EventBinding prefix</button> \n                    </div>       \n                            \n                    <div (click)=\"onDivClick($event)\">    \n                        <button (click)=\"onClick($event)\">Submit EventBinding ())</button> \n                    </div>       \n                    \n                    <br>\n                    <br>\n                    <br>                                                \n                    <div>   \n                        The Normal Way:  \n                        <input type=text [value]=\"title\" (input)=\"title=$event.target.value\">\n                        <input type=button (click)=\"title=''\" value=\"Clear\"/>\n                        Preview: {{title}}  \n                    </div>       \n\n                    <br>\n                    <br>\n                    <br>                                                \n\n                    <h2> Two way binding       </h2>\n                    <div>   \n                        The Angular2 Way:  \n                        <input type=text [(ngModel)]=\"title1\">\n                        <input type=button (click)=\"title1=''\" value=\"Clear\"/>\n                        Preview: {{title1}}  \n                    </div>       \n\n                    <br>\n                    <br>                                                \n\n                    <div>   \n                        The Angular2 Way: Option 2 \n                        <input type=text bindon-ngModel=\"title2\">\n                        <input type=button (click)=\"title2=''\" value=\"Clear\"/>\n                        Preview: {{title2}}  \n                    </div>       \n\n                       \n                             \n                    <courses> </courses>\n                    <authors> </authors>\n              ",
                        directives: [courses_component_1.CoursesComponent, authors_component_1.AuthorsComponent, favorite_component_1.FavoriteComponent]
                    }), 
                    __metadata('design:paramtypes', [])
                ], AppComponent);
                return AppComponent;
            }());
            exports_1("AppComponent", AppComponent);
        }
    }
});
//# sourceMappingURL=app.component.js.map