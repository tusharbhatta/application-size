//
//  UIApplication+FileAttribute.m
//  AppDetails
//
//  Created by Tushar Bhattacharyya on 26/05/12.
//  Copyright (c) 2012 __My_Company__. All rights reserved.
//

#import "NSFileManager+FileSize.h"
#import "NSString+FileSystem.h"

@implementation NSFileManager (FileSize)


+ (unsigned long long)applicationDataSize{
    
    NSString *homeDirectory = [NSString appDirectoryPath];
    
    return [self dataSizeAtPath:homeDirectory];
}


+ (unsigned long long)dataSizeAtPath:(NSString*)path{
    
    NSError *error;
    unsigned long long int folderSize = 0;
    
    NSString *dirPath = path;
    
    NSArray *filesArray = [[NSFileManager defaultManager] subpathsOfDirectoryAtPath:dirPath error:&error];
    NSEnumerator *filesEnumerator = [filesArray objectEnumerator];
    NSString *fileName;
    
    while (fileName = [filesEnumerator nextObject]) {
        NSDictionary *fileDictionary = [[NSFileManager defaultManager] attributesOfItemAtPath:[dirPath stringByAppendingPathComponent:fileName] error:&error];
        folderSize += [fileDictionary fileSize];
    } 
    
    //NSLog(@"Size: %llu",folderSize);
    
    return folderSize;

}


@end
