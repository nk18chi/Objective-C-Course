//
//  InputHandler.h
//  Lab6
//
//  Created by Naoki Mita on 2020-04-07.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject
+ (NSString *) initInputHandler: (int) maxLength andPrompt: (NSString *) prompt;
@end

NS_ASSUME_NONNULL_END
