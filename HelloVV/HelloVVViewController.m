//
//  HelloVVViewController.m
//  HelloVV
//
//  Created by Bai Shun on 25/08/12.
//  Copyright (c) 2012 VVBS. All rights reserved.
//

#import "HelloVVViewController.h"


@interface HelloVVViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)changeGreeting:(id)sender;

@end

@implementation HelloVVViewController
@synthesize label;
@synthesize textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
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
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)changeGreeting:(id)sender {
    self.username = self.textField.text;
    if ([self.username length]==0)
        self.username = @"Vivian";
    self.label.text = [[NSString alloc]initWithFormat:@"Hello, %@!",self.username];
}

@end
