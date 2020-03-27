//
//  QuestionFactory.h
//  Lab3
//
//  Created by Naoki Mita on 2020-03-26.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
@class Question;

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject
@property NSArray *questionSubclassNames;
- (Question *) generateRandomQuestion;
@end

NS_ASSUME_NONNULL_END
