//
//  JBViewController.m
//  WHWriterApp
//
//  Created by Jeremy on 5/12/14.
//  Copyright (c) 2014 CS491. All rights reserved.
//

#import "JBNavController.h"
#import "JBViewController.h"
#import "JBView.h"

@interface JBViewController ()

@end

@implementation JBViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    JBView *view = [[JBView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [view.login addTarget:self action:@selector(didTapMyButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:view];
    // Do any additional setup after loading the view.
}

-(void)didTapMyButton:(UIButton *)sender
{
    
    [self Next];
}

-(IBAction)Next
{
    JBNavController *Navigation = [[JBNavController alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:Navigation animated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
