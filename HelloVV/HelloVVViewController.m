//
//  HelloVVViewController.m
//  HelloVV
//
//  Created by Bai Shun on 25/08/12.
//  Copyright (c) 2012 VVBS. All rights reserved.
//

#import "HelloVVViewController.h"

@interface HelloVVViewController ()

@end

@implementation HelloVVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
