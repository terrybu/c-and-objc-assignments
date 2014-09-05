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
        
        //parse the content string delimited by new lines first
        //with the current text file, it will make 3 name-address pairs
        
        //parse the content string delimited by comma next, make it into an array
        //["Tiffany Lan", "Addresss"]
        
        //The result we want is an array of objects
        //In a loop, as soon as you have person.name = "Tiffany Lan" and person.address = "Something", push it into that result array
        //At the end of all the loops, you should have an array of Person objects
        //Custom class unless you specify is mutable
        
        
        
    }
    return 0;
}

