.class Lcom/android/server/wm/ActivityStarter$Request;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Request"
.end annotation


# static fields
.field private static final DEFAULT_CALLING_PID:I = 0x0

.field private static final DEFAULT_CALLING_UID:I = -0x1

.field static final DEFAULT_REAL_CALLING_PID:I = 0x0

.field static final DEFAULT_REAL_CALLING_UID:I = -0x1


# instance fields
.field activityInfo:Landroid/content/pm/ActivityInfo;

.field activityOptions:Lcom/android/server/wm/SafeActivityOptions;

.field allowBackgroundActivityStart:Z

.field allowPendingRemoteAnimationRegistryLookup:Z

.field avoidMoveToFront:Z

.field caller:Landroid/app/IApplicationThread;

.field callingFeatureId:Ljava/lang/String;

.field callingPackage:Ljava/lang/String;

.field callingPid:I

.field callingUid:I

.field componentSpecified:Z

.field ephemeralIntent:Landroid/content/Intent;

.field filterCallingUid:I

.field globalConfig:Landroid/content/res/Configuration;

.field ignoreTargetSecurity:Z

.field inTask:Lcom/android/server/wm/Task;

.field intent:Landroid/content/Intent;

.field intentGrants:Lcom/android/server/uri/NeededUriGrants;

.field originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

.field outActivity:[Lcom/android/server/wm/ActivityRecord;

.field profilerInfo:Landroid/app/ProfilerInfo;

.field realCallingPid:I

.field realCallingUid:I

.field reason:Ljava/lang/String;

.field requestCode:I

.field resolveInfo:Landroid/content/pm/ResolveInfo;

.field resolvedType:Ljava/lang/String;

.field resultTo:Landroid/os/IBinder;

.field resultWho:Ljava/lang/String;

.field startFlags:I

.field userId:I

.field voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field waitResult:Landroid/app/WaitResult;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 380
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 383
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 384
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 411
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 412
    return-void
.end method


# virtual methods
.method reset()V
    .locals 3

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 419
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 420
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 421
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 422
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 423
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 424
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 425
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 426
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 427
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 428
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 429
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 430
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 431
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 432
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 433
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 434
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 435
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 436
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 437
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 438
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 439
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 440
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 441
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 442
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 443
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 444
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 445
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 446
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 447
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    .line 448
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 449
    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 450
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 451
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 452
    return-void
.end method

.method resolveActivity(Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 15
    .param p1, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 502
    move-object v1, p0

    move-object/from16 v10, p1

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0x11

    const/4 v11, 0x0

    aput v3, v2, v11

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 504
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "cmpClassName":Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->shouldRunWeChatPayBusiness(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    invoke-static {v2}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->runWeChatPayBusiness(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 508
    .local v3, "newCmp":Landroid/content/ComponentName;
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 509
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v4, :cond_0

    .line 510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityMayWait, intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .end local v2    # "cmpClassName":Ljava/lang/String;
    .end local v3    # "newCmp":Landroid/content/ComponentName;
    :cond_0
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    if-nez v2, :cond_1

    .line 517
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 519
    :cond_1
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 520
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 523
    :cond_2
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    if-ltz v2, :cond_3

    .line 524
    iput v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    goto :goto_0

    .line 525
    :cond_3
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-nez v2, :cond_4

    .line 526
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iput v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 527
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    goto :goto_0

    .line 529
    :cond_4
    iput v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 535
    :goto_0
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 536
    .local v2, "resolvedCallingUid":I
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_6

    .line 537
    iget-object v3, v10, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 538
    iget-object v4, v10, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 539
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 540
    .local v4, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v4, :cond_5

    .line 541
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move v2, v5

    .line 543
    .end local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move v12, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 536
    :cond_6
    move v12, v2

    .line 547
    .end local v2    # "resolvedCallingUid":I
    .local v12, "resolvedCallingUid":I
    :goto_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 549
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 550
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 551
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 552
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 553
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v10, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 554
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 555
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 559
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 562
    :cond_8
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v6, 0x0

    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget v7, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget v8, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 564
    invoke-static {v2, v7, v8}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v7

    .line 562
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 567
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget v6, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget v7, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget v9, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    invoke-static/range {v2 .. v9}, Lcom/android/server/wm/OpActivityStarterInjector;->resolveIntentParallel(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;IIILandroid/content/pm/ResolveInfo;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 570
    if-nez v2, :cond_a

    .line 571
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v10, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 572
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 576
    iget-object v2, v10, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    .line 577
    .local v9, "userManager":Landroid/os/UserManager;
    const/4 v2, 0x0

    .line 578
    .local v2, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 580
    .local v13, "token":J
    :try_start_2
    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v9, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 581
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_9

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 582
    invoke-virtual {v9, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 583
    invoke-virtual {v9, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    move v0, v11

    .line 585
    .end local v2    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    .local v0, "profileLockedAndParentUnlockingOrUnlocked":Z
    :goto_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    nop

    .line 587
    if-eqz v0, :cond_a

    .line 588
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/high16 v6, 0xc0000

    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget v7, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget v11, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 591
    invoke-static {v2, v7, v11}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v7

    .line 588
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_3

    .line 585
    .end local v0    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .restart local v2    # "profileLockedAndParentUnlockingOrUnlocked":Z
    :catchall_1
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    throw v0

    .line 598
    .end local v2    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "userManager":Landroid/os/UserManager;
    .end local v13    # "token":J
    :cond_a
    :goto_3
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v10, v0, v2, v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 603
    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->preloadAppSplash(ILandroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    .line 607
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_b

    .line 608
    iget-object v0, v10, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 610
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 608
    invoke-interface {v0, v2, v12, v3, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 612
    :cond_b
    return-void
.end method

.method set(Lcom/android/server/wm/ActivityStarter$Request;)V
    .locals 1
    .param p1, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 458
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 459
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 460
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 461
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 462
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 463
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 464
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 465
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 466
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 467
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 468
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 469
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 470
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 471
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 472
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 473
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 474
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 475
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 476
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 477
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 478
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 479
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 480
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 481
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 482
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 483
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 484
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 485
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 486
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 487
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    .line 488
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 490
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 491
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 492
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 493
    return-void
.end method
