//
//  main.m
//  Lab10
//
//  Created by Naoki Mita on 2020-04-08.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger amount = arc4random_uniform(901) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is %ld Please select. your payment method: 1: Paypal, 2: Stripe, 3: Amazon", amount);
    }
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSInteger paymentNumber = [[[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]] intValue];
    NSLog(@"%ld", paymentNumber);
}
