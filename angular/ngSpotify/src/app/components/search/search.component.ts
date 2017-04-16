import { Component } from '@angular/core';
import {SpotifyService} from '../../services/spotify.service';
import {Artist } from '../../models/artist.model';


@Component({
  moduleId: module.id,  
  selector: 'search',
  templateUrl: `search.component.html`,
})
export class SearchComponent  { 
  searchStr: String;
  searchRes: Artist[];

  constructor (private _spotifyService: SpotifyService) {

  }
  searchMusic () {
    console.log (this.searchStr);
    this._spotifyService.searchMusic(this.searchStr).subscribe(res => {
      console.log (res);
      this.searchRes=res.artists.items;
     });
  }
}
