//
//  ApplePaymentService.m
//  Lab10
//
//  Created by Naoki Mita on 2020-04-08.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService
- (void) processPaymentAmount:(NSInteger) amount {
    NSLog(@"ApplePay processed amount $ %ld", amount);
}
- (BOOL) canProcessPayment {
    return arc4random_uniform(2) == 1;
}
@end
