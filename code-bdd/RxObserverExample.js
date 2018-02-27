import Rx from 'rxjs'
import { Section } from './Model'

export class RxObserverExample {

  constructor(){

    const self = this; // capture this for subscribe blocks
    let initialValue = new Section("++", [], []);

    this.details = "H:++, S:++, P:++";
    this.section = new Rx.BehaviorSubject(initialValue);

    this.section.subscribe((it = new Section()) => { // add default value to prevent undefined
      self.details =
          `H:${it.heading || "--"}, ` +                // conditional assignment, elvis symbol
          `P:${it.paragraphs.length || 0}, ` +  // using -1 to distinguish null/undefined
          `S:${it.sections.length || 0}`      // optional method call, optional assignment, elvis symbol
    });
  }

  description() {
    return "Details for section :: " + this.details  // getter shorthand
  }
}
