//
//  UIApplication+FileAttribute.h
//  AppDetails
//
//  Created by Tushar Bhattacharyya on 26/05/12.
//  Copyright (c) 2012 __My_Company__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSFileManager (FileSize)

+ (unsigned long long)applicationDataSize;
+ (unsigned long long)dataSizeAtPath:(NSString*)path;
        
@end
