//
//  TBDictionary.h
//  #24 Hash Table
//
//  Created by Aditya Narayan on 9/8/14.
//  Copyright (c) 2014 NM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TBDictionary : NSObject
- (void) sayHello;
- (void) findValueAtKey:(NSString *)key;
- (void) findKeyAtValue:(NSString *)value;

@property NSArray *keys;
@property NSArray *values;

@end
