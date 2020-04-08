//
//  InputHandler.m
//  Lab6
//
//  Created by Naoki Mita on 2020-04-07.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
+ (NSString *) initInputHandler: (int) maxLength andPrompt: (NSString *) prompt {
    if (maxLength < 1) {
        maxLength = 255;
    }
    if (![prompt isEqualToString:@""]) {
        NSLog(@"%@", prompt);
    }
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if(result != NULL) {
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}
@end
