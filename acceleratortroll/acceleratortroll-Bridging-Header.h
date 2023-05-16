//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

#ifndef poc_h
#define poc_h

#include <stdio.h>
#include "meorw/exploit.h"
@import Foundation;

kern_return_t trigger_memmove_oob_copy(void);

int meorw_exploit(void);

void respringBackboard(void);
void respringFrontboard(void);

#endif
