//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Naoki Mita on 2020-03-25.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject
@property (nonatomic, assign) NSString *question;
@property (nonatomic, assign) NSInteger answer;

- (void) generateRandomQuestion;
@end

NS_ASSUME_NONNULL_END
