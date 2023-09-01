//
//  main.m
//  hw1-objectiveC
//
//  Created by умпет on 01.09.2023.
//  Copyright © 2023 Evgen. All rights reserved.
//

#import <Foundation/Foundation.h>

void task2() {
    int number1 = 5;
    int number2 = 7;
    int number3 = 9;
    NSLog(@"number1 = %i, number2 = %i, number3 = %i", number1, number2, number3);
    NSLog(@"\n");
    NSLog(@"number1 = %i, number2 = %i, number3 = %i", number1, number2, number3);
}

void task3() {
    int value1;
    int value2;
    printf("Input first number ");
    scanf("%d", &value1);
    printf("Input second number ");
    scanf("%d", &value2);
    NSLog(@"value1 = %d, value2 = %d", value1, value2);
    NSLog(@"%d", value1 + value2);
}

void task4_calc() {
    int num1, num2, num3, sum, mult, dif;
    CGFloat div = 0, avg;
    
    NSLog(@"Input number 1: ");
    scanf("%d", &num1);
    NSLog(@"Input number 2: ");
    scanf("%d", &num2);
    NSLog(@"Input number 3: ");
    scanf("%d", &num3);
    
    sum = num1 + num2 + num3;
    //    NSLog(@"Summa = %d", sum);
    mult = num1 * num2 * num3;
    //    NSLog(@"Mult = %d", mult);
    dif = num1 - num2 - num3;
    //    NSLog(@"Diff = %d", dif);
    if (num2 == 0 || num3 == 0) {
        NSLog(@"Cannot do this");
    } else {
        div = (CGFloat) num1 / (CGFloat) num2 / (CGFloat) num3;
        //        NSLog(@"Div = %.2f", div);
    }
    avg = (CGFloat) sum / 3.0;
    //    NSLog(@"Average = %.2f", avg);
    
    NSLog(@"Summa = %d, Mult = %d, Diff = %d, Div = %.2f, Average = %.2f", sum, mult, dif, div, avg);
}

void task5() {
    
    char str[100];
    NSLog(@"Input simbol: ");
    scanf("%s", str);
    NSString *simb = [NSString stringWithUTF8String:str];
    int index = [simb characterAtIndex:0];
    if (index >= 65 && index <= 122) {
        NSLog(@"simbol %@ include in english", simb);
    } else {
        NSLog(@"simbol %@ not include in english", simb);
    }
    
    // or
    
    int asciiCode = [@"a" characterAtIndex:0];
    BOOL check = (asciiCode >= 65 && asciiCode <= 122) ? 1 : 0;
    NSLog(@"%d", check);
}

void task6() {
    //    Создать программу? которая будет выводить список введенных пользователем значений циклами for, while, do-while
    char input[100] = {};
    NSLog(@"Enteryou line: ");
    scanf("%s", input);
    NSString *inputString = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    for (NSInteger i = 0; i < inputString.length; i++) {
        NSLog(@"%C", [inputString characterAtIndex:i]);
    }
    
    // while
    int i = 0;
    while (i != [inputString length]) {
        NSLog(@"%C", [inputString characterAtIndex:i]);
        i++;
    }
    
    // do-while
    do {
        NSLog(@"%C", [inputString characterAtIndex:i]);
        i++;
    } while (i != [inputString length]);
}

void hw1_1() {
    CGFloat a, b, c, d, x1, x2;
    printf("Введите коэффициенты a * x^2 + b * x + c = 0\nВведите a: ");
    scanf("%lf", &a);
    printf("Введите b: ");
    scanf("%lf", &b);
    printf("Введите c: ");
    scanf("%lf", &c);
    
    d = b * b - 4 * a * c;
    if (d == 0) {
        x1 = -b / (2 * a);
        NSLog(@"Корень уравнения: %.2f", x1);
    } else if (d > 0) {
        x1 = (-b + sqrtf(d)) / (2 * a);
        x2 = (-b - sqrtf(d)) / (2 * a);
        NSLog(@"Корни уравнения: %.2f, %.2f", x1, x2);
    } else {
        NSLog(@"Корней нет");
    }
    
}

void hw1_2() {
    CGFloat number1, number2, number3, max;
    printf("\nВведите первое число: ");
    scanf("%lf", &number1);
    printf("Введите второе число: ");
    scanf("%lf", &number2);
    printf("Введите третье число: ");
    scanf("%lf", &number3);
    
//    if (number1 >= number2) {
//        if (number1 >= number3) {
//            max = number1;
//        } else {
//            max = number3;
//        }
//    } else {
//        if (number2 >= number3) {
//            max = number2;
//        } else {
//            max = number3;
//        }
//    }
    
    if (number1 >= number2 && number1 >= number3) {
        max = number1;
    } else if (number2 >= number1 && number2 >= number3) {
        max = number2;
    } else {
        max = number3;
    }
    NSLog(@"Самое большое число: %.2f", max);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        task2();
//        task3();
//        task4_calc();
//        task5();
//        hw1_1();
        hw1_2();
    }
    return 0;
}

