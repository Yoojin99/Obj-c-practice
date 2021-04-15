//
//  main.m
//  SampleC
//
//  Created by NHN on 2021/03/30.
//

#import <Foundation/Foundation.h>


void exchange (int *pint1, int *pint2) {
    int temp;
    
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
}

void (^exchange2)(int*, int*) = ^(int *pint1, int *pint2) {
    int temp;
    
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
};

int main(int argc, char *argv[]) {
    @autoreleasepool {
//        void exchange(int *pint1, int *pint2);
        
        int i1=-5, i2=66, *p1=&i1, *p2=&i2;
        
        exchange2(p1, p2);
        NSLog(@"%i %i", *p1, *p2);
        
        
    }
    return 0;
}
