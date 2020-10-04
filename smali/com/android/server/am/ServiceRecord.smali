.class final Lcom/android/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "ServiceRecord.java"

# interfaces
.implements Landroid/content/ComponentName$WithComponentName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ServiceRecord$StartItem;
    }
.end annotation


# static fields
.field static final MAX_DELIVERY_COUNT:I = 0x3

.field static final MAX_DONE_EXECUTING_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final ams:Lcom/android/server/am/ActivityManagerService;

.field app:Lcom/android/server/am/ProcessRecord;

.field appInfo:Landroid/content/pm/ApplicationInfo;

.field final bindings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/IntentBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field callStart:Z

.field final connections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field crashCount:I

.field final createRealTime:J

.field createdFromFg:Z

.field final definingPackageName:Ljava/lang/String;

.field final definingUid:I

.field delayed:Z

.field delayedStop:Z

.field final deliveredStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field destroyTime:J

.field destroying:Z

.field executeFg:Z

.field executeNesting:I

.field executingStart:J

.field final exported:Z

.field fgRequired:Z

.field fgWaiting:Z

.field foregroundId:I

.field foregroundNoti:Landroid/app/Notification;

.field foregroundServiceType:I

.field final instanceName:Landroid/content/ComponentName;

.field final intent:Landroid/content/Intent$FilterComparison;

.field isForeground:Z

.field isolatedProc:Lcom/android/server/am/ProcessRecord;

.field lastActivity:J

.field private lastStartId:I

.field private mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

.field private mHasBindingWhitelistingBgActivityStarts:Z

.field private mHasStartedWhitelistingBgActivityStarts:Z

.field private mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

.field final name:Landroid/content/ComponentName;

.field nextRestartTime:J

.field final packageName:Ljava/lang/String;

.field pendingConnectionGroup:I

.field pendingConnectionImportance:I

.field final pendingStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field final permission:Ljava/lang/String;

.field final processName:Ljava/lang/String;

.field restartCount:I

.field restartDelay:J

.field restartTime:J

.field restartTracker:Lcom/android/internal/app/procstats/ServiceState;

.field final restarter:Ljava/lang/Runnable;

.field final serviceInfo:Landroid/content/pm/ServiceInfo;

.field final shortInstanceName:Ljava/lang/String;

.field startRequested:Z

.field startingBgTimeout:J

.field final stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

.field stopIfKilled:Z

.field stringName:Ljava/lang/String;

.field totalRestartCount:I

.field tracker:Lcom/android/internal/app/procstats/ServiceState;

.field final userId:I

.field whitelistManager:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "servStats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "instanceName"    # Landroid/content/ComponentName;
    .param p5, "definingPackageName"    # Ljava/lang/String;
    .param p6, "definingUid"    # I
    .param p7, "intent"    # Landroid/content/Intent$FilterComparison;
    .param p8, "sInfo"    # Landroid/content/pm/ServiceInfo;
    .param p9, "callerIsFg"    # Z
    .param p10, "restarter"    # Ljava/lang/Runnable;

    .line 486
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 487
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 488
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 489
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 490
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 491
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 492
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    .line 493
    iput p6, p0, Lcom/android/server/am/ServiceRecord;->definingUid:I

    .line 494
    iput-object p7, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 495
    iput-object p8, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 496
    iget-object v0, p8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 497
    iget-object v0, p8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 498
    iget v0, p8, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 503
    :goto_0
    iget-object v0, p8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 504
    iget-boolean v0, p8, Landroid/content/pm/ServiceInfo;->exported:Z

    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    .line 505
    iput-object p10, p0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 508
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 509
    iput-boolean p9, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 510
    return-void
.end method

.method private setHasStartedWhitelistingBgActivityStarts(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 692
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-eq v0, p1, :cond_0

    .line 693
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    .line 694
    invoke-direct {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsWhitelistingToken()V

    .line 696
    :cond_0
    return-void
.end method

.method private updateParentProcessBgActivityStartsWhitelistingToken()V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_0

    .line 709
    return-void

    .line 711
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 716
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_1

    .line 714
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 718
    :goto_1
    return-void
.end method


# virtual methods
.method addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "c"    # Lcom/android/server/am/ConnectionRecord;

    .line 608
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 609
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v0, :cond_0

    .line 610
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 611
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    .line 617
    iget v2, p2, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessRecord;->addBoundClientUid(I)V

    .line 619
    :cond_1
    return-void
.end method

.method public cancelNotification()V
    .locals 4

    .line 932
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 933
    .local v0, "localPackageName":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 934
    .local v1, "localForegroundId":I
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ServiceRecord$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/ServiceRecord$2;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 949
    return-void
.end method

.method public clearDeliveredStartsLocked()V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 978
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 977
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 980
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 981
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 366
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "intent={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6, v1, v6}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 369
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "processName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "permission="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 375
    .local v7, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 376
    .local v9, "nowReal":J
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "baseDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "dataDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3

    .line 385
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isolatedProc="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 387
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_4

    .line 388
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "whitelistManager="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 390
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_5

    .line 391
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasBindingWhitelistingBgActivityStarts="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 394
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_6

    .line 395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasStartedWhitelistingBgActivityStarts="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 398
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_7

    .line 399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "delayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 401
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_9

    .line 402
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isForeground="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 403
    const-string v0, " foregroundId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 404
    const-string v0, " foregroundNoti="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 406
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "createTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    invoke-static {v0, v1, v9, v10, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 408
    const-string v0, " startingBgTimeout="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 410
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 411
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 413
    const-string v0, " restartTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 415
    const-string v0, " createdFromFg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 416
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    if-eqz v0, :cond_a

    .line 417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " pendingConnectionGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 419
    const-string v0, " Importance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 421
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v0, :cond_c

    .line 422
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 423
    const-string v0, " delayedStop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 424
    const-string v0, " stopIfKilled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 425
    const-string v0, " callStart="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 426
    const-string v0, " lastStartId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 428
    :cond_c
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v0, :cond_d

    .line 429
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "executeNesting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 430
    const-string v0, " executeFg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 431
    const-string v0, " executingStart="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 433
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 435
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_e

    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 436
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "destroying="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 437
    const-string v0, " destroyTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 439
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 441
    :cond_f
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v0, :cond_10

    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_10

    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_11

    .line 443
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "restartCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 444
    const-string v0, " restartDelay="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 446
    const-string v0, " nextRestartTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 447
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 448
    const-string v0, " crashCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 450
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 451
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Delivered Starts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 454
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 455
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Starts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 458
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const-string v1, "  "

    if-lez v0, :cond_15

    .line 459
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Bindings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 461
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/IntentBindRecord;

    .line 462
    .local v2, "b":Lcom/android/server/am/IntentBindRecord;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "* IntentBindRecord{"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v2}, Lcom/android/server/am/IntentBindRecord;->collectFlags()I

    move-result v3

    and-int/2addr v3, v6

    if-eqz v3, :cond_14

    .line 465
    const-string v3, " CREATE"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 467
    :cond_14
    const-string/jumbo v3, "}:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 460
    .end local v2    # "b":Lcom/android/server/am/IntentBindRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 472
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "All Connections:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x0

    .local v0, "conni":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 474
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 475
    .local v2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_16

    .line 476
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 475
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 473
    .end local v2    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 480
    .end local v0    # "conni":I
    :cond_17
    return-void
.end method

.method dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;J)V"
        }
    .end annotation

    .line 227
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ServiceRecord$StartItem;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 228
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 229
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 230
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 231
    const-string v3, " id="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 232
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-eqz v3, :cond_0

    .line 233
    const-string v3, " dur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget-wide v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    invoke-static {v3, v4, p4, p5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 236
    :cond_0
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-eqz v3, :cond_1

    .line 237
    const-string v3, " dc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 239
    :cond_1
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-eqz v3, :cond_2

    .line 240
    const-string v3, " dxc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 242
    :cond_2
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  intent="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 245
    :cond_3
    const-string/jumbo v3, "null"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    :goto_1
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v3, :cond_4

    .line 247
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  neededGrants="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 250
    :cond_4
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v3, :cond_5

    .line 251
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 228
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 254
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method public findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .locals 4
    .param p1, "id"    # I
    .param p2, "taskRemoved"    # Z
    .param p3, "remove"    # Z

    .line 771
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 772
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 773
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 774
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    if-ne v3, p1, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    if-ne v3, p2, :cond_1

    .line 775
    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 776
    :cond_0
    return-object v2

    .line 772
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public forceClearTracker()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_0

    .line 527
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 530
    :cond_0
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0
.end method

.method getConnections()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getLastStartId()I
    .locals 1

    .line 784
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return v0
.end method

.method public getTracker()Lcom/android/internal/app/procstats/ServiceState;
    .locals 8

    .line 513
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_0

    .line 514
    return-object v0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 520
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/procstats/ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    return-object v0
.end method

.method public hasAutoCreateConnections()Z
    .locals 5

    .line 740
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "conni":I
    :goto_0
    if-ltz v0, :cond_2

    .line 741
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 742
    .local v2, "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 743
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_0

    .line 744
    return v1

    .line 742
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 740
    .end local v2    # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 748
    .end local v0    # "conni":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$whitelistBgActivityStartsOnServiceStart$0$ServiceRecord()V
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 669
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v2, :cond_0

    .line 673
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/ServiceRecord;->setHasStartedWhitelistingBgActivityStarts(Z)V

    goto :goto_0

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    .line 677
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 678
    invoke-virtual {v1, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 680
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 681
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 682
    return-void

    .line 681
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public makeNextStartId()I
    .locals 2

    .line 788
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 789
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-ge v0, v1, :cond_0

    .line 790
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 792
    :cond_0
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return v0
.end method

.method public makeRestarting(IJ)V
    .locals 8
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .line 533
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_1

    .line 541
    return-void

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 545
    return-void
.end method

.method public postNotification()V
    .locals 15

    .line 796
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 797
    .local v0, "appUid":I
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 798
    .local v9, "appPid":I
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 801
    iget-object v10, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 802
    .local v10, "localPackageName":Ljava/lang/String;
    iget v11, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 803
    .local v11, "localForegroundId":I
    iget-object v12, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 804
    .local v12, "_foregroundNoti":Landroid/app/Notification;
    move-object v8, p0

    .line 805
    .local v8, "record":Lcom/android/server/am/ServiceRecord;
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v14, Lcom/android/server/am/ServiceRecord$1;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v12

    move-object v4, v10

    move v5, v0

    move v6, v9

    move v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;Ljava/lang/String;IIILcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 927
    .end local v8    # "record":Lcom/android/server/am/ServiceRecord;
    .end local v10    # "localPackageName":Ljava/lang/String;
    .end local v11    # "localForegroundId":I
    .end local v12    # "_foregroundNoti":Landroid/app/Notification;
    :cond_0
    return-void
.end method

.method removeConnection(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 622
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 627
    :cond_0
    return-void
.end method

.method public resetRestartCounter()V
    .locals 2

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 766
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 767
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 768
    return-void
.end method

.method public retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 722
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 723
    .local v0, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 724
    .local v1, "i":Lcom/android/server/am/IntentBindRecord;
    if-nez v1, :cond_0

    .line 725
    new-instance v2, Lcom/android/server/am/IntentBindRecord;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    move-object v1, v2

    .line 726
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBindRecord;

    .line 729
    .local v2, "a":Lcom/android/server/am/AppBindRecord;
    if-eqz v2, :cond_1

    .line 730
    return-object v2

    .line 732
    :cond_1
    new-instance v3, Lcom/android/server/am/AppBindRecord;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;)V

    move-object v2, v3

    .line 733
    iget-object v3, v1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    return-object v2
.end method

.method setHasBindingWhitelistingBgActivityStarts(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 647
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eq v0, p1, :cond_0

    .line 648
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    .line 649
    invoke-direct {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsWhitelistingToken()V

    .line 651
    :cond_0
    return-void
.end method

.method public setProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "_proc"    # Lcom/android/server/am/ProcessRecord;

    .line 548
    if-eqz p1, :cond_4

    .line 552
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 553
    if-eq v0, p1, :cond_0

    .line 554
    nop

    .line 555
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 556
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 560
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_1

    .line 561
    move-object v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 562
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 566
    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_2

    .line 564
    :cond_3
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 569
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_6

    if-eq v0, p1, :cond_6

    .line 573
    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-nez v1, :cond_5

    .line 574
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 576
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 578
    :cond_6
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 579
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    if-lez v0, :cond_7

    if-eqz p1, :cond_7

    .line 580
    iput-object p0, p1, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    .line 581
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 582
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 583
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 586
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "conni":I
    :goto_3
    if-ltz v0, :cond_a

    .line 587
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 588
    .local v1, "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 589
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 590
    .local v3, "conn":Lcom/android/server/am/ConnectionRecord;
    if-eqz p1, :cond_8

    .line 591
    invoke-virtual {v3}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    goto :goto_5

    .line 593
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 588
    .end local v3    # "conn":Lcom/android/server/am/ConnectionRecord;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 586
    .end local v1    # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v2    # "i":I
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 598
    .end local v0    # "conni":I
    :cond_a
    if-eqz p1, :cond_b

    .line 599
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 601
    :cond_b
    return-void
.end method

.method public stripForegroundServiceFlagFromNotification()V
    .locals 5

    .line 952
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-nez v0, :cond_0

    .line 953
    return-void

    .line 956
    :cond_0
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 957
    .local v0, "localForegroundId":I
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 958
    .local v1, "localUserId":I
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 962
    .local v2, "localPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ServiceRecord$3;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/server/am/ServiceRecord$3;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 974
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 984
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 985
    return-object v0

    .line 987
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 988
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 991
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method updateHasBindingWhitelistingBgActivityStarts()V
    .locals 6

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "hasWhitelistingBinding":Z
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_3

    .line 632
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 633
    .local v2, "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 634
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 635
    const/4 v0, 0x1

    .line 636
    goto :goto_2

    .line 633
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 639
    .end local v3    # "i":I
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 640
    goto :goto_3

    .line 631
    .end local v2    # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 643
    .end local v1    # "conni":I
    :cond_3
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ServiceRecord;->setHasBindingWhitelistingBgActivityStarts(Z)V

    .line 644
    return-void
.end method

.method public updateWhitelistManager()V
    .locals 6

    .line 752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    .line 753
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "conni":I
    :goto_0
    if-ltz v0, :cond_2

    .line 754
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 755
    .local v2, "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 756
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 757
    iput-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    .line 758
    return-void

    .line 755
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 753
    .end local v2    # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 762
    .end local v0    # "conni":I
    :cond_2
    return-void
.end method

.method whitelistBgActivityStartsOnServiceStart()V
    .locals 4

    .line 660
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ServiceRecord;->setHasStartedWhitelistingBgActivityStarts(Z)V

    .line 661
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 662
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 667
    new-instance v0, Lcom/android/server/am/-$$Lambda$ServiceRecord$LibDrdWU9t_vgStZ6swd0FNzHXc;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$ServiceRecord$LibDrdWU9t_vgStZ6swd0FNzHXc;-><init>(Lcom/android/server/am/ServiceRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 687
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 689
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 20
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 258
    .local v10, "token":J
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-wide v12, 0x10900000001L

    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 259
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide v14, 0x10800000002L

    invoke-virtual {v9, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 260
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    .line 261
    const-wide v2, 0x10500000003L

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 263
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v1, :cond_2

    .line 264
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide v3, 0x10b00000004L

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 267
    :cond_2
    const-wide v1, 0x10900000005L

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 268
    const-wide v1, 0x10900000006L

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 269
    const-wide v1, 0x10900000007L

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 272
    .local v16, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 273
    .local v18, "nowReal":J
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    .line 274
    const-wide v1, 0x10b00000008L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 275
    .local v1, "appInfoToken":J
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 276
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 277
    const-wide v3, 0x10900000002L

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 279
    :cond_3
    const-wide v3, 0x10900000003L

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 280
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 282
    .end local v1    # "appInfoToken":J
    :cond_4
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5

    .line 283
    const-wide v2, 0x10b00000009L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/ProcessRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 285
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_6

    .line 286
    const-wide v2, 0x10b0000000aL

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/ProcessRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 288
    :cond_6
    const-wide v1, 0x1080000000bL

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 289
    const-wide v1, 0x1080000000cL

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 290
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const-wide v12, 0x10500000001L

    if-nez v1, :cond_7

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v1, :cond_8

    .line 291
    :cond_7
    const-wide v1, 0x10b0000000dL

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 292
    .local v1, "fgToken":J
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {v9, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 293
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, v9, v4, v5}, Landroid/app/Notification;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 294
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 296
    .end local v1    # "fgToken":J
    :cond_8
    const-wide v2, 0x10b0000000eL

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    move-object/from16 v1, p1

    move-wide/from16 v6, v18

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 297
    const-wide v2, 0x10b0000000fL

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 299
    const-wide v2, 0x10b00000010L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 300
    const-wide v2, 0x10b00000011L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 301
    const-wide v1, 0x10800000012L

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 303
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v1, :cond_9

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v1, :cond_a

    .line 304
    :cond_9
    const-wide v1, 0x10b00000013L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 305
    .local v1, "startToken":J
    const-wide v3, 0x10800000001L

    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 306
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {v9, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 307
    const-wide v3, 0x10800000003L

    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 308
    const-wide v3, 0x10500000005L

    iget v5, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 309
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 312
    .end local v1    # "startToken":J
    :cond_a
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v1, :cond_b

    .line 313
    const-wide v1, 0x10b00000014L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 314
    .local v6, "executNestingToken":J
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 315
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {v9, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 316
    const-wide v2, 0x10b00000003L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    move-object/from16 v1, p1

    move-wide v14, v6

    .end local v6    # "executNestingToken":J
    .local v14, "executNestingToken":J
    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 318
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 320
    .end local v14    # "executNestingToken":J
    :cond_b
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v14, 0x0

    if-nez v1, :cond_c

    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v1, v1, v14

    if-eqz v1, :cond_d

    .line 321
    :cond_c
    const-wide v2, 0x10b00000015L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    move-object/from16 v1, p1

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 323
    :cond_d
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v1, :cond_e

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v1, :cond_e

    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_e

    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v1, v1, v14

    if-eqz v1, :cond_f

    .line 324
    :cond_e
    const-wide v1, 0x10b00000016L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 325
    .local v14, "crashToken":J
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 326
    const-wide v2, 0x10b00000002L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-object/from16 v1, p1

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 327
    const-wide v2, 0x10b00000003L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 329
    const-wide v1, 0x10500000004L

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 330
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 333
    .end local v14    # "crashToken":J
    :cond_f
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 334
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 335
    .local v7, "N":I
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_10

    .line 336
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000017L

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 335
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 340
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_10
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 341
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 342
    .restart local v7    # "N":I
    const/4 v1, 0x0

    move v8, v1

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v7, :cond_11

    .line 343
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000018L

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 342
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 346
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_11
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 347
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 348
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_12

    .line 349
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 350
    .local v3, "b":Lcom/android/server/am/IntentBindRecord;
    const-wide v4, 0x20b00000019L

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/server/am/IntentBindRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 348
    .end local v3    # "b":Lcom/android/server/am/IntentBindRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 353
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_12
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 354
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 355
    .restart local v1    # "N":I
    const/4 v2, 0x0

    .local v2, "conni":I
    :goto_4
    if-ge v2, v1, :cond_14

    .line 356
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 357
    .local v3, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    .line 358
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    const-wide v6, 0x20b0000001aL

    invoke-virtual {v5, v9, v6, v7}, Lcom/android/server/am/ConnectionRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 355
    .end local v3    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "i":I
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 362
    .end local v1    # "N":I
    .end local v2    # "conni":I
    :cond_14
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 363
    return-void
.end method
