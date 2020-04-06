//
//  main.m
//  Lab13
//
//  Created by Naoki Mita on 2020-04-05.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int maxLength = 1024;
        while(YES) {
            NSLog(@"Input a phase >");
            char inputChars[maxLength];
            char *result = fgets(inputChars, maxLength, stdin);
            if(result == nil) { break; }
            NSString *input = [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"Converted : %@", [input stringByPigLatinization]);
        }
    }
}
