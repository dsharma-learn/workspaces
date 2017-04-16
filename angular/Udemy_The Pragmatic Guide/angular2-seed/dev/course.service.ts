//import {Services} from 'angular2/core';
 
export class CourseService {
    
    getCourses(): string[] {
        // ideally, there should be a restful service call here to fetch the data 
        return ["Course 1", "Course 2", "Course 3"];
    }
}