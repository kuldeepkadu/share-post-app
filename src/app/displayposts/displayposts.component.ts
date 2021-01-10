import { Component, OnInit } from '@angular/core';
import { ApiService } from '../api.service';
import { Posts } from '../posts';

@Component({
  selector: 'app-displayposts',
  templateUrl: './displayposts.component.html',
  styleUrls: ['./displayposts.component.css']
})
export class DisplaypostsComponent implements OnInit {

  posts: Posts[];
	constructor(private apiService: ApiService) {
		this.apiService.readPosts().subscribe((posts: Posts[])=>{
		this.posts = posts;
		console.log(this.posts);
	}) }
	ngOnInit()
	{
	}

}
