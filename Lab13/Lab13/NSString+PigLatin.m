//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by Naoki Mita on 2020-04-05.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)
- (NSString *)stringByPigLatinization {
    NSMutableArray *words = [[[self lowercaseString] componentsSeparatedByString:@" "] mutableCopy];
    for (int i = 0; i < words.count; i++ ) {
        NSRange range = [words[i] rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiou"]];
        if ((int) range.location > 0) {
            NSString *result = nil;
            result = [NSString stringWithFormat:@"%@%@", [words[i] substringFromIndex:range.location], [words[i] substringToIndex:range.location]];
            words[i] = result;
        }
        words[i] = [[words[i] stringByAppendingString:@"ay"] capitalizedString];
    }
    return [words componentsJoinedByString:@" "];
}
@end
