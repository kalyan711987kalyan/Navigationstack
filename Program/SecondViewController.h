//
//  SecondViewController.h
//  Program
//
//  Created by fis on 7/20/15.
//  Copyright (c) 2015 fis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"

@interface SecondViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
{
    Student *stdObj;
}
@property(strong, nonatomic) Student *stdObj;
@end
