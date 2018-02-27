require('chai').should();
import {expect} from 'chai';
import {RxObserverExample} from "../src/RxObserverExample";
import {Section} from '../src/Model';

describe('RxObserver example', function () {

  let example = new RxObserverExample();

  beforeEach(function () {
    example = new RxObserverExample();
  });

  it("given an observable Section, " +
      "then it should send values to the subscribers " +
      "causing the 'subscribe' code block to run", function () {
    example.details.should.equal("H:++, P:0, S:0");
    // expect(example.details).to.equal("H:++, P:0, S:0");

    let values = "";
    example.section.subscribe((it) => {
      values += it.heading + ","
    });

    example.section.next(new Section("H1", [{"id": 1, "body": ""}], []));
    example.details.should.equal("H:H1, P:1, S:0");

    example.section.next(new Section("H2", [{"id": 2, "body": ""}], []));
    example.description().should.equal("Details for section :: H:H2, P:1, S:0");

    expect(values).to.equal("++,H1,H2,")
  });

});


