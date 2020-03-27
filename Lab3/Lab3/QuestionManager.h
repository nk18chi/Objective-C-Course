//
//  QuestionManager.h
//  Lab3
//
//  Created by Naoki Mita on 2020-03-26.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property (copy) NSMutableArray *questions;
- (NSString *) timeOutput;
@end

NS_ASSUME_NONNULL_END
