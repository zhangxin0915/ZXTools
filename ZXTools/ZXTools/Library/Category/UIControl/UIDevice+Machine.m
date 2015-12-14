//
//  UIDevice+Machine.m
//  SAICCar
//
//  Created by caochungui on 14/11/7.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//

#import "UIDevice+Machine.h"
#include "sys/types.h"
#include "sys/sysctl.h"

@implementation UIDevice (Machine)

- (NSString *)machine
{
    size_t size;
    
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    
    char* name = (char*)malloc(size);
    
    sysctlbyname("hw.machine", name, &size, NULL, 0);
    
    NSString* machine = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
    
    free(name);
    
    return machine;
}

@end
