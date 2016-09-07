//
//  Dice.m
//  Threelow
//
//  Created by Philip Ha on 2016-09-07.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self randomizeValue];
        
    }
    return self;
}

- (void) randomizeValue {
    
    self.diceValue = arc4random_uniform(6) +1;
    
}

@end
