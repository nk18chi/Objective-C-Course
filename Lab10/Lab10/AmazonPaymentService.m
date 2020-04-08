//
//  AmazonPaymentService.m
//  Lab10
//
//  Created by Naoki Mita on 2020-04-08.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
- (void) processPaymentAmount:(NSInteger) amount {
    NSLog(@"Amazon processed amount $ %ld", amount);
}
- (BOOL) canProcessPayment {
    return arc4random_uniform(2) == 1;
}
@end
