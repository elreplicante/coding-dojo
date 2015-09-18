var Stack = require('../../lib/LinkedStack.js');

describe('Linked Stack', function () {

  beforeEach(function () {
    stack = new Stack();
  });

  it('is empty when initialized', function () {
    expect(stack.currentSize()).toEqual(0);
  });

  it('adds an element on push', function () {
    stack.push('element');

    expect(stack.currentSize()).toEqual(1);
  });

  it('returns the last element on pop', function () {
    stack.push('element');

    expect(stack.pop()).toEqual('element');
    expect(stack.currentSize()).toEqual(0);
  });

  it('underflows on pop if empty', function () {
    var popTillUnderflow = function(){ stack.pop(); }

    expect(popTillUnderflow).toThrowError('Stack underflow');
  });
});
