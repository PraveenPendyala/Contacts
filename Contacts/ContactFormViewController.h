//
//  ContactFormViewController.h
//  Contacts
//
//  Created by Praveen Pendyala on 3/29/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DoneView.h"
#import "GenderView.h"

@interface ContactFormViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, DoneViewDelegate, GenderViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, atomic) NSMutableArray *dataSource;

@end

