var List = require('../../lib/List.js');

describe("List", function() {
  it("return null if does not find an element", function(){
    var list = new List();

    expect(list.find("hola")).toBeNull();
  });

  it("return the element if its found", function(){
    var list = new List();
    
    list.add("hola");

    expect(list.find("hola").value()).toEqual("hola");
  });

  xit("return the element if its found", function(){
    var list = new List();

    list.add("hola");
    list.add("adios");
    list.add("my mamma");

    expect(list.find("hola").value()).toEqual("hola");
    expect(list.find("adios").value()).toEqual("adios");
  });

});

/* 
AÑADIR ELEMENTOS
BORRAR
VALORES
RECURSIVO
LISTA DOBLEMENTE ENLAZADA
*/
