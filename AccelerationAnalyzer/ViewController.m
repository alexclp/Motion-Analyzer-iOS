//
//  ViewController.m
//  AccelerationAnalyzer
//
//  Created by Alexandru Clapa on 25.04.2014.
//  Copyright (c) 2014 Alexandru Clapa. All rights reserved.
//

#import "ViewController.h"
#import "GatheredData.h"
#import "FileWriter.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray *totalData;

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

- (IBAction)startAnalyzing:(id)sender
{
	[self startMotionDetect];
}

- (IBAction)stopAnalyzing:(id)sender
{
	[self.motionManager stopAccelerometerUpdates];
}

- (IBAction)sendData:(id)sender
{
	
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	self.totalData = [[NSMutableArray alloc] init];
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

- (void)startMotionDetect
{
	
	[self.motionManager startAccelerometerUpdatesToQueue:[[NSOperationQueue alloc] init]
                                             withHandler:^(CMAccelerometerData *data, NSError *error) {
		 dispatch_async(dispatch_get_main_queue(), ^{
			 NSString *x = [NSString stringWithFormat:@"%f", data.acceleration.x];
			 NSString *y = [NSString stringWithFormat:@"%f", data.acceleration.y];
			 NSString *z = [NSString stringWithFormat:@"%f", data.acceleration.z];
			 
			 NSMutableDictionary *current = [[NSMutableDictionary alloc] init];
			 [current setObject:x forKey:@"x"];
			 [current setObject:y forKey:@"y"];
			 [current setObject:z forKey:@"z"];
			 
			 [self.totalData addObject:current];

						});
	 }
	 ];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
