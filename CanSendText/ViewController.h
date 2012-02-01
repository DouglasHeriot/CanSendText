//
//  ViewController.h
//  CanSendText
//
//  Created by Douglas Heriot on 1/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController <MFMessageComposeViewControllerDelegate>
- (void)handleCanSendText;
@end
