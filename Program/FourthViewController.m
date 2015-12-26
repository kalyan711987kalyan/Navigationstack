//
//  FourthViewController.m
//  Program
//
//  Created by kalyan chakravarthy on 26/12/15.
//  Copyright © 2015 fis. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController (){
    
}
@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(IBAction)image_buttonAction:(id)sender{
    
    [self.navigationController popToRootViewControllerAnimated:YES];
     }
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
