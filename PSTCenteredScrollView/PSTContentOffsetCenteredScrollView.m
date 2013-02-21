//
//  PSTContentOffsetCenteredScrollView.m
//  PSTCenteredScrollView
//
//  Created by Peter Steinberger on 2/21/13.
//  Copyright (c) 2013 PSPDFKit. All rights reserved.
//

#import "PSTContentOffsetCenteredScrollView.h"

@implementation PSTContentOffsetCenteredScrollView

- (void)setContentOffset:(CGPoint)anOffset {
	if(self.containerView != nil) {
		CGSize zoomViewSize = self.containerView.frame.size;
		CGSize scrollViewSize = self.bounds.size;

		if(zoomViewSize.width < scrollViewSize.width) {
			anOffset.x = -(scrollViewSize.width - zoomViewSize.width) / 2.0;
		}

		if(zoomViewSize.height < scrollViewSize.height) {
			anOffset.y = -(scrollViewSize.height - zoomViewSize.height) / 2.0;
		}
	}
	super.contentOffset = anOffset;
}

@end
