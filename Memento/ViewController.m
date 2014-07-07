//
//  ViewController.m
//  Memento
//
//  Created by Florian BUREL on 07/07/2014.
//  Copyright (c) 2014 florian burel. All rights reserved.
//

#import "ViewController.h"
#import "MementoGame.h"

@interface ViewController ()

// jeu en cours
@property (readwrite, strong, nonatomic) MementoGame * game;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
