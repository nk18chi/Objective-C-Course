//
//  QuestionManager.m
//  Lab3
//
//  Created by Naoki Mita on 2020-03-26.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"
@class Question;

@implementation QuestionManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
    }
    return self;
}

- (NSString *) timeOutput {
    NSUInteger qCount = [self.questions count];
    float totalTime = 0;
    for (Question *q in _questions) {
        totalTime += q.answerTime;
    }
    return [NSString stringWithFormat: @"total time: %.1fs, average time: %.1fs", totalTime, totalTime / qCount];
}
@end
