//
//  ShoppingService.h
//  Test
//
//  Created by ywj on 16/6/27.
//  Copyright © 2016年 yangwenjun. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^Complete)(BOOL success, NSDictionary * dic);

@interface ShoppingService : NSObject

- (void)getShoppingList:(NSDictionary *) param complete:(Complete) complete;

@end
