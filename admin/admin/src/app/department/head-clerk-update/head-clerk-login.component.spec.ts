import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HeadClerkLoginComponent } from './head-clerk-login.component';

describe('HeadClerkLoginComponent', () => {
  let component: HeadClerkLoginComponent;
  let fixture: ComponentFixture<HeadClerkLoginComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HeadClerkLoginComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HeadClerkLoginComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
