//
//  ViewController.m
//  Memento
//
//  Created by Florian BUREL on 07/07/2014.
//  Copyright (c) 2014 florian burel. All rights reserved.
//

#import "ViewController.h"
#import "MementoGame.h"
#import "CardView.h"

@interface ViewController ()

// jeu en cours
@property (readwrite, strong, nonatomic) MementoGame * game;

@end

@implementation ViewController
{
    CardView * _lastSelectedCard;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Ajout du tapGR sur chacune des cardView
    for (UIView * item in self.view.subviews)
    {
        
        if([item isKindOfClass:[CardView class]])
        {
            // Ajout du tapGR
            UITapGestureRecognizer * tap;
            tap = [UITapGestureRecognizer new];
            [tap addTarget:self action:@selector(cardTapped:)];
            [item addGestureRecognizer:tap];
            
        }
        
    }
    
    [self beginNewGame:self];
}

- (IBAction)beginNewGame:(id)sender
{
    self.game = [MementoGame newGame];
    
    for (UIView * item in self.view.subviews)
    {
        
        if([item isKindOfClass:[CardView class]])
        {
            CardView * card = (CardView *)item;
            
            if([card isShowingValueSide])
            {
                [card flip];
            }
            
        }
        
    }
    
    _lastSelectedCard = nil;
}

- (void) cardTapped:(UIGestureRecognizer *)sender
{
    
    CardView * selectedCard = (CardView *)sender.view;
    
    if([selectedCard isShowingValueSide])
    {
        // already flipped!
    }
    else
    {
        MementoGamePosition position = [self positionForCard:selectedCard];
        
        MementoGameCard value = [self.game valueForCardAtPosition:position];
        
        selectedCard.image = [self imageForCardValue:value];
        
        [selectedCard flip];
    }
    
    [self checkCard:selectedCard];
    
    
}

- (UIImage *) imageForCardValue:(MementoGameCard)value
{
    UIImage * image;
    
    switch (value) {
        case MementoGameCardValue1:
            image = [UIImage imageNamed:@"luffy"];
            break;
        case MementoGameCardValue2:
            image = [UIImage imageNamed:@"zorro"];
            break;
        case MementoGameCardValue3:
            image = [UIImage imageNamed:@"sogeking"];
            break;
        case MementoGameCardValue4:
            image = [UIImage imageNamed:@"franky"];
            break;
        case MementoGameCardJoker1:
            image = [UIImage imageNamed:@"Nami"];
            break;
        case MementoGameCardJoker2:
            image = [UIImage imageNamed:@"robin"];
            break;
            
        default:
            break;
    }
    
    return image;
}

- (MementoGamePosition) positionForCard:(CardView *)card
{
    long tag = card.tag;
    tag--;
    
    MementoGamePosition position;
    position.row = (int)tag / 3;
    position.column = (int)tag % 3;
    
    return position;
    
}

- (void) checkCard:(CardView *)card
{
    if(_lastSelectedCard)
    {
        MementoGameCard c1 = [self.game valueForCardAtPosition:[self positionForCard:card]];
        MementoGameCard c2 = [self.game valueForCardAtPosition:[self positionForCard:_lastSelectedCard]];;
        
        if(c1 != c2)
        {
            [card flip];
            [_lastSelectedCard flip];
        }
        
        _lastSelectedCard = nil;
        
        
    }
    else
    {
        _lastSelectedCard = card;
    }
}

@end













