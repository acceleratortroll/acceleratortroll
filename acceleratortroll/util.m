//
//  util.m
//  acceleratortroll
//
//  Created by Jan Garcia on 16/5/23.
//

#import <Foundation/Foundation.h>
#import "acceleratortroll-Bridging-Header.h"

int meorw_exploit(void) {
 @try {
   return exploit();
 } @catch(NSError*) {
   return -1;
 }
}
