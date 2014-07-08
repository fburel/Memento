//
//  MementoGame.h
//  Memento
//
//  Created by Florian BUREL on 07/07/2014.
//  Copyright (c) 2014 florian burel. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef struct
{
    int row;
    int column;
} MementoGamePosition;


// List of the possible card
typedef enum{
    MementoGameCardValue1,
    MementoGameCardValue2,
    MementoGameCardValue3,
    MementoGameCardValue4,
    MementoGameCardJoker1,
    MementoGameCardJoker2
} MementoGameCard;


@interface MementoGame : NSObject

// Create a new game with random set of cards
+ (instancetype) newGame;

// Returns the value of a card at the given position
- (MementoGameCard) valueForCardAtPosition:(MementoGamePosition)position;


@end
