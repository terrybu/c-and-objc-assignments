//
//  main.m
//  #23
//
//  Created by Aditya Narayan on 9/5/14.
//  Copyright (c) 2014 NM. All rights reserved.
//

#import <Foundation/Foundation.h> //brackets for standard library imports
#import "Person.h" //quotes for importing non-libraries

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *person1 = [[Person alloc] init]; //alloc is allocating memory and init initializes the object
        person1.name = @"Terry Bu";
        person1.address = @"2111 21st Rd, Astoria NY 11105";
        
        NSLog(@"Hello, %@!", person1.name);
        NSLog(@"%@", person1.address);
        
        
        //read from a file
        //*I originally had some path below involving NSBundle Mainbundle but it didn't work. Once simplified down to string form like below, it works
        
        NSString* path = @"/Users/adityanarayan/Desktop/TerryBu/Input_Folder/names&addresses.txt";
        NSString* content = [NSString stringWithContentsOfFile:path encoding:NSASCIIStringEncoding error:NULL];
        
        NSLog(@"%@", content);
        
    }
    return 0;
}

