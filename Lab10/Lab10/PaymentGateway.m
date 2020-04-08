//
//  PaymentGateway.m
//  Lab10
//
//  Created by Naoki Mita on 2020-04-08.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
- (void) processPaymentAmount:(NSInteger) amount {
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"payment error...");
    }
    
}
@end
