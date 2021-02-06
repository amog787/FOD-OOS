.class public abstract Lcom/android/server/location/UserInfoHelper;
.super Ljava/lang/Object;
.source "UserInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/UserInfoHelper$UserListener;
    }
.end annotation


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/UserInfoHelper$UserListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/server/location/UserInfoHelper;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    return-void
.end method

.method private getProfileIds(I)[I
    .locals 3
    .param p1, "userId"    # I

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/UserInfoHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    return-object v2

    .line 203
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    throw v2

    .line 197
    .end local v0    # "identity":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public final addListener(Lcom/android/server/location/UserInfoHelper$UserListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/UserInfoHelper$UserListener;

    .line 103
    iget-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method protected dispatchOnCurrentUserChanged(II)V
    .locals 9
    .param p1, "fromUserId"    # I
    .param p2, "toUserId"    # I

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/location/UserInfoHelper;->getProfileIds(I)[I

    move-result-object v0

    .line 136
    .local v0, "fromUserIds":[I
    invoke-direct {p0, p2}, Lcom/android/server/location/UserInfoHelper;->getProfileIds(I)[I

    move-result-object v1

    .line 137
    .local v1, "toUserIds":[I
    sget-boolean v2, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v2, :cond_0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current user changed from u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    const-string v3, "LocationManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/UserInfoHelper$UserListener;

    .line 143
    .local v3, "listener":Lcom/android/server/location/UserInfoHelper$UserListener;
    array-length v6, v0

    :goto_1
    if-ge v4, v6, :cond_1

    aget v7, v0, v4

    .line 144
    .local v7, "userId":I
    invoke-interface {v3, v7, v5}, Lcom/android/server/location/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 143
    .end local v7    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 146
    .end local v3    # "listener":Lcom/android/server/location/UserInfoHelper$UserListener;
    :cond_1
    goto :goto_0

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/UserInfoHelper$UserListener;

    .line 149
    .restart local v3    # "listener":Lcom/android/server/location/UserInfoHelper$UserListener;
    array-length v6, v1

    move v7, v4

    :goto_3
    if-ge v7, v6, :cond_3

    aget v8, v1, v7

    .line 150
    .local v8, "userId":I
    invoke-interface {v3, v8, v5}, Lcom/android/server/location/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 149
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 152
    .end local v3    # "listener":Lcom/android/server/location/UserInfoHelper$UserListener;
    :cond_3
    goto :goto_2

    .line 153
    :cond_4
    return-void
.end method

.method protected dispatchOnUserStarted(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 114
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/UserInfoHelper$UserListener;

    .line 119
    .local v1, "listener":Lcom/android/server/location/UserInfoHelper$UserListener;
    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Lcom/android/server/location/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 120
    .end local v1    # "listener":Lcom/android/server/location/UserInfoHelper$UserListener;
    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method protected dispatchOnUserStopped(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 124
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/UserInfoHelper$UserListener;

    .line 129
    .local v1, "listener":Lcom/android/server/location/UserInfoHelper$UserListener;
    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/android/server/location/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 130
    .end local v1    # "listener":Lcom/android/server/location/UserInfoHelper$UserListener;
    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/android/server/location/UserInfoHelper;->getCurrentUserIds()[I

    move-result-object v0

    .line 212
    .local v0, "currentUserProfiles":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/server/location/UserInfoHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 214
    .local v1, "userManager":Landroid/os/UserManager;
    if-eqz v1, :cond_1

    .line 215
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 216
    .local v4, "userId":I
    nop

    .line 217
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 216
    const-string/jumbo v6, "no_share_location"

    invoke-virtual {v1, v6, v5}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " restricted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    .end local v4    # "userId":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_1
    return-void
.end method

.method public getCurrentUserIds()[I
    .locals 3

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    new-array v0, v0, [I

    monitor-exit p0

    return-object v0

    .line 165
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 169
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/UserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    return-object v2

    .line 171
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    throw v2

    .line 165
    .end local v0    # "identity":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public isCurrentUserId(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 184
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 188
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/UserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    return v2

    .line 190
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    throw v2

    .line 184
    .end local v0    # "identity":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public declared-synchronized onSystemReady()V
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 91
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 95
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 94
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 96
    iget-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mUserManager:Landroid/os/UserManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lcom/android/server/location/UserInfoHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final removeListener(Lcom/android/server/location/UserInfoHelper$UserListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/UserInfoHelper$UserListener;

    .line 110
    iget-object v0, p0, Lcom/android/server/location/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method
