//
//  ViewController.m
//  CanSendText
//
//  Created by Douglas Heriot on 1/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[[NSNotificationCenter defaultCenter] addObserverForName:MFMessageComposeViewControllerTextMessageAvailabilityDidChangeNotification object:nil queue:nil usingBlock:^(NSNotification *note) {
		NSLog(@"MFMessageComposeViewControllerTextMessageAvailabilityDidChangeNotification: %@", note);
		[self handleCanSendText];
	}];
	
	[[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification object:nil queue:nil usingBlock:^(NSNotification *note) {
		NSLog(@"UIApplicationDidBecomeActiveNotification: %@", note);
		[self handleCanSendText];
	}];
}

- (void)handleCanSendText
{
	if([MFMessageComposeViewController canSendText])
	{
		self.view.backgroundColor = [UIColor greenColor];
		
		MFMessageComposeViewController *m = [[MFMessageComposeViewController alloc] init];
		m.messageComposeDelegate = self;
		m.body = @"It works!";
		m.recipients = [NSArray array];
		
		[self presentModalViewController:m animated:YES];
	}
	else
	{
		self.view.backgroundColor = [UIColor redColor];
	}
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
	NSLog(@"messageComposeViewController:didFinishWithResult:");
	[self dismissModalViewControllerAnimated:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
	return YES;
}

@end
