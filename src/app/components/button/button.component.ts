import { Component,Input,Output } from '@angular/core';
import EventEmitter from 'eventemitter3';

@Component({
  selector: 'app-button',
  templateUrl: './button.component.html',
  styleUrls: ['./button.component.css']
})
export class ButtonComponent {
  @Input() text:string = '';
  @Input() color:string = '';
  onClick(){
    console.log("add")
  }
}
