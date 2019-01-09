//
//  AdditionQuestion.m
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-09.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion{
    [super setQuestion:[[[[NSString stringWithFormat:@"%li", [super rightValue]]stringByAppendingString:@" + "]stringByAppendingFormat:@"%li", [super leftValue]]stringByAppendingString:@" ?"]];
    
    [super setAnswer:([super rightValue] + [super leftValue])];
}
@end
