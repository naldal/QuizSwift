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
                dailyQuizesTitle: "Variable",
                quiz: "다음중 새로운 변수를 만드는 코드를 고르시오.",
                quizOptions: nDayQuizes[0],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "String & Integer",
                quiz: "다음중 새로운 Integer 변수를 만드는 코드를 고르시오.",
                quizOptions: nDayQuizes[1],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "Double & Boolean",
                quiz: "다음중 새로운 Boolean 변수를 만드는 코드를 고르시오.",
                quizOptions: nDayQuizes[2],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "String interpolation",
                quiz: "다음중 문자열 보간이 적용된 알맞은 코드를 고르시오.",
                quizOptions: nDayQuizes[3],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "Constant",
                quiz: "다음중 새로운 상수를 만드는 코드를 고르시오.",
                quizOptions: nDayQuizes[4],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "Type Annotaion",
                quiz: "다음중 Double 변수를 만드는 코드를 고르시오.",
                quizOptions: nDayQuizes[5],
                correctness: 0
            ),
        ]
    ),
    
//    DayQuizes(
//        description: "arrays, dictionaries, sets, and enums",
//        perDayQuizes: [
//            PerDayQuizes(
//                dailyQuizesTitle: "Arrays",
//
//                quiz: "다음중 새로운 배열를 만드는 코드를 고르시오.",
//                quizOptions: nDayQuizes[6],
//                correctness: 0
//            ),
//            PerDayQuizes(
//                dailyQuizesTitle: "Sets",
//
//                quiz: "다음 코드가 Set을 만드는 코드인지 판별하시오. 참 혹은 거짓입니다.",
//                quizOptions: nDayQuizes[7],
//                correctness: 0
//            ),
//            PerDayQuizes(
//                dailyQuizesTitle: "Tuples",
//
//                quiz: "다음중 Tuple에 대한 설명으로 알맞은 것을 고르시오.",
//                quizOptions: nDayQuizes[8],
//                correctness: 0
//            ),
//            PerDayQuizes(
//                dailyQuizesTitle: "Arrays vs sets vs tuples",
//
//                quiz: "다음중 Array를 사용하기에 가장 적합한 경우를 고르세요.",
//                quizOptions: nDayQuizes[9],
//                correctness: 0
//            ),
//            PerDayQuizes(
//                dailyQuizesTitle: "Dictionaries",
//
//                quiz: "다음중 새로운 Dictionary 변수를 만드는 코드를 고르시오.",
//                quizOptions: nDayQuizes[0],
//                correctness: 0
//            ),
//            PerDayQuizes(
//                dailyQuizesTitle: "Dictionary default values",
//
//                quiz: "다음중 Swift에서 가능한 코드를 고르시오.",
//                quizOptions: nDayQuizes[10],
//                correctness: 0
//            ),
//            PerDayQuizes(
//                dailyQuizesTitle: "다음중 Swift에서 가능한 코드를 고르시오.",
//
//                quiz: "다음중 새로운 변수를 만드는 코드를 고르시오.",
//                quizOptions: nDayQuizes[11],
//                correctness: 0
//            ),
//            PerDayQuizes(
//                dailyQuizesTitle: "Enumerations",
//
//                quiz: "다음중 Enumerations를 사용하기에 가장 적합한 경우를 고르시요.",
//                quizOptions: nDayQuizes[12],
//                correctness: 0
//            ),
//            PerDayQuizes(
//                dailyQuizesTitle: "Enum associated values",
//
//                quiz: "다음중 연관값이 사용된 열거형을 고르시오.",
//                quizOptions: nDayQuizes[0],
//                correctness: 0
//            ),
//            PerDayQuizes(
//                dailyQuizesTitle: "Enum raw values",
//
//                quiz: "다음중 새로운 변수를 만드는 코드를 고르시오.",
//                quizOptions: nDayQuizes[0],
//                correctness: 0
//            ),
//            PerDayQuizes(
//                dailyQuizesTitle: "Complex types",
//
//                quiz: "다음중 새로운 변수를 만드는 코드를 고르시오.",
//                quizOptions: nDayQuizes[0],
//                correctness: 0
//            )
//        ]
//    ),
    /*
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
    // day1
    [
        DetailQuizes(
//            quiz:
            question1: "message = \"Good morning, Dave!\"",
            question2: "var operatingSystem = \"macOS\"",
            describeOption1: "새로운 변수를 만드려면 var 키워드가 필요합니다.",
            describeOption2: "operatingSystem라는 이름의 변수가 생성됐습니다.",
            correctAnswer: 1
        ),
        
        DetailQuizes(question1: "var address = \"321 Park Lane\"", question2: "favoriteColor = \"heliotrope\"", describeOption1: "address라는 이름의 변수가 생성됐습니다.", describeOption2: "새로운 변수를 만드려면 var 키워드가 필요합니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var dinosaur = \"T-Rex\"", question2: "city = \"Paris\"", describeOption1: "dinosaur라는 이름의 변수가 생성됐습니다.", describeOption2: "새로운 변수를 만드려면 var 키워드가 필요합니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var pirate = \"LeChuck\"", question2: "spaceship = \"Nostromo\"", describeOption1: "pirate라는 이름의 변수가 생성됐습니다.", describeOption2: "새로운 변수를 만드려면 var 키워드가 필요합니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "status = \"success\"", question2: "var name = \"Sophie\"", describeOption1: "새로운 변수를 만드려면 var 키워드가 필요합니다.", describeOption2: "status라는 이름의 변수가 생성됐습니다.", correctAnswer: 1),
        
        DetailQuizes(question1: "var str = \"Hello, playground\"", question2: "user = \"twostraws\"", describeOption1: "str라는 이름의 변수가 생성됐습니다.", describeOption2: "새로운 변수를 만드려면 var 키워드가 필요합니다.", correctAnswer: 0),
    ],
    
    [
        DetailQuizes(question1: "var mortgageRemaining = 100_000", question2: "var dogBreed = \"samoyed\"", describeOption1: "mortgageRemaining라는 이름의 Integer 변수가 생성됐습니다.", describeOption2: "\"String\" 변수가 생성됩니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var speed = 88", question2: "var age = \"23\"", describeOption1: "speed라는 이름의 Integer 변수가 생성됐습니다. ", describeOption2: "\"String\" 변수가 생성됩니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var repeatCount = 82", question2: "var selectedWood = \"mahogany\"", describeOption1: "repeatCount라는 이름의 Integer 변수가 생성됐습니다.", describeOption2: "\"String\" 변수가 생성됩니다.", correctAnswer: 1),
        
        DetailQuizes(question1: "var highScore = 328_556", question2: "var sizeInInches = \"27\"", describeOption1: "highScore라는 이름의 Integer 변수가 생성됐습니다.", describeOption2: "\"String\" 변수가 생성됩니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var currentSong = \"Rainbow to the Stars\"", question2: "var power = 9001", describeOption1: "\"String\" 변수가 생성됩니다.", describeOption2: "power라는 이름의 Integer 변수가 생성됐습니다.", correctAnswer: 1),
        
        DetailQuizes(question1: "var winner = \"Miguel\"", question2: "var rating = 5", describeOption1: "\"String\" 변수가 생성됩니다.", describeOption2: "rating라는 이름의 Integer 변수가 생성됐습니다.", correctAnswer: 1),
    ],
   
    [
        DetailQuizes(question1: "var animated = false", question2: "var isLoaded = 1", describeOption1: "animated라는 이름의 Boolean 변수가 생성되었습니다.", describeOption2: "", correctAnswer: 0),
        
        DetailQuizes(question1: "var dressHasPockets = true", question2: "var zoomed = 0", describeOption1: "dressHasPockets라는 이름의 Boolean 변수가 생성되었습니다.", describeOption2: "zoomed는 Integer 변수입니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var isReady = false", question2: "var isEnabled = 0.0", describeOption1: "isReady라는 이름의 Boolean 변수가 생성되었습니다.", describeOption2: "isEnabled는 Double 변수입니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var isEncrypted = true", question2: "var isHidden = \"yes\"", describeOption1: "isEncrypted라는 이름의 Boolean 변수가 생성되었습니다.", describeOption2: "isHidden는 String 변수입니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var sorted = \"false\"", question2: "var isVisible = false", describeOption1: "sorted는 String 변수입니다.", describeOption2: "isVisible라는 이름의 Boolean 변수가 생성되었습니다.", correctAnswer: 1),
        
        DetailQuizes(question1: "var isSaved = \"true\"", question2: "var loggedIn = true", describeOption1: "isSaved는 String 변수입니다.", describeOption2: "loggedIn라는 이름의 Boolean 변수가 생성되었습니다.", correctAnswer: 1),
    
    ],
    
    [
        DetailQuizes(question1: "var name = \"\\(firstName) \\(lastName)\"", question2: "var versionString = \"You're using v(version)\"", describeOption1: "문자열 보간을 사용하여 name 변수를 생성했습니다.", describeOption2: "문자열 보간은 \\()형식을 따릅니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var alert = \"Error: \\(message)!\"", question2: "var message = \"Installation failed: \\{reason}.\"", describeOption1: "문자열 보간을 사용하여 alert 변수를 생성했습니다.", describeOption2: "문자열 보간은 \\()형식을 따릅니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var forecast = \"Today's weather will be \\(weather)\"", question2: "var formattedHeight = \"You are (size)cm\"", describeOption1: "문자열 보간을 사용하여 forecast 변수를 생성했습니다.", describeOption2: "문자열 보간은 \\()형식을 따릅니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var result = \"\\(daysRemaining) days to go\"", question2: "var engine = \"Your engine is (size)cc\"", describeOption1: "문자열 보간을 사용하여 result 변수를 생성했습니다.", describeOption2: "문자열 보간은 \\()형식을 따릅니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var str = \"Hello, playground!\"", question2: "var warning = \"You need to be \\(years) or older\"", describeOption1: "문자열 보간은 \\()형식을 따릅니다.", describeOption2: "문자열 보간을 사용하여 warning 변수를 생성했습니다.", correctAnswer: 1),
        
        DetailQuizes(question1: "var error = \"Error, please try again.\"", question2: "var greeting = \"Hello, \\(name)!\"", describeOption1: "문자열 보간은 \\()형식을 따릅니다.", describeOption2: "문자열 보간을 사용하여 greeting 변수를 생성했습니다.", correctAnswer: 1),
    ],
    
    [
        DetailQuizes(question1: "height = 172.1", question2: "let width = 14.0", describeOption1: "상수 데이터를 만드려면 let 키워드가 필요합니다.", describeOption2: "상수 width가 생성되었습니다.", correctAnswer: 1),
        
        DetailQuizes(question1: "let username = \"twostraws\"", question2: "var status = \"success\"", describeOption1: "상수 username가 생성되었습니다.", describeOption2: "상수 데이터를 만드려면 let 키워드가 필요합니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "let tweeted = false", question2: "var isRead = true", describeOption1: "상수 tweeted가 생성되었습니다.", describeOption2: "상수 데이터를 만드려면 let 키워드가 필요합니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "let password = \"fr0sti3s\"", question2: "var season = \"summer\"", describeOption1: "상수 password가 생성되었습니다.", describeOption2: "상수 데이터를 만드려면 let 키워드가 필요합니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "loggedIn = false", question2: "let enabled = true", describeOption1: "상수 데이터를 만드려면 let 키워드가 필요합니다.", describeOption2: "상수 enabled가 생성되었습니다.", correctAnswer: 1),
        
        DetailQuizes(question1: "let age = 26", question2: "var score = 1000", describeOption1: "상수 age가 생성되었습니다.", describeOption2: "상수 데이터를 만드려면 let 키워드가 필요합니다.", correctAnswer: 0),
    ],
    
    [
        DetailQuizes(question1: "var average = 32.0", question2: "let size = \"14.0\"", describeOption1: "Double 변수 average가 생성됩니다.", describeOption2: "String 변수가 생성됩니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var sales: Double = 100_000", question2: "let city = \"Tokyo\"", describeOption1: "Double 변수 sales가 생성됩니다.", describeOption2: "String 변수가 생성됩니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "let tweeted = false", question2: "var populationMillions = 12.5", describeOption1: "Boolean 변수가 생성됩니다.", describeOption2: "Double 변수 populationMillions가 생성됩니다.", correctAnswer: 1),
        
        DetailQuizes(question1: "var distance: Double = 320", question2: "let mode = \"writing\"", describeOption1: "Double 변수 distance가 생성됩니다.", describeOption2: "String 변수가 생성됩니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var depth = 10.2", question2: "let speed = 50", describeOption1: "Double 변수 depth가 생성됩니다.", describeOption2: "Integer 변수가 생성됩니다.", correctAnswer: 0),
        
        DetailQuizes(question1: "var score: Double = 1000", question2: "let month = 6", describeOption1: "Double 변수 score가 생성됩니다.", describeOption2: "Integer 변수가 생성됩니다.", correctAnswer: 0),
    ],
    
    // day2
    
    
]
