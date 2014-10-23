//
//  FISDataStore.m
//  playingWithCoreData
//
//  Created by Joe Burgess on 6/27/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISDataStore.h"
#import "Message.h"

@implementation FISDataStore
@synthesize managedObjectContext = _managedObjectContext;


+ (instancetype)sharedDataStore {
    static FISDataStore *_sharedDataStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedDataStore = [[FISDataStore alloc] init];
    });

    return _sharedDataStore;
}




- (void)generateTestData
{
    Message *messageOne = [NSEntityDescription insertNewObjectForEntityForName:@"Message" inManagedObjectContext:self.managedObjectContext];
    
    messageOne.content = @"Message 1";
    messageOne.createdAt = [NSDate date];
    
    Message *messageTwo = [NSEntityDescription insertNewObjectForEntityForName:@"Message" inManagedObjectContext:self.managedObjectContext];
    messageTwo.content = @"Message 2";
    messageTwo.createdAt = [NSDate date];
    
    Message *messageThree = [NSEntityDescription insertNewObjectForEntityForName:@"Message" inManagedObjectContext:self.managedObjectContext];
    
    messageThree.content = @"Message 3";
    messageThree.createdAt = [NSDate date];

    [self save];
    [self fetchData];
}

- (void)fetchData
{
    NSFetchRequest *messagesRequest = [NSFetchRequest fetchRequestWithEntityName:@"Message"];

    NSSortDescriptor *createdAtSorter = [NSSortDescriptor sortDescriptorWithKey:@"createdAt" ascending:YES];
    messagesRequest.sortDescriptors = @[createdAtSorter];

    self.messages = [self.managedObjectContext executeFetchRequest:messagesRequest error:nil];

    if ([self.messages count]==0) {
        [self generateTestData];
    }
}

- (Message *)createMessage
{
    return [Message messageWithContext:self.managedObjectContext];
}
@end
