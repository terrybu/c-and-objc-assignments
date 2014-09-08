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

- (void) findValueAtKey:(id)key {
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

- (void) setValue:(NSString *)value forKey:(id)key {
    //put the value and the key into the respective arrays
    [self.keys addObject:key];
    [self.values addObject: value];
}


@end
