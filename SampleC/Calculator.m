//
//  main.m
//  SampleC
//
//  Created by NHN on 2021/03/30.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property double accumulator;

-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

@implementation Calculator

@synthesize accumulator;

-(void) clear {
    accumulator = 0;
}

-(void) add: (double) value {
    accumulator += value;
}

-(void) subtract:(double)value {
    accumulator -= value;
}

-(void) multiply:(double)value {
    accumulator *= value;
}

-(void) divide:(double)value {
    accumulator /= value;
}

@end

int Calculator(int argc, char *argv[]) {
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog(@"Type in your expression");
        scanf("%lf %c %lf", &value1, &operator, &value2);
        
        [deskCalc setAccumulator: value1];
        
        if (operator == '+')
            [deskCalc add: value2];
        else if (operator == '-')
            [deskCalc subtract:value2];
        else if (operator == '*')
            [deskCalc multiply:value2];
        else if (operator == '/') {
            if (value2 == 0)
                NSLog(@"Division by zero");
            else
                [deskCalc divide:value2];
        }
        else
            NSLog(@"%.2f", [deskCalc accumulator]);
    }
    return 0;
}
