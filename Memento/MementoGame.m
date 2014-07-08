//
//  MementoGame.m
//  Memento
//
//  Created by Florian BUREL on 07/07/2014.
//  Copyright (c) 2014 florian burel. All rights reserved.
//

#import "MementoGame.h"


@interface MementoGame ()

// Liste de cartes dans l'ordre ( 0 ... 11)
@property (readwrite, strong, nonatomic) NSArray * deck;

@end



@implementation MementoGame

+ (instancetype)newGame
{
    
    NSArray * baseSet = @[
                          @(MementoGameCardValue1),
                          @(MementoGameCardValue1),
                          @(MementoGameCardValue2),
                          @(MementoGameCardValue2),
                          @(MementoGameCardValue3),
                          @(MementoGameCardValue3),
                          @(MementoGameCardValue4),
                          @(MementoGameCardValue4),
                          @(MementoGameCardJoker1),
                          @(MementoGameCardJoker1),
                          @(MementoGameCardJoker2),
                          @(MementoGameCardJoker2)
                          ];
    
    MementoGame * game = [[MementoGame alloc]init];
    game.deck = baseSet; // TODO: shamble it!!!
    
    return game;
}

- (MementoGameCard)valueForCardAtPosition:(MementoGamePosition)position
{
    int idx = [self indexOfCardAtPosition:position];
    return [self.deck[idx] intValue];
}


- (int) indexOfCardAtPosition:(MementoGamePosition)postion
{
    return 3 * postion.row + postion.column;
}

@end











