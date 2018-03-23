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

    pushNextElementToStack(elem: StackElement) : Object {
        nextStackElement <- elem
    };
};

class Stack inherits IO {
    numberItems: Int;
    top: StackElement;
    bottom: StackElement;
    newElement: StackElement;
    strElement: String;
    currentElement: StackElement;


    init() : Object {
        numberItems <- 0
    };

    push(str: String) : Object {{
        newElement <- new StackElement;
        newElement.init(str);
        if numberItems = 0 then {
            top <- newElement;
        }

        else {
            newElement.pushNextElementToStack(top);
            top <- newElement;
        }
        fi;
        numberItems <- numberItems + 1;
    }};

    pop() : String {{
        strElement <- top.getElement();
        top <- top.getNextstackElement();
        numberItems <- numberItems - 1;
        strElement;
    }};

    printEntireStack() : Object {{
        currentElement <- top;
        
        while not isvoid currentElement loop {
            out_string(currentElement.getElement());
            out_string("\n");
            currentElement <- currentElement.getNextstackElement();
        }
        pool;
    }};
};

class Main inherits IO {
    charIntegerConverter: A2I; -- Gets the A2I library object
    stack: Stack;
    topStackElement1: String;
    topStackElement2: String;
    running: Bool;
    input: String;
    stackCommand: String;
    sum: Int;


    main() : Object {{
        charIntegerConverter <- new A2I;
        stack <- new Stack;
        stack.init();
        running <- true;

        while running loop {
            out_string("> ");
            input <- in_string();

            if input = "x" then {
                running <- false;
            }

            else {
                if input = "e" then {
                    stackCommand <- stack.pop();

                    if stackCommand = "s" then {
                        topStackElement1 <- stack.pop();
                        topStackElement2 <- stack.pop();
                    
                        stack.push(topStackElement1);
                        stack.push(topStackElement2);
                    }
                    
                    else {
                        if stackCommand = "+" then {
                            topStackElement1 <- stack.pop();
                            topStackElement2 <- stack.pop();

                            sum <- charIntegerConverter.a2i(topStackElement1) + charIntegerConverter.a2i(topStackElement2);

                            stack.push(charIntegerConverter.i2a(sum));
                        }
                        else {
                            stack.push(stackCommand);
                        }
                        fi;
                    }
                    fi;
                }

                else {
                    if input = "d" then {
                        stack.printEntireStack();
                    }
                    
                    else {
                        stack.push(input);
                    }
                    fi;
                }
                fi;
            }
            fi;
        }
        pool;
    }};
};
