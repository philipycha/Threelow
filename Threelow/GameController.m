//
//  GameController.m
//  Threelow
//
//  Created by Philip Ha on 2016-09-07.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
          
        _diceArray = @[dice1, dice2, dice3, dice4, dice5];
        
        _holdDiceSet = [NSMutableSet set];
        
        [self randomizeValue];

    }
    
    return self;
    
}

- (void) holdDice:(Dice *)dice{
    
    [self.holdDiceSet addObject:dice];
    
    [self printDiceAndScore];
    
}

-(void) unholdDice:(Dice *)dice{
    
    [self.holdDiceSet removeObject:dice];
    
    [self printDiceAndScore];
    
}

- (void) randomizeValue {
    
    self.diceValue = arc4random_uniform(6) +1;
    
}

- (void) printDiceAndScore {
    int score = 0;
    
    for (Dice *dice in _holdDiceSet) {
        
        score += dice.diceValue;
        
    }
    
    NSLog(@"Your dice Score is %i", score);
    
    
}


- (void) roll {
    
    [self randomizeValue];
    
}

- (void) resetDice {
        
        [self.holdDiceSet removeAllObjects];
    
}

@end
