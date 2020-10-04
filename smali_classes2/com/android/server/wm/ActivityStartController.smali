.class public Lcom/android/server/wm/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStartController$StartHandler;
    }
.end annotation


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field mCheckedForSetup:Z

.field private final mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

.field private final mHandler:Landroid/os/Handler;

.field private mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/wm/ActivityStarter;

.field private final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 123
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    new-instance v1, Lcom/android/server/wm/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    new-instance v3, Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V

    .line 126
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "factory"    # Lcom/android/server/wm/ActivityStarter$Factory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 131
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 132
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 133
    new-instance v0, Lcom/android/server/wm/ActivityStartController$StartHandler;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityStartController$StartHandler;-><init>(Lcom/android/server/wm/ActivityStartController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->setController(Lcom/android/server/wm/ActivityStartController;)V

    .line 136
    new-instance v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStartController;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method static synthetic lambda$startActivities$0(I)[Landroid/content/Intent;
    .locals 1
    .param p0, "x$0"    # I

    .line 377
    new-array v0, p0, [Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method addPendingActivityLaunch(Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;)V
    .locals 1
    .param p1, "launch"    # Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method

.method checkTargetUser(IZIILjava/lang/String;)I
    .locals 1
    .param p1, "targetUserId"    # I
    .param p2, "validateIncomingUser"    # Z
    .param p3, "realCallingPid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 257
    if-eqz p2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3, p4, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v0

    return v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    .line 262
    return p1
.end method

.method clearPendingActivityLaunches(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 480
    .local v0, "pendingLaunches":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 481
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    .line 482
    .local v2, "pal":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v3, v2, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    .line 483
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 480
    .end local v2    # "pal":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 487
    .end local v1    # "palNdx":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method doPendingActivityLaunches(Z)V
    .locals 11
    .param p1, "doResume"    # Z

    .line 458
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    .line 460
    .local v0, "pal":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v8, v1

    .line 461
    .local v8, "resume":Z
    const/4 v1, 0x0

    const-string v2, "pendingActivityLaunch"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 464
    .local v1, "starter":Lcom/android/server/wm/ActivityStarter;
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    iget-object v2, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    const/4 v10, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ActivityStarter;->startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    goto :goto_1

    .line 466
    :catch_0
    move-exception v2

    .line 467
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during pending activity launch pal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    .line 470
    .end local v0    # "pal":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v1    # "starter":Lcom/android/server/wm/ActivityStarter;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "resume":Z
    :goto_1
    goto :goto_0

    .line 471
    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 500
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    const-string v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    iget v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v1, "  "

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 506
    const-string v0, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 510
    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 512
    .local v3, "dumpPackagePresent":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz v4, :cond_4

    .line 513
    if-eqz v3, :cond_3

    .line 514
    invoke-virtual {v4, p3}, Lcom/android/server/wm/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 516
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    nop

    .line 518
    .local v0, "dump":Z
    :goto_2
    if-eqz v0, :cond_4

    .line 519
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 522
    if-eqz v3, :cond_4

    .line 523
    return-void

    .line 528
    .end local v0    # "dump":Z
    :cond_4
    if-eqz v3, :cond_5

    .line 529
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 530
    const-string v0, "(nothing)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    :cond_5
    return-void
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reason"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V
    .locals 1
    .param p1, "starter"    # Lcom/android/server/wm/ActivityStarter;

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->set(Lcom/android/server/wm/ActivityStarter;)V

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    .line 156
    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetStack"    # Lcom/android/server/wm/ActivityStack;

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 168
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V

    .line 169
    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 493
    return-void
.end method

.method schedulePendingActivityLaunches(J)V
    .locals 2
    .param p1, "delayMs"    # J

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 454
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 455
    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I
    .locals 26
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "incomingRealCallingPid"    # I
    .param p4, "incomingRealCallingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "resolvedTypes"    # [Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p10, "userId"    # I
    .param p11, "reason"    # Ljava/lang/String;
    .param p12, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p13, "allowBackgroundActivityStart"    # Z

    .line 349
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    if-eqz v3, :cond_11

    .line 352
    if-eqz v4, :cond_10

    .line 355
    array-length v0, v3

    array-length v5, v4

    if-ne v0, v5, :cond_f

    .line 359
    if-eqz p3, :cond_0

    .line 360
    move/from16 v0, p3

    goto :goto_0

    .line 361
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    :goto_0
    move v5, v0

    .line 362
    .local v5, "realCallingPid":I
    const/4 v0, -0x1

    move/from16 v6, p4

    if-eq v6, v0, :cond_1

    .line 363
    move v7, v6

    goto :goto_1

    .line 364
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    :goto_1
    nop

    .line 367
    .local v7, "realCallingUid":I
    if-ltz p2, :cond_2

    .line 368
    const/4 v8, -0x1

    move/from16 v9, p2

    .local v8, "callingPid":I
    goto :goto_2

    .line 369
    .end local v8    # "callingPid":I
    :cond_2
    if-nez v2, :cond_3

    .line 370
    move v8, v5

    .line 371
    .restart local v8    # "callingPid":I
    move v9, v7

    .end local p2    # "callingUid":I
    .local v9, "callingUid":I
    goto :goto_2

    .line 373
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_3
    move v8, v0

    .end local p2    # "callingUid":I
    .local v8, "callingUid":I
    move v9, v0

    move/from16 v25, v9

    move v9, v8

    move/from16 v8, v25

    .line 375
    .local v8, "callingPid":I
    .restart local v9    # "callingUid":I
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 377
    .local v10, "origId":J
    :try_start_0
    sget-object v12, Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;

    invoke-static {v3, v12}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    move-object v3, v12

    .line 378
    .end local p6    # "intents":[Landroid/content/Intent;
    .local v3, "intents":[Landroid/content/Intent;
    :try_start_1
    array-length v12, v3

    new-array v12, v12, [Lcom/android/server/wm/ActivityStarter;

    .line 381
    .local v12, "starters":[Lcom/android/server/wm/ActivityStarter;
    const/4 v13, 0x0

    move v14, v13

    .local v14, "i":I
    :goto_3
    array-length v15, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    const/16 v16, 0x0

    if-ge v14, v15, :cond_a

    .line 382
    :try_start_2
    aget-object v15, v3, v14

    .line 385
    .local v15, "intent":Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v17

    if-nez v17, :cond_9

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 393
    .end local v15    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    iget-object v15, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    aget-object v20, v4, v14

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v13, -0x2710

    .line 395
    invoke-static {v9, v7, v13}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v24

    .line 393
    move-object/from16 v18, v15

    move-object/from16 v19, v0

    move/from16 v23, p10

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v13

    .line 397
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v15, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v6, p10

    invoke-virtual {v15, v13, v6}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v13, v15

    .line 399
    if-eqz v13, :cond_5

    :try_start_3
    iget-object v15, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_4

    goto :goto_4

    .line 401
    :cond_4
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v6, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v15, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v5    # "realCallingPid":I
    .end local v7    # "realCallingUid":I
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v10    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p7    # "resolvedTypes":[Ljava/lang/String;
    .end local p8    # "resultTo":Landroid/os/IBinder;
    .end local p9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p10    # "userId":I
    .end local p11    # "reason":Ljava/lang/String;
    .end local p12    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p13    # "allowBackgroundActivityStart":Z
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "i":I
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v5    # "realCallingPid":I
    .restart local v7    # "realCallingUid":I
    .restart local v8    # "callingPid":I
    .restart local v9    # "callingUid":I
    .restart local v10    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p7    # "resolvedTypes":[Ljava/lang/String;
    .restart local p8    # "resultTo":Landroid/os/IBinder;
    .restart local p9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p10    # "userId":I
    .restart local p11    # "reason":Ljava/lang/String;
    .restart local p12    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p13    # "allowBackgroundActivityStart":Z
    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-object/from16 v11, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    goto/16 :goto_f

    .line 404
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v14    # "i":I
    :cond_5
    :goto_4
    :try_start_4
    array-length v6, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    if-ne v14, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    .line 405
    .local v6, "top":Z
    :goto_5
    if-eqz v6, :cond_7

    .line 406
    move-object/from16 v16, p9

    goto :goto_6

    .line 407
    :cond_7
    nop

    :goto_6
    move-object/from16 v15, v16

    .line 408
    .local v15, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-object/from16 v3, p11

    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v10    # "origId":J
    .local v18, "intents":[Landroid/content/Intent;
    .local v19, "origId":J
    :try_start_5
    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10

    .line 409
    invoke-virtual {v10, v2}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10

    aget-object v11, v4, v14

    .line 410
    invoke-virtual {v10, v11}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10

    .line 411
    invoke-virtual {v10, v13}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 412
    move-object/from16 v11, p8

    :try_start_6
    invoke-virtual {v10, v11}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10

    .line 413
    const/4 v2, -0x1

    invoke-virtual {v10, v2}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10

    .line 414
    invoke-virtual {v10, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10

    .line 415
    invoke-virtual {v10, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10

    .line 416
    move-object/from16 v2, p5

    invoke-virtual {v10, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10

    .line 417
    invoke-virtual {v10, v5}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10

    .line 418
    invoke-virtual {v10, v7}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10

    .line 419
    invoke-virtual {v10, v15}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v10

    .line 420
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_8

    move-object/from16 v21, v0

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v21, v0

    const/4 v0, 0x0

    .end local v0    # "intent":Landroid/content/Intent;
    .local v21, "intent":Landroid/content/Intent;
    :goto_7
    invoke-virtual {v10, v0}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 424
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 425
    move-object/from16 v10, p12

    :try_start_7
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 426
    move/from16 v2, p13

    :try_start_8
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    aput-object v0, v12, v14

    .line 381
    .end local v6    # "top":Z
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v21    # "intent":Landroid/content/Intent;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p1

    move/from16 v6, p4

    move-object/from16 v3, v18

    move-wide/from16 v10, v19

    const/4 v0, -0x1

    const/4 v13, 0x0

    goto/16 :goto_3

    .line 445
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v14    # "i":I
    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v11, p8

    :goto_8
    move-object/from16 v10, p12

    :goto_9
    move/from16 v2, p13

    goto/16 :goto_f

    .line 386
    .end local v18    # "intents":[Landroid/content/Intent;
    .end local v19    # "origId":J
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v10    # "origId":J
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v14    # "i":I
    .local v15, "intent":Landroid/content/Intent;
    :cond_9
    move/from16 v2, p13

    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-object/from16 v11, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v10    # "origId":J
    .restart local v18    # "intents":[Landroid/content/Intent;
    .restart local v19    # "origId":J
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "File descriptors passed in Intent"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "realCallingPid":I
    .end local v7    # "realCallingUid":I
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v18    # "intents":[Landroid/content/Intent;
    .end local v19    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p7    # "resolvedTypes":[Ljava/lang/String;
    .end local p8    # "resultTo":Landroid/os/IBinder;
    .end local p9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p10    # "userId":I
    .end local p11    # "reason":Ljava/lang/String;
    .end local p12    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p13    # "allowBackgroundActivityStart":Z
    throw v0

    .line 445
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v14    # "i":I
    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v5    # "realCallingPid":I
    .restart local v7    # "realCallingUid":I
    .restart local v8    # "callingPid":I
    .restart local v9    # "callingUid":I
    .restart local v10    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p7    # "resolvedTypes":[Ljava/lang/String;
    .restart local p8    # "resultTo":Landroid/os/IBinder;
    .restart local p9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p10    # "userId":I
    .restart local p11    # "reason":Ljava/lang/String;
    .restart local p12    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p13    # "allowBackgroundActivityStart":Z
    :catchall_4
    move-exception v0

    move/from16 v2, p13

    goto/16 :goto_e

    .line 381
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v14    # "i":I
    :cond_a
    move/from16 v2, p13

    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-object/from16 v11, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    .line 429
    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v10    # "origId":J
    .end local v14    # "i":I
    .restart local v18    # "intents":[Landroid/content/Intent;
    .restart local v19    # "origId":J
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    move-object v6, v0

    .line 431
    .local v6, "outActivity":[Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 432
    const/4 v0, 0x0

    move v14, v0

    .end local p8    # "resultTo":Landroid/os/IBinder;
    .local v11, "resultTo":Landroid/os/IBinder;
    .restart local v14    # "i":I
    :goto_a
    :try_start_a
    array-length v0, v12

    if-ge v14, v0, :cond_e

    .line 433
    aget-object v0, v12, v14

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 434
    .local v0, "startResult":I
    if-gez v0, :cond_c

    .line 436
    add-int/lit8 v15, v14, 0x1

    .local v15, "j":I
    :goto_b
    array-length v2, v12

    if-ge v15, v2, :cond_b

    .line 437
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    aget-object v1, v12, v15

    invoke-interface {v2, v1}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    .line 436
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p13

    goto :goto_b

    .line 439
    .end local v15    # "j":I
    :cond_b
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 445
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    return v0

    .line 441
    :cond_c
    const/4 v1, 0x0

    :try_start_b
    aget-object v2, v6, v1

    if-eqz v2, :cond_d

    aget-object v2, v6, v1

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_c

    :cond_d
    move-object/from16 v1, v16

    :goto_c
    move-object v11, v1

    .line 432
    .end local v0    # "startResult":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p13

    goto :goto_a

    .line 443
    .end local v14    # "i":I
    :cond_e
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 445
    .end local v6    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    nop

    .line 448
    const/4 v0, 0x0

    return v0

    .line 443
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .restart local v6    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local p8    # "resultTo":Landroid/os/IBinder;
    :catchall_5
    move-exception v0

    .end local p8    # "resultTo":Landroid/os/IBinder;
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    :goto_d
    :try_start_d
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v5    # "realCallingPid":I
    .end local v7    # "realCallingUid":I
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v18    # "intents":[Landroid/content/Intent;
    .end local v19    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p7    # "resolvedTypes":[Ljava/lang/String;
    .end local p9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p10    # "userId":I
    .end local p11    # "reason":Ljava/lang/String;
    .end local p12    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p13    # "allowBackgroundActivityStart":Z
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 445
    .end local v6    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v5    # "realCallingPid":I
    .restart local v7    # "realCallingUid":I
    .restart local v8    # "callingPid":I
    .restart local v9    # "callingUid":I
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    .restart local v18    # "intents":[Landroid/content/Intent;
    .restart local v19    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p7    # "resolvedTypes":[Ljava/lang/String;
    .restart local p9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p10    # "userId":I
    .restart local p11    # "reason":Ljava/lang/String;
    .restart local p12    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p13    # "allowBackgroundActivityStart":Z
    :catchall_6
    move-exception v0

    goto :goto_f

    .line 443
    .restart local v6    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catchall_7
    move-exception v0

    goto :goto_d

    .line 445
    .end local v6    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local p8    # "resultTo":Landroid/os/IBinder;
    :catchall_8
    move-exception v0

    goto :goto_f

    .end local v18    # "intents":[Landroid/content/Intent;
    .end local v19    # "origId":J
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v10    # "origId":J
    :catchall_9
    move-exception v0

    :goto_e
    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    move-object/from16 v11, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v10    # "origId":J
    .restart local v18    # "intents":[Landroid/content/Intent;
    .restart local v19    # "origId":J
    goto :goto_f

    .end local v18    # "intents":[Landroid/content/Intent;
    .end local v19    # "origId":J
    .restart local v10    # "origId":J
    .restart local p6    # "intents":[Landroid/content/Intent;
    :catchall_a
    move-exception v0

    move-object/from16 v3, p11

    move-wide/from16 v19, v10

    move-object/from16 v11, p8

    move-object/from16 v10, p12

    move-object/from16 v18, p6

    .end local v10    # "origId":J
    .end local p6    # "intents":[Landroid/content/Intent;
    .end local p8    # "resultTo":Landroid/os/IBinder;
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    .restart local v18    # "intents":[Landroid/content/Intent;
    .restart local v19    # "origId":J
    :goto_f
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 356
    .end local v5    # "realCallingPid":I
    .end local v7    # "realCallingUid":I
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v18    # "intents":[Landroid/content/Intent;
    .end local v19    # "origId":J
    .restart local p2    # "callingUid":I
    .restart local p6    # "intents":[Landroid/content/Intent;
    .restart local p8    # "resultTo":Landroid/os/IBinder;
    :cond_f
    move-object/from16 v11, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_10
    move-object/from16 v11, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_11
    move-object/from16 v11, p8

    move-object/from16 v3, p11

    move-object/from16 v10, p12

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 21
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "resolvedTypes"    # [Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p9, "userId"    # I
    .param p10, "validateIncomingUser"    # Z
    .param p11, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p12, "allowBackgroundActivityStart"    # Z

    .line 333
    const-string v0, "startActivityInPackage"

    .line 335
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 335
    const-string v6, "startActivityInPackage"

    move-object/from16 v1, p0

    move/from16 v2, p9

    move/from16 v3, p10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    .line 339
    .end local p9    # "userId":I
    .local v1, "userId":I
    const/4 v8, 0x0

    const-string v18, "startActivityInPackage"

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move/from16 v17, v1

    move-object/from16 v19, p11

    move/from16 v20, p12

    invoke-virtual/range {v7 .. v20}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v2

    return v2
.end method

.method final startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 13
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intents"    # [Landroid/content/Intent;
    .param p4, "resolvedTypes"    # [Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p7, "userId"    # I
    .param p8, "validateIncomingUser"    # Z
    .param p9, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p10, "allowBackgroundActivityStart"    # Z

    .line 309
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method final startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 16
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "startFlags"    # I
    .param p11, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p12, "userId"    # I
    .param p13, "inTask"    # Lcom/android/server/wm/TaskRecord;
    .param p14, "reason"    # Ljava/lang/String;
    .param p15, "validateIncomingUser"    # Z
    .param p16, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p17, "allowBackgroundActivityStart"    # Z

    .line 272
    move-object/from16 v0, p0

    move/from16 v1, p12

    move/from16 v2, p15

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    .line 276
    .end local p12    # "userId":I
    .local v0, "userId":I
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p14

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 277
    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 278
    move/from16 v6, p2

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 279
    move/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 280
    move-object/from16 v8, p4

    invoke-virtual {v4, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 281
    move-object/from16 v9, p6

    invoke-virtual {v4, v9}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 282
    move-object/from16 v10, p7

    invoke-virtual {v4, v10}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 283
    move-object/from16 v11, p8

    invoke-virtual {v4, v11}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 284
    move/from16 v12, p9

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 285
    move/from16 v13, p10

    invoke-virtual {v4, v13}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 286
    move-object/from16 v14, p11

    invoke-virtual {v4, v14}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 287
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 288
    move-object/from16 v15, p13

    invoke-virtual {v4, v15}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/TaskRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 289
    move/from16 p12, v0

    move-object/from16 v0, p16

    .end local v0    # "userId":I
    .restart local p12    # "userId":I
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 290
    move/from16 v0, p17

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 291
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v4

    .line 276
    return v4
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .line 172
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 173
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 174
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 180
    :cond_0
    invoke-virtual {v0, p4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHomeActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 182
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 183
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 184
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 185
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 188
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 189
    invoke-virtual {v1, p4}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 190
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 191
    .local v2, "homeStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    if-eqz v3, :cond_2

    .line 195
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 197
    :cond_2
    return-void
.end method

.method startSetupActivity()V
    .locals 10

    .line 204
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    if-eqz v0, :cond_0

    .line 205
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 213
    const/4 v1, 0x0

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 217
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0x100480

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 222
    .local v3, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 223
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 224
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.SETUP_VERSION"

    if-eqz v5, :cond_1

    .line 225
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 226
    :cond_1
    const/4 v5, 0x0

    :goto_0
    nop

    .line 227
    .local v5, "vers":Ljava/lang/String;
    if-nez v5, :cond_2

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    .line 228
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    :cond_2
    const-string v6, "last_setup_shown"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "lastVers":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 234
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    const-string v7, "startSetupActivity"

    invoke-virtual {p0, v2, v7}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 238
    invoke-virtual {v7, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 239
    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 244
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "vers":Ljava/lang/String;
    .end local v6    # "lastVers":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    .line 536
    .local v1, "activity":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 537
    .end local v1    # "activity":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    goto :goto_0

    .line 538
    :cond_0
    return-void
.end method
