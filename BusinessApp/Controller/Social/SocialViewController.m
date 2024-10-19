//
//  SocialViewController.m
//  BusinessApp
//
//  Created by Dev on 19.10.2024.
//

#import "SocialViewController.h"
#import "SocialTableViewCell.h"

@interface SocialViewController ()

@end

@implementation SocialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Social" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    _dataSelect = dict[@"SocialMedia"];
    
    self.tableView.rowHeight = 70;
    
    self.navigationItem.title = @"Social Links";
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSelect.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SocialTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    // Configure the cell...
    NSDictionary *dict = _dataSelect[indexPath.row];
    cell.cellTitle.text = dict[@"Title"];
    cell.cellImageView.image = [UIImage imageNamed:dict[@"Image"]];
    
    cell.cellImageView.layer.cornerRadius = 5;
    cell.cellImageView.clipsToBounds = YES;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Deselect the cell (optional)
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // Handle the selection
    NSDictionary *dict = _dataSelect[indexPath.row];
    NSString *url = dict[@"URL"];
    NSLog(@"Selected item: %@", url);
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:url];
    [application openURL:URL options:@{} completionHandler:^(BOOL success) {
        if (success) {
            NSLog(@"Opened url");
        }
    }];
}

@end
