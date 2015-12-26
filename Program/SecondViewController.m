//
//  SecondViewController.m
//  Program
//
//  Created by fis on 7/20/15.
//  Copyright (c) 2015 fis. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    NSArray *classArr;
}
@end

@implementation SecondViewController
@synthesize stdObj;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    classArr=[[NSArray alloc]initWithObjects:@"First Class",@"Second Class",@"Third Class",@"Fourth Class",@"Fifth Class", nil];
    
    self.navigationController.navigationBarHidden=NO;

}
-(IBAction)Done_buttonAction:(id)sender{
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [classArr count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [classArr objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    stdObj.sClass=[classArr objectAtIndex:row];
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
