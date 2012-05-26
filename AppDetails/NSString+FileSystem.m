//
//  NSString+FileSystem.m
//  AppDetails
//
//  Created by Tushar Bhattacharyya on 26/05/12.
//  Copyright (c) 2012 __My_Compnay__. All rights reserved.
//

#import "NSString+FileSystem.h"

@implementation NSString (FileSystem)


+ (NSString *)stringFromFileSize:(int)theSize{
	float floatSize = theSize;
    
	if (theSize<1023)
		return([NSString stringWithFormat:@"%i bytes",theSize]);
	floatSize = floatSize / 1024;
	if (floatSize<1023)
		return([NSString stringWithFormat:@"%1.1f KB",floatSize]); // xxx.y
	floatSize = floatSize / 1024;
	if (floatSize<1023)
		return([NSString stringWithFormat:@"%1.2f MB",floatSize]); ///xxx.yy
	floatSize = floatSize / 1024;
    
	return([NSString stringWithFormat:@"%1.2f GB",floatSize]);
}


+ (NSString*)appDirectoryPath{
    
    //    NSArray *_documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //    NSString *_documentsDirectory = [_documentPaths objectAtIndex:0];   
    //    NSURL *documentURL = [NSURL fileURLWithPath:_documentsDirectory isDirectory:YES];
    //    NSURL *appURL = [documentURL URLByDeletingLastPathComponent];
    //    
    //    return [appURL relativePath];  dhus use the below shortcut one
    
    return NSHomeDirectory();
    
}


@end
