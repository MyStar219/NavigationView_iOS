//
//  ViewController.m
//  NavigationViews
//
//  Created by Prince on 12/29/16.
//  Copyright © 2016 Prince. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)onPressMe:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *mLabel1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onPressMe:(id)sender {
    [_mLabel1 setText:(@"Button Pressed!")];
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    
    UIViewController *controller = [mainStoryboard instantiateViewControllerWithIdentifier: @"SecondViewCtrl"];
    
//    [self.navigationController pushViewController:controller animated:YES];
    
    [self presentViewController:controller animated:YES completion:^{ }];

}
@end
