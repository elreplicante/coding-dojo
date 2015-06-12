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
});