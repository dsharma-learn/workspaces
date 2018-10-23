import { Component, Input } from '@angular/core';
import { Injectable }     from '@angular/core';
import { Http, Response, Headers, RequestOptions } from '@angular/http';
import {Observable} from 'rxjs/Rx';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';


import {RuleEngine} from '../models/ruleEngine.model';

@Injectable()
export class RuleEngineService {

    data: Object;
    
/*    constructor(private http: Http) {
         var obj;
         this.getJSON().subscribe(data => obj=data, error => console.log(error));
    }
*/

    constructor(private http: Http) {
      http.get('./ruleengine.json')
        .map(res => res.json())
        .subscribe(data => this.data = data,
                    err => console.log(err),
                    () => console.log('Completed'));
        console.log (this.data);
    }

    public getJSON() {
         return this.http.get("./ruleengine.json")
                         .map(res  => res.json());

     }
    public getJSONOld(): Observable<any> {
         return this.http.get("./ruleengine.json")
                         .map((res:any) => res.json());

     }
}