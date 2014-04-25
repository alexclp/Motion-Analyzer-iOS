//
//  AppDelegate.h
//  AccelerationAnalyzer
//
//  Created by Alexandru Clapa on 25.04.2014.
//  Copyright (c) 2014 Alexandru Clapa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
	CMMotionManager *motionManager;
}

@property (readonly, nonatomic) CMMotionManager *motionManger;

@property (strong, nonatomic) UIWindow *window;

@end
