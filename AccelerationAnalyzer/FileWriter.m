//
//  FileWriter.m
//  AccelerationAnalyzer
//
//  Created by Alexandru Clapa on 25.04.2014.
//  Copyright (c) 2014 Alexandru Clapa. All rights reserved.
//

#import "FileWriter.h"

@implementation FileWriter

+ (void)writeDataToFile:(NSMutableArray *)data
{
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"data.plist"];
	
	BOOL status = [data writeToFile:filePath atomically:YES];
	
	NSLog(@"saved = %hhd", status);
}

@end
