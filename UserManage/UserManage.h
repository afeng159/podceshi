//
//  UserManage.h
//  HZTelOA
//
//  Created by Lance_xu on 15/12/1.
//  Copyright © 2015年 YAO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"


@interface UserManage : NSObject
singleton_interface(UserManage)
@property (strong, nonatomic) NSString *userID;
@property (strong, nonatomic) NSString *userAccount;
@property (strong, nonatomic) NSString *userPassword;
@property (nonatomic,strong) NSString *userHeaderImgUrl;
@property (nonatomic,strong) NSString *userKey;
//用户安装URL
@property (nonatomic,strong) NSString *installUrl;
/**
 *  手势密码
 */
@property (nonatomic,strong) NSNumber *gesturePsw;


- (void)cleanAllUseData;



@end
