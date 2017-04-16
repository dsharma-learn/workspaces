import {Injectable} from '@angular/core';
import {Http, Headers} from '@angular/http';
 
 import 'rxjs/add/operator/map';

 @Injectable()
 export class GithubService {
     private username:string;
     private client_id='ab079a401233d4300fe1';
     private client_secret='b1e8ffdcbe9b3d05b9fecfb69a8a864df8c53de0';
     
     constructor (private _http:Http) {
         console.log('Github Service Ready ... ');
         this.username='deepusharma';
     }   

     getUser  () {
         return this._http.get('http://api.github.com/users/'+this.username + '?client_id='+this.client_id + '&client_secret='+this.client_secret)
            .map (res => res.json());
     }

     getRepos  () {
         return this._http.get('http://api.github.com/users/'+this.username + '/repos?client_id='+this.client_id + '&client_secret='+this.client_secret)
            .map (res => res.json());
     }

     updateUser (username:string ) {
         this.username=username;
     }



 }