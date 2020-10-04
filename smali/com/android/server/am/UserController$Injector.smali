.class Lcom/android/server/am/UserController$Injector;
.super Ljava/lang/Object;
.source "UserController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 2327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2328
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2329
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/UserController$Injector;

    .line 2322
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic lambda$startUserWidgets$0(Landroid/appwidget/AppWidgetManagerInternal;I)V
    .locals 0
    .param p0, "awm"    # Landroid/appwidget/AppWidgetManagerInternal;
    .param p1, "userId"    # I

    .line 2447
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManagerInternal;->unlockUser(I)V

    .line 2448
    return-void
.end method


# virtual methods
.method activityManagerForceStopPackage(ILjava/lang/String;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 2426
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2427
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, p1

    move-object v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2429
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2430
    return-void

    .line 2429
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method activityManagerOnUserStopped(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2369
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 2370
    return-void
.end method

.method batteryStatsServiceNoteEvent(ILjava/lang/String;I)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 2396
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2397
    return-void
.end method

.method protected broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Ljava/lang/String;
    .param p6, "resultExtras"    # Landroid/os/Bundle;
    .param p7, "requiredPermissions"    # [Ljava/lang/String;
    .param p8, "appOp"    # I
    .param p9, "bOptions"    # Landroid/os/Bundle;
    .param p10, "ordered"    # Z
    .param p11, "sticky"    # Z
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "realCallingUid"    # I
    .param p15, "realCallingPid"    # I
    .param p16, "userId"    # I

    .line 2353
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2354
    iget-object v3, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move/from16 v20, p15

    move/from16 v21, p16

    invoke-virtual/range {v3 .. v21}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 2358
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method checkCallingPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 2362
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method checkComponentPermission(Ljava/lang/String;IIIZ)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "owningUid"    # I
    .param p5, "exported"    # Z

    .line 2434
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method protected clearAllLockedTasks(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 2530
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearLockedTasks(Ljava/lang/String;)V

    .line 2531
    return-void
.end method

.method clearBroadcastQueueForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 2457
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2458
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->clearBroadcastQueueForUserLocked(I)Z

    .line 2459
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2460
    return-void

    .line 2459
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 2340
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 2332
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 2392
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    return-object v0
.end method

.method protected getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    .line 2344
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 1

    .line 2538
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method getSystemServiceManager()Lcom/android/server/SystemServiceManager;
    .locals 1

    .line 2404
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method protected getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 2336
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method protected getUserManager()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .line 2377
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_0

    .line 2378
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2379
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2381
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method getUserManagerInternal()Landroid/os/UserManagerInternal;
    .locals 1

    .line 2385
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_0

    .line 2386
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 2388
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method getWindowManager()Lcom/android/server/wm/WindowManagerService;
    .locals 1

    .line 2366
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method installEncryptionUnawareProviders(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2471
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->installEncryptionUnawareProviders(I)V

    .line 2472
    return-void
.end method

.method protected isCallerRecents(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 2534
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    return v0
.end method

.method isFirstBootOrUpgrade()Z
    .locals 3

    .line 2408
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2410
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 2411
    :catch_0
    move-exception v1

    .line 2412
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method isRuntimeRestarted()Z
    .locals 1

    .line 2400
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v0

    return v0
.end method

.method loadUserRecents(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2463
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->loadRecentTasksForUser(I)V

    .line 2464
    return-void
.end method

.method reportCurWakefulnessUsageEvent()V
    .locals 2

    .line 2512
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2513
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->reportCurWakefulnessUsageEventLocked()V

    .line 2514
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2515
    return-void

    .line 2514
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportGlobalUsageEventLocked(I)V
    .locals 2
    .param p1, "event"    # I

    .line 2506
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2507
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEventLocked(I)V

    .line 2508
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2509
    return-void

    .line 2508
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method sendPreBootBroadcast(IZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "quiet"    # Z
    .param p3, "onFinish"    # Ljava/lang/Runnable;

    .line 2417
    new-instance v7, Lcom/android/server/am/UserController$Injector$1;

    iget-object v2, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move v3, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/UserController$Injector$1;-><init>(Lcom/android/server/am/UserController$Injector;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;ZLjava/lang/Runnable;)V

    .line 2422
    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector$1;->sendNext()V

    .line 2423
    return-void
.end method

.method showOpUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "fromUser"    # Landroid/content/pm/UserInfo;
    .param p2, "toUser"    # Landroid/content/pm/UserInfo;
    .param p3, "switchingFromSystemUserMessage"    # Ljava/lang/String;
    .param p4, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 2493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2494
    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2495
    new-instance v1, Lcom/android/server/am/OpUserSwitchingDialog;

    iget-object v3, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    move-object v2, v1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/OpUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2497
    invoke-virtual {v1}, Lcom/android/server/am/OpUserSwitchingDialog;->show()V

    goto :goto_0

    .line 2499
    :cond_0
    new-instance v1, Lcom/android/server/am/CarUserSwitchingDialog;

    iget-object v9, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    move-object v8, v1

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v8 .. v15}, Lcom/android/server/am/CarUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2501
    invoke-virtual {v1}, Lcom/android/server/am/CarUserSwitchingDialog;->show()V

    .line 2503
    :goto_0
    return-void
.end method

.method showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "fromUser"    # Landroid/content/pm/UserInfo;
    .param p2, "toUser"    # Landroid/content/pm/UserInfo;
    .param p3, "switchingFromSystemUserMessage"    # Ljava/lang/String;
    .param p4, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 2477
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2478
    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2479
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog;

    iget-object v2, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .local v0, "d":Landroid/app/Dialog;
    goto :goto_0

    .line 2483
    .end local v0    # "d":Landroid/app/Dialog;
    :cond_0
    new-instance v0, Lcom/android/server/am/CarUserSwitchingDialog;

    iget-object v2, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/CarUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2487
    .restart local v0    # "d":Landroid/app/Dialog;
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2488
    return-void
.end method

.method stackSupervisorRemoveUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2518
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeUser(I)V

    .line 2519
    return-void
.end method

.method protected stackSupervisorResumeFocusedStackTopActivity()V
    .locals 2

    .line 2526
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 2527
    return-void
.end method

.method protected stackSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 2522
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->switchUser(ILcom/android/server/am/UserState;)Z

    move-result v0

    return v0
.end method

.method protected startHomeActivity(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 2438
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeActivity(ILjava/lang/String;)Z

    .line 2439
    return-void
.end method

.method startPersistentApps(I)V
    .locals 1
    .param p1, "matchFlags"    # I

    .line 2467
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->startPersistentApps(I)V

    .line 2468
    return-void
.end method

.method startUserWidgets(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2442
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManagerInternal;

    .line 2443
    .local v0, "awm":Landroid/appwidget/AppWidgetManagerInternal;
    if-eqz v0, :cond_0

    .line 2446
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$Injector$MYTLl7MOQKjyMJknWdxPeBLoPCc;

    invoke-direct {v2, v0, p1}, Lcom/android/server/am/-$$Lambda$UserController$Injector$MYTLl7MOQKjyMJknWdxPeBLoPCc;-><init>(Landroid/appwidget/AppWidgetManagerInternal;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2450
    :cond_0
    return-void
.end method

.method systemServiceManagerCleanupUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2373
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/SystemServiceManager;->cleanupUser(I)V

    .line 2374
    return-void
.end method

.method updateUserConfiguration()V
    .locals 1

    .line 2453
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->updateUserConfiguration()V

    .line 2454
    return-void
.end method
