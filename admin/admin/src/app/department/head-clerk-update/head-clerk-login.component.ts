import { Component, OnInit, ViewChild } from '@angular/core';
import { FileService } from '../../file.service';
import {Bill} from '../../bill';
import {ModalDirective} from 'ngx-bootstrap/modal';

@Component({
  selector: 'app-head-clerk-login',
  templateUrl: './head-clerk-login.component.html',
  styleUrls: ['./head-clerk-login.component.scss']
})
export class HeadClerkLoginComponent implements OnInit {
  private bill:Bill;
  constructor(private fileService:FileService) { }

  ngOnInit() {
    this.bill=this.fileService.getter();
  }
  onClickSubmit(){
    this.fileService.createProposal2(this.bill).subscribe((bill)=>{
      console.log(this.bill);
    },(error)=>{
      console.log(error);
    })

}
@ViewChild('infoModal') public infoModal: ModalDirective;

}