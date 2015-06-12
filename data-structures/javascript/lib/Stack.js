module.exports = function(size) {
  var maxSize = size;

  return {
    size: function() {
      return maxSize;
    }
  }
};