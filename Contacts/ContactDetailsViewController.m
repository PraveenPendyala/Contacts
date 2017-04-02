//
//  ContactDetailsViewController.m
//  Contacts
//
//  Created by Tech Team on 4/2/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import "ContactFormViewController.h"
#import "ContactDetailsViewController.h"

@interface ContactDetailsViewController ()

@end

@implementation ContactDetailsViewController

- (IBAction)cancelButtonPressed:(id)sender {
    [[self navigationController] popViewControllerAnimated:true];
}

- (IBAction)doneButtonPressed:(id)sender {
    [[self navigationController] popViewControllerAnimated:true];
    ContactFormViewController *contactFormVC    = (ContactFormViewController *)[[self navigationController] topViewController];
    contactFormVC.dataSource[[self fieldIndex]] = [[self textField] text];
}

// MARK: -
// MARK: View Cycle
- (void)viewDidLoad{
    [super viewDidLoad];
    [[self textField] setPlaceholder:[self title]];
    [[self textField] setText:[self fieldValue]];
}

@end

