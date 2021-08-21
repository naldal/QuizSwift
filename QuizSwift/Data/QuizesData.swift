//
//  DailyData.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/16.
//

import Foundation

var QuizData:[DayQuizes] = [
    DayQuizes(
        description: "변수와 간단한 데이터 타입들을 공부해봅시다.",
        perDayQuizes: [
            PerDayQuizes(
                dailyQuizesTitle: "변수",
                quiz: "다음중 새로운 변수를 만드는 코드를 고르시오.",
                quizOptions: nDayQuizes[0],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "String과 Integer",
                quiz: "다음중 새로운 Integer 변수를 만드는 코드를 고르시오.",
                quizOptions: nDayQuizes[1],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "문자열 보간",
                quiz: "다음중 문자열 보간이 적용된 알맞은 코드를 고르시오.",
                quizOptions: nDayQuizes[2],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "상수",
                quiz: "다음중 새로운 상수를 만드는 코드를 고르시오.",
                quizOptions: nDayQuizes[3],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "타입 추론",
                quiz: "Which of these lines create Doubles?",
                quizOptions: nDayQuizes[4],
                correctness: 0
            ),
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
        DetailQuizes(question1: "message = \"Good morning, Dave!\"", question2: nil, describeOption1: "This needs to start with var in order to create a new variable.", describeOption2: "This creates a variable called operatingSystem.", correctAnswer: 0),
        DetailQuizes(question1: "var address = \"321 Park Lane\"", question2: "favoriteColor = \"heliotrope\"", describeOption1: "This creates a variable called address.", describeOption2: "This creates a variable called address.", correctAnswer: 0),
        DetailQuizes(question1: "var dinosaur = \"T-Rex\"", question2: "city = \"Paris\"", describeOption1: "This creates a variable called dinosaur.", describeOption2: "This needs to start with var in order to create a new variable.", correctAnswer: 0),
        DetailQuizes(question1: "var pirate = \"LeChuck\"", question2: "spaceship = \"Nostromo\"", describeOption1: "This creates a variable called pirate.", describeOption2: "This needs to start with var in order to create a new variable.", correctAnswer: 0),
        DetailQuizes(question1: "status = \"success\"", question2: "var name = \"Sophie\"", describeOption1: "This needs to start with var in order to create a new variable.", describeOption2: "This creates a variable called name.", correctAnswer: 0),
        DetailQuizes(question1: "var str = \"Hello, playground\"", question2: "user = \"twostraws\"", describeOption1: "This creates a variable called str.", describeOption2: "This needs to start with var in order to create a new variable.", correctAnswer: 0),
    ],
    
    [
        DetailQuizes(question1: "var mortgageRemaining = 100_000", question2: "var dogBreed = \"samoyed\"", describeOption1: "", describeOption2: "", correctAnswer: 0),
        DetailQuizes(question1: "var speed = 88", question2: "var age = \"23\"", describeOption1: "", describeOption2: "", correctAnswer: 0),
        DetailQuizes(question1: "var repeatCount = 82", question2: "var selectedWood = \"mahogany\"", describeOption1: "", describeOption2: "", correctAnswer: 0),
        DetailQuizes(question1: "var highScore = 328_556", question2: "var sizeInInches = \"27\"", describeOption1: "", describeOption2: "", correctAnswer: 0),
        DetailQuizes(question1: "var currentSong = \"Rainbow to the Stars\"", question2: "var power = 9001", describeOption1: "", describeOption2: "", correctAnswer: 0),
        DetailQuizes(question1: "var winner = \"Miguel\"", question2: "var rating = 5", describeOption1: "", describeOption2: "", correctAnswer: 0),
    ],
   
    [
        DetailQuizes(question1: "var name = \"\\(firstName) \\(lastName)\"", question2: "var operatingSystem = \"macOS\"", describeOption1: "", describeOption2: "", correctAnswer: 0),
        DetailQuizes(question1: "message = \"Good morning, Dave!\"", question2: "var operatingSystem = \"macOS\"", describeOption1: "", describeOption2: "", correctAnswer: 0),
    
    ],
    
    [
        DetailQuizes(question1: "message = \"Good morning, Dave!\"", question2: "var operatingSystem = \"macOS\"", describeOption1: "", describeOption2: "", correctAnswer: 0),
    ],
    
    [
        DetailQuizes(question1: "message = \"Good morning, Dave!\"", question2: "var operatingSystem = \"macOS\"", describeOption1: "", describeOption2: "", correctAnswer: 0),
    ],
    
    [
        DetailQuizes(question1: "message = \"Good morning, Dave!\"", question2: "var operatingSystem = \"macOS\"", describeOption1: "", describeOption2: "", correctAnswer: 0),
    ],
    
]
