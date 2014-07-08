//
//  CardView.m
//  Memento
//
//  Created by Florian BUREL on 08/07/2014.
//  Copyright (c) 2014 florian burel. All rights reserved.
//

#import "CardView.h"


@interface CardView ()

@property (strong, nonatomic) UIImageView * coverSideImageView;
@property (strong, nonatomic) UIImageView * valueSideImageView;

@end

@implementation CardView

- (void)layoutSubviews
{
    
    if(!self.coverSideImageView)
    {
        // Creation
        self.coverSideImageView = [[UIImageView alloc]init];
        self.valueSideImageView = [[UIImageView alloc]init];
        
        // Configuration
        self.valueSideImageView.hidden = YES;
        self.coverSideImageView.image = [UIImage imageNamed:@"card"];
        
        // Ajout a la hierarchie de view
        [self addSubview:self.valueSideImageView];
        [self addSubview:self.coverSideImageView];
    }
    
    self.coverSideImageView.frame = self.bounds;
    self.valueSideImageView.frame = self.bounds;

}

- (void) flip
{
    self.valueSideImageView.image = self.image;
    
    self.coverSideImageView.hidden = !self.coverSideImageView.hidden;
    self.valueSideImageView.hidden = !self.valueSideImageView.hidden;
}

- (BOOL) isShowingValueSide
{
    return self.coverSideImageView.hidden;
}

@end
