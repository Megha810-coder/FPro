import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { FileService } from '../../file.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-head-cleark-list',
  templateUrl: './head-cleark-list.component.html',
  styleUrls: ['./head-cleark-list.component.scss']
})
export class HeadClearkListComponent implements OnInit {
 readonly APP_URL='http://localhost:8080/ERP-Company/'   //url
  myresponse:any;
  searchtext;
  constructor(private http:HttpClient,private fileService:FileService, private router:Router) { }

  ngOnInit() {
    this.http.get(this.APP_URL +'file/mng_dy_director').subscribe
    // get method for list
    (result=>{
      this.myresponse=result;
      console.log(this.myresponse)
    },(error)=>{
      console.log(error);
    })
  }
  updateclerk(file){
    this.fileService.setter(file);
    this.router.navigate(['/department/head-clerk-update']);
  }
  viewclerk(file){
    this.fileService.setter(file);
    this.router.navigate(['/department/head-clerk-view'])
  }
}
