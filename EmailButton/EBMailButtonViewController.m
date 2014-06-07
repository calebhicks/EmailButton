//
//  EBMailButtonViewController.m
//  EmailButton
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "EBMailButtonViewController.h"

@import MessageUI;

@interface EBMailButtonViewController () <MFMailComposeViewControllerDelegate>

@end

@implementation EBMailButtonViewController

- (IBAction)sendEmail:(id)sender {

    MFMailComposeViewController *mailView = [[MFMailComposeViewController alloc]init];
    mailView.mailComposeDelegate = self;
    [mailView setSubject:@"Look! It's a Subject!"];    
    
    
    if ([MFMailComposeViewController canSendMail]) {
        [self presentViewController:mailView animated:YES completion:nil];
    }
    
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
