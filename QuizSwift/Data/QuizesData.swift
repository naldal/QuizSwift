//
//  DailyData.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/16.
//

import Foundation

var QuizData:[DayQuizes] = [
    DayQuizes(
        description: "variables, simple data types, and string interpolation",
        perDayQuizes: [
            PerDayQuizes(
                dailyQuizesTitle: "Variables",
                quiz: "Which of these lines of code create new variables?",
                quizOptions: nDayQuizes[0],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "Strings and integers",
                quiz: "Which code creates an integer?",
                quizOptions: nDayQuizes[1],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "Doubles and Booleans",
                quiz: "This code creates multi-line strings correctly – true or false?",
                quizOptions: nDayQuizes[2],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "String interpolation",
                quiz: "Which of these lines use string interpolation?",
                quizOptions: nDayQuizes[3],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "Constants",
                quiz: "Which of these lines create constants?",
                quizOptions: nDayQuizes[4],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "Type annotations",
                quiz: "Which of these lines create Doubles?",
                quizOptions: nDayQuizes[5],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "Simple types: Summary",
                quiz: "Which of these lines make variables?",
                quizOptions: nDayQuizes[6],
                correctness: 0
            )
        ]
    ),
    /*
     DayQuizes(description: "arrays, dictionaries, sets, and enums", dayQuizTitles: [
     PerDayQuizes(dailyQuizesTitle: "Arrays"),
     PerDayQuizes(dailyQuizesTitle: "Sets"),
     PerDayQuizes(dailyQuizesTitle: "Tuples"),
     PerDayQuizes(dailyQuizesTitle: "Arrays vs sets vs tuples"),
     PerDayQuizes(dailyQuizesTitle: "Dictionaries"),
     PerDayQuizes(dailyQuizesTitle: "Dictionary default values"),
     PerDayQuizes(dailyQuizesTitle: "Creating empty collections"),
     PerDayQuizes(dailyQuizesTitle: "Enumerations"),
     PerDayQuizes(dailyQuizesTitle: "Enum associated values"),
     PerDayQuizes(dailyQuizesTitle: "Enum raw values"),
     PerDayQuizes(dailyQuizesTitle: "Complex types")
     ]),
     DayQuizes(description: "operators and conditions", dayQuizTitles: [
     PerDayQuizes(dailyQuizesTitle: "Arithmetic operators"),
     PerDayQuizes(dailyQuizesTitle: "Operator overloading"),
     PerDayQuizes(dailyQuizesTitle: "Compound assignment operators"),
     PerDayQuizes(dailyQuizesTitle: "Comparison operators"),
     PerDayQuizes(dailyQuizesTitle: "Conditions"),
     PerDayQuizes(dailyQuizesTitle: "Combining conditions"),
     PerDayQuizes(dailyQuizesTitle: "The ternary operator"),
     PerDayQuizes(dailyQuizesTitle: "Switch statements"),
     PerDayQuizes(dailyQuizesTitle: "Range operators"),
     PerDayQuizes(dailyQuizesTitle: "Operators and conditions")
     ]),
     DayQuizes(description: "loops, loops, and more loops", dayQuizTitles: [
     PerDayQuizes(dailyQuizesTitle: "For loops"),
     PerDayQuizes(dailyQuizesTitle: "While loops"),
     PerDayQuizes(dailyQuizesTitle: "Repeat loops"),
     PerDayQuizes(dailyQuizesTitle: "Exiting loops"),
     PerDayQuizes(dailyQuizesTitle: "Exiting multiple loops"),
     PerDayQuizes(dailyQuizesTitle: "Skipping items"),
     PerDayQuizes(dailyQuizesTitle: "Infinite loops"),
     PerDayQuizes(dailyQuizesTitle: "Looping")
     ]),
     DayQuizes(description: "functions, parameters, and errors", dayQuizTitles: [
     PerDayQuizes(dailyQuizesTitle: "Writing functions"),
     PerDayQuizes(dailyQuizesTitle: "Accepting parameters"),
     PerDayQuizes(dailyQuizesTitle: "Returning values"),
     PerDayQuizes(dailyQuizesTitle: "Parameter labels"),
     PerDayQuizes(dailyQuizesTitle: "Omitting parameter labels"),
     PerDayQuizes(dailyQuizesTitle: "Default parameters"),
     PerDayQuizes(dailyQuizesTitle: "Variadic functions"),
     PerDayQuizes(dailyQuizesTitle: "Running throwing functions"),
     PerDayQuizes(dailyQuizesTitle: "inout parameters"),
     PerDayQuizes(dailyQuizesTitle: "Functions summary"),
     ]),
     DayQuizes(description: "closures part one", dayQuizTitles: [
     PerDayQuizes(dailyQuizesTitle: "Creating basic closures"),
     PerDayQuizes(dailyQuizesTitle: "Accepting parameters in a closure"),
     PerDayQuizes(dailyQuizesTitle: "Returning values from a closure"),
     PerDayQuizes(dailyQuizesTitle: "Closures as parameters"),
     PerDayQuizes(dailyQuizesTitle: "Trailing closure syntax"),
     ]),
     DayQuizes(description: "closures part two", dayQuizTitles: [
     PerDayQuizes(dailyQuizesTitle: "Using closures as parameters when they accept parameters"),
     PerDayQuizes(dailyQuizesTitle: "Using closures as parameters when they return values"),
     PerDayQuizes(dailyQuizesTitle: "Shorthand parameter names"),
     PerDayQuizes(dailyQuizesTitle: "Closures with multiple parameters"),
     PerDayQuizes(dailyQuizesTitle: "Returning closures from functions"),
     PerDayQuizes(dailyQuizesTitle: "Capturing values"),
     PerDayQuizes(dailyQuizesTitle: "Closures summary"),
     ]),
     DayQuizes(description: "structs, properties, and methods", dayQuizTitles: [
     PerDayQuizes(dailyQuizesTitle: "Creating your own structs"),
     PerDayQuizes(dailyQuizesTitle: "Computed properties"),
     PerDayQuizes(dailyQuizesTitle: "Property observers"),
     PerDayQuizes(dailyQuizesTitle: "Methods"),
     PerDayQuizes(dailyQuizesTitle: "Mutating methods"),
     PerDayQuizes(dailyQuizesTitle: "Properties and methods of strings"),
     PerDayQuizes(dailyQuizesTitle: "Properties and methods of arrays"),
     ]),
     DayQuizes(description: "access control, static properties, and laziness", dayQuizTitles: [
     PerDayQuizes(dailyQuizesTitle: "Initializers"),
     PerDayQuizes(dailyQuizesTitle: "Referring to the current instance"),
     PerDayQuizes(dailyQuizesTitle: "Lazy properties"),
     PerDayQuizes(dailyQuizesTitle: "Static properties and methods"),
     PerDayQuizes(dailyQuizesTitle: "Access control"),
     PerDayQuizes(dailyQuizesTitle: "Structs summary"),
     ]),
     DayQuizes(description: "classes and inheritance", dayQuizTitles: [
     PerDayQuizes(dailyQuizesTitle: "Creating your own classes"),
     PerDayQuizes(dailyQuizesTitle: "Class inheritance"),
     PerDayQuizes(dailyQuizesTitle: "Overriding methods"),
     PerDayQuizes(dailyQuizesTitle: "Final classes"),
     PerDayQuizes(dailyQuizesTitle: "Copying objects"),
     PerDayQuizes(dailyQuizesTitle: "Deinitializers"),
     PerDayQuizes(dailyQuizesTitle: "Mutability"),
     PerDayQuizes(dailyQuizesTitle: "Classes summary"),
     ]),
     DayQuizes(description: "protocols, extensions, and protocol extensions", dayQuizTitles: [
     PerDayQuizes(dailyQuizesTitle: "Protocols"),
     PerDayQuizes(dailyQuizesTitle: "Protocol inheritance"),
     PerDayQuizes(dailyQuizesTitle: "Extensions"),
     PerDayQuizes(dailyQuizesTitle: "Protocol extensions"),
     PerDayQuizes(dailyQuizesTitle: "Protocol-oriented programming"),
     ]),
     DayQuizes(description: "optionals, unwrapping, and typecasting", dayQuizTitles: [
     PerDayQuizes(dailyQuizesTitle: "Creating"),
     PerDayQuizes(dailyQuizesTitle: "Creating"),
     PerDayQuizes(dailyQuizesTitle: "Creating"),
     PerDayQuizes(dailyQuizesTitle: "Creating"),
     PerDayQuizes(dailyQuizesTitle: "Protocols and extensions"),
     ])
     */
]

let nDayQuizes:[[DetailQuizes]] = [
    [
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning2, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
//        DetailQuizes(option1: "message = \"Good morning3, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
//        DetailQuizes(option1: "message = \"Good morning4, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
//        DetailQuizes(option1: "message = \"Good morning5, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
//        DetailQuizes(option1: "message = \"Good morning6, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
//        DetailQuizes(option1: "message = \"Good morning7, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
//        DetailQuizes(option1: "message = \"Good morning8, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
    ],
    
    [
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
    ],
    
    [
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
    ],
    
    [
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
    ],
    
    [
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
    ],
    
    [
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
    ],
    
    [
        DetailQuizes(option1: "message = \"Good morning, Dave!\"", option2: "var operatingSystem = \"macOS\"", correctAnswer: 0),
    ],
    
]
