//
//  AddingQuestion.m
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-08.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "AddingQuestion.h"

@implementation AddingQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger x = 10 + arc4random_uniform(90);
        NSInteger y = 10 + arc4random_uniform(90);
        _question = [[[[NSString stringWithFormat:@"%li", x]stringByAppendingString:@" + "]stringByAppendingFormat:@"%li", y]stringByAppendingString:@" ?"];
        _answer = x + y;
    }
    return self;
}
@end
