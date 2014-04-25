//
//  ViewController.h
//  AccelerationAnalyzer
//
//  Created by Alexandru Clapa on 25.04.2014.
//  Copyright (c) 2014 Alexandru Clapa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController

- (IBAction)startAnalyzing:(id)sender;
- (IBAction)stopAnalyzing:(id)sender;
- (IBAction)sendData:(id)sender;

@end
