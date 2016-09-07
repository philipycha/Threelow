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
        
        _dice = dice1;
        
        _diceArray = @[dice1, dice2, dice3, dice4, dice5];
        
        _holdDiceSet = [NSMutableSet set];
        
        [self randomizeValue];

    }
    
    return self;
    
}

- (void) holdDice:(Dice *)dice{
    
    [self.holdDiceSet addObject:dice];
    
    [self printDice];
    
}

-(void) unholdDice:(Dice *)dice{
    
    [self.holdDiceSet removeObject:dice];
    
    [self printDice];
    
}

- (void) randomizeValue {
    
    self.diceValue = arc4random_uniform(6) +1;
    
}

- (void) printDice {
    
    NSLog(@"Your dice value is %d", self.diceValue);
    
}


- (void) roll {
    
    [self randomizeValue];
    
}


@end
