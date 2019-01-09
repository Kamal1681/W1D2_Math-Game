//
//  InputHandler.m
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-08.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) parseInput {
    
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString * input = [[NSString alloc]initWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSString * trimmedInput = [input stringByTrimmingCharactersInSet:(NSCharacterSet.whitespaceAndNewlineCharacterSet)];

    return trimmedInput;
}


@end
