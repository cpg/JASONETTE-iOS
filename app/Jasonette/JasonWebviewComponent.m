//
//  JasonWebviewComponent.m
//  Jasonette
//
//  Created by Carlos Puchol on 11/15/16.
//  Copyright © 2016 Jasonette. All rights reserved.
//

#import "JasonWebviewComponent.h"

@implementation JasonWebviewComponent
+ (UIView *)build:(NSDictionary *)json withOptions:(NSDictionary *)options{
    JasonWebviewController  *component = [[JasonWebviewController alloc] init];
    if(json){
        if(json[@"url"] && ![json[@"url"] isEqual:[NSNull null]]){
            if([json[@"url"] length] > 0){
                component.url = json[@"url"];
            }
        }
    }
    
    return component;
}
@end
