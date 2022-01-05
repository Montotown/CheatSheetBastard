//
//  IfTopic.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2022-01-05.
//

import Foundation

class IfTopic: Topic {
    init() {
        super.init("If")
        description = """
what if?
"""
        bnf[.Swift] = "<if statement> ::= if <bool expression> { <statement>* } [else if <bool expression> { <statement>* }]* [else { <statement>* }]"
        example[.Swift] = """
var number = 5

if number == 3 {
    print("Always brackets, even if only one line of code")
}

if number > 5 {
    print("brackets, hell yeah!")
    print("Many lines")
}

if number == 42 {
    print("The answer")
} else {
    print("Not the answer")
}

if number == 313 {
    print("Donald Duck's registration number")
} else if number > 313 {
    print("Too big!")
} else {
    print("Too small!")
}
"""

        bnf[.CSharp] = "<if statement> ::= if (<bool expression>) <statement> [else if (<bool expression>) <statement>]* [else <statement>]"
        example[.CSharp] = """
int number = 5;

if (number == 3)
    Console.WriteLine("no brackets, one line of code");

if (number > 5) {
    Console.WriteLine("brackets, hell yeah!");
    Console.WriteLine("Many lines");
}

if (number == 42)
    Console.WriteLine("The answer");
else
    Console.WriteLine("Not the answer");

if (number == 313)
    Console.WriteLine("Donald Duck's registration number");
else if (number > 313)
    Console.WriteLine("Too big!");
else
    Console.WriteLine("Too small!");
"""
        bnf[.CPlusPlus] = "<if statement> ::= if (<bool expression>) <statement> [else if (<bool expression>) <statement>]* [else <statement>]"
        example[.CPlusPlus] = """
int number = 5;

if (number == 3)
    cout << "no brackets, one line of code";

if (number > 5) {
    cout << "brackets, hell yeah!";
    cout << "Many lines";
}

if (number == 42)
    cout << "The answer";
else
    cout << "Not the answer";

if (number == 313)
    cout << "Donald Duck's registration number";
else if (number > 313)
    cout << "Too big!";
else
    cout << "Too small!";
"""
        bnf[.Python] = "<if statement> ::= if <bool expression> : <statement> [elif <bool expression> : <statement>]* [else : <statement>]"
        example[.Python] = """
number = 5

if number > 5 :
    print("Indented line, hell yeah!")
    print("Another indented line")

if number == 42 :
    print("The answer")
else :
    print("Not the answer")

if number == 313 :
    print("Donald Duck's registration number")
elif number > 313 :
    print("Too big!")
else :
    print("Too small!")
"""
    }
}
