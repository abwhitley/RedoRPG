//
//  Character.h
//  RedoRPG
//
//  Created by Austins Work on 8/29/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum rpgClasses{
    ClassKnight = 1,
    ClassAssassin,
    ClassMage,
    ClassNull = INT_MIN,
    ClassFirst = ClassKnight,
    ClassLast = ClassMage
}rpgClasses;

typedef enum rpgRaces{
    RaceHuman =1,
    RaceOrc,
    RaceElf,
    RaceDwarf,
    RaceNull = INT_MIN,
    RaceFirst = RaceHuman,
    RaceLast = RaceDwarf
}rpgRaces;

typedef enum HumanClasses{
    HumanKnight = 1,
    HumanThief,
    HumanWarlock,
    HumanClassNull = INT_MIN,
    HumanClassFirst = HumanKnight,
    HumanClassLast = HumanWarlock
}HumanClasses;

typedef enum OrcClasses{
    OrcWarrior= 1,
    OrcPaladin,
    OrcWitchDoctor,
    OrcClassNull = INT_MIN,
    OrcClassFirst = OrcWarrior,
    OrcClassLast = OrcWitchDoctor
}OrcClasses;

typedef enum ElfClasses{
    ElfWarrior= 1,
    ElfAssassin,
    ElfMage,
    ElfClassNull = INT_MIN,
    ElfClassFirst = ElfWarrior,
    ElfClassLast = ElfMage
}ElfClasses;

typedef enum DwarfClasses{
    DwarfRanged= 1,
    DwarfAssassin,
    DwarfEngineer,
    DwarfClassNull = INT_MIN,
    DwarfClassFirst = DwarfRanged,
    DwarfClassLast = DwarfEngineer
}DwarfClasses;

@interface Character : NSObject{
    
}

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *race;
@property (nonatomic) NSString *classType;
-(instancetype)initWithPlayerName:(NSString *)name
                     characterRace:(NSString *)race
                characterClassType: (NSString *)classType NS_DESIGNATED_INITIALIZER;


@end
