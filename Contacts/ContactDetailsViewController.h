//
//  ContactDetailsViewController.h
//  Contacts
//
//  Created by Tech Team on 4/2/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactDetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSString *fieldValue;
@property (nonatomic) NSInteger fieldIndex;

@end
