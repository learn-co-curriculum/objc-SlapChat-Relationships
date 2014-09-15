//
//  FISRecipientTableViewController.m
//  slapChat
//
//  Created by Chris Gonzales on 9/15/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISRecipientTableViewController.h"
#import "FISDataStore.h"
#import "Recipient.h"
#import "FISTableViewController.h"

@interface FISRecipientTableViewController ()

@property (strong, nonatomic) FISDataStore *store;

@end

@implementation FISRecipientTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.store = [FISDataStore sharedDataStore];
    [self.store fetchData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.store.recipients.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"rightDetailCell" forIndexPath:indexPath];
    
    Recipient *currentRecipient = self.store.recipients[indexPath.row];
    
    cell.textLabel.text = currentRecipient.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", currentRecipient.messages.count];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *ip = [self.tableView indexPathForSelectedRow];
    Recipient *selectedRecipient = self.store.recipients[ip.row];
    
    FISTableViewController *nextVC = segue.destinationViewController;
    nextVC.messages = [selectedRecipient.messages allObjects];
    
}

@end
