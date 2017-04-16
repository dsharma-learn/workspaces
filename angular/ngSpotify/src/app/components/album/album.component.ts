import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from "@angular/router";

import { Artist} from "../../models/artist.model";
import { Album} from "../../models/album.model";

import { SpotifyService } from "../../services/spotify.service";


@Component({
  moduleId: module.id,  
  selector: 'album',
  templateUrl: `album.component.html`,
})
export class AlbumComponent implements OnInit  {
   id: string;
   album: Album [];

   constructor ( private _spotifyService: SpotifyService, private _route: ActivatedRoute) {

   }

   ngOnInit () {
     console.log ("inside ngOnInit");
     this._route.params
         .map(params => params ['id'])
         .subscribe ((id) => {

            this._spotifyService.getAlbum(id)
                .subscribe (album => {
                    this.album =album;
                })
          });
   }
}
 