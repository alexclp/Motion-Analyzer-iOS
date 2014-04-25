//
//  ViewController.m
//  AccelerationAnalyzer
//
//  Created by Alexandru Clapa on 25.04.2014.
//  Copyright (c) 2014 Alexandru Clapa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (CMMotionManager *)motionManager
{
	CMMotionManager *motionManager = nil;
	
	id appDelegate = [[UIApplication sharedApplication] delegate];
	
	if ([appDelegate respondsToSelector:@selector(motionManager)]) {
		motionManager = [appDelegate motionManager];
	}
	
	return motionManager;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
