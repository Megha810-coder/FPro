import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { FileService } from '../../file.service';
import { Router } from '@angular/router';
import { ExportService } from '../../export.service';
import { Bill } from '../../bill';

@Component({
  selector: 'app-edu-list',
  templateUrl: './edu-list.component.html',
  styleUrls: ['./edu-list.component.scss']
})
export class EduListComponent implements OnInit {
  readonly APP_URL = 'http://localhost:8080/ERP-Company/';
  myresponse:any;
  searchtext;
  private bill:Bill[];
  constructor( private _http:HttpClient,private fileService:FileService,private router:Router,private exportService:ExportService) { }

  ngOnInit() {
    this._http.get(this.APP_URL + 'file/mng_ass_clear').subscribe(
      result =>{
        this.myresponse= result;
        console.log('this.myresponse',this.myresponse);
            },
            error =>{
              console.log('error ',error);
            }
            
    )
  }
  updateAss_cleark(file){
  this.fileService.setter(file);
  this.router.navigate(['/department/edu-form']);
  }
  viewProposal1(file){
    this.fileService.setter(file);
    this.router.navigate(['/department/edu-view']);
  }
  exportAsXLSX():void {
    this.exportService.exportAsExcelFile(this.myresponse, 'sample');
 }
 save(){
  let bill=new Bill();
  this.fileService.setter(bill);
 this.router.navigate(['/department/edu-form']);
}
}
