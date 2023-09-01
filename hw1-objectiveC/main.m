//
//  main.m
//  hw1-objectiveC
//
//  Created by умпет on 01.09.2023.
//  Copyright © 2023 Evgen. All rights reserved.
//

#import <Foundation/Foundation.h>

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
//        hw1_1();
        hw1_2();
    }
    return 0;
}

