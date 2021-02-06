.class public Lcom/android/server/location/AppOpsHelper;
.super Ljava/lang/Object;
.source "AppOpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;
    }
.end annotation


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/location/AppOpsHelper;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/AppOpsHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/AppOpsHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/location/AppOpsHelper;->onAppOpChanged(Ljava/lang/String;)V

    return-void
.end method

.method private noteOpNoThrow(ILcom/android/server/location/CallerIdentity;)Z
    .locals 11
    .param p1, "appOp"    # I
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 239
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 243
    .local v3, "identity":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v7, p2, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v8, p2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v9, p2, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v10, p2, Lcom/android/server/location/CallerIdentity;->listenerId:Ljava/lang/String;

    move v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 250
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 243
    return v1

    .line 250
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    throw v0

    .line 239
    .end local v3    # "identity":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private onAppOpChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 89
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "location appop changed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;

    .line 94
    .local v1, "listener":Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;
    invoke-interface {v1, p1}, Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;->onAppOpsChanged(Ljava/lang/String;)V

    .line 95
    .end local v1    # "listener":Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private startLocationMonitoring(ILcom/android/server/location/CallerIdentity;)Z
    .locals 12
    .param p1, "appOp"    # I
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 207
    .local v3, "identity":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v7, p2, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v8, p2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p2, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v11, p2, Lcom/android/server/location/CallerIdentity;->listenerId:Ljava/lang/String;

    move v6, p1

    invoke-virtual/range {v5 .. v11}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 215
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    return v1

    .line 215
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    throw v0

    .line 203
    .end local v3    # "identity":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private stopLocationMonitoring(ILcom/android/server/location/CallerIdentity;)V
    .locals 6
    .param p1, "appOp"    # I
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 222
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 226
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p2, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v4, p2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    nop

    .line 234
    return-void

    .line 232
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    throw v2

    .line 222
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
.method public addListener(Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;

    .line 102
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z
    .locals 8
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 127
    .local v3, "identity":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v5, p1, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    .line 128
    invoke-static {v5}, Lcom/android/server/location/CallerIdentity;->asAppOp(I)I

    move-result v5

    iget v6, p1, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v7, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 132
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    return v1

    .line 132
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    throw v0

    .line 123
    .end local v3    # "identity":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public noteLocationAccess(Lcom/android/server/location/CallerIdentity;)Z
    .locals 1
    .param p1, "identity"    # Lcom/android/server/location/CallerIdentity;

    .line 142
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    invoke-static {v0}, Lcom/android/server/location/CallerIdentity;->asAppOp(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AppOpsHelper;->noteOpNoThrow(ILcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0
.end method

.method public noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z
    .locals 11
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 189
    .local v3, "identity":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x3a

    iget v7, p1, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v8, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/location/CallerIdentity;->listenerId:Ljava/lang/String;

    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 196
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    return v1

    .line 196
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    throw v0

    .line 184
    .end local v3    # "identity":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public declared-synchronized onSystemReady()V
    .locals 5

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 70
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 74
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/android/server/location/AppOpsHelper$1;

    invoke-direct {v4, p0}, Lcom/android/server/location/AppOpsHelper$1;-><init>(Lcom/android/server/location/AppOpsHelper;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 68
    .end local p0    # "this":Lcom/android/server/location/AppOpsHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;

    .line 109
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public startHighPowerLocationMonitoring(Lcom/android/server/location/CallerIdentity;)Z
    .locals 1
    .param p1, "identity"    # Lcom/android/server/location/CallerIdentity;

    .line 167
    const/16 v0, 0x2a

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AppOpsHelper;->startLocationMonitoring(ILcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0
.end method

.method public startLocationMonitoring(Lcom/android/server/location/CallerIdentity;)Z
    .locals 1
    .param p1, "identity"    # Lcom/android/server/location/CallerIdentity;

    .line 151
    const/16 v0, 0x29

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AppOpsHelper;->startLocationMonitoring(ILcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0
.end method

.method public stopHighPowerLocationMonitoring(Lcom/android/server/location/CallerIdentity;)V
    .locals 1
    .param p1, "identity"    # Lcom/android/server/location/CallerIdentity;

    .line 174
    const/16 v0, 0x2a

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AppOpsHelper;->stopLocationMonitoring(ILcom/android/server/location/CallerIdentity;)V

    .line 175
    return-void
.end method

.method public stopLocationMonitoring(Lcom/android/server/location/CallerIdentity;)V
    .locals 1
    .param p1, "identity"    # Lcom/android/server/location/CallerIdentity;

    .line 159
    const/16 v0, 0x29

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AppOpsHelper;->stopLocationMonitoring(ILcom/android/server/location/CallerIdentity;)V

    .line 160
    return-void
.end method
