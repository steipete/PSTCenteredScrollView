//
//  PSTCenteredScrollView.m
//  PSTCenteredScrollView
//
//  Created by Peter Steinberger on 2/21/13.
//  Copyright (c) 2013 PSPDFKit. All rights reserved.
//

#import "PSTCenteredScrollView.h"
#import <QuartzCore/QuartzCore.h>

@interface PSTCenteredScrollView ()
@property (nonatomic, strong) UIView *testView;
@end

@implementation PSTCenteredScrollView

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.delegate = self;

        self.maximumZoomScale = 20;

        self.containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 400, 900)];
        self.containerView.backgroundColor = [UIColor blueColor];
        self.containerView.layer.borderColor = [UIColor darkGrayColor].CGColor;
        self.containerView.layer.borderWidth = 2.f;

        [self addSubview:self.containerView];
        self.contentSize = self.containerView.frame.size;

        self.testView = [[UIView alloc] initWithFrame:CGRectMake(270, 170, 50, 50)];
        self.testView.backgroundColor = [UIColor greenColor];
        [self.containerView addSubview:self.testView];

        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTapped:)];
        tapGesture.numberOfTapsRequired = 2;
        [self addGestureRecognizer:tapGesture];
    }
    return self;
}

- (void)doubleTapped:(UITapGestureRecognizer *)tapGesture {
    if (self.zoomScale == 1) {
        [self zoomToRect:CGRectInset(self.testView.frame, -1, -1) animated:YES];
    }else {
        [self setZoomScale:1 animated:YES];
    }
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.containerView;
}


/*
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
}*/

@end
