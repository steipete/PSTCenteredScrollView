//
//  PSTContentInsetCenteredScrollView.m
//  PSTCenteredScrollView
//
//  Created by Peter Steinberger on 2/21/13.
//  Copyright (c) 2013 PSPDFKit. All rights reserved.
//

#import "PSTContentInsetCenteredScrollView.h"

@implementation PSTContentInsetCenteredScrollView

- (void)centerContent {
    CGFloat top = 0, left = 0;
    if (self.contentSize.width < self.bounds.size.width) {
        left = (self.bounds.size.width-self.contentSize.width) * 0.5f;
    }
    if (self.contentSize.height < self.bounds.size.height) {
        top = (self.bounds.size.height-self.contentSize.height) * 0.5f;
    }
    self.contentInset = UIEdgeInsetsMake(top, left, top, left);
}

- (void)didAddSubview:(UIView *)subview {
    [super didAddSubview:subview];
    [self centerContent];
}

- (void)scrollViewDidZoom:(__unused UIScrollView *)scrollView {
    [self centerContent];
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
    [self centerContent];
}

@end
