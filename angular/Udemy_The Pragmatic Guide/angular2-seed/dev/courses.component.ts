import {Component} from 'angular2/core';
import {CourseService} from './course.service';
import {AutoGrowDirective} from './auto-grow.directive';

@Component({
    selector:'courses', // CSS selector for host html element. It creates instance of component in host element when angular sees this selector. 
//    template:'<h2>Courses</h2>'  // HTML to be inserted in DOM
    template:`<h2>Courses</h2>  
        {{title}} <input type="text" autoGrow />
        <ul>
            <li *ngFor="#course of courses"> {{course}}
            </li>
        </ul>`,
    providers: [CourseService],
    directives:[AutoGrowDirective]
})
export class CoursesComponent {
    title: string = 'The title of the courses page';
    courses;    
   constructor(courseService: CourseService) {
        this.courses = courseService.getCourses();    
    }
    
}