//
//  main.c
//  #7 Replace_string
//
//  Created by Aditya Narayan on 9/2/14.
//  Copyright (c) 2014 NM. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#define MAX 100

void replace_string(char test[]);

int main(int argc, const char * argv[])
{
    const char ghost_it[] = "This is a test";
    replace_string(ghost_it);
    return 0;
}

void replace_string(char test[]) {
    char left[MAX] = "";
    char ghost[10] = "gho";
    char right[MAX];
    int booleanFoundTe = 0;
    
    /* keep adding character to left array unless you hit 't' and 'e' consecutively */
    for (int i=0; i < strlen(test); i++) {
        if ((test[i] == 't') && (test[i+1] == 'e')) {
            /* if checked character equals 't' and the next character equals 'e', we have a match */
            for (int j = i + 2; j < strlen(test); j++) {
                right[strlen(right)] = test[j];
            }
            booleanFoundTe = 1;
            strcat(left, ghost);
            strcat(left, right);
            printf("%s\n", left);
        }
        else {
            left[strlen(left)] = test[i];
        }
    }
    /* if we never found TE, then we just print out everything we added to the left array */
    if (booleanFoundTe == 0) {
        printf("%s\n", left);
    }
}