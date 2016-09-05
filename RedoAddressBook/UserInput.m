//
//  UserInput.m
//  RedoAddressBook
//
//  Created by Austins Work on 8/30/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
NSMutableString *getStringFromUser(int nameLength, NSString *prompt) {
    
    char *buffer = malloc(sizeof(char) * nameLength);
    
    char *result = NULL;
    while (result != buffer) {
        fpurge(stdin);
        NSLog(@"%@", prompt);
        result = fgets(buffer, nameLength, stdin);
    }
    
    NSString *returnValue = @(buffer);
    
    free(buffer);
    NSMutableString *mutableReturnValue = [returnValue mutableCopy];
    return mutableReturnValue;
}

NSString* getEmailFromUser(){
    NSString* email = getStringFromUser(100, @"Insert Persons Email: ");
    return email;
}

NSString* getNameFromUser(){
    NSString *name = getStringFromUser(100, @"Insert name: ");
    return name;
}

NSString* getBuddyFromUser(){
    NSString *buddy = getStringFromUser(100, @"Insert friend's name: ");
    return buddy;
}








