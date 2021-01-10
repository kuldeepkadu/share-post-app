import { Component, OnInit } from '@angular/core';
import { ApiService } from '../api.service';
import { Posts } from '../posts';

@Component({
  selector: 'router-outlet',
  templateUrl: './showpost.component.html',
  styleUrls: ['./showpost.component.css']
})
export class ShowpostComponent implements OnInit {

  posts: Posts[];
	selectedProduct: Posts = { id : null , title: null, description: null}
	constructor(private apiService: ApiService) {
		this.apiService.readPosts().subscribe((posts: Posts[])=>{
		this.posts = posts;
		console.log(this.posts);
	}) }
	ngOnInit()
	{
	}
	


}
