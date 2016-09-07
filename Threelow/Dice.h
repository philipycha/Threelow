//
//  Dice.h
//  Threelow
//
//  Created by Philip Ha on 2016-09-07.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

@interface Dice : NSObject

@property (nonatomic) int diceValue;

@property (nonatomic) NSArray *diceArray;


-(void) randomizeValue;
-(void) roll;
-(void) printDice;

@end
