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

typedef enum{
    MementoGameCardValue1 = 1,
    MementoGameCardValue2 = 2,
    MementoGameCardValue3 = 3,
    MementoGameCardValue4 = 4,
    MementoGameCardJoker1 = 5,
    MementoGameCardJoker2 = 6
} MementoGameCard;


@interface MementoGame : NSObject

+ (instancetype) newGame;

- (MementoGameCard) valueForCardAtPosition:(MementoGamePosition)position;


@end
