//
//  main.m
//  Lab2
//
//  Created by Naoki Mita on 2020-03-24.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>
// #import "DateCalculator.h"
 #import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        DateCalculator *calc = [[DateCalculator alloc] init];
//        [DateCalculator sayHelloWith:@"How are you?" andName:@"Derrick"];
//        calc.myAge = 30.2;
//        NSLog(@"%.1f", calc.myAge);
        
        Box *b1 = [[Box alloc] initHeight:10 andWeigth:10 andLength:10];
        Box *b2 = [[Box alloc] initHeight:1 andWeigth:1 andLength:1];
        
        NSLog(@"The height of b1 is %.1f", b1.height);
        NSLog(@"The weight of b1 is %.1f", b1.weight);
        NSLog(@"The length of b1 is %.1f", b1.length);
        NSLog(@"The volume of b1 is %.1f", b1.calcVolume);
        NSLog(@"%.1f b2 can fit inside b1.", [b1 canContainsNBox: b2]);
    }
    return 0;
}
