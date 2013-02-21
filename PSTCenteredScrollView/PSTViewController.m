//
//  PSTViewController.m
//  PSTCenteredScrollView
//
//  Created by Peter Steinberger on 2/21/13.
//  Copyright (c) 2013 PSPDFKit. All rights reserved.
//

#import "PSTViewController.h"
#import "PSTCenteredScrollView.h"

@interface PSTViewController ()
@property (nonatomic, strong) Class scrollViewClass;
@end

@implementation PSTViewController

- (id)initWithScrollViewClass:(Class)scrollViewClass {
    if (self = [super initWithNibName:nil bundle:nil]) {
        _scrollViewClass = scrollViewClass;
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:[[NSStringFromClass(scrollViewClass) stringByReplacingOccurrencesOfString:@"CenteredScrollView" withString:@""] stringByReplacingOccurrencesOfString:@"PST" withString:@""]  image:nil tag:0];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    PSTCenteredScrollView *scrollView = [[self.scrollViewClass alloc] initWithFrame:self.view.bounds];
    scrollView.backgroundColor = [UIColor colorWithRed:1.000 green:0.992 blue:0.841 alpha:1.000];
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:scrollView];
}

@end
