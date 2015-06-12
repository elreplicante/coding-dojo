var Stack = require('../../lib/Stack.js');

describe('Stack', function () {
  it('must be initialized with a maximum size', function () {
    var stack = new Stack(3);

    expect(stack.maxSize()).toEqual(3);
  });

  it('is empty when initialized', function () {
    var stack = new Stack(3);

    expect(stack.currentSize()).toEqual(0);
  });

  it('increments its size on push', function () {
    var stack = new Stack(3);
    stack.push('element');

    expect(stack.currentSize()).toEqual(1);
  });

  it('overflows on push if stack is full', function () {
    var stack = new Stack(1);
    stack.push('element');
    
    expect(
      function(){
        stack.push('other element');
      }
    ).toThrowError('Stack overflow');
  });
});