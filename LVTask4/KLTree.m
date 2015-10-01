//
//  KLTree.m
//  KM_LV_Task2
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "KLTree.h"
#import "KLApple.h"

@implementation KLTree

- (id)initWithSort:(NSString *)sort
{
    self = [super init];
    if (self) {
        self.sort = sort;
        self.apples = [NSMutableArray new];
        return self;
    }
    return self;
}

- (void)shake
{
    int n;
    if([self.apples count]==0 || [self.apples count]==1)
    {
        n = (int)[self.apples count];
    }
    else
    {
        n = (int)rand()%[self.apples count];
    }
    NSRange r;
    r.length = n;
    r.location = 0;
    [self.apples removeObjectsInRange:r];

}
- (void)grow
{
    int n = 1+(int)rand()%5;
    for (int i = 0; i < n; i++)
    {
        KLApple *newApple = [[KLApple alloc] initWithSort: self.sort];
        [self.apples addObject: newApple];
    }
}
- (void)showInformationAboutTree
{
    NSLog(@"This tree is %@ and contains %d apples.", self.sort, (int)self.apples.count);
}

- (NSString *)informationAboutTree
{
    return [NSString stringWithFormat:@"This tree is %@ and contains %d apples.", self.sort, (int)self.apples.count];
}

- (void)showFullInformationAboutTree
{
    [self showInformationAboutTree];
    for (int i = 0; i < [self.apples count]; i++)
    {
        [[self.apples objectAtIndex:i] showInformationAboutApple];
    }
}

@end
