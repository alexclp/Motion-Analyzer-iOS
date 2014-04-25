//
//  FileWriter.h
//  AccelerationAnalyzer
//
//  Created by Alexandru Clapa on 25.04.2014.
//  Copyright (c) 2014 Alexandru Clapa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MessageUI/MessageUI.h>

@interface FileWriter : NSObject <MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate>

+ (void)writeDataToFile:(NSMutableArray *)data;

@end
