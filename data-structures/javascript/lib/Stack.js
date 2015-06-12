module.exports = function(maxSize) {
  var maxSize = maxSize;
  var currentSize = 0;
  var elements = new Array(maxSize);

  function _checkOverflow() {
    if (currentSize == maxSize) throw new Error('Stack overflow');
  }

  function _checkUnderflow() {
    if (currentSize === 0) throw new Error('Stack underflow');
  }

  return {
    maxSize: function() {
      return maxSize;
    },

    currentSize: function() {
      return currentSize;
    },

    push: function(element) {
      _checkOverflow();
      elements[currentSize] = element;
      currentSize++;
    },

    pop: function() {
      _checkUnderflow();
      currentSize--;
      return elements[currentSize]; 
    }
  }
};