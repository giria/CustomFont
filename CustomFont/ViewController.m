//
//  ViewController.m
//  CustomFont
//
//  Created by Joan Barrull Ribalta on 19/03/15.
//  Copyright (c) 2015 com.giria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }
    
    self.textView.font = [UIFont fontWithName:@"Roboto-Black" size:20];
    self.textView.font = [UIFont fontWithName:@"Roboto-Light" size:25];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
