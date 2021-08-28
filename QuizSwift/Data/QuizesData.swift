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
        description: "Java에 대해서 공부해봅시다.",
        perDayQuizes: [
            PerDayQuizes(
                dailyQuizesTitle: "자바의 특징",
                quizOptions: nDayQuizes["Java_feature"]!,
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "변수(Variable)",
                quizOptions: nDayQuizes["Java_variables"]!,
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "연산자(Operator)",
                quizOptions: nDayQuizes["Java_operator"]!,
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "조건문과 반복문",
                quizOptions: nDayQuizes["Java_loop"]!,
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "객체지향 프로그래밍1",
                quizOptions: nDayQuizes["Java_oop1"]!,
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "객체지향 프로그래밍2",
                quizOptions: nDayQuizes["Java_oop2"]!,
                correctness: 0
            ),
        ]
    ),
    
    DayQuizes(
        title: "Python",
        description: "Python을 공부해봅시다.",
        perDayQuizes: [
            PerDayQuizes(
                dailyQuizesTitle: "파이썬의 특징",
                quizOptions: nDayQuizes["Python_feature"]!,
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "자료형1",
                quizOptions: nDayQuizes["Python_variable1"]!,
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "자료형2",
                quizOptions: nDayQuizes["Python_variable2"]!,
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "제어문",
                quizOptions: nDayQuizes["Python_condition"]!,
                correctness: 0
            ),
            PerDayQuizes(
                dailyQuizesTitle: "함수",
                quizOptions: nDayQuizes["Python_funciton"]!,
                correctness: 0
            ),
        ]
    ),
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

let nDayQuizes:[String:[DetailQuizes]] = [
    
    // 자바 - 특징
    "Java_feature":
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
    "Java_variables":
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
    "Java_operator":
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
    "Java_loop":
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
    "Java_oop1":
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
    "Java_oop2":
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
    
    
    // 파이썬 - 특징
    "Python_feature":
    [
        DetailQuizes(
            quizTitle: "다음 중 파이썬의 특징으로 옳은 것을 고르시오",
            question1: "파이썬은 컴파일 과정이 필요하지 않다.",
            question2: nil,
            describeOption1: "파이썬은 컴파일 과정이 필요하지 않아 실행결과를 바로 확인하고 수정할 수 있습니다.",
            describeOption2: nil,
            correctAnswer: 0
        ),
        
        DetailQuizes(
            quizTitle: "다음 중 파이썬의 특징으로 옳은 것을 고르시오.",
            question1: "파이썬은 동적 타입 언어이므로 변수의 자료형을 지정하지 않고 단순히 선언하는 것만으로 값을 지정할 수 있다.",
            question2: nil,
            describeOption1: "파이썬은 동적 타입 언어이므로 자료형 변환 시 번거로운 과정을 거치지 않아도 된다는 장점도 있지만,\n코드 실행도중 예상하지 못한 타입으로 인한 에러가 발생할 수도 있습니다.",
            describeOption2: nil,
            correctAnswer: 0
        ),
        
        DetailQuizes(
            quizTitle: "다음 중 파이썬의 특징으로 옳은 것을 고르시오",
            question1: "파이썬은 플랫폼 독립적(Platform-independent)이다.",
            question2: nil,
            describeOption1: "파이썬은 리눅스, 유닉스, 윈도우즈, 맥 등의 대부분의 운영체제에서 모두 동작가능합니다.",
            describeOption2: nil,
            correctAnswer: 0
        ),
    ],
    
    // 파이썬 - 자료형1
    "Python_variable1":
    [
        DetailQuizes(
            quizTitle : "문자열 자료형에 대한 설명으로 옳은 것을 고르시오",
            question1 : "큰따옴표 두개(\"\")를 연속으로 써서 양쪽을 둘러싸도 문자열을 만들 수가 있다",
            question2: nil,
            describeOption1: "문자열은 따옴표 하나 혹은 연속해서 3개를 사용하여 양쪽을 둘러싸는 것만 가능하다.",
            describeOption2: nil,
            correctAnswer: 1
        ),

        DetailQuizes(
            quizTitle : "리스트 자료형에 대한 설명으로 옳은 것을 고르시오",
            question1 : "a = [1 , 3, 5, 6] 일때 a[0]+a[2] = 4이다.",
            question2: "b = [1, 5, 7, 9 ] 일때 b[-1] = 7 이다.",
            describeOption1: " 옳은 설명입니다 ",
            describeOption2: "  b[-1] 은 리스트 b의 마지막 요솟값이므로 9이다. ",
            correctAnswer: 0
        ),

        DetailQuizes(
            quizTitle : "집합 자료형에 대한 설명으로 옳은 것을 고르시오 ",
            question1 : "set은 중복을 허용하나 순서가 없습니다.",
            question2: nil,
            describeOption1: " set 자료형은 중복을 허용하지 않습니다.",
            describeOption2: nil,
            correctAnswer: 1
        )
    ],
    
    // 파이썬 - 자료형2
    "Python_variable2":
    [
        DetailQuizes(
            quizTitle : "튜플에 대한 설명으로 옳은 것을 고르시오",
            question1 : "튜플은 요솟값을 지우거나 변경하기 쉬운 성질을 지니고 있다.",
            question2: nil,
            describeOption1: "튜플은 요솟값을 한번 정하면 지우거나 변경할 수 없습니다.",
            describeOption2: nil,
            correctAnswer: 1
        ),

        DetailQuizes(
            quizTitle : "딕셔너리에 대한 설명으로 옳은 것을 고르시오",
            question1 : "딕셔너리의 Key는 리스트 형태로 사용이 가능하다.",
            question2: nil,
            describeOption1: "딕셔너리는 Key는 고유해야 하므로 리스트는 Key로 사용할 수 없습니다.",
            describeOption2: nil,
            correctAnswer: 0
        ),

        DetailQuizes(
            quizTitle : "다음중 옳은 설명을 고르시오",
            question1 : "리스트를 복사하는 방법에는 [:]를 이용하거나 copy모듈을 사용하는 방법이 있다.",
            question2: "리스트를 복사하면 복사된 리스트와 원본 리스트의 주소값은 동일하다.",
            describeOption1: "옳은 설명입니다.",
            describeOption2: "기존 리스트를 참조하는 경우를 제외하면 리스트 복사시 리스트의 주소값은 변경됩니다.",
            correctAnswer: 1
        )
    ],
    
    // 파이썬 - 제어문
    "Python_condition":
    [
        DetailQuizes(
            quizTitle : "두개의 코드중 컴파일 될 수 있는 코드를 고르시오 ",
            question1 : """
                        qustion = true
                        if question
                            print(\"정답입니다.\")
                        else
                            print(\"오답입니다.\")
                        """,
            question2: """
                        money = 2000
                           if money < 500:
                                print(\"돈이 없습니다\")
                                print(\"지갑에 돈을 더 넣어주세요!\")
                        """,
            describeOption1: "if 조건문 뒤에는 꼭 ':' 를 붙여주어야 합니다.",
              describeOption2: "옳은 설명입니다." ,
            correctAnswer: 1
        ),

        DetailQuizes(
            quizTitle : "코드에 대한 결과값의 참거짓을 고르시오",
            question1 : """
                        <코드>
                            num = 0
                            sum = 0
                            while  num < 10:
                                 num = num+1
                                 if num == 5:
                                    break
                                sum+=num
                            print(sum)
                        <결과값>
                            10
                        """,
            question2 : nil,
            describeOption1: "num이 5일경우 while문을 벗어나므로 1+2+3+4 = 10이다.",
            describeOption2: nil,
            correctAnswer: 0
        ),

        DetailQuizes(
            quizTitle : "range 대한 설명 중 옳은 것을 고르시오 ",
            question1 : "range(10) 은 0부터 10까지 숫자를 포함한다. ",
            question2 : nil,
            describeOption1: "range(10)은 10을 포함하지 않는다.",
            describeOption2: nil,
            correctAnswer: 1
        )
    ],
    
    // 파이썬 - 함수
    "Python_funciton":
    [
        DetailQuizes(
           quizTitle: "함수에 대한 설명으로 옳은 것을 고르시오 ",
           question1: "함수는 결과 값이 모두 존재한다. ",
           question2: "함수의 결과 값은 언제나 하나이다.",
           describeOption1: "결과 값이 없는 함수도 존재한다.",
           describeOption2: "옳은 설명입니다",
           correctAnswer: 1
        ),

        DetailQuizes(
           quizTitle : "다음 설명이 참인지 거짓인지 판별하시오.",
           question1 : "input은 입력 받는 모든 것을 문자열로 취급한다.",
           question2: nil,
           describeOption1: "숫자를 입력하더라도 문자열로 인식한다.",
           describeOption2: nil,
           correctAnswer: 0
        ),

        DetailQuizes(
           quizTitle : "다음 중 옳은 것을 고르시오 ",
           question1 : "외부 파일을 읽는 방법은 총 두 가지가 존재한다.",
           question2: "r w a 는 파일열기모드에서 각각 읽기모드, 쓰기모드, 추가모드를 의미한다.",
           describeOption1: "readline함수, readlines함수, read함수 총 3가지의 방법이 존재한다.",
           describeOption2: "옳은 설명입니다.",
           correctAnswer: 1
        )
    ],
    
]
