//
//  TBDictionary.m
//  #24 Hash Table
//
//  Created by Aditya Narayan on 9/8/14.
//  Copyright (c) 2014 NM. All rights reserved.
//

#import "TBDictionary.h"

@implementation TBDictionary

- (void) sayHello
{
    NSLog(@"Hello, I'm TBDictionary");
}

- (void) findValueAtKey:(NSString *)key {
    //you have an array of values
    //you have an array of keys
    
    //find the index of the passed argument key out of the keys arrays
    //What index is it?
    
    NSUInteger index = [self.keys indexOfObject:key];
    
    //then find the value with the same index in the values array
    
    NSString *resultValue = self.values[index];
    
    
    NSLog(@"%@", resultValue);
}

- (void) findKeyAtValue:(NSString *)value {
    NSUInteger index = [self.values indexOfObject:value];
    //then find the value with the same key in the keys array
    NSString *resultKey = self.keys[index];
    
    NSLog(@"%@", resultKey);
}


@end
