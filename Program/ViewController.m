//
//  ViewController.m
//  Program
//
//  Created by fis on 7/17/15.
//  Copyright (c) 2015 fis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *aTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /** comment update formate */
    stdObj=[[Student alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ======== TableView Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithFrame:CGRectZero];
    }
    
    if (indexPath.row==0)
    {
        UITextField *aTextField = [[UITextField alloc]initWithFrame :CGRectMake(15, 5, 300, 34)];
        aTextField.delegate=self;
        if ([stdObj.sName length]>0)
        {
            aTextField.text = stdObj.sName;
        }
        else{
            aTextField.placeholder=@"Enter Student Name";
        }
        [cell addSubview:aTextField];
    }
    else if (indexPath.row==1)
    {
        if ([stdObj.sClass length]>0)
        {
            cell.textLabel.text = stdObj.sClass;
        }
        else{
            cell.textLabel.text = @"Enter Student Class";
        }
    }
    else if (indexPath.row==2)
    {
        if ([stdObj.sSection length]>0)
        {
            cell.textLabel.text = stdObj.sSection;
        }
        else{
            cell.textLabel.text = @"Enter Student Section";
        }
    }
    else{
        if ([stdObj.sGender length]>0)
        {
            cell.textLabel.text = stdObj.sGender;
        }
        else{
            cell.textLabel.text = @"Enter Student Gender";
        }
    }
    return cell;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    stdObj.sName =textField.text;
    NSLog(@"Student Object sName is %@",stdObj.sName);
    NSLog(@"Student Object sName is %s",[stdObj.sName UTF8String]);
    printf("Student Object sName is %s",[stdObj.sName UTF8String]);
    [textField resignFirstResponder];
    return YES;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==1)
    {
        [self performSegueWithIdentifier:@"pickerSegue" sender:nil];
    }else if (indexPath.row==2){
        
        
        [self performSegueWithIdentifier:@"pushtothirdview" sender:nil];

    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"pushtothirdview"]) {
        
    }else if([segue.identifier isEqualToString:@"pickerSegue"]){
        SecondViewController *svc = [segue destinationViewController];
        svc.stdObj=stdObj;
 
    }
    
}


-(void)viewWillAppear:(BOOL)animated
{
    [_aTableView reloadData];
    self.navigationController.navigationBarHidden=YES;

}

@end
