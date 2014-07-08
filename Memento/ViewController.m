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
}

- (void) cardTapped:(UIGestureRecognizer *)sender
{
    CardView * selectedCard = (CardView *)sender.view;
    
    selectedCard.image = [UIImage imageNamed:@"Nami"];
    
    [selectedCard flip];
}



@end
