//
//  StripePaymentService.m
//  Lab10
//
//  Created by Naoki Mita on 2020-04-08.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
- (void) processPaymentAmount:(NSInteger) amount {
    NSLog(@"Stripe processed amount $ %ld", amount);
}

@end
