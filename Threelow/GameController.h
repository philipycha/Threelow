//
//  GameController.h
//  Threelow
//
//  Created by Philip Ha on 2016-09-07.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"


@interface GameController : NSObject

@property (nonatomic) NSMutableSet *holdDiceSet;
@property (nonatomic) NSArray *diceArray;
//@property (nonatomic) Dice *dice;
@property (nonatomic) int diceValue;


-(void) randomizeValue;
-(void) roll;
-(void) printDice;
-(void) holdDice:(Dice *)dice;
-(void) unholdDice:(Dice *)dice;
-(void) resetDice;



@end
