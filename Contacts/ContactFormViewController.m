//
//  ViewController.m
//  Contacts
//
//  Created by Praveen Pendyala on 3/29/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import "ContactFormViewController.h"
#import "ContactFormCell.h"

@interface ContactFormViewController ()

@end

@implementation ContactFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *cellNib = [UINib nibWithNibName:@"ContactFormCell"
                                    bundle:nil];
    [[self tableView] registerNib:cellNib
           forCellReuseIdentifier:@"ContactFormCell"];
    
    self.dataSource = [NSMutableArray arrayWithObjects:@"First Name",@"",
                                                       @"Last Name" ,@"",
                                                       @"Age"       ,@"",
                                                       @"Gender"    ,@"",
                                                       @"Address1"  ,@"",
                                                       @"Address2"  ,@"",
                                                       @"ZipCode"   ,@"",
                                                       @"State"     ,@"",
                                                       nil];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// MARK: -
// MARK: Datasource and Delegate

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ContactFormCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactFormCell"
                                                            forIndexPath:indexPath];
    if (indexPath.row % 2 != 0) {
    [cell configure:[[self dataSource] objectAtIndex:[indexPath row]] color:[UIColor whiteColor]];
    }
    else {
    [cell configure:[[self dataSource] objectAtIndex:[indexPath row]] color:[UIColor clearColor]];
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self dataSource] count];
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:false];
    if (indexPath.row % 2 != 0) {
        [self performSegueWithIdentifier:@"ContactDetail"
                                  sender:self];
    }
}

@end
