//
//  Fraction+Comparison.h
//  11.2
//
//  Created by kongyunpeng on 3/15/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (Comparison)
-(BOOL)isEqual:(Fraction *)f;
-(int) compare: (Fraction *)f;
@end
