//
//  DoneView.m
//  Contacts
//
//  Created by Praveen Pendyala on 4/2/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import "DoneView.h"

@interface DoneView()

@end

@implementation DoneView

- (IBAction)doneButtonPressed:(id)sender {
    [[self delegate] doneButtonPressed];
}

@end
