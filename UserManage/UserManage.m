//
//  UserManage.m
//  HZTelOA
//
//  Created by Lance_xu on 15/12/1.
//  Copyright © 2015年 YAO. All rights reserved.
//

#import "UserManage.h"

@implementation UserManage

singleton_implementation(UserManage)

/**
 *    用户ID
 */
- (void)setUserID:(NSString *)userID{
     NSString *lastUserID = [[NSUserDefaults standardUserDefaults]objectForKey:@"userID"];
    if (userID == nil) {
        //意味着清除该数据
        if (lastUserID) {
                [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"userID"];
                [[NSUserDefaults standardUserDefaults]synchronize];
            }
    }else{
        [[NSUserDefaults standardUserDefaults]setObject:userID forKey:@"userID"];
                [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
- (NSString *)userID{
  NSString *str = [[NSUserDefaults standardUserDefaults]objectForKey:@"userID"];
    if (str) {
        return str;
    }
    return @"";
}
/**
 *  用户账号
 */
- (void)setUserAccount:(NSString *)userAccount{
    NSString *lasetuserAccount = [[NSUserDefaults standardUserDefaults]objectForKey:@"userAccount"];
    if (userAccount == nil) {
        //意味着清除该数据
        if (lasetuserAccount) {
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"userAccount"];
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
        
    }else{
        [[NSUserDefaults standardUserDefaults]setObject:userAccount forKey:@"userAccount"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
- (NSString *)userAccount{
    NSString *str = [[NSUserDefaults standardUserDefaults]objectForKey:@"userAccount"];
    if (str) {
        return str;
    }
    return @"";
}
/**
 *  用户头像
 */
- (void)setUserHeaderImgUrl:(NSString *)userHeaderImgUrl{
    NSString *lasetUserHeaderImgUrl = [[NSUserDefaults standardUserDefaults]objectForKey:@"userHeaderImgUrl"];
    if (userHeaderImgUrl == nil) {
        //意味着清除该数据
        if (lasetUserHeaderImgUrl) {
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"userHeaderImgUrl"];
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
        
    }else{
        [[NSUserDefaults standardUserDefaults]setObject:userHeaderImgUrl forKey:@"userHeaderImgUrl"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
- (NSString *)userHeaderImgUrl{
    NSString *str = [[NSUserDefaults standardUserDefaults]objectForKey:@"userHeaderImgUrl"];
    if (str) {
        return str;
    }
    return @"";
}

/**
 *  用户密码
 */
- (void)setUserPassword:(NSString *)userPassword{
    NSString *lasetuserPassword = [[NSUserDefaults standardUserDefaults]objectForKey:@"userPassword"];
    if (userPassword == nil) {
        //意味着清除该数据
        if (lasetuserPassword) {
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"userPassword"];
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
        
    }else{
        [[NSUserDefaults standardUserDefaults]setObject:userPassword forKey:@"userPassword"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
- (NSString *)userPassword{
    NSString *str = [[NSUserDefaults standardUserDefaults]objectForKey:@"userPassword"];
    if (str) {
        return str;
    }
    return @"";
}
/**
 *  用户key
 */
- (void)setUserKey:(NSString *)userKey{
    NSString *Key = [[NSUserDefaults standardUserDefaults]objectForKey:@"userKey"];
    if (userKey == nil) {
        //意味着清除该数据
        if (Key) {
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"userKey"];
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
        
    }else{
        [[NSUserDefaults standardUserDefaults]setObject:userKey forKey:@"userKey"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
- (NSString *)userKey{
    NSString *str = [[NSUserDefaults standardUserDefaults]objectForKey:@"userKey"];
    if (str) {
        return str;
    }
    return @"";
}
/**
 *  用户手势密码锁
*/
- (void)setGesturePsw:(NSNumber *)gesturePsw{

    NSNumber *Psw = [[NSUserDefaults standardUserDefaults] objectForKey:@"gesturePsw"];
    if (gesturePsw == nil) {
        //意味着清除该数据
        if (Psw) {
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"gesturePsw"];
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
        
    }else{
        [[NSUserDefaults standardUserDefaults] setObject:gesturePsw forKey:@"gesturePsw"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
- (NSNumber *)gesturePsw{
    NSNumber *str = [[NSUserDefaults standardUserDefaults] objectForKey:@"gesturePsw"];
    if (str) {
        return str;
    }
    return nil;
}
/**
 *  用户安装URL
 */
- (void)setInstallUrl:(NSString *)installUrl{
    
   
    if (installUrl == nil) {
        //意味着清除该数据
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"installUrl"];
            [[NSUserDefaults standardUserDefaults]synchronize];
    }else{
        [[NSUserDefaults standardUserDefaults] setObject:installUrl forKey:@"installUrl"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
- (NSString *)installUrl{
    NSString *str = [[NSUserDefaults standardUserDefaults] objectForKey:@"installUrl"];
    if (str) {
        return str;
    }
    return nil;
}


/**
 *  清除所有数据
 */
- (void)cleanAllUseData{
    self.gesturePsw = nil;
    self.userAccount = nil;
    self.userID = nil;
    self.userPassword = nil;
    self.userHeaderImgUrl = nil;
    self.userKey = nil;
}

@end
