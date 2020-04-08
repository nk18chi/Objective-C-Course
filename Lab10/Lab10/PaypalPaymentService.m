//
//  PaypalPaymentService.m
//  Lab10
//
//  Created by Naoki Mita on 2020-04-08.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService
- (void) processPaymentAmount:(NSInteger) amount {
    NSLog(@"Paypal processed amount $ %ld", amount);
}
@end
