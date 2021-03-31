//
//  Ch3.m
//  SampleC
//
//  Created by NHN on 2021/03/31.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

@end

@implementation Fraction {
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

-(int) numerator {
    return numerator;
}

-(int) denominator {
    return denominator;
}

@end

int Ch3(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Fraction *myFraction;
        
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        NSLog(@"The value of myFraction is : %i/%i", [myFraction numerator], [myFraction denominator]);
    }
    return 0;
}
