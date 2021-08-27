//
//  DailyData.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/16.
//

import Foundation

var QuizData:[DayQuizes] = [
    DayQuizes(
        title: "JAVA",
        description: "Java 언어에 대해서 공부해봅시다.",
        perDayQuizes: [
            PerDayQuizes(
                dailyQuizesTitle: "자바의 특징",
                quizOptions: nDayQuizes[0],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "변수(Variable)",
                quizOptions: nDayQuizes[1],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "연산자(Operator)",
                quizOptions: nDayQuizes[2],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "조건문과 반복문",
                quizOptions: nDayQuizes[3],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "객체지향 프로그래밍1",
                quizOptions: nDayQuizes[4],
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "객체지향 프로그래밍2",
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
    // 자바 - 특징
    [
        DetailQuizes(
            quizTitle: "다음 중 옳은 것을 고르시오",
            question1: "자바는 객체지향 프로그래밍(Object Oriented Programming)이다.",
            question2: nil,
            describeOption1: "자바는 객체 지향 프로그래밍입니다.",
            describeOption2: nil,
            correctAnswer: 0
        ),
        
        DetailQuizes(
            quizTitle: "다음 중 옳은 것을 고르시오",
            question1: "자바의 다형성은 한 객체가 여러가지 타입을 가질수 있는것을 의미한다.",
            question2: "자바의 캡슐화는 공통된 속성, 기능을 묶어 이름을 붙이는 것을 의미한다.",
            describeOption1: "다형성을 사용하면 한 레퍼런스 변수가 다른 형태의 객체를 참조할 수 있습니다.",
            describeOption2: "추상화(Abstraction)에 대한 설명입니다.",
            correctAnswer: 0
        ),
        
        DetailQuizes(
            quizTitle: "다음 중 옳은 것을 고르시오",
            question1: "자바는 운영체제에 독립적인 성질을 가지고 있다.",
            question2: nil,
            describeOption1: "자바는 Java Virtual Machine위에서 돌아가기 때문에 운영체제에 독립적입니다.",
            describeOption2: nil,
            correctAnswer: 0
        ),
        
        DetailQuizes(
            quizTitle: "다음 중 옳은 것을 고르시오",
            question1: "자바는 프로그램 실행시 모든 실행파일이 메모리에 적재되어 실행되는 로딩방식을 채택하고 있다.",
            question2: nil,
            describeOption1: "정적로딩(Static Loading)에 대한 설명입니다. 자바는 동적로딩(Dynamic Loading)을 실행하여 클래스 일부 변경시 다시 컴파일 하지 않아도 되는 이점을 지닙니다.",
            describeOption2: nil,
            correctAnswer: 1
        )
    ],
    
    // 자바 - 변수
    [
        DetailQuizes(
            quizTitle: "다음 중 변수의 명명규칙으로 옳은 것을 고르시오.",
            question1: "변수의 특수문자로 '_' 이나 '$' 만을 허용한다",
            question2: "변수는 대소문자가 구분되며 길이에 제한이 있다",
            describeOption1: "옳은 설명입니다.",
            describeOption2: "자바의 변수는 길이에 제한이 없습니다",
            correctAnswer: 0
        ),
        
        DetailQuizes(
            quizTitle: "다음 중 변수의 기본형에 대한 설명으로 옳은 것을 고르시오",
            question1: "정수형 타입은 byte, short, int, long 이 있다.",
            question2: "실수형 타입은 char, double 이 있다.",
            describeOption1: "옳은 설명입니다.",
            describeOption2: "char은 문자형 타입입니다.",
            correctAnswer: 0
        ),
        
        DetailQuizes(
            quizTitle: "다음 중 자동 형변환에 대한 설명으로 옳은 것을 고르시오",
            question1: "형변환은 두 타입 중 표현범위가 더 좁은 타입으로 형변환 하여 타입을 일치시킨 다음 연산을 수행한다",
            question2: nil,
            describeOption1: "더 넓은 타입으로 형변환 하는것이 우선됩니다.",
            describeOption2: nil,
            correctAnswer: 1
        ),
    ],
    
    // 자바 - 연산자
    [
        DetailQuizes(
            quizTitle: "논리 부정 연산자에 대한 설명으로 옳은 것을 고르시오.",
            question1: "논리부정 연산자는 피연산자가 true이면 그대로 반환한다.",
            question2: "논리 부정 연산자는 '!'으로 표시한다.",
            describeOption1: "피연산자가 true일때 false로, false일때 true로 반환합니다",
            describeOption2: "옳은 설명입니다",
            correctAnswer: 1
        ),
        
        DetailQuizes(
            quizTitle: "비트연산자에 대한 설명으로 옳은 것을 고르시오",
            question1: "& (AND연산자)는 피연산자 양쪽이 모두 1이어야만 1을 결과로 얻는다, 그 외에는 0을 얻는다.",
            question2: "^ (XOR연산자)는 한쪽의 값이 1이면, 1을 결과로 얻는다, 그 외에는 0을 얻는다.",
            describeOption1: "AND연산자에 대한 옳은 설명입니다.",
            describeOption2: "OR연산자에 대한 설명입니다.",
            correctAnswer: 0
        ),
        
        DetailQuizes(
            quizTitle: "삼항 연산자에 대한 설명으로 옳은 것을 고르시오",
            question1: "삼항 연산자를 쓰면 코드의 연산속도가 증가함으로써 메모리 상의 이점을 볼 수 있고 가독성이 좋아진다.",
            question2: nil,
            describeOption1: "삼항연산자는 가독성 측면에서 좋지 않습니다.",
            describeOption2: nil,
            correctAnswer: 1
        ),
    ],
    
    // 자바 - 조건식, 반복식
    [
        DetailQuizes(
            quizTitle: "조건식에 대한 설명으로 옳은 것을 고르시오.",
            question1: "ch=='' || ch=='\\t' || ch=='\\n' \n은 문자 ch가 공백이거나 탭 또는 개행 문자일 때 라는 조건이다.",
            question2: nil,
            describeOption1: "옳은 설명입니다. ''는 공백, '\\t'는 탭, '\\n'는 개행을 의미합니다.",
            describeOption2: nil,
            correctAnswer: 0
        ),
        
        DetailQuizes(
            quizTitle: "조건식에 대한 설명으로 옳은 것을 고르시오",
            question1: "중첩 if문의 경우 중첩의 횟수에는 제한이 없다.",
            question2: nil,
            describeOption1: "중첩 if문은 중첩의 한계가 없습니다.",
            describeOption2: nil,
            correctAnswer: 0
        ),
        
        DetailQuizes(
            quizTitle: "반복문 대한 설명으로 옳은 것을 고르시오",
            question1: "for과 while의 가장 큰 차이는 while문의 경우 조건식을 생략할 수 있다는 것이다.",
            question2: "do-while 문의 경우 조건식을 최소한 한번 수행될 것을 보장한다",
            describeOption1: "while문의 경우 조건식을 생략할 수 없습니다.",
            describeOption2: "do-while은 최소 한번의 조건식을 수행하는것을 보장합니다.",
            correctAnswer: 1
        ),
        
        DetailQuizes(
            quizTitle: "Break에 대한 설명으로 옳은 것을 고르시오",
            question1: "break문은 자신이 포함된 가장 가까운 반복문을 벗어난다.",
            question2: nil,
            describeOption1: "break는 가장 가까운 반복문을 종료하고 흐름을 이어갑니다.",
            describeOption2: nil,
            correctAnswer: 0
        ),
    ],
    
    // 자바 - 객체지향 프로그래밍1
    [
        DetailQuizes(
            quizTitle: "다음 코드가 실행될 수 있는지 판단하시오.",
            question1: """
                public class Animal {
                    String name;

                    public static void main(String[] args) {
                        Animal cat = new Animal;
                        System.out.println(cat.name);
                    }
                }
                """,
            question2: nil,
            describeOption1: "main 함수에서 Animal클래스의 인스턴스를 할당하려면\nAnimal cat = new Animal(); 이 되어야 합니다",
            describeOption2: nil,
            correctAnswer: 1
        ),
        
        DetailQuizes(
            quizTitle: "메소드에 대한 설명으로 옳은 것을 고르시오.",
            question1: "리턴값이 없는 메소드는 없다.",
            question2: "입력값과 리턴값이 없는 메소드는 있다.",
            describeOption1: "리턴값이 없는 메소드도 있습니다.\n이때 리턴부에 void라고 표기합니다.",
            describeOption2: "입력값이 없으면 함수호출시 괄호안에 아무것도 넣지 않습니다.",
            correctAnswer: 1
        ),
        
        DetailQuizes(
            quizTitle: "Call by value에 대한 설명으로 옳은 것을 고르시오.",
            question1: "자바에서는 메소드로 객체를 전달할 경우, 메소드에서 객체의 객체변수(속성) 값을 변경할 수 있게된다.",
            question2: nil,
            describeOption1: "메소드의 입력으로 객체를 전달받는 경우에는 메소드가 입력받은 객체를 그대로 사용하기 때문에 \n메소드가 객체의 속성값을 변경하면 메소드 수행 후 객체의 변경된 속성값이 유지되게 된다.",
            describeOption2: nil,
            correctAnswer: 0
        ),
    ],
    
    // 자바 - 객체지향 프로그래밍2
    [
        DetailQuizes(
            quizTitle: "다음 중 상속에 관한 설명으로 옳은 것을 고르시오",
            question1: "자바에서 클래스 상속을 위해서는 interface 라는 키워드를 사용한다",
            question2: nil,
            describeOption1: "클래스 상속시 extends라는 키워드를 사용합니다",
            describeOption2: nil,
            correctAnswer: 1
        ),
        
        DetailQuizes(
            quizTitle: "다음 코드가 컴파일 될 수 있는지 판단하시오.",
            question1: """
                class A {
                    public void msg() {
                        System.out.println("A message");
                    }
                }

                class B {
                    public void msg() {
                        System.out.println("B message");
                    }
                }

                class C extends A, B {
                    public void static main(String[] args) {
                        C test = new C();
                        test.msg();
                    }
                }
                """,
            question2: nil,
            describeOption1: "클래스 extends로는 다중상속을 지원하지 않습니다. interface로는 다중상속이 가능합니다.",
            describeOption2: nil,
            correctAnswer: 1
        ),
    ],
    
    
]
