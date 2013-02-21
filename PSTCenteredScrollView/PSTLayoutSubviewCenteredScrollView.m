//
//  PSTLayoutSubviewCenteredScrollView.m
//  PSTCenteredScrollView
//
//  Created by Peter Steinberger on 2/21/13.
//  Copyright (c) 2013 PSPDFKit. All rights reserved.
//

#import "PSTLayoutSubviewCenteredScrollView.h"

@implementation PSTLayoutSubviewCenteredScrollView

- (void)layoutSubviews {
    [super layoutSubviews];

    CGSize boundsSize = self.bounds.size;
    UIView *centerView = self.containerView;
    CGRect frameToCenter = centerView.frame;

    if (frameToCenter.size.width < boundsSize.width) {
        frameToCenter.origin.x = (boundsSize.width - frameToCenter.size.width) * 0.5f;
    } else {
        frameToCenter.origin.x = 0;
    }

    if (frameToCenter.size.height < boundsSize.height) {
        frameToCenter.origin.y = (boundsSize.height - frameToCenter.size.height) * 0.5f;
    } else {
        frameToCenter.origin.y = 0;
    }
    
    centerView.frame = frameToCenter;
}

@end
