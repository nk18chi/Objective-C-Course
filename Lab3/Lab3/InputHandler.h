//
//  InputHandler.h
//  Lab3
//
//  Created by Naoki Mita on 2020-03-25.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject
+ (NSString *) getUserInput: (int) maxLength andPrompt: (NSString *) prompt;
@end

NS_ASSUME_NONNULL_END
