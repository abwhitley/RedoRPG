//
//  Character.m
//  RedoRPG
//
//  Created by Austins Work on 8/29/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import "Character.h"

@implementation Character
-(instancetype)init{
    return [self initWithPlayerName:@"UnNammed"
                      characterRace:@"Undecided"
                 characterClassType:@"Unchosen"];
            }

-(instancetype) initWithPlayerName:(NSString *)name
                      characterRace:(NSString *)race
                characterClassType: (NSString *)classType{
    self = [super init];
    if(self){
        _name = name;
        _race = race;
        _classType = classType;
    }
    return self;
}
-(NSString *)name {
    return _name;
}
-(NSString *)race {
    return _race;
}
-(NSString *) classType{
    return _classType;
}
@end
