//
//  main.m
//  RedoAddressBook
//
//  Created by Austins Work on 8/30/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL wantToContinue = YES;
        int numberOfEntries = 0;

        while(wantToContinue){
            NSInteger addMore = -1;
            NSMutableDictionary *addressBook = [NSMutableDictionary dictionaryWithDictionary:@{}];
            [addressBook setObject:getNameFromUser() forKey:getEmailFromUser()];
            if (numberOfEntries > 0)
                [addressBook setObject:getBuddyFromUser() forKey:getEmailFromUser()];
            addMore = getStringFromUser(100,@"Would You like to add more?\n Enter 0 for YES\n Enter 1 for No\n").integerValue;
            numberOfEntries++;
            if(addMore == 0){
                 wantToContinue =YES;
                
            }else{
                 wantToContinue = NO;
            }
            NSLog(@"%@", addressBook);
            
        }

        
    }
    return 0;
}
