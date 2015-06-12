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

  it('adds an element on push', function () {
    var stack = new Stack(3);
    stack.push('element');

    expect(stack.currentSize()).toEqual(1);
  });

  it('overflows on push if full', function () {
    var stack = new Stack(1);
    
    var pushTillOverflow = function(){
        stack.push('element');
        stack.push('other element');
      };
    
    expect(pushTillOverflow).toThrowError('Stack overflow');
  });

  it('returns the last element on pop', function () {
    var stack = new Stack(5);
    stack.push('element');

    expect(stack.pop()).toEqual('element');
    expect(stack.currentSize()).toEqual(0);
  });

  it('underflows on pop if empty', function () {
    var stack = new Stack(5);
    var popTillUnderflow = function(){ stack.pop(); }

    expect(popTillUnderflow).toThrowError('Stack underflow');
  });
});
