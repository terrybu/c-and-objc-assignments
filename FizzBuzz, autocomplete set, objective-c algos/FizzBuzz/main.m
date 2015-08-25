//
//  main.m
//  FizzBuzz
//
//  Created by Terry Bu on 8/10/15.
//  Copyright (c) 2015 Terry Bu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectiveCPracticeAlgoManager.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int myArray[5];
        myArray[0] = 3;
        myArray[1] = 13;
        myArray[2] = 23;
        myArray[3] = 45;
        myArray[4] = 50;

        [ObjectiveCPracticeAlgoManager runFizzBuzz:myArray];
        
        
        NSString *string = @"badcar";
        NSSet *set = [[NSSet alloc]initWithArray:@[@"bad", @"car"]];
        
        NSLog(@"%@", [ObjectiveCPracticeAlgoManager returnOurNewAutoCompleteString:string wordsSet:set]);
        
    }
    return 0;
}
