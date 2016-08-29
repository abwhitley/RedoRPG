//
//  main.m
//  RedoRPG
//
//  Created by Austins Work on 8/29/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
NSString *getHumanClassFromUser();
NSString *getOrcClassFromUser();
NSString *getElfClassFromUser();
NSString *getDwarfClassFromUser();
NSString *getCharacterRaceFromUser();
NSString *getNameFromUser();

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = getNameFromUser();
        NSString *race = getCharacterRaceFromUser();
        NSString *classType;
        if([race  isEqual: @"Human\n"]){
        classType = getHumanClassFromUser();
        }else if([race isEqual:@"Orc\n"]){
            classType = getOrcClassFromUser();
        }else if([race isEqual:@"Elf\n"]){
            classType = getElfClassFromUser();
        }else if([race isEqual:@"Dwarf\n"]){
            classType = getDwarfClassFromUser();
        }
        
        Character *player = [[Character alloc] initWithPlayerName: name
                                                    characterRace: race
                                               characterClassType:classType];

        

        NSLog(@"Your are the famous %@. A %@ in the %@ army.",[player name], [player classType], [player race]);
        
    }
    return 0;
}

NSString *getNameFromUser(){
    char name[100] = "\0";
    fpurge(stdin);
    printf("Enter your Characters name: \n");
    scanf("%[^\n]s", name);
    return @(name);
}

NSString *getCharacterRaceFromUser(){
    rpgRaces raceChosen = RaceNull;
    int errorCode = 0;
    while((errorCode != 1) ||
          (raceChosen < RaceFirst ) || (raceChosen > RaceLast)){
        fpurge(stdin);
        printf("Please Enter: \n");
        printf("    %d: for Human\n", RaceHuman);
        printf("    %d: for Orc\n", RaceOrc);
        printf("    %d: for Elf\n", RaceElf);
        printf("    %d: for Dwarf\n", RaceDwarf);
        errorCode = scanf("%d", &raceChosen);
    }
    switch (raceChosen) {
        case RaceHuman:
            return @"Human\n";
        case RaceOrc:
            return @"Orc\n";
        case RaceElf:
            return @"Elf\n";
        case RaceDwarf:
            return @"Dwarf\n";
        default:
            return @"No Race Identified, You are not of this plane.";
    }
}

NSString *getHumanClassFromUser(){
    
    HumanClasses humanClassChosen = HumanClassNull;
    int errorCode = 0;
    while((errorCode != 1) ||
          (humanClassChosen < HumanClassFirst ) || (humanClassChosen > HumanClassLast)){
        fpurge(stdin);
        printf("Please Enter: \n");
        printf("    %d: for Knight\n", HumanKnight);
        printf("    %d: for Thief\n", HumanThief);
        printf("    %d: for Warlock\n", HumanWarlock);
        errorCode = scanf("%d", &humanClassChosen);
    }
    
    switch (humanClassChosen) {
        case HumanKnight:
            return @"Knight";
        case HumanThief:
            return @"Thief";
        case HumanWarlock:
            return @"Warlock\n";
        default:
            return @"No Class Identified, You are a peasant.";
    }

}
NSString *getOrcClassFromUser(){
    OrcClasses orcClassChosen = OrcClassNull;
    int errorCode = 0;
    while((errorCode != 1) ||
          (orcClassChosen < OrcClassFirst ) || (orcClassChosen > OrcClassLast)){
        fpurge(stdin);
        printf("Please Enter: \n");
        printf("    %d: for Warrior\n", OrcWarrior);
        printf("    %d: for Paladin\n", OrcPaladin);
        printf("    %d: for Witch Doctor\n", OrcWitchDoctor);
        errorCode = scanf("%d", &orcClassChosen);
    }
    switch (orcClassChosen) {
        case OrcWarrior:
            return @"Warrior";
        case OrcPaladin:
            return @"Paladin";
        case OrcWitchDoctor:
            return @"Witch Doctor";
        default:
            return @"No Class Identified, You are a peasant.";
    }
    
}
NSString *getElfClassFromUser(){
    ElfClasses elfClassChosen = ElfClassNull;
    int errorCode = 0;
    while((errorCode != 1) ||
          (elfClassChosen < ElfClassFirst ) || (elfClassChosen > ElfClassLast)){
        fpurge(stdin);
        printf("Please Enter: \n");
        printf("    %d: for Warrior\n", ElfWarrior);
        printf("    %d: for Assissin\n", ElfAssassin);
        printf("    %d: for Mage\n", ElfMage);
        errorCode = scanf("%d", &elfClassChosen);
    }
    switch (elfClassChosen) {
        case ElfWarrior:
            return @"Warrior";
        case ElfAssassin:
            return @"Assassin";
        case ElfMage:
            return @"Mage";
        default:
            return @"No Class Identified, You are a peasant.";
    }
    
}

NSString *getDwarfClassFromUser(){
    DwarfClasses dwarfClassChosen = DwarfClassNull;
    int errorCode = 0;
    while((errorCode != 1) ||
          (dwarfClassChosen < DwarfClassFirst ) || (dwarfClassChosen > DwarfClassLast)){
        fpurge(stdin);
        printf("Please Enter: \n");
        printf("    %d: for Ranged\n", DwarfRanged);
        printf("    %d: for Assassin\n", DwarfAssassin);
        printf("    %d: for Engineer\n", DwarfEngineer);
        errorCode = scanf("%d", &dwarfClassChosen);
    }
    switch (dwarfClassChosen) {
        case DwarfRanged:
            return @"Ranged";
        case DwarfAssassin:
            return @"Assassin";
        case DwarfEngineer:
            return @"Engineer";
        default:
            return @"No Class Identified, You are a peasant.";
    }
    
}

