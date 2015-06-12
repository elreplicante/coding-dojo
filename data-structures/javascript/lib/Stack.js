module.exports = function(maxSize) {
  var maxSize = maxSize;
  var currentSize = 0;


  return {
    maxSize: function() {
      return maxSize;
    },

    currentSize: function() {
      return currentSize;
    },

    push: function() {
      if (currentSize == maxSize) {
        throw new Error('Stack overflow');
      };
      currentSize++;
    }
  }
};