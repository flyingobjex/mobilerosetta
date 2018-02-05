import { expect } from 'chai';
import { RxObserverExample } from "../src/RxObserverExample";
import { Author } from '../src/Model';

describe('RxObserver example', function () {

  let example = new RxObserverExample();

  beforeEach(function() {
    example = new RxObserverExample();
  });

  it("given an observable author, when an update is made, the code block should run", function(){
    example.author.subscribe((a) => {
      expect(a.name).to.equal("Next 1");
      expect(a.id).to.equal(3422);
      expect(example.describe()).to.equal("Author: Next 1, ID: 3422")
    });
    example.author.next(new Author("Next 1", 3422));
  });

  it("Handling Undefined- given an author with no name or id, it should return 'default' and 999", function(){
    example.author.next();
    expect(example.describe()).to.equal("Author: default, ID: 999")
  });

  it("Handling Partially undefined - given an author with only id, it should return 'Author: no name'", function(){
    example.author.next(new Author(null, 555));
    expect(example.describe()).to.equal("Author: no name, ID: 555")
  });

  it("when a subscription is updated, the description method should match", function(){
    example.author.next(new Author("Mr Brontosaurus", 9950));
    expect(example.describe()).to.equal("Author: Mr Brontosaurus, ID: 9950");

    example.author.next(new Author("Next 1", 3422));
    expect(example.describe()).to.equal("Author: Next 1, ID: 3422");

    example.author.next(new Author("Next 2", 7788));
    expect(example.describe()).to.equal("Author: Next 2, ID: 7788")
  });

});


