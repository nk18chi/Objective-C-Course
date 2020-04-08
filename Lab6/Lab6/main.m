//
//  main.m
//  Lab6
//
//  Created by Naoki Mita on 2020-04-07.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *d1 = [Dice new];
        Dice *d2 = [Dice new];
        Dice *d3 = [Dice new];
        Dice *d4 = [Dice new];
        Dice *d5 = [Dice new];
        
        NSLog(@"%@", d1.getString);
        NSLog(@"%@", d2.getString);
        NSLog(@"%@", d3.getString);
        NSLog(@"%@", d4.getString);
        NSLog(@"%@", d5.getString);
    }
    return 0;
}
