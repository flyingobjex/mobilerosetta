import Rx from 'rxjs'
import { Author } from './Model'

export class RxObserverExample {

  constructor(){

    const self = this;

    this.author = new Rx.Subject();
    this.author.subscribe((a = new Author()) => { // add default value to function to check null/undefined
      self.currentName = a.name || 'no name';
      self.currentID = a.id || 999;
    });
  }

  describe() {
    return `Author: ${this.currentName}, ID: ${this.currentID}`
  }
}
