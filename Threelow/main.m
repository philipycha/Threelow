//
//  main.m
//  Threelow
//
//  Created by Philip Ha on 2016-09-07.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        

        
        NSLog(@"The number is %d", dice1.diceValue);
        NSLog(@"The number is %d", dice2.diceValue);
        NSLog(@"The number is %d", dice3.diceValue);
        NSLog(@"The number is %d", dice4.diceValue);
        NSLog(@"The number is %d", dice5.diceValue);
        
        
        
    }
    return 0;
}
