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
    
    switch (self.diceValue) {
        case 1:
            self.symbol = @"\u2680";
            break;
        case 2:
            self.symbol = @"\u2681";
            break;
        case 3:
            self.symbol = @"\u2682";
            break;
        case 4:
            self.symbol = @"\u2683";
            break;
        case 5:
            self.symbol = @"\u2684";
            break;
        default:
            self.symbol = @"\u2685";
            break;
    }
}

- (void) roll {
        
        [self randomizeValue];
        
    }

- (void) printDice {
    
    NSLog(@"Your dice value is %d", self.diceValue);
    
}




    
    
    
    


@end
