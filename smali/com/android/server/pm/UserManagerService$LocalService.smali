.class Lcom/android/server/pm/UserManagerService$LocalService;
.super Landroid/os/UserManagerInternal;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 3900
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/UserManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/UserManagerService$1;

    .line 3900
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method


# virtual methods
.method public addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 3942
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$700(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 3943
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$700(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3944
    monitor-exit v0

    .line 3945
    return-void

    .line 3944
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createUserEvenWhenDisallowed(Ljava/lang/String;I[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "disallowedPackages"    # [Ljava/lang/String;

    .line 4044
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/16 v1, -0x2710

    invoke-static {v0, p1, p2, v1, p3}, Lcom/android/server/pm/UserManagerService;->access$2600(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 4047
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4048
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    const-string/jumbo v4, "no_sms"

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 4049
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v4, "no_outgoing_calls"

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 4051
    :cond_0
    return-object v0
.end method

.method public exists(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 4119
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBaseUserRestrictions(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "userId"    # I

    .line 3910
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$800(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3911
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$1500(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    monitor-exit v0

    return-object v1

    .line 3912
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileParentId(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 4163
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$3000(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4165
    .local v1, "profileParent":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    .line 4166
    monitor-exit v0

    return p1

    .line 4168
    :cond_0
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return v2

    .line 4169
    .end local v1    # "profileParent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserIds()[I
    .locals 1

    .line 4082
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getUserRestriction(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 3937
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProfileAccessible(IILjava/lang/String;Z)Z
    .locals 7
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I
    .param p3, "debugMsg"    # Ljava/lang/String;
    .param p4, "throwSecurityException"    # Z

    .line 4125
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 4126
    return v0

    .line 4128
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4129
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->access$2500(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 4130
    .local v2, "callingUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4131
    :cond_1
    if-nez p4, :cond_9

    .line 4138
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p2}, Lcom/android/server/pm/UserManagerService;->access$2500(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 4139
    .local v3, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 4149
    :cond_3
    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v6, -0x2710

    if-eq v5, v6, :cond_5

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v6, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v5, v6, :cond_4

    goto :goto_0

    .line 4157
    .end local v2    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_4
    monitor-exit v1

    .line 4158
    return v0

    .line 4151
    .restart local v2    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_5
    :goto_0
    if-nez p4, :cond_6

    .line 4155
    monitor-exit v1

    return v4

    .line 4152
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for unrelated profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .end local p1    # "callingUserId":I
    .end local p2    # "targetUserId":I
    .end local p3    # "debugMsg":Ljava/lang/String;
    .end local p4    # "throwSecurityException":Z
    throw v0

    .line 4142
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .restart local p1    # "callingUserId":I
    .restart local p2    # "targetUserId":I
    .restart local p3    # "debugMsg":Ljava/lang/String;
    .restart local p4    # "throwSecurityException":Z
    :cond_7
    :goto_1
    if-eqz p4, :cond_8

    .line 4143
    const-string v0, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for disabled profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    :cond_8
    monitor-exit v1

    return v4

    .line 4132
    .end local v3    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for another profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .end local p1    # "callingUserId":I
    .end local p2    # "targetUserId":I
    .end local p3    # "debugMsg":Ljava/lang/String;
    .end local p4    # "throwSecurityException":Z
    throw v0

    .line 4157
    .end local v2    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .restart local p1    # "callingUserId":I
    .restart local p2    # "targetUserId":I
    .restart local p3    # "debugMsg":Ljava/lang/String;
    .restart local p4    # "throwSecurityException":Z
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 1
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 4175
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/UserRestrictionsUtils;->isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isUserInitialized(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 4114
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserRunning(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 4061
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 4062
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 4063
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUserUnlocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 4102
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 4103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 4104
    .local v1, "state":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4106
    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 4109
    :cond_0
    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4107
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    return v0

    .line 4104
    .end local v1    # "state":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 4088
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 4089
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 4090
    .local v1, "state":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4092
    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    goto :goto_2

    .line 4095
    :cond_0
    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 4093
    :cond_3
    :goto_2
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    return v0

    .line 4090
    .end local v1    # "state":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onEphemeralUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 4027
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4028
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$2500(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4029
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4032
    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 4033
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4035
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 4038
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    monitor-exit v0

    .line 4039
    return-void

    .line 4038
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllUsers()V
    .locals 5

    .line 3996
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    .line 3998
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2300(Lcom/android/server/pm/UserManagerService;)V

    goto :goto_0

    .line 4001
    :cond_0
    new-instance v0, Lcom/android/server/pm/UserManagerService$LocalService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$LocalService$1;-><init>(Lcom/android/server/pm/UserManagerService$LocalService;)V

    .line 4013
    .local v0, "userSwitchedReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 4014
    .local v1, "userSwitchedFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4015
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 4016
    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->access$2400(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;

    move-result-object v4

    .line 4015
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4019
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 4020
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 4021
    .local v2, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->switchUser(I)Z

    .line 4023
    .end local v0    # "userSwitchedReceiver":Landroid/content/BroadcastReceiver;
    .end local v1    # "userSwitchedFilter":Landroid/content/IntentFilter;
    .end local v2    # "am":Landroid/app/ActivityManager;
    :goto_0
    return-void
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 4056
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->access$2700(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v0

    return v0
.end method

.method public removeUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 3949
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$700(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 3950
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$700(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3951
    monitor-exit v0

    .line 3952
    return-void

    .line 3951
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUserState(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4075
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 4076
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4077
    monitor-exit v0

    .line 4078
    return-void

    .line 4077
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBaseUserRestrictionsByDpmsForMigration(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "baseRestrictions"    # Landroid/os/Bundle;

    .line 3918
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$800(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3919
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 3920
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->access$1500(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    .line 3919
    invoke-static {v1, p1, v2, v3}, Lcom/android/server/pm/UserManagerService;->access$1600(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3921
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$1700(Lcom/android/server/pm/UserManagerService;I)V

    .line 3923
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3925
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->access$1200(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3926
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$1100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3927
    if-eqz v1, :cond_1

    .line 3928
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->access$1300(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_0

    .line 3930
    :cond_1
    const-string v0, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserInfo not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    :goto_0
    monitor-exit v2

    .line 3933
    return-void

    .line 3932
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3923
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setDeviceManaged(Z)V
    .locals 2
    .param p1, "isManaged"    # Z

    .line 3956
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3957
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$1802(Lcom/android/server/pm/UserManagerService;Z)Z

    .line 3958
    monitor-exit v0

    .line 3959
    return-void

    .line 3958
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDevicePolicyUserRestrictions(ILandroid/os/Bundle;ZI)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "isDeviceOwner"    # Z
    .param p4, "cameraRestrictionScope"    # I

    .line 3904
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->access$1400(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;ZI)V

    .line 3906
    return-void
.end method

.method public setForceEphemeralUsers(Z)V
    .locals 2
    .param p1, "forceEphemeralUsers"    # Z

    .line 3989
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3990
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$2202(Lcom/android/server/pm/UserManagerService;Z)Z

    .line 3991
    monitor-exit v0

    .line 3992
    return-void

    .line 3991
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 3970
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3972
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$1100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3973
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->access$1200(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 3974
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 3978
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v4, v5, p2}, Lcom/android/server/pm/UserManagerService;->access$2000(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 3979
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4, v3}, Lcom/android/server/pm/UserManagerService;->access$1300(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3980
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3981
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->access$2100(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3983
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3984
    nop

    .line 3985
    return-void

    .line 3975
    .restart local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    :goto_0
    :try_start_3
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserIcon: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3983
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3976
    return-void

    .line 3980
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .end local p1    # "userId":I
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3983
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .restart local p1    # "userId":I
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUserManaged(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "isManaged"    # Z

    .line 3963
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3964
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$1900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3965
    monitor-exit v0

    .line 3966
    return-void

    .line 3965
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserState(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userState"    # I

    .line 4068
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 4069
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4070
    monitor-exit v0

    .line 4071
    return-void

    .line 4070
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
