//
//  main.m
//  Threelow
//
//  Created by Philip Ha on 2016-09-07.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *diceArray = [[NSArray alloc] init];
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        diceArray = @[dice1, dice2, dice3, dice4, dice5];
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        NSString *inputSelected = [inputCollector inputForPrompt:@"\nroll - roll dice\n"];
        
        while ([inputSelected isEqualToString:@"roll"]) {
            for (Dice *dice in diceArray) {
                NSLog(@"%d", dice.diceValue);
            }
           
            break;
            
        }
        
        
    }
    return 0;
}
