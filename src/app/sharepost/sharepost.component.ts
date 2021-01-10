import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, FormBuilder, Validators, NgForm } from '@angular/forms';
import { first } from 'rxjs/operators';
import { Router } from '@angular/router';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-sharepost',
  templateUrl: './sharepost.component.html',
  styleUrls: ['./sharepost.component.css']
})
export class SharepostComponent implements OnInit {
angForm: FormGroup;
  constructor(private fb: FormBuilder,private dataService: ApiService,private router:Router) {
    this.angForm = this.fb.group({
      title: ['', Validators.required],
      description: ['', Validators.required]
      });
  }

  ngOnInit(): void {
  }
  postdata(angForm1)
  {
  this.dataService.sharethepost(angForm1.value.title,angForm1.value.description)
  .pipe(first())
  .subscribe(
  data => {
  this.router.navigate(['dashboard']);
  },
  
  error => {
  });
  }
  
  get title() { return this.angForm.get('title'); }
  get description() { return this.angForm.get('title'); }
  }
