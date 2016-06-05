//
//  AppDelegate.m
//  objc-dictionary-practice
//
//  Created by Flatiron School on 5/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSDictionary *favoriteBands = @{};
    NSMutableDictionary *mFavoriteBands = [NSMutableDictionary dictionaryWithDictionary:favoriteBands];
    [mFavoriteBands setObject:@"Scary Monsters" forKey:@"David Bowie"];
    mFavoriteBands[@"Bruce Springsteen"]= @"Nebraska";
    mFavoriteBands[@"Bob Dylan"]= @"The FreeWheelin' Bob Dylan";
    
    NSLog(@"These are a few of my favorite things, err, bands:%@", mFavoriteBands);
    
    [mFavoriteBands removeObjectForKey:@"Bruce Springsteen"];
    
    NSLog(@"These are a few of my favorite things, err, bands:%@", mFavoriteBands);
    
    for (NSString *Artist in mFavoriteBands) {
        NSLog(@"%@",mFavoriteBands[Artist]);
    }
    
    for (NSString *Artist in mFavoriteBands) {
        NSLog(@"%@",[mFavoriteBands objectForKey:Artist]);
    }
    
    NSArray *matchingKeys = [mFavoriteBands allKeysForObject:@"Scary Monsters"];
    
    NSLog(@"%@",matchingKeys);
    
    NSDictionary *scaryMonsters = @{ @1 : @"It's No Game",
                                     @2 : @"Up The Hill Backwards",
                                     @3 : @"Scary Monsters",
                                     @4 : @"Ashes To Ashes"};
    
    [mFavoriteBands setObject:@{@"Scary Monsters" : scaryMonsters} forKey:@"David Bowie"];
    
    NSDictionary *freeWheelin = @{ @1 : @"Blowin' In The Wind",
                                   @2 : @"Girl From The North Country",
                                   @3 : @"Masters Of War",
                                   @4 : @"Down The Highway"};
    
    [mFavoriteBands setObject:@{@"Freewheelin' Bob Dylan" : freeWheelin} forKey:@"Bob Dylan"];

    
    NSLog(@"%@",mFavoriteBands);
    
    for (NSNumber *songNumbers in mFavoriteBands[@"David Bowie"]) {
        NSLog(@"%@", mFavoriteBands[@"David Bowie"][songNumbers]);
    }
    
    
    NSMutableDictionary *favoriteAlbums = [[NSMutableDictionary alloc]init];
    
    NSArray *bandKeys = [mFavoriteBands allKeys];
    for (NSString *str in bandKeys) {
        [favoriteAlbums addEntriesFromDictionary:mFavoriteBands[str]];
    }

    
    NSLog(@"%@",favoriteAlbums);
    
    
    // Do not alter
    return YES;  //
}   ///////////////

@end
