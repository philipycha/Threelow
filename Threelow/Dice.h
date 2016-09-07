//
//  Dice.h
//  Threelow
//
//  Created by Philip Ha on 2016-09-07.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int diceValue;


-(void) randomizeValue;

@end
