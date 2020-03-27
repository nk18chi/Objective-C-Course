//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Naoki Mita on 2020-03-26.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    super.question = [NSString stringWithFormat: @"%ld + %ld ?", super.leftValue, self.rightValue];
    super.answer = super.leftValue + super.rightValue;
}

@end
