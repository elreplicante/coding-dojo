function Node(value) {
  this.value =  function() {
    return value;
  };

  this.next = null;
}

function List() {
  this.firstNode = null;

  this.isEmpty = function() {
    return this.firstNode == null;
  }
}

List.prototype.add = function(value) {
  if (this.isEmpty()){
    this.firstNode = new Node(value);
  } else {
    this.firstNode.next = new Node(value);
  }  
}

List.prototype.find = function(value){
  if(this.firstNode == null) { return null; }
  
  var nodeResult = this.firstNode;
  
  if(this.firstNode.value() !== value) {
    nodeResult = this.firstNode.next;
  }

  return nodeResult;
}

module.exports = List;