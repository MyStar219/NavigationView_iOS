//
//  secondViewController.m
//  NavigationViews
//
//  Created by Prince on 12/29/16.
//  Copyright © 2016 Prince. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tblData;
@property (nonatomic, strong) NSArray *arrayData;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tblData.delegate = self;
    self.tblData.dataSource = self;
    self.arrayData = @[@"1st Item", @"2nd Item", @"3rd Item"];
//    self.arrayData = [[NSArray alloc] initWithObjects:@"1st Item", @"2nd Item", @"3rd Item", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayData.count + 1;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.row == self.arrayData.count) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailCell"];
        
        
        return cell;
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TitleCell"];
    
    // Configure Cell
    UILabel *label = (UILabel *)[cell.contentView viewWithTag:1];
    NSString *strTitle = [self.arrayData objectAtIndex:indexPath.row];
    
    [label setText:strTitle];
    
    return cell;
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (nullable NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return indexPath;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    _lblTitle.text = [_arrayData objectAtIndex:indexPath.row];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
