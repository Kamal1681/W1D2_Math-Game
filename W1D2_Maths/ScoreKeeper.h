//
//  ScoreKeeper.h
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-08.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject
@property (nonatomic) int rightCount;
@property (nonatomic) int wrongCount;
-(NSString *) scoreReport: (NSString *) input : (NSInteger) answer;
-(instancetype) initWithCounts;
@end

NS_ASSUME_NONNULL_END
