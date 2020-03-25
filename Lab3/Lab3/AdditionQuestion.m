//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Naoki Mita on 2020-03-25.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateRandomQuestion];
    }
    return self;
}

- (void) generateRandomQuestion {
    NSInteger left = arc4random_uniform(90) + 10;
    NSInteger right = arc4random_uniform(90) + 10;
    
    _question = [NSString stringWithFormat: @"%ld + %ld ?", left, right];
    _answer = left + right;
}

@end
