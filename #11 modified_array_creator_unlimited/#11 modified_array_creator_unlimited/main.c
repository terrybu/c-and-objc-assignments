//
//  main.c
//  #11 modified_array_creator_unlimited
//
//  Created by Aditya Narayan on 9/4/14.
//  Copyright (c) 2014 NM. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#define MAX 10000

void array_creator(char str[], char delim[]);

int main(int argc, const char * argv[])
{
    char country_string[100] = "USA. Canada, Mexico,Bermuda Grenada,Belize Germany.Korea";
    char delim[MAX] = ", .";
    
    array_creator(country_string, delim);
    
    return 0;
}

void array_creator(char str[], char delim[]) {
    char* token;
    char* results[100] = {};
    
    printf ("Splitting string %s into tokens:\n",str);
    token = strtok (str, delim);
    
    int index = 0;
    results[index] = token;
    
    while (token != NULL)
    {
        printf ("-%s\n", token);
        token = strtok (NULL, delim);
        index+=1;
        results[index] = token;
    }
    
    /* print out everything in the results array */
    printf ("*******\nPrinting out results array: \n");
    
    int i = 0;
    while(results[i]){
        printf("%s\n", results[i]);
        i++;
    }
    
}


