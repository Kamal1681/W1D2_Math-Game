//
//  QuestionManager.m
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-09.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"
@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
    }
    return self;
}

- (NSString *) timOutput {
    
    NSTimeInterval totalTime = [[[[self questions]objectAtIndex:([[self questions]count] - 1)]endTime]  timeIntervalSinceDate:[[[self questions]objectAtIndex:0]startTime]];
    
    NSTimeInterval averageTime = (float)totalTime / (float)[[self questions]count];

    return [[[[@"Total time: " stringByAppendingString:[NSString stringWithFormat:@"%f", totalTime]]stringByAppendingString:@"s, average time: "]stringByAppendingString:[NSString stringWithFormat:@"%f", averageTime]]stringByAppendingString:@"s"];
}
@end
