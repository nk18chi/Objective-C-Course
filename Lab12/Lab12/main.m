//
//  main.m
//  Lab11
//
//  Created by Naoki Mita on 2020-04-09.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Manager1.h"
#import "Manager2.h"
#import "DeliveryService.h"

NSString *getInput() {
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

int main(int argc, const char * argv[]) {
    Kitchen *kitchen = [Kitchen new];
    DeliveryService *ds = [DeliveryService new];
    Manager1 *m1 = [[Manager1 alloc] initDeliveryService:ds];
    Manager2 *m2 = [[Manager2 alloc] initDeliveryService:ds];
    @autoreleasepool {
        while(YES) {
            NSLog(@"select size for a pizza.");
            NSLog(@"1. small, 2. medium, 3. large.");
            PizzaSize size = [getInput() intValue] - 1;
            
            NSLog(@"select toppings for a pizza.");
            NSArray *toppings = [getInput() componentsSeparatedByString:@" "];
            
            NSLog(@"select a manager for making.");
            NSLog(@"1. manager1, 2. manager2");
            NSInteger managerId = [getInput() intValue];
            switch (managerId) {
                case 1:
                    kitchen.delegate = m1;
                    break;
                case 2:
                    kitchen.delegate = m2;
                    break;
                default:
                    kitchen.delegate = nil;
                    break;
            }
            [kitchen makePizzaWithSize:size toppings:toppings];
            NSLog(@"order recods: %@", [ds getHistoryOrder]);
            NSLog(@"");
        }
    }
}
