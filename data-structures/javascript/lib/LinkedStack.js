function Frame(data) {
  this.data = data;
  this.next = null;
}

module.exports = function() {
  this.head = null;
  this.size = 0;

  this.push = function(item) {
    var newHead = new Frame(item);
    newHead.next = this.head;
    this.head = newHead;
    this.size++;
  }

  this.pop = function() {
    if (this.head === null) {
      throw new Error("Stack underflow");
    } 

    var result = this.head.data;
    this.head = this.head.next;
    this.size--;
    return result;
  }

  this.currentSize = function() {
    return this.size;
  }
};
