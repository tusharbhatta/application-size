//
//  TBViewController.m
//  AppDetails
//
//  Created by Tushar Bhattacharyya on 26/05/12.
//  Copyright (c) 2012 __My_Compnay__. All rights reserved.
//

#import "TBViewController.h"
#import "NSFileManager+FileSize.h"
#import "NSString+FileSystem.h"

@implementation TBViewController
@synthesize sizeLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (NSString*)readableApplicationDataSize{
    
    NSString *sizeInString = [NSString stringFromFileSize:[NSFileManager applicationDataSize]];
    
    return sizeInString;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *size = [self readableApplicationDataSize];
    
    self.sizeLabel.text = size;
    
    NSLog(@"%@",size);
}

- (void)viewDidUnload
{
    [self setSizeLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)dealloc {
    [sizeLabel release];
    [super dealloc];
}
@end
