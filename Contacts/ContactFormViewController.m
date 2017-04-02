//
//  ViewController.m
//  Contacts
//
//  Created by Praveen Pendyala on 3/29/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import "ContactFormViewController.h"
#import "ContactFormCell.h"
#import "ContactDetailsViewController.h"

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

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[self tableView] reloadData];
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:false];
    if (indexPath.row % 2 != 0) {
        UIStoryboard *storyboard                      = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        ContactDetailsViewController *contactDetailVC = [storyboard instantiateViewControllerWithIdentifier:@"ContactDetailsViewController"];
        contactDetailVC.title                         = [[self dataSource] objectAtIndex:[indexPath row]-1];
        contactDetailVC.fieldValue                    = [[self dataSource] objectAtIndex:[indexPath row]];
        contactDetailVC.fieldIndex                    = [indexPath row];
        [[self navigationController] pushViewController:contactDetailVC
                                               animated:true];
    }
}

@end
