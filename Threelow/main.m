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
#import "GameController.h"

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
        GameController *gameController = [[GameController alloc] init];
        
        NSString *inputSelected = [inputCollector inputForPrompt:@"\nroll - roll dice\nhold# - hold dice\nunhold# - unhold dice\nquit - quit game\n"];
        
        while (![inputSelected isEqualToString:@"quit"]) {
            
            
            if ([inputSelected isEqualToString:@"roll"]) {
                for (Dice *dice in diceArray) {
                    [dice roll];
                    NSLog(@"%d", dice.diceValue);
                    
                }
                inputSelected = @"";
                
            }
            else if ([inputSelected isEqualToString:@"hold1"]) {
                
                [gameController holdDice:gameController.diceArray[0]];
                
                NSLog(@"held dice 1");
                
                inputSelected = @"";
                
            } else if ([inputSelected isEqualToString:@"hold2"]) {
                
                
                [gameController holdDice:gameController.diceArray[1]];
                
                NSLog(@"held dice 2");
                
                inputSelected = @"";
                
                
            } else if ([inputSelected isEqualToString:@"hold3"]) {
                
                [gameController holdDice:gameController.diceArray[2]];
                
                NSLog(@"held dice 3");
                
                inputSelected = @"";
                
            } else if ([inputSelected isEqualToString:@"hold4"]) {

                [gameController holdDice:gameController.diceArray[3]];
                
                NSLog(@"held dice 4");
                
                inputSelected = @"";
                
                
            } else if ([inputSelected isEqualToString:@"hold5"]) {

                [gameController holdDice:gameController.diceArray[4]];
                
                NSLog(@"held dice 5");
                
                inputSelected = @"";
                
            } else if ([inputSelected isEqualToString:@"unhold1"]) {
                
                [gameController unholdDice:gameController.diceArray[0]];
                
                NSLog(@"unheld dice 1");
                
                inputSelected = @"";
                
            } else if ([inputSelected isEqualToString:@"unhold2"]) {
                
                [gameController unholdDice:gameController.diceArray[1]];
                
                NSLog(@"unheld dice 2");
                
                inputSelected = @"";
                
            } else if ([inputSelected isEqualToString:@"unhold3"]) {
                
                [gameController unholdDice:gameController.diceArray[2]];
                
                NSLog(@"unheld dice 3");
                
                inputSelected = @"";
                
            } else if ([inputSelected isEqualToString:@"unhold4"]) {
                
                [gameController unholdDice:gameController.diceArray[3]];
                
                NSLog(@"unheld dice 4");
                
                inputSelected = @"";
                
            } else if ([inputSelected isEqualToString:@"unhold5"]) {
                
                [gameController unholdDice:gameController.diceArray[4]];
                
                NSLog(@"unheld dice 5");
                
                inputSelected = @"";
                
                
            } else {
                
                [inputSelected isEqualToString:@"quit"];
                
                NSLog(@"You have quit. Goodbye!");
                
                inputSelected = @"quit";
                
                
            }
            
            inputSelected = [inputCollector inputForPrompt:@"\nroll - roll dice\nhold - hold#\nunhold# - unhold dice\nquit - quit\n"];
            
        }
        
        
        
        
        return 0;
        
    }
}
