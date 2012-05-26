//
//  NSString+FileSystem.h
//  AppDetails
//
//  Created by Tushar Bhattacharyya on 26/05/12.
//  Copyright (c) 2012 __My_Compnay__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (FileSystem)

+ (NSString *)stringFromFileSize:(int)theSize;
+ (NSString*)appDirectoryPath;

@end
