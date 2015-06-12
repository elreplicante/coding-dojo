var Stack = require('../../lib/Stack.js');

describe('Stack', function () {
  it('must be initialized with a size', function () {
    var stack = new Stack(5);

    expect(stack.size()).toEqual(5);
  });
});