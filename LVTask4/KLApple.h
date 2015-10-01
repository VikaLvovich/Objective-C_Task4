//
//  KLApple.h
//  KM_LV_Task2
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KLApple : NSObject

@property (copy) NSString *sort;
@property int countOfSeeds;

- (id)initWithSort:(NSString *)sort;

- (void)showInformationAboutApple;
- (NSString*)informationAboutApple;

@end
