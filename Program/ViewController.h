//
//  ViewController.h
//  Program
//
//  Created by fis on 7/17/15.
//  Copyright (c) 2015 fis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"
#import "SecondViewController.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>
{
    Student *stdObj;
}

@end

