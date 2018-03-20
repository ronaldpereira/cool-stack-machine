class StackElement {
    element: String;
    nextStackElement: StackElement;

    init (elem: String) : Object {
        element <- elem
    };

    getElement() : String {
        element
    };

    getNextstackElement() : StackElement {
        nextStackElement
    };

    pushToStack(elem: StackElement) : Object {
        nextStackElement <- elem
    };
};

class Stack {
    numberItems: Int;
    head: StackElement;
    tail: StackElement;

    getnumberItems() : Int {
        numberItems
    };

    push(str: String) : Object {{
        n <- n + 1;
    }};

    pop() : String {{
        n <- n - 1;
    }}
};

class Main inherits IO {
    charToIntegerConverter: A2I; -- Gets the A2I library object


   main() : Object {
      out_string("Nothing implemented\n")
   };

};
