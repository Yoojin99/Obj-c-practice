////
////  main.m
////  SampleC
////
////  Created by NHN on 2021/03/30.
////
//
//#import <Foundation/Foundation.h>
//#import "Fraction.h"
//
//@implementation Fraction
//-(void) print {
//    NSLog(@"%i/%i", _numerator, _denominator);
//}
//
//-(double) convertToNum {
//    if (_denominator != 0)
//        return (double) _numerator / _denominator;
//    else
//        return NAN;
//}
//
//-(void) setTo: (int) n over: (int) d {
//    _numerator = n;
//    _denominator = d;
//}
//
//-(Fraction*) add:(Fraction *)f {
//    Fraction* result = [[Fraction alloc]init];
//
//    result.numerator = _numerator * f.denominator + _denominator * f.numerator;
//    result.denominator = _denominator * f.denominator;
//
//    [self reduce];
//
//    return result;
//}
//
//-(void) reduce {
//    int u = _numerator;
//    int v = _denominator;
//    int temp;
//
//    while (v!=0) {
//        temp = u % v;
//        u=v;
//        v = temp;
//    }
//
//    _numerator /= u;
//    _denominator /= u;
//
//}
//
//@end
//
//int Ch7(int argc, char *argv[]) {
//    @autoreleasepool {
//        Fraction *myFraction = [[Fraction alloc] init];
//
//        [myFraction setNumerator: 1];
//        [myFraction setDenominator: 3];
//
//        NSLog(@"The Value of myFraction is: ");
//        [myFraction print];
//    }
//    return 0;
//}
