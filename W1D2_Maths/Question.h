//
//  AddingQuestion.h
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-08.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic) NSString * question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSDate * startTime;
@property (nonatomic) NSDate * endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;
@end

NS_ASSUME_NONNULL_END
