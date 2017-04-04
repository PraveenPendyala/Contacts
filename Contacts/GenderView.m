//
//  GenderView.m
//  Contacts
//
//  Created by Praveen Pendyala on 3/31/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import "GenderView.h"

@interface GenderView()

@end

@implementation GenderView

- (IBAction)genderSelected:(id)sender {
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            [self.delegate genderChanged:@"Male"];
            break;
        case 1:
            [self.delegate genderChanged:@"Female"];
            break;
        default:
            break;
    }
}

@end
