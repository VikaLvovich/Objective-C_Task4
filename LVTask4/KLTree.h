//
//  KLTree.h
//  KM_LV_Task2
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KLTree : NSObject

@property (copy) NSString *sort;
@property (strong, nonatomic) NSMutableArray *apples;

- (id)initWithSort:(NSString *)sort;

- (void)shake;
- (void)grow;
- (void)showInformationAboutTree;
- (NSString *)informationAboutTree;
- (void)showFullInformationAboutTree;

@end
