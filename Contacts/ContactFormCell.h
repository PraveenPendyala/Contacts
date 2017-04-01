//
//  ContactFormCell.h
//  Contacts
//
//  Created by Tech Team on 3/31/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactFormCell: UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *label;

-(void)configure:(NSString *)text;

@end
