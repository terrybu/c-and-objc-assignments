//
//  main.m
//  #24 Hash Table
//
//  Created by Aditya Narayan on 9/8/14.
//  Copyright (c) 2014 NM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TBDictionary.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Make your own dictionary
        //Key and a value is always connected
        //A Hash table, dictionary or an ASSOCIATIVE ARRAY are all same things
        //it's basically 2 arrays interacting with each other
        //one array of keys
        //another array of values
        //you can get the value if you know the key
        //you can get the key if you know the value
        
        NSArray *keyArray = @[@"Animal", @"Bug", @"Human"];
        NSArray *valueArray = @[@"Horse", @"Praying Mantis", @"John"];
        
        TBDictionary *test = [[TBDictionary alloc]init];
        test.keys = keyArray;
        test.values = valueArray;
        
        //pseudocode
        
        NSLog(test.keys.description);
        [test findValueAtKey:@"Bug"];
        [test findKeyAtValue:@"John"];
        
    }
    return 0;
}

