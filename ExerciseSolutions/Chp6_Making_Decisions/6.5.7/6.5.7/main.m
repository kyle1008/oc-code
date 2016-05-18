//
//  main.m
//  6.5.7
//
//  Created by kongyunpeng on 3/9/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
//质数大于等于2 不能被它本身和1以外的数整除
//除数大于质数必不能整除
//判定一个数是否为质数，可以判定为它是否能被比它小的数整除（比它小的数作为除数）
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//#pragma mark 原始算法
//        int r ,s ,t ;
//         static int count = 0;
//        for (r = 2; r <= 50; ++r) {
//            t = 1;
//          ++count;
//            for (s = 2; s < r; ++s) {
//          ++count;
//                if (r % s == 0) {
//                    t = 0;
//                }
//            }
//            if (t == 1) {
//                NSLog(@"%i",r);
//            }
//        
//        }
//   NSLog(@"the cout of exeute:%i",count);
        //1225
//#pragma 优化算法
//                int r ,s ,t ;
//                static int count = 0;
//                for (r = 2; r <= 50; ++r) {
//                    ++count;
//                    t = 1;
//                    if (r % 2 == 0) {
//                        if (r != 2) {
//                           continue;
//                        }
//                    }
//                    for (s = 2; s < r ; ++s) {
//                        ++count;
//
//                        if (s % 2 == 0) {
//                            if (s != 2) {
//                                break;
//                            }
//                        }
//                        if (r % s == 0) {
//                            t = 0;
//                            break;
//                        }
//                    }
//                    if (t == 1) {
//                        NSLog(@"%i",r);
//                    }
//                }
//        NSLog(@"the cout of exeute:%i",count);
//        //375
//        //112
//
//    }
//    return 0;
//}




#pragma 优化算法
        int r ,s ,t ;
        static int count = 0;
        NSLog(@"2");
        for (r = 3; r <= 50; r = r + 2) {
            ++count;
            t = 1;

            for (s = 3; s < r ; s = s + 2) {
                ++count;
                if (r % s == 0) {
                    t = 0;
                    break;
                }
            }
            if (t == 1) {
                NSLog(@"%i",r);
            }
        }
        NSLog(@"the cout of exeute:%i",count);
        //375
        //112

    }
    return 0;
}

