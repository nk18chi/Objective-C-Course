//
//  QuestionFactory.m
//  Lab3
//
//  Created by Naoki Mita on 2020-03-26.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "QuestionFactory.h"
@implementation QuestionFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion"];
    }
    return self;
}
- (Question *) generateRandomQuestion {
    NSInteger n = arc4random_uniform((int) [self.questionSubclassNames count]);
    return [NSClassFromString(_questionSubclassNames[n]) new];
}
@end
