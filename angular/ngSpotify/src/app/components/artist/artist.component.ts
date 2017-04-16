import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from "@angular/router";

import { Artist} from "../../models/artist.model";
import { Album} from "../../models/album.model";

import { SpotifyService } from "../../services/spotify.service";


@Component({
  moduleId: module.id,  
  selector: 'artist',
  templateUrl: `artist.component.html`,
})
export class ArtistComponent implements OnInit  {
   id: string;
   artist: Artist[];
   albums: Album[];

   constructor ( private _spotifyService: SpotifyService, private _route: ActivatedRoute) {

   }

   ngOnInit () {
     console.log ("inside ngOnInit");
     this._route.params
         .map(params => params ['id'])
         .subscribe ((id) => {
           console.log ('testing' + id)
            this._spotifyService.getArtist(id)
                .subscribe (artist => {
                    this.artist =artist;
                })
          });
   }
}
 