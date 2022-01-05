//
//  CaseTopic.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2022-01-05.
//

import Foundation

class CaseTopic: Topic {
    init() {
        super.init("Switch/Case")
        description = """
Case closed
"""
        bnf[.Swift] = """
<constants> ::= <constant range> | <constant>[,<constant>]*
<case statement> ::= switch <expression> { [case <constants>: <statements>]* [default: <statements> }
"""
        example[.Swift] = """
var number = 5

switch number {
    case 0...2:
        print("Between 0 and 2")
    case 3,5:
        print("3 or 5")
    case 4:
        print("4")
        fallthrough
    case 6:
        print("4 or 6)
    default:
        print("Anything else, default mandatory to cover all cases")
}

var maybe = false

// Stupid example, but anyway
switch maybe {
    case true:
        print("Hell yes")
    case false:
        print("Hell no")
    // No default needed, since all cases are covered
"""
        bnf[.CPlusPlus] = """
<constants> ::= <constant range> | <constant>[,<constant>]*
<case statement> ::= switch <expression> { [case <constants>: <statements>]* [default: <statements>] }
"""
        example[.CPlusPlus] = """
int number = 5;

switch (number)  {
    case 0:
    case 1:
    case 2:
        cout << "Between 0 and 2";
        break;
    case 3:
    case 5:
        cout << "3 or 5";
        break;
    case 4:
        cout << "4";
    case 6:
        cout << "4 or 6";
        break;
    default:
        cout << "Anything else, default is not mandatory";
        break;
}
"""
        bnf[.CSharp] = """
<constants> ::= <constant range> | <constant>[,<constant>]*
<case statement> ::= switch <expression> { [case <constants>: <statements>]* [default: <statements>] }
"""
        example[.CSharp] = """
int number = 5;

switch (number)  {
    case 0:
    case 1:
    case 2:
        Console.WriteLine("Between 0 and 2");
        break;
    case 3:
    case 5:
        Console.WriteLine("3 or 5");
        break;
    case 4:
        Console.WriteLine("4");
    case 6:
        Console.WriteLine("4 or 6);
        break;
    default:
        Console.WriteLine("Anything else, default is not mandatory");
        break;
}
"""
        bnf[.Python] = """
<constants> ::= <constant range> | <constant>[,<constant>]*
<case statement> ::= switch <expression> { [case <constants>: <statements>]* [default: <statements>] }
"""
        example[.Python] = """
number = 5

match number:
    case 0:
    case 1:
    case 2:
        print("Between 0 and 2")
    case 3:
    case 5:
        print("3 or 5");
    case 4:
        print("4");
    case 6:
        print("4 or 6);
        break;
    default:
        print("Anything else, default is not mandatory");
        break;
}
"""
    }
}
