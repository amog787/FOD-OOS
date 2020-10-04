.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/PackageWatchdog;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "watchdog"    # Lcom/android/server/PackageWatchdog;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 89
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 99
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 104
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 105
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 107
    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 660
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 661
    return-object v1

    .line 664
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-nez v0, :cond_1

    .line 665
    return-object v1

    .line 668
    :cond_1
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 669
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 670
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 671
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 672
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 673
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 675
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 678
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 679
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 680
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 682
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 683
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 684
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_2

    .line 676
    :cond_4
    :goto_1
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 677
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 687
    :cond_5
    :goto_2
    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 21
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "timeMillis"    # J
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I

    .line 580
    move-object/from16 v10, p1

    if-eqz v10, :cond_0

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 581
    .local v3, "name":Ljava/lang/String;
    if-eqz v10, :cond_1

    iget v0, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    move v4, v0

    goto :goto_1

    :cond_1
    move/from16 v4, p8

    .line 582
    .local v4, "pid":I
    :goto_1
    if-eqz v10, :cond_2

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v0

    goto :goto_2

    :cond_2
    move/from16 v9, p9

    .line 584
    .local v9, "uid":I
    :goto_2
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v15, p2

    iget-object v14, v15, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    new-instance v20, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v13, v3

    move-object v0, v14

    move v14, v4

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, v0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/wm/ActivityTaskManagerInternal;->handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "killReason"    # Ljava/lang/String;

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCrashing(Z)V

    .line 328
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 329
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 330
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 331
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_0

    .line 332
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 334
    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 336
    :cond_0
    return-void
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 607
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCrashing(Z)V

    .line 608
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 610
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->startAppProblemLocked()V

    .line 611
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 612
    const-string v3, "force-crash"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    return v0
.end method

.method private stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 891
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 892
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 895
    return-void
.end method


# virtual methods
.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 269
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 403
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 404
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 406
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 408
    .local v2, "origId":J
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 411
    nop

    .line 412
    return-void

    .line 410
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .locals 21
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 416
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 417
    .local v14, "timeMillis":J
    iget-object v10, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 418
    .local v10, "shortMsg":Ljava/lang/String;
    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 419
    .local v0, "longMsg":Ljava/lang/String;
    iget-object v9, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 420
    .local v9, "stackTrace":Ljava/lang/String;
    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    .line 422
    :cond_0
    if-eqz v10, :cond_1

    .line 423
    move-object v0, v10

    move-object/from16 v16, v0

    goto :goto_0

    .line 422
    :cond_1
    move-object/from16 v16, v0

    .line 426
    .end local v0    # "longMsg":Ljava/lang/String;
    .local v16, "longMsg":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    if-eqz v12, :cond_6

    .line 427
    const/4 v1, 0x0

    .line 429
    .local v1, "isApexModule":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v7

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 430
    .local v4, "androidPackage":Ljava/lang/String;
    iget-object v5, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .local v5, "moduleInfo":Landroid/content/pm/ModuleInfo;
    if-eqz v5, :cond_2

    .line 433
    const/4 v0, 0x1

    .line 434
    .end local v1    # "isApexModule":Z
    .local v0, "isApexModule":Z
    move v1, v0

    goto :goto_2

    .line 429
    .end local v0    # "isApexModule":Z
    .end local v4    # "androidPackage":Ljava/lang/String;
    .end local v5    # "moduleInfo":Landroid/content/pm/ModuleInfo;
    .restart local v1    # "isApexModule":Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 441
    :cond_3
    :goto_2
    goto :goto_3

    .line 437
    :catch_0
    move-exception v0

    .line 443
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 446
    :cond_4
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v2}, Lcom/android/server/RescueParty;->noteAppCrash(Landroid/content/Context;I)V

    .line 449
    :cond_5
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;)V

    .line 452
    .end local v1    # "isApexModule":Z
    :cond_6
    if-eqz v12, :cond_7

    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    move-result v0

    goto :goto_4

    :cond_7
    move v0, v7

    :goto_4
    move v8, v0

    .line 455
    .local v8, "relaunchReason":I
    new-instance v0, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v6, v0

    .line 457
    .local v6, "result":Lcom/android/server/am/AppErrorResult;
    iget-object v5, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 462
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    move-object v13, v6

    .end local v6    # "result":Lcom/android/server/am/AppErrorResult;
    .local v13, "result":Lcom/android/server/am/AppErrorResult;
    move-object v6, v9

    move-object/from16 v18, v13

    move v13, v8

    .end local v8    # "relaunchReason":I
    .local v13, "relaunchReason":I
    .local v18, "result":Lcom/android/server/am/AppErrorResult;
    move-wide v7, v14

    move-wide/from16 v19, v14

    move-object v14, v9

    .end local v9    # "stackTrace":Ljava/lang/String;
    .local v14, "stackTrace":Ljava/lang/String;
    .local v19, "timeMillis":J
    move/from16 v9, p3

    move-object v15, v10

    .end local v10    # "shortMsg":Ljava/lang/String;
    .local v15, "shortMsg":Ljava/lang/String;
    move/from16 v10, p4

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v0, :cond_8

    .line 464
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 507
    :catchall_0
    move-exception v0

    move-object/from16 v8, v18

    move-wide/from16 v6, v19

    goto/16 :goto_e

    .line 469
    :cond_8
    const/4 v7, 0x2

    if-ne v13, v7, :cond_9

    .line 470
    :try_start_4
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 477
    :cond_9
    if-eqz v12, :cond_a

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 478
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 482
    :cond_a
    if-eqz v12, :cond_b

    .line 483
    :try_start_6
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 486
    :cond_b
    :try_start_7
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 487
    .local v0, "data":Lcom/android/server/am/AppErrorDialog$Data;
    move-object/from16 v8, v18

    .end local v18    # "result":Lcom/android/server/am/AppErrorResult;
    .local v8, "result":Lcom/android/server/am/AppErrorResult;
    :try_start_8
    iput-object v8, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 488
    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 492
    iput-object v14, v0, Lcom/android/server/am/AppErrorDialog$Data;->stackTrace:Ljava/lang/String;

    .line 497
    if-eqz v12, :cond_18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, v16

    move-object v5, v14

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_c

    move-wide/from16 v6, v19

    goto/16 :goto_d

    .line 501
    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 502
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 504
    iget v3, v0, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 505
    .local v3, "taskId":I
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 506
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 507
    nop

    .end local v0    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 509
    invoke-virtual {v8}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v0

    .line 511
    .local v0, "res":I
    const/4 v1, 0x0

    .line 512
    .local v1, "appErrorIntent":Landroid/content/Intent;
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v5, 0x13c

    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 513
    const/4 v4, 0x6

    if-eq v0, v4, :cond_e

    const/4 v4, 0x7

    if-ne v0, v4, :cond_d

    goto :goto_5

    :cond_d
    move v4, v0

    goto :goto_6

    .line 514
    :cond_e
    :goto_5
    const/4 v0, 0x1

    move v4, v0

    .line 516
    .end local v0    # "res":I
    .local v4, "res":I
    :goto_6
    iget-object v5, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 517
    const/4 v0, 0x5

    if-ne v4, v0, :cond_f

    .line 518
    :try_start_a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_7

    .line 564
    :catchall_1
    move-exception v0

    move-wide/from16 v6, v19

    goto/16 :goto_c

    .line 520
    :cond_f
    :goto_7
    const/4 v6, 0x3

    if-ne v4, v6, :cond_10

    .line 521
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v9, "crash"

    const/4 v10, 0x0

    invoke-virtual {v0, v12, v10, v2, v9}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 522
    const/4 v0, -0x1

    if-eq v3, v0, :cond_11

    .line 524
    :try_start_b
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 525
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 524
    invoke-virtual {v0, v3, v9}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 530
    goto :goto_8

    .line 526
    :catch_1
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_c
    const-string v9, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not restart taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 520
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_10
    const/4 v10, 0x0

    .line 533
    :cond_11
    :goto_8
    if-ne v4, v2, :cond_13

    .line 534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 537
    .local v6, "orig":J
    :try_start_d
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_12

    .line 539
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v2, "crash"

    invoke-virtual {v0, v12, v10, v10, v2}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 540
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 543
    :cond_12
    :try_start_e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    goto :goto_9

    .line 543
    :catchall_2
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    .end local v3    # "taskId":I
    .end local v4    # "res":I
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v13    # "relaunchReason":I
    .end local v14    # "stackTrace":Ljava/lang/String;
    .end local v15    # "shortMsg":Ljava/lang/String;
    .end local v16    # "longMsg":Ljava/lang/String;
    .end local v19    # "timeMillis":J
    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local p3    # "callingPid":I
    .end local p4    # "callingUid":I
    throw v0

    .line 546
    .end local v6    # "orig":J
    .restart local v1    # "appErrorIntent":Landroid/content/Intent;
    .restart local v3    # "taskId":I
    .restart local v4    # "res":I
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "relaunchReason":I
    .restart local v14    # "stackTrace":Ljava/lang/String;
    .restart local v15    # "shortMsg":Ljava/lang/String;
    .restart local v16    # "longMsg":Ljava/lang/String;
    .restart local v19    # "timeMillis":J
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local p3    # "callingPid":I
    .restart local p4    # "callingUid":I
    :cond_13
    :goto_9
    const/16 v0, 0x8

    if-ne v4, v0, :cond_14

    .line 547
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 549
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 552
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ColdStartInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/am/ColdStartInjector;

    move-result-object v0

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ColdStartInjector;->setCrashKillProc(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 555
    :cond_14
    const/4 v2, 0x2

    if-ne v4, v2, :cond_15

    .line 556
    move-object/from16 v2, p2

    move-wide/from16 v6, v19

    .end local v19    # "timeMillis":J
    .local v6, "timeMillis":J
    :try_start_f
    invoke-virtual {v11, v12, v6, v7, v2}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0

    move-object v1, v0

    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    .local v0, "appErrorIntent":Landroid/content/Intent;
    goto :goto_a

    .line 555
    .end local v0    # "appErrorIntent":Landroid/content/Intent;
    .end local v6    # "timeMillis":J
    .restart local v1    # "appErrorIntent":Landroid/content/Intent;
    .restart local v19    # "timeMillis":J
    :cond_15
    move-object/from16 v2, p2

    move-wide/from16 v6, v19

    .line 558
    .end local v19    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    :goto_a
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_16

    const/4 v9, 0x3

    if-eq v4, v9, :cond_16

    .line 561
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v9, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v10, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 562
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 561
    invoke-virtual {v0, v9, v10, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 564
    :cond_16
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 566
    if-eqz v1, :cond_17

    .line 568
    :try_start_10
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_10 .. :try_end_10} :catch_2

    .line 571
    goto :goto_b

    .line 569
    :catch_2
    move-exception v0

    .line 570
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ActivityManager"

    const-string v5, "bug report receiver dissappeared"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_17
    :goto_b
    return-void

    .line 564
    .end local v6    # "timeMillis":J
    .restart local v19    # "timeMillis":J
    :catchall_3
    move-exception v0

    move-wide/from16 v6, v19

    .end local v19    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    :goto_c
    :try_start_11
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_c

    .line 497
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    .end local v3    # "taskId":I
    .end local v4    # "res":I
    .end local v6    # "timeMillis":J
    .local v0, "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v19    # "timeMillis":J
    :cond_18
    move-wide/from16 v6, v19

    .line 498
    .end local v19    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    :goto_d
    :try_start_12
    monitor-exit v17
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 507
    .end local v0    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v6    # "timeMillis":J
    .restart local v19    # "timeMillis":J
    :catchall_5
    move-exception v0

    move-wide/from16 v6, v19

    .end local v19    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    goto :goto_e

    .end local v6    # "timeMillis":J
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v19    # "timeMillis":J
    :catchall_6
    move-exception v0

    move-object/from16 v8, v18

    move-wide/from16 v6, v19

    .end local v18    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v19    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    goto :goto_e

    .end local v13    # "relaunchReason":I
    .end local v15    # "shortMsg":Ljava/lang/String;
    .local v6, "result":Lcom/android/server/am/AppErrorResult;
    .local v8, "relaunchReason":I
    .restart local v9    # "stackTrace":Ljava/lang/String;
    .restart local v10    # "shortMsg":Ljava/lang/String;
    .local v14, "timeMillis":J
    :catchall_7
    move-exception v0

    move-object/from16 v17, v5

    move v13, v8

    move-object v8, v6

    move-wide v6, v14

    move-object v14, v9

    move-object v15, v10

    .end local v9    # "stackTrace":Ljava/lang/String;
    .end local v10    # "shortMsg":Ljava/lang/String;
    .local v6, "timeMillis":J
    .local v8, "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "relaunchReason":I
    .local v14, "stackTrace":Ljava/lang/String;
    .restart local v15    # "shortMsg":Ljava/lang/String;
    :goto_e
    :try_start_13
    monitor-exit v17
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_e
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 647
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 648
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_0

    .line 649
    const/4 v1, 0x0

    return-object v1

    .line 651
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 653
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 654
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 655
    return-object v1
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    const-string v4, " uid "

    if-nez v3, :cond_7

    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 182
    .local v5, "now":J
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 183
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 184
    .local v8, "processCount":I
    const/4 v9, 0x0

    move/from16 v10, p3

    .end local p3    # "needSep":Z
    .local v9, "ip":I
    .local v10, "needSep":Z
    :goto_0
    if-ge v9, v8, :cond_6

    .line 185
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 186
    .local v11, "pname":Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 187
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 188
    .local v13, "uidCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v13, :cond_5

    .line 189
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 190
    .local v15, "puid":I
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v16, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v7

    invoke-virtual {v7, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 191
    .local v7, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_1

    if-eqz v7, :cond_0

    move/from16 v17, v8

    .end local v8    # "processCount":I
    .local v17, "processCount":I
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 192
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 193
    goto :goto_2

    .line 191
    .end local v17    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_0
    move/from16 v17, v8

    .end local v8    # "processCount":I
    .restart local v17    # "processCount":I
    goto :goto_2

    .end local v17    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_1
    move/from16 v17, v8

    .line 195
    .end local v8    # "processCount":I
    .restart local v17    # "processCount":I
    :cond_2
    if-nez v3, :cond_4

    .line 196
    if-eqz v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 197
    :cond_3
    const/4 v10, 0x1

    .line 198
    const-string v8, "  Time since processes crashed:"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    const/4 v3, 0x1

    .line 201
    :cond_4
    const-string v8, "    Process "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 203
    const-string v8, ": last crashed "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 p3, v7

    .end local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .local p3, "r":Lcom/android/server/am/ProcessRecord;
    sub-long v7, v5, v18

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 205
    const-string v7, " ago"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    .end local v15    # "puid":I
    .end local p3    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v17

    goto :goto_1

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    :cond_5
    move-object/from16 v16, v7

    move/from16 v17, v8

    .line 184
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v17    # "processCount":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    :cond_6
    move-object/from16 v16, v7

    move/from16 v17, v8

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v17    # "processCount":I
    goto :goto_3

    .line 179
    .end local v3    # "printed":Z
    .end local v5    # "now":J
    .end local v9    # "ip":I
    .end local v10    # "needSep":Z
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .local p3, "needSep":Z
    :cond_7
    move/from16 v10, p3

    .line 210
    .end local p3    # "needSep":Z
    .restart local v10    # "needSep":Z
    :goto_3
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 211
    const/4 v3, 0x0

    .line 212
    .restart local v3    # "printed":Z
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    .line 213
    .local v5, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 214
    .local v6, "processCount":I
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_4
    if-ge v7, v6, :cond_13

    .line 215
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 216
    .local v8, "pname":Ljava/lang/String;
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 217
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 218
    .local v11, "uidCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    if-ge v12, v11, :cond_12

    .line 219
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 220
    .local v13, "puid":I
    iget-object v14, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v14

    invoke-virtual {v14, v8, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 221
    .local v14, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_9

    if-eqz v14, :cond_8

    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 222
    invoke-virtual {v15, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 218
    .end local v13    # "puid":I
    .end local v14    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_8
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_8

    .line 225
    .restart local v13    # "puid":I
    .restart local v14    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_9
    if-nez v3, :cond_b

    .line 226
    if-eqz v10, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 227
    :cond_a
    const/4 v10, 0x1

    .line 228
    const-string v15, "  Bad processes:"

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const/4 v3, 0x1

    .line 231
    :cond_b
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 232
    .local v15, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    const-string v0, "    Bad process "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 234
    const-string v0, ": crashed at time "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 p3, v3

    .end local v3    # "printed":Z
    .local p3, "printed":Z
    iget-wide v2, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 235
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 236
    const-string v0, "      Short msg: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    :cond_c
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 239
    const-string v0, "      Long msg: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    :cond_d
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 242
    const-string v0, "      Stack:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "lastPos":I
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_6
    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v16, v4

    const-string v4, "        "

    if-ge v2, v3, :cond_f

    .line 245
    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move-object/from16 v17, v5

    .end local v5    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v17, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    const/16 v5, 0xa

    if-ne v3, v5, :cond_e

    .line 246
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v0, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 249
    add-int/lit8 v0, v2, 0x1

    .line 244
    :cond_e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto :goto_6

    .end local v17    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v5    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    :cond_f
    move-object/from16 v17, v5

    .line 252
    .end local v2    # "pos":I
    .end local v5    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v17    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    iget-object v2, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_11

    .line 253
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    iget-object v2, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_7

    .line 241
    .end local v0    # "lastPos":I
    .end local v17    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v5    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    :cond_10
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 218
    .end local v5    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v13    # "puid":I
    .end local v14    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .restart local v17    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    :cond_11
    :goto_7
    move/from16 v3, p3

    .end local p3    # "printed":Z
    .restart local v3    # "printed":Z
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_5

    .end local v17    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v5    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    :cond_12
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 214
    .end local v5    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v11    # "uidCount":I
    .end local v12    # "i":I
    .restart local v17    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    goto/16 :goto_4

    .end local v17    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v5    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    :cond_13
    move-object/from16 v17, v5

    .line 261
    .end local v3    # "printed":Z
    .end local v5    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v6    # "processCount":I
    .end local v7    # "ip":I
    :cond_14
    return v10
.end method

.method generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .line 631
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 633
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 634
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 635
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 636
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 637
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 638
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 639
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 640
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 642
    return-object v0
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 21
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 692
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 693
    .local v9, "now":J
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v11, 0x0

    const-string v4, "anr_show_background"

    invoke-static {v3, v4, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_0

    move v3, v12

    goto :goto_0

    :cond_0
    move v3, v11

    :goto_0
    move v13, v3

    .line 696
    .local v13, "showBackground":Z
    nop

    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    move v3, v12

    goto :goto_1

    :cond_1
    move v3, v11

    :goto_1
    move v14, v3

    .line 701
    .local v14, "procIsBoundForeground":Z
    const/4 v3, 0x0

    .line 703
    .local v3, "tryAgain":Z
    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v4, :cond_2

    .line 704
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 705
    .local v4, "crashTime":Ljava/lang/Long;
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    move-object v15, v4

    move-object/from16 v16, v5

    .local v5, "crashTimePersistent":Ljava/lang/Long;
    goto :goto_2

    .line 707
    .end local v4    # "crashTime":Ljava/lang/Long;
    .end local v5    # "crashTimePersistent":Ljava/lang/Long;
    :cond_2
    const/4 v4, 0x0

    move-object v5, v4

    .restart local v5    # "crashTimePersistent":Ljava/lang/Long;
    move-object v15, v4

    move-object/from16 v16, v5

    .line 711
    .end local v5    # "crashTimePersistent":Ljava/lang/Long;
    .local v15, "crashTime":Ljava/lang/Long;
    .local v16, "crashTimePersistent":Ljava/lang/Long;
    :goto_2
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v12

    move v8, v3

    .end local v3    # "tryAgain":Z
    .local v4, "i":I
    .local v8, "tryAgain":Z
    :goto_3
    const-wide/32 v5, 0xea60

    if-ltz v4, :cond_6

    .line 714
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 716
    .local v3, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v11, v3, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v11, v5

    cmp-long v5, v9, v11

    if-lez v5, :cond_3

    .line 717
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_4

    .line 719
    :cond_3
    const/4 v5, 0x1

    iget v6, v3, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v6, v5

    iput v6, v3, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 723
    :goto_4
    iget v5, v3, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v5, v5

    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v7, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v5, v5, v11

    if-gez v5, :cond_5

    iget-boolean v5, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v5, :cond_4

    if-eqz v14, :cond_5

    .line 725
    :cond_4
    const/4 v5, 0x1

    move v8, v5

    .line 711
    .end local v3    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    add-int/lit8 v4, v4, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_3

    .line 735
    .end local v4    # "i":I
    :cond_6
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v5

    cmp-long v3, v9, v3

    if-gez v3, :cond_a

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v4, "com.oneplus.factorymode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has crashed too many times: killing!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/16 v3, 0x7550

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 742
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 741
    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 743
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 744
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_8

    .line 749
    const/16 v3, 0x753f

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 751
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v3, :cond_7

    .line 754
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v6, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v3, v6

    move-wide v4, v9

    move/from16 v17, v14

    move-object v14, v6

    .end local v14    # "procIsBoundForeground":Z
    .local v17, "procIsBoundForeground":Z
    move-object/from16 v6, p3

    move-object/from16 v18, v15

    move v15, v7

    .end local v15    # "crashTime":Ljava/lang/Long;
    .local v18, "crashTime":Ljava/lang/Long;
    move-object/from16 v7, p4

    move-wide/from16 v19, v9

    move v9, v8

    .end local v8    # "tryAgain":Z
    .local v9, "tryAgain":Z
    .local v19, "now":J
    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v15, v14}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_5

    .line 751
    .end local v17    # "procIsBoundForeground":Z
    .end local v18    # "crashTime":Ljava/lang/Long;
    .end local v19    # "now":J
    .restart local v8    # "tryAgain":Z
    .local v9, "now":J
    .restart local v14    # "procIsBoundForeground":Z
    .restart local v15    # "crashTime":Ljava/lang/Long;
    :cond_7
    move-wide/from16 v19, v9

    move/from16 v17, v14

    move-object/from16 v18, v15

    move v9, v8

    .line 758
    .end local v8    # "tryAgain":Z
    .end local v14    # "procIsBoundForeground":Z
    .end local v15    # "crashTime":Ljava/lang/Long;
    .local v9, "tryAgain":Z
    .restart local v17    # "procIsBoundForeground":Z
    .restart local v18    # "crashTime":Ljava/lang/Long;
    .restart local v19    # "now":J
    :goto_5
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->bad:Z

    .line 759
    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 763
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v4, "crash"

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v9, v4}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 764
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 765
    if-nez v13, :cond_9

    .line 766
    return v5

    .line 744
    .end local v17    # "procIsBoundForeground":Z
    .end local v18    # "crashTime":Ljava/lang/Long;
    .end local v19    # "now":J
    .restart local v8    # "tryAgain":Z
    .local v9, "now":J
    .restart local v14    # "procIsBoundForeground":Z
    .restart local v15    # "crashTime":Ljava/lang/Long;
    :cond_8
    move-wide/from16 v19, v9

    move/from16 v17, v14

    move-object/from16 v18, v15

    const/4 v5, 0x0

    move v9, v8

    .line 769
    .end local v8    # "tryAgain":Z
    .end local v14    # "procIsBoundForeground":Z
    .end local v15    # "crashTime":Ljava/lang/Long;
    .local v9, "tryAgain":Z
    .restart local v17    # "procIsBoundForeground":Z
    .restart local v18    # "crashTime":Ljava/lang/Long;
    .restart local v19    # "now":J
    :cond_9
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    move-object/from16 v7, p2

    goto :goto_6

    .line 735
    .end local v17    # "procIsBoundForeground":Z
    .end local v18    # "crashTime":Ljava/lang/Long;
    .end local v19    # "now":J
    .restart local v8    # "tryAgain":Z
    .local v9, "now":J
    .restart local v14    # "procIsBoundForeground":Z
    .restart local v15    # "crashTime":Ljava/lang/Long;
    :cond_a
    move-wide/from16 v19, v9

    move/from16 v17, v14

    move-object/from16 v18, v15

    move v9, v8

    .line 771
    .end local v8    # "tryAgain":Z
    .end local v14    # "procIsBoundForeground":Z
    .end local v15    # "crashTime":Ljava/lang/Long;
    .local v9, "tryAgain":Z
    .restart local v17    # "procIsBoundForeground":Z
    .restart local v18    # "crashTime":Ljava/lang/Long;
    .restart local v19    # "now":J
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 772
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 771
    move-object/from16 v7, p2

    invoke-virtual {v3, v4, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I

    move-result v3

    .line 773
    .local v3, "affectedTaskId":I
    if-eqz v2, :cond_b

    .line 774
    iput v3, v2, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 776
    :cond_b
    if-eqz v2, :cond_c

    if-eqz v16, :cond_c

    .line 777
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v10, v5

    cmp-long v4, v19, v10

    if-gez v4, :cond_c

    .line 778
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .line 782
    .end local v3    # "affectedTaskId":I
    :cond_c
    :goto_6
    if-eqz v2, :cond_d

    if-eqz v9, :cond_d

    .line 783
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 790
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 791
    .local v3, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 792
    .local v4, "homeProc":Lcom/android/server/wm/WindowProcessController;
    if-ne v3, v4, :cond_e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-nez v5, :cond_e

    .line 794
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->clearPackagePreferredForHomeActivities()V

    .line 797
    :cond_e
    iget-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_f

    .line 800
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v6, v8, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v6, v8, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 804
    :cond_f
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v5, :cond_10

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 805
    :cond_10
    const/4 v5, 0x1

    return v5
.end method

.method handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 943
    invoke-static {p1}, Lcom/android/server/am/OpAppBootManagerInjector;->handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 944
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-static {v0, p1}, Lcom/android/server/am/AppErrorsInjector;->handleAppKilledLocked(Lcom/android/internal/app/ProcessMap;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "dialogToShow":Landroid/app/Dialog;
    const/4 v1, 0x0

    .line 900
    .local v1, "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 901
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 902
    .local v3, "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    iget-object v4, v3, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 903
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v4, :cond_0

    .line 904
    const-string v5, "ActivityManager"

    const-string v6, "handleShowAnrUi: proc is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 907
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_1

    .line 908
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 910
    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    const/16 v6, 0x13d

    if-eqz v5, :cond_2

    .line 911
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has anr dialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v5, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v7, -0x2

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 914
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 917
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "anr_show_background"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v8, 0x1

    :cond_3
    move v5, v8

    .line 919
    .local v5, "showBackground":Z
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 923
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    invoke-static {v7, v6, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 926
    iget-object v6, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto :goto_1

    .line 920
    :cond_5
    :goto_0
    new-instance v6, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v8, v3}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    move-object v0, v6

    .line 921
    iput-object v0, v4, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 928
    .end local v3    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "showBackground":Z
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 930
    if-eqz v0, :cond_6

    .line 931
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 934
    :cond_6
    if-eqz v1, :cond_7

    .line 935
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual {v2, v1}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;)V

    .line 937
    :cond_7
    return-void

    .line 928
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 809
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    .line 810
    .local v3, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "anr_show_background"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    move v6, v0

    .line 813
    .local v6, "showBackground":Z
    const/4 v7, 0x0

    .line 816
    .local v7, "dialogToShow":Lcom/android/server/am/AppErrorDialog;
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 817
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 818
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v9, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 819
    .local v9, "res":Lcom/android/server/am/AppErrorResult;
    if-nez v0, :cond_1

    .line 820
    const-string v4, "ActivityManager"

    const-string v5, "handleShowAppErrorUi: proc is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 823
    :cond_1
    :try_start_1
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 824
    .local v10, "packageName":Ljava/lang/String;
    iget v11, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 825
    .local v11, "userId":I
    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v12, :cond_3

    .line 826
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has crash dialog: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-eqz v9, :cond_2

    .line 828
    sget v4, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 830
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 832
    :cond_3
    :try_start_2
    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    const/16 v13, 0x2710

    if-lt v12, v13, :cond_4

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v12, v13, :cond_4

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    move v12, v4

    .line 835
    .local v12, "isBackground":Z
    :goto_1
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v13}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v13

    array-length v14, v13

    move v15, v12

    move v12, v4

    .end local v12    # "isBackground":Z
    .local v15, "isBackground":Z
    :goto_2
    if-ge v12, v14, :cond_6

    aget v16, v13, v12

    move/from16 v17, v16

    .line 836
    .local v17, "profileId":I
    move/from16 v5, v17

    .end local v17    # "profileId":I
    .local v5, "profileId":I
    if-eq v11, v5, :cond_5

    const/16 v17, 0x1

    goto :goto_3

    :cond_5
    move/from16 v17, v4

    :goto_3
    and-int v15, v15, v17

    .line 835
    .end local v5    # "profileId":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 838
    :cond_6
    if-eqz v15, :cond_8

    if-nez v6, :cond_8

    .line 839
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping crash dialog of "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": background"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    if-eqz v9, :cond_7

    .line 841
    sget v4, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 843
    :cond_7
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 845
    :cond_8
    :try_start_3
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 846
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v12, "show_first_crash_dialog"

    .line 845
    invoke-static {v5, v12, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    move v5, v4

    .line 848
    .local v5, "showFirstCrash":Z
    :goto_4
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 849
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_first_crash_dialog_dev_option"

    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 852
    invoke-virtual {v14}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v14

    .line 848
    invoke-static {v12, v13, v4, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    move v12, v4

    .line 853
    .local v12, "showFirstCrashDevOption":Z
    :goto_5
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v13, :cond_b

    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 854
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    goto :goto_6

    :cond_b
    move v13, v4

    .line 858
    .local v13, "crashSilenced":Z
    :goto_6
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isInterestingForBackgroundTraces()Z

    move-result v14

    if-nez v14, :cond_c

    const/16 v16, 0x1

    goto :goto_7

    :cond_c
    move/from16 v16, v4

    :goto_7
    move/from16 v14, v16

    .line 859
    .local v14, "isSilentCrash":Z
    const-string/jumbo v4, "persist.sys.assert.enable"

    const/4 v2, 0x0

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 860
    .local v2, "isAssert":Z
    if-nez v2, :cond_d

    if-nez v5, :cond_d

    if-eqz v12, :cond_e

    .line 861
    :cond_d
    const/4 v14, 0x0

    .line 864
    :cond_e
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v6, :cond_f

    goto :goto_8

    :cond_f
    move/from16 v16, v2

    move/from16 v17, v5

    goto :goto_9

    :cond_10
    :goto_8
    if-nez v13, :cond_12

    if-nez v5, :cond_11

    if-nez v12, :cond_11

    iget-boolean v4, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v4, :cond_f

    if-nez v14, :cond_f

    .line 874
    :cond_11
    new-instance v4, Lcom/android/server/am/AppErrorDialog;

    move/from16 v16, v2

    .end local v2    # "isAssert":Z
    .local v16, "isAssert":Z
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    move/from16 v17, v5

    .end local v5    # "showFirstCrash":Z
    .local v17, "showFirstCrash":Z
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v2, v5, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    move-object v7, v4

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    goto :goto_a

    .line 864
    .end local v16    # "isAssert":Z
    .end local v17    # "showFirstCrash":Z
    .restart local v2    # "isAssert":Z
    .restart local v5    # "showFirstCrash":Z
    :cond_12
    move/from16 v16, v2

    move/from16 v17, v5

    .line 878
    .end local v2    # "isAssert":Z
    .end local v5    # "showFirstCrash":Z
    .restart local v16    # "isAssert":Z
    .restart local v17    # "showFirstCrash":Z
    :goto_9
    if-eqz v9, :cond_13

    .line 879
    sget v2, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v9, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 882
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v12    # "showFirstCrashDevOption":Z
    .end local v13    # "crashSilenced":Z
    .end local v14    # "isSilentCrash":Z
    .end local v15    # "isBackground":Z
    .end local v16    # "isAssert":Z
    .end local v17    # "showFirstCrash":Z
    :cond_13
    :goto_a
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 884
    if-eqz v7, :cond_14

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing crash dialog for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {v7}, Lcom/android/server/am/AppErrorDialog;->show()V

    .line 888
    :cond_14
    return-void

    .line 882
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "userId":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 265
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "fromDialog"    # Landroid/app/Dialog;

    .line 317
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 318
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 320
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_1

    .line 321
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 323
    :cond_1
    const-string/jumbo v0, "user-terminated"

    const-string/jumbo v1, "user request after error"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/AppErrors;->killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public synthetic lambda$handleAppCrashInActivityController$1$AppErrors(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "shortMsg"    # Ljava/lang/String;
    .param p6, "longMsg"    # Ljava/lang/String;
    .param p7, "stackTrace"    # Ljava/lang/String;
    .param p8, "uid"    # I

    .line 586
    move-object v0, p2

    move v1, p3

    move-object v8, p4

    const-string/jumbo v2, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ActivityManager"

    if-eqz v2, :cond_0

    move-object v9, p1

    iget-object v2, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 587
    const-string v4, "Native crash"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip killing native crashed app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") during testing"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, p8

    goto :goto_0

    .line 586
    :cond_0
    move-object v9, p1

    .line 591
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Force-killing crashed app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at watcher\'s request"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    if-eqz v8, :cond_3

    .line 593
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 594
    const/4 v2, 0x1

    const-string v3, "crash"

    invoke-virtual {p4, v3, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move/from16 v2, p8

    goto :goto_0

    .line 593
    :cond_2
    move/from16 v2, p8

    goto :goto_0

    .line 598
    :cond_3
    invoke-static {p3}, Landroid/os/Process;->killProcess(I)V

    .line 599
    move/from16 v2, p8

    invoke-static {v2, p3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 602
    :goto_0
    return-void
.end method

.method public synthetic lambda$scheduleAppCrashLocked$0$AppErrors(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;

    .line 387
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 388
    const-string v1, "forced"

    const-string/jumbo v2, "killed for invalid state"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/AppErrors;->killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "appsNotReportingCrashesConfig"    # Ljava/lang/String;

    .line 307
    if-eqz p1, :cond_0

    .line 308
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 310
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 311
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 314
    .end local v0    # "split":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 273
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 274
    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .locals 7
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 277
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 278
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "ip":I
    :goto_0
    if-ltz v1, :cond_6

    .line 279
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 280
    .local v2, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 281
    const/4 v4, 0x0

    .line 282
    .local v4, "remove":Z
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 283
    .local v5, "entUid":I
    if-nez p1, :cond_1

    .line 284
    const/4 v6, -0x1

    if-ne p3, v6, :cond_0

    .line 285
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_2

    .line 286
    const/4 v4, 0x1

    goto :goto_2

    .line 289
    :cond_0
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 290
    const/4 v4, 0x1

    goto :goto_2

    .line 293
    :cond_1
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_2

    .line 294
    const/4 v4, 0x1

    .line 296
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 297
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 280
    .end local v4    # "remove":Z
    .end local v5    # "entUid":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 300
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 301
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 278
    .end local v2    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 304
    .end local v1    # "ip":I
    :cond_6
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;Z)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "force"    # Z

    .line 349
    const/4 v0, 0x0

    .line 355
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 356
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 357
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 358
    .local v3, "p":Lcom/android/server/am/ProcessRecord;
    if-ltz p1, :cond_0

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_0

    .line 359
    goto :goto_1

    .line 361
    :cond_0
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p2, :cond_1

    .line 362
    move-object v0, v3

    .line 363
    goto :goto_2

    .line 365
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, p3}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ltz p4, :cond_2

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_3

    .line 367
    :cond_2
    move-object v0, v3

    .line 356
    .end local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v2    # "i":I
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    if-nez v0, :cond_5

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crashApplication: nothing for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " initialPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 380
    :cond_5
    invoke-virtual {v0, p5}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    .line 381
    if-eqz p6, :cond_6

    .line 384
    move-object v1, v0

    .line 385
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/-$$Lambda$AppErrors$1aFX_-j-MSc0clpKk9XdlBZz9lU;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/-$$Lambda$AppErrors$1aFX_-j-MSc0clpKk9XdlBZz9lU;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_6
    return-void

    .line 370
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .locals 26
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    return-void

    .line 114
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 115
    .local v3, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 116
    .local v5, "now":J
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 118
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    if-nez v7, :cond_6

    .line 119
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 120
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 121
    .local v8, "procCount":I
    const/4 v9, 0x0

    .local v9, "ip":I
    :goto_0
    if-ge v9, v8, :cond_5

    .line 122
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 123
    .local v10, "ctoken":J
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Ljava/lang/String;

    .line 124
    .local v14, "pname":Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 125
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    move-wide/from16 v19, v5

    .end local v5    # "now":J
    .local v19, "now":J
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 127
    .local v5, "uidCount":I
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 128
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 129
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 130
    .local v12, "puid":I
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v13

    invoke-virtual {v13, v14, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 131
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_2

    if-eqz v13, :cond_1

    move/from16 v16, v5

    .end local v5    # "uidCount":I
    .local v16, "uidCount":I
    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 132
    move-wide/from16 v24, v3

    move-object v5, v7

    move/from16 v21, v8

    move-object/from16 v22, v14

    goto :goto_2

    .line 131
    .end local v16    # "uidCount":I
    .restart local v5    # "uidCount":I
    :cond_1
    move/from16 v16, v5

    .end local v5    # "uidCount":I
    .restart local v16    # "uidCount":I
    move-wide/from16 v24, v3

    move-object v5, v7

    move/from16 v21, v8

    move-object/from16 v22, v14

    goto :goto_2

    .end local v16    # "uidCount":I
    .restart local v5    # "uidCount":I
    :cond_2
    move/from16 v16, v5

    .line 134
    .end local v5    # "uidCount":I
    .restart local v16    # "uidCount":I
    :cond_3
    move-object v5, v7

    move/from16 v21, v8

    move-object/from16 v23, v13

    move-object/from16 v22, v14

    const-wide v7, 0x20b00000002L

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "pname":Ljava/lang/String;
    .local v5, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v21, "procCount":I
    .local v22, "pname":Ljava/lang/String;
    .local v23, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 135
    .local v13, "etoken":J
    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 136
    nop

    .line 137
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 136
    move-wide/from16 v24, v3

    const-wide v3, 0x10300000002L

    .end local v3    # "token":J
    .local v24, "token":J
    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 138
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 128
    .end local v12    # "puid":I
    .end local v13    # "etoken":J
    .end local v23    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object v7, v5

    move/from16 v5, v16

    move/from16 v8, v21

    move-object/from16 v14, v22

    move-wide/from16 v3, v24

    const-wide v12, 0x10900000001L

    goto :goto_1

    .end local v16    # "uidCount":I
    .end local v21    # "procCount":I
    .end local v22    # "pname":Ljava/lang/String;
    .end local v24    # "token":J
    .restart local v3    # "token":J
    .local v5, "uidCount":I
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "procCount":I
    .restart local v14    # "pname":Ljava/lang/String;
    :cond_4
    move-wide/from16 v24, v3

    move/from16 v16, v5

    move-object v5, v7

    move/from16 v21, v8

    move-object/from16 v22, v14

    .line 140
    .end local v3    # "token":J
    .end local v6    # "i":I
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v14    # "pname":Ljava/lang/String;
    .local v5, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "uidCount":I
    .restart local v21    # "procCount":I
    .restart local v22    # "pname":Ljava/lang/String;
    .restart local v24    # "token":J
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 121
    .end local v10    # "ctoken":J
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v16    # "uidCount":I
    .end local v22    # "pname":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v5, v19

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    goto/16 :goto_0

    .end local v19    # "now":J
    .end local v21    # "procCount":I
    .end local v24    # "token":J
    .restart local v3    # "token":J
    .local v5, "now":J
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "procCount":I
    :cond_5
    move-wide/from16 v24, v3

    move-wide/from16 v19, v5

    move-object v5, v7

    move/from16 v21, v8

    .end local v3    # "token":J
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .local v5, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v19    # "now":J
    .restart local v21    # "procCount":I
    .restart local v24    # "token":J
    goto :goto_3

    .line 118
    .end local v9    # "ip":I
    .end local v19    # "now":J
    .end local v21    # "procCount":I
    .end local v24    # "token":J
    .restart local v3    # "token":J
    .local v5, "now":J
    :cond_6
    move-wide/from16 v24, v3

    move-wide/from16 v19, v5

    .line 145
    .end local v3    # "token":J
    .end local v5    # "now":J
    .restart local v19    # "now":J
    .restart local v24    # "token":J
    :goto_3
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 146
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 147
    .local v3, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 148
    .local v4, "processCount":I
    const/4 v5, 0x0

    .local v5, "ip":I
    :goto_4
    if-ge v5, v4, :cond_a

    .line 149
    const-wide v6, 0x20b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 150
    .local v6, "btoken":J
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 151
    .local v8, "pname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 152
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 154
    .local v10, "uidCount":I
    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 155
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    if-ge v13, v10, :cond_9

    .line 156
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 157
    .local v14, "puid":I
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v15

    invoke-virtual {v15, v8, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 158
    .local v15, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_8

    if-eqz v15, :cond_7

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 159
    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 160
    move-object v12, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    goto :goto_6

    .line 158
    :cond_7
    move-object v12, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    goto :goto_6

    .line 162
    :cond_8
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 163
    .local v11, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move-object v12, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    const-wide v2, 0x20b00000002L

    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v12, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v16, "pname":Ljava/lang/String;
    .local v17, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 164
    .local v8, "etoken":J
    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 165
    iget-wide v2, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move/from16 v18, v14

    move-object/from16 v23, v15

    const-wide v14, 0x10300000002L

    .end local v14    # "puid":I
    .end local v15    # "r":Lcom/android/server/am/ProcessRecord;
    .local v18, "puid":I
    .restart local v23    # "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 166
    const-wide v2, 0x10900000003L

    iget-object v14, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 167
    const-wide v2, 0x10900000004L

    iget-object v14, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 168
    const-wide v2, 0x10900000005L

    iget-object v14, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 169
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 155
    .end local v8    # "etoken":J
    .end local v11    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v18    # "puid":I
    .end local v23    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p4

    move-object v3, v12

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    const-wide v11, 0x10900000001L

    goto/16 :goto_5

    .end local v12    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v16    # "pname":Ljava/lang/String;
    .end local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v8, "pname":Ljava/lang/String;
    .restart local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_9
    move-object v12, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    .line 171
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v13    # "i":I
    .restart local v12    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v16    # "pname":Ljava/lang/String;
    .restart local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 148
    .end local v6    # "btoken":J
    .end local v10    # "uidCount":I
    .end local v16    # "pname":Ljava/lang/String;
    .end local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p4

    goto/16 :goto_4

    .end local v12    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    :cond_a
    move-object v12, v3

    .line 175
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v4    # "processCount":I
    .end local v5    # "ip":I
    :cond_b
    move-wide/from16 v2, v24

    .end local v24    # "token":J
    .local v2, "token":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 176
    return-void
.end method
