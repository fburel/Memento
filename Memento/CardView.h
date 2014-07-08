//
//  CardView.h
//  Memento
//
//  Created by Florian BUREL on 08/07/2014.
//  Copyright (c) 2014 florian burel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardView : UIView

- (void) flip;

@property (strong, nonatomic) UIImage * image;

- (BOOL) isShowingValueSide;

@end
