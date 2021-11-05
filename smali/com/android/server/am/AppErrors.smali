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

.field private final mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 86
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 91
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 101
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 106
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 107
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 108
    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 109
    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 663
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 664
    return-object v1

    .line 667
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-nez v0, :cond_1

    .line 668
    return-object v1

    .line 671
    :cond_1
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 672
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 673
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 674
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 675
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 676
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

    .line 678
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 681
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 682
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 683
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 685
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 686
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 687
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_2

    .line 679
    :cond_4
    :goto_1
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 680
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 690
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

    .line 579
    move-object/from16 v10, p1

    if-eqz v10, :cond_0

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 580
    .local v3, "name":Ljava/lang/String;
    if-eqz v10, :cond_1

    iget v0, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    move v4, v0

    goto :goto_1

    :cond_1
    move/from16 v4, p8

    .line 581
    .local v4, "pid":I
    :goto_1
    if-eqz v10, :cond_2

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v0

    goto :goto_2

    :cond_2
    move/from16 v9, p9

    .line 583
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

.method private killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reasonCode"    # I
    .param p3, "subReason"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "killReason"    # Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCrashing(Z)V

    .line 337
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 338
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 339
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 340
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_0

    .line 341
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p1, p5, p2, p3, v0}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 345
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

    .line 610
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCrashing(Z)V

    .line 611
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

    .line 613
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->startAppProblemLocked()V

    .line 614
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 615
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

    .line 875
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 879
    return-void
.end method


# virtual methods
.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 271
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 272
    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 414
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 415
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 417
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 419
    .local v2, "origId":J
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 422
    nop

    .line 423
    return-void

    .line 421
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 422
    throw v4
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .locals 23
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 427
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 428
    .local v14, "timeMillis":J
    iget-object v10, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 429
    .local v10, "shortMsg":Ljava/lang/String;
    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 430
    .local v0, "longMsg":Ljava/lang/String;
    iget-object v9, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 431
    .local v9, "stackTrace":Ljava/lang/String;
    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    .line 432
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

    .line 433
    :cond_0
    if-eqz v10, :cond_1

    .line 434
    move-object v0, v10

    move-object/from16 v16, v0

    goto :goto_0

    .line 433
    :cond_1
    move-object/from16 v16, v0

    .line 437
    .end local v0    # "longMsg":Ljava/lang/String;
    .local v16, "longMsg":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eqz v12, :cond_3

    .line 438
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 441
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    if-eqz v13, :cond_2

    iget-object v2, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 442
    const-string v3, "Native crash"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 443
    move v2, v0

    goto :goto_1

    .line 444
    :cond_2
    const/4 v2, 0x4

    :goto_1
    nop

    .line 441
    const-string v3, "crash"

    invoke-virtual {v1, v12, v2, v7, v3}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 449
    :cond_3
    if-eqz v12, :cond_4

    .line 450
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v7

    :goto_2
    move v6, v1

    .line 452
    .local v6, "relaunchReason":I
    new-instance v1, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v1}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v5, v1

    .line 454
    .local v5, "result":Lcom/android/server/am/AppErrorResult;
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 459
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v17, v4

    move-object v4, v10

    move-object v13, v5

    .end local v5    # "result":Lcom/android/server/am/AppErrorResult;
    .local v13, "result":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v5, v16

    move-object/from16 v18, v13

    move v13, v6

    .end local v6    # "relaunchReason":I
    .local v13, "relaunchReason":I
    .local v18, "result":Lcom/android/server/am/AppErrorResult;
    move-object v6, v9

    move-wide v7, v14

    move-object/from16 v20, v9

    .end local v9    # "stackTrace":Ljava/lang/String;
    .local v20, "stackTrace":Ljava/lang/String;
    move/from16 v9, p3

    move-wide/from16 v21, v14

    move-object v14, v10

    .end local v10    # "shortMsg":Ljava/lang/String;
    .local v14, "shortMsg":Ljava/lang/String;
    .local v21, "timeMillis":J
    move/from16 v10, p4

    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    if-eqz v1, :cond_5

    .line 461
    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 504
    :catchall_0
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v4, v18

    move-wide/from16 v2, v21

    goto/16 :goto_c

    .line 466
    :cond_5
    const/4 v7, 0x2

    if-ne v13, v7, :cond_6

    .line 467
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 474
    :cond_6
    if-eqz v12, :cond_7

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 475
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 479
    :cond_7
    if-eqz v12, :cond_8

    .line 480
    :try_start_5
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 483
    :cond_8
    :try_start_6
    new-instance v1, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v1}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    move-object v8, v1

    .line 484
    .local v8, "data":Lcom/android/server/am/AppErrorDialog$Data;
    move-object/from16 v9, v18

    .end local v18    # "result":Lcom/android/server/am/AppErrorResult;
    .local v9, "result":Lcom/android/server/am/AppErrorResult;
    :try_start_7
    iput-object v9, v8, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 485
    iput-object v12, v8, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 489
    iput-object v14, v8, Lcom/android/server/am/AppErrorDialog$Data;->shortMsg:Ljava/lang/String;

    .line 494
    if-eqz v12, :cond_15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v20

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v1, p2

    move-object v4, v9

    move-wide/from16 v2, v21

    goto/16 :goto_b

    .line 498
    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 499
    .local v1, "msg":Landroid/os/Message;
    const/4 v10, 0x1

    iput v10, v1, Landroid/os/Message;->what:I

    .line 501
    iget v2, v8, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    move v15, v2

    .line 502
    .local v15, "taskId":I
    iput-object v8, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 504
    nop

    .end local v1    # "msg":Landroid/os/Message;
    .end local v8    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 506
    invoke-virtual {v9}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v1

    .line 508
    .local v1, "res":I
    const/4 v8, 0x0

    .line 509
    .local v8, "appErrorIntent":Landroid/content/Intent;
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v3, 0x13c

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 510
    const/4 v2, 0x6

    if-eq v1, v2, :cond_b

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a

    goto :goto_3

    :cond_a
    move v6, v1

    goto :goto_4

    .line 511
    :cond_b
    :goto_3
    const/4 v1, 0x1

    move v6, v1

    .line 513
    .end local v1    # "res":I
    .local v6, "res":I
    :goto_4
    iget-object v5, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 514
    if-ne v6, v0, :cond_c

    .line 515
    :try_start_9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 563
    :catchall_1
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v19, v5

    move v7, v6

    move-object v4, v9

    move-wide/from16 v2, v21

    goto/16 :goto_a

    .line 517
    :cond_c
    :goto_5
    const/4 v4, 0x3

    if-ne v6, v4, :cond_d

    .line 518
    :try_start_a
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/16 v17, 0x4

    const-string v18, "crash"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v2, p1

    move v4, v0

    move-object/from16 v19, v5

    move/from16 v5, v17

    move v7, v6

    .end local v6    # "res":I
    .local v7, "res":I
    move-object/from16 v6, v18

    :try_start_b
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 520
    const/4 v0, -0x1

    if-eq v15, v0, :cond_e

    .line 522
    :try_start_c
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 523
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 522
    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 528
    goto :goto_6

    .line 524
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_d
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restart taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 563
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "res":I
    .restart local v6    # "res":I
    :catchall_2
    move-exception v0

    move-object/from16 v19, v5

    move v7, v6

    move-object/from16 v1, p2

    move-object v4, v9

    move-wide/from16 v2, v21

    .end local v6    # "res":I
    .restart local v7    # "res":I
    goto/16 :goto_a

    .line 517
    .end local v7    # "res":I
    .restart local v6    # "res":I
    :cond_d
    move-object/from16 v19, v5

    move v7, v6

    .line 531
    .end local v6    # "res":I
    .restart local v7    # "res":I
    :cond_e
    :goto_6
    if-ne v7, v10, :cond_10

    .line 532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-wide/from16 v17, v0

    .line 535
    .local v17, "orig":J
    :try_start_e
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_f

    .line 537
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v6, "crash"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 539
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 542
    :cond_f
    :try_start_f
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    goto :goto_7

    .line 542
    :catchall_3
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    nop

    .end local v7    # "res":I
    .end local v8    # "appErrorIntent":Landroid/content/Intent;
    .end local v9    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v13    # "relaunchReason":I
    .end local v14    # "shortMsg":Ljava/lang/String;
    .end local v15    # "taskId":I
    .end local v16    # "longMsg":Ljava/lang/String;
    .end local v20    # "stackTrace":Ljava/lang/String;
    .end local v21    # "timeMillis":J
    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local p3    # "callingPid":I
    .end local p4    # "callingUid":I
    throw v0

    .line 563
    .end local v17    # "orig":J
    .restart local v7    # "res":I
    .restart local v8    # "appErrorIntent":Landroid/content/Intent;
    .restart local v9    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "relaunchReason":I
    .restart local v14    # "shortMsg":Ljava/lang/String;
    .restart local v15    # "taskId":I
    .restart local v16    # "longMsg":Ljava/lang/String;
    .restart local v20    # "stackTrace":Ljava/lang/String;
    .restart local v21    # "timeMillis":J
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local p3    # "callingPid":I
    .restart local p4    # "callingUid":I
    :catchall_4
    move-exception v0

    move-object/from16 v1, p2

    move-object v4, v9

    move-wide/from16 v2, v21

    goto/16 :goto_a

    .line 545
    :cond_10
    :goto_7
    const/16 v0, 0x8

    if-ne v7, v0, :cond_11

    .line 546
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 548
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ColdStartInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/am/ColdStartInjector;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ColdStartInjector;->setCrashKillProc(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 554
    :cond_11
    const/4 v1, 0x2

    if-ne v7, v1, :cond_12

    .line 555
    move-object/from16 v1, p2

    move-object v4, v9

    move-wide/from16 v2, v21

    .end local v9    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v21    # "timeMillis":J
    .local v2, "timeMillis":J
    .local v4, "result":Lcom/android/server/am/AppErrorResult;
    :try_start_10
    invoke-virtual {v11, v12, v2, v3, v1}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0

    move-object v8, v0

    .end local v8    # "appErrorIntent":Landroid/content/Intent;
    .local v0, "appErrorIntent":Landroid/content/Intent;
    goto :goto_8

    .line 554
    .end local v0    # "appErrorIntent":Landroid/content/Intent;
    .end local v2    # "timeMillis":J
    .end local v4    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v8    # "appErrorIntent":Landroid/content/Intent;
    .restart local v9    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v21    # "timeMillis":J
    :cond_12
    move-object/from16 v1, p2

    move-object v4, v9

    move-wide/from16 v2, v21

    .line 557
    .end local v9    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v21    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    .restart local v4    # "result":Lcom/android/server/am/AppErrorResult;
    :goto_8
    if-eqz v12, :cond_13

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_13

    const/4 v5, 0x3

    if-eq v7, v5, :cond_13

    .line 560
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 560
    invoke-virtual {v0, v5, v6, v9}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_13
    monitor-exit v19
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 565
    if-eqz v8, :cond_14

    .line 567
    :try_start_11
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_11} :catch_1

    .line 570
    goto :goto_9

    .line 568
    :catch_1
    move-exception v0

    .line 569
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "ActivityManager"

    const-string v6, "bug report receiver dissappeared"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_14
    :goto_9
    return-void

    .line 563
    .end local v2    # "timeMillis":J
    .end local v4    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "res":I
    .restart local v6    # "res":I
    .restart local v9    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v21    # "timeMillis":J
    :catchall_5
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v19, v5

    move v7, v6

    move-object v4, v9

    move-wide/from16 v2, v21

    .end local v6    # "res":I
    .end local v9    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v21    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    .restart local v4    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v7    # "res":I
    :goto_a
    :try_start_12
    monitor-exit v19
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_a

    .line 494
    .end local v2    # "timeMillis":J
    .end local v4    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "res":I
    .end local v15    # "taskId":I
    .local v8, "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v9    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v21    # "timeMillis":J
    :cond_15
    move-object/from16 v1, p2

    move-object v4, v9

    move-wide/from16 v2, v21

    .line 495
    .end local v9    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v21    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    .restart local v4    # "result":Lcom/android/server/am/AppErrorResult;
    :goto_b
    :try_start_13
    monitor-exit v17
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 504
    .end local v2    # "timeMillis":J
    .end local v4    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v8    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v9    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v21    # "timeMillis":J
    :catchall_7
    move-exception v0

    move-object/from16 v1, p2

    move-object v4, v9

    move-wide/from16 v2, v21

    .end local v9    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v21    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    .restart local v4    # "result":Lcom/android/server/am/AppErrorResult;
    goto :goto_c

    .end local v2    # "timeMillis":J
    .end local v4    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v21    # "timeMillis":J
    :catchall_8
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v4, v18

    move-wide/from16 v2, v21

    .end local v18    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v21    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    .restart local v4    # "result":Lcom/android/server/am/AppErrorResult;
    goto :goto_c

    .end local v2    # "timeMillis":J
    .end local v4    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v13    # "relaunchReason":I
    .end local v20    # "stackTrace":Ljava/lang/String;
    .restart local v5    # "result":Lcom/android/server/am/AppErrorResult;
    .local v6, "relaunchReason":I
    .local v9, "stackTrace":Ljava/lang/String;
    .restart local v10    # "shortMsg":Ljava/lang/String;
    .local v14, "timeMillis":J
    :catchall_9
    move-exception v0

    move-object/from16 v17, v4

    move-object v4, v5

    move-object/from16 v20, v9

    move-object v1, v13

    move-wide v2, v14

    move v13, v6

    move-object v14, v10

    .end local v5    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v6    # "relaunchReason":I
    .end local v9    # "stackTrace":Ljava/lang/String;
    .end local v10    # "shortMsg":Ljava/lang/String;
    .restart local v2    # "timeMillis":J
    .restart local v4    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "relaunchReason":I
    .local v14, "shortMsg":Ljava/lang/String;
    .restart local v20    # "stackTrace":Ljava/lang/String;
    :goto_c
    :try_start_14
    monitor-exit v17
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_c
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 650
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 651
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_0

    .line 652
    const/4 v1, 0x0

    return-object v1

    .line 654
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 656
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 657
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 658
    return-object v1
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .locals 26
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 112
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

    .line 113
    return-void

    .line 116
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 117
    .local v3, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 118
    .local v5, "now":J
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 120
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    if-nez v7, :cond_6

    .line 121
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 122
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 123
    .local v8, "procCount":I
    const/4 v9, 0x0

    .local v9, "ip":I
    :goto_0
    if-ge v9, v8, :cond_5

    .line 124
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 125
    .local v10, "ctoken":J
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Ljava/lang/String;

    .line 126
    .local v14, "pname":Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 127
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    move-wide/from16 v19, v5

    .end local v5    # "now":J
    .local v19, "now":J
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 129
    .local v5, "uidCount":I
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 130
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 131
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 132
    .local v12, "puid":I
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v13

    invoke-virtual {v13, v14, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 133
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

    .line 134
    move-wide/from16 v24, v3

    move-object v5, v7

    move/from16 v21, v8

    move-object/from16 v22, v14

    goto :goto_2

    .line 133
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

    .line 136
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

    .line 137
    .local v13, "etoken":J
    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 138
    nop

    .line 139
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 138
    move-wide/from16 v24, v3

    const-wide v3, 0x10300000002L

    .end local v3    # "token":J
    .local v24, "token":J
    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 140
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 130
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

    .line 142
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

    .line 123
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

    .line 120
    .end local v9    # "ip":I
    .end local v19    # "now":J
    .end local v21    # "procCount":I
    .end local v24    # "token":J
    .restart local v3    # "token":J
    .local v5, "now":J
    :cond_6
    move-wide/from16 v24, v3

    move-wide/from16 v19, v5

    .line 147
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

    .line 148
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 149
    .local v3, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 150
    .local v4, "processCount":I
    const/4 v5, 0x0

    .local v5, "ip":I
    :goto_4
    if-ge v5, v4, :cond_a

    .line 151
    const-wide v6, 0x20b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 152
    .local v6, "btoken":J
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 153
    .local v8, "pname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 154
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 156
    .local v10, "uidCount":I
    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 157
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    if-ge v13, v10, :cond_9

    .line 158
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 159
    .local v14, "puid":I
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v15

    invoke-virtual {v15, v8, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 160
    .local v15, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_8

    if-eqz v15, :cond_7

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 161
    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 162
    move-object v12, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    goto :goto_6

    .line 160
    :cond_7
    move-object v12, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    goto :goto_6

    .line 164
    :cond_8
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 165
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

    .line 166
    .local v8, "etoken":J
    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 167
    iget-wide v2, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move/from16 v18, v14

    move-object/from16 v23, v15

    const-wide v14, 0x10300000002L

    .end local v14    # "puid":I
    .end local v15    # "r":Lcom/android/server/am/ProcessRecord;
    .local v18, "puid":I
    .restart local v23    # "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 168
    const-wide v2, 0x10900000003L

    iget-object v14, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 169
    const-wide v2, 0x10900000004L

    iget-object v14, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 170
    const-wide v2, 0x10900000005L

    iget-object v14, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 171
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 157
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

    .line 173
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v13    # "i":I
    .restart local v12    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v16    # "pname":Ljava/lang/String;
    .restart local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 150
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

    .line 177
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v4    # "processCount":I
    .end local v5    # "ip":I
    :cond_b
    move-wide/from16 v2, v24

    .end local v24    # "token":J
    .local v2, "token":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 178
    return-void
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 181
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

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 184
    .local v5, "now":J
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 185
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 186
    .local v8, "processCount":I
    const/4 v9, 0x0

    move v10, v9

    move v9, v3

    move/from16 v3, p3

    .end local p3    # "needSep":Z
    .local v3, "needSep":Z
    .local v9, "printed":Z
    .local v10, "ip":I
    :goto_0
    if-ge v10, v8, :cond_6

    .line 187
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 188
    .local v11, "pname":Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 189
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 190
    .local v13, "uidCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v13, :cond_5

    .line 191
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 192
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

    .line 193
    .local v7, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_1

    if-eqz v7, :cond_0

    move/from16 v17, v8

    .end local v8    # "processCount":I
    .local v17, "processCount":I
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 194
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 195
    goto :goto_2

    .line 193
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

    .line 197
    .end local v8    # "processCount":I
    .restart local v17    # "processCount":I
    :cond_2
    if-nez v9, :cond_4

    .line 198
    if-eqz v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 199
    :cond_3
    const/4 v3, 0x1

    .line 200
    const-string v8, "  Time since processes crashed:"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    const/4 v9, 0x1

    .line 203
    :cond_4
    const-string v8, "    Process "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 205
    const-string v8, ": last crashed "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
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

    .line 207
    const-string v7, " ago"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
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

    .line 186
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v17    # "processCount":I
    add-int/lit8 v10, v10, 0x1

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

    .line 181
    .end local v3    # "needSep":Z
    .end local v5    # "now":J
    .end local v9    # "printed":Z
    .end local v10    # "ip":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .local p3, "needSep":Z
    :cond_7
    move/from16 v3, p3

    .line 212
    .end local p3    # "needSep":Z
    .restart local v3    # "needSep":Z
    :goto_3
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    .line 213
    const/4 v5, 0x0

    .line 214
    .local v5, "printed":Z
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 215
    .local v6, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 216
    .local v7, "processCount":I
    const/4 v8, 0x0

    .local v8, "ip":I
    :goto_4
    if-ge v8, v7, :cond_13

    .line 217
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 218
    .local v9, "pname":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 219
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 220
    .local v11, "uidCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    if-ge v12, v11, :cond_12

    .line 221
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 222
    .local v13, "puid":I
    iget-object v14, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v14

    invoke-virtual {v14, v9, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 223
    .local v14, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_9

    if-eqz v14, :cond_8

    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 224
    invoke-virtual {v15, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 220
    .end local v13    # "puid":I
    .end local v14    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_8
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 227
    .restart local v13    # "puid":I
    .restart local v14    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_9
    if-nez v5, :cond_b

    .line 228
    if-eqz v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 229
    :cond_a
    const/4 v3, 0x1

    .line 230
    const-string v15, "  Bad processes:"

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    const/4 v5, 0x1

    .line 233
    :cond_b
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 234
    .local v15, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    const-string v0, "    Bad process "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 236
    const-string v0, ": crashed at time "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 p3, v3

    .end local v3    # "needSep":Z
    .restart local p3    # "needSep":Z
    iget-wide v2, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 237
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 238
    const-string v0, "      Short msg: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    :cond_c
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 241
    const-string v0, "      Long msg: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    :cond_d
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 244
    const-string v0, "      Stack:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    .line 246
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

    .line 247
    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v17, v5

    .end local v5    # "printed":Z
    .local v17, "printed":Z
    const/16 v5, 0xa

    if-ne v3, v5, :cond_e

    .line 248
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v0, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 251
    add-int/lit8 v0, v2, 0x1

    .line 246
    :cond_e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v16

    move/from16 v5, v17

    goto :goto_6

    .end local v17    # "printed":Z
    .restart local v5    # "printed":Z
    :cond_f
    move/from16 v17, v5

    .line 254
    .end local v2    # "pos":I
    .end local v5    # "printed":Z
    .restart local v17    # "printed":Z
    iget-object v2, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_11

    .line 255
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    iget-object v2, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_7

    .line 243
    .end local v0    # "lastPos":I
    .end local v17    # "printed":Z
    .restart local v5    # "printed":Z
    :cond_10
    move-object/from16 v16, v4

    move/from16 v17, v5

    .line 220
    .end local v5    # "printed":Z
    .end local v13    # "puid":I
    .end local v14    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .restart local v17    # "printed":Z
    :cond_11
    :goto_7
    move/from16 v3, p3

    move/from16 v5, v17

    .end local v17    # "printed":Z
    .end local p3    # "needSep":Z
    .restart local v3    # "needSep":Z
    .restart local v5    # "printed":Z
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v4, v16

    goto/16 :goto_5

    :cond_12
    move-object/from16 v16, v4

    .line 216
    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v11    # "uidCount":I
    .end local v12    # "i":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    goto/16 :goto_4

    .line 263
    .end local v5    # "printed":Z
    .end local v6    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v7    # "processCount":I
    .end local v8    # "ip":I
    :cond_13
    return v3
.end method

.method generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .line 634
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 636
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 637
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 638
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 639
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 640
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 641
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 642
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 643
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 645
    return-object v0
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 20
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 695
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 696
    .local v9, "now":J
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    const/4 v11, 0x0

    invoke-static {v1, v2, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    move v13, v1

    .line 699
    .local v13, "showBackground":Z
    nop

    .line 700
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    move v1, v12

    goto :goto_1

    :cond_1
    move v1, v11

    :goto_1
    move v14, v1

    .line 704
    .local v14, "procIsBoundForeground":Z
    const/4 v1, 0x0

    .line 706
    .local v1, "tryAgain":Z
    iget-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v2, :cond_2

    .line 707
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 708
    .local v2, "crashTime":Ljava/lang/Long;
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object v15, v2

    move-object/from16 v16, v3

    .local v3, "crashTimePersistent":Ljava/lang/Long;
    goto :goto_2

    .line 710
    .end local v2    # "crashTime":Ljava/lang/Long;
    .end local v3    # "crashTimePersistent":Ljava/lang/Long;
    :cond_2
    const/4 v2, 0x0

    move-object v3, v2

    .restart local v3    # "crashTimePersistent":Ljava/lang/Long;
    move-object v15, v2

    move-object/from16 v16, v3

    .line 714
    .end local v3    # "crashTimePersistent":Ljava/lang/Long;
    .local v15, "crashTime":Ljava/lang/Long;
    .local v16, "crashTimePersistent":Ljava/lang/Long;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v2

    sub-int/2addr v2, v12

    move/from16 v17, v1

    .end local v1    # "tryAgain":Z
    .local v2, "i":I
    .local v17, "tryAgain":Z
    :goto_3
    const-wide/32 v3, 0xea60

    if-ltz v2, :cond_6

    .line 717
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v1

    .line 719
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v5, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v5, v3

    cmp-long v3, v9, v5

    if-lez v3, :cond_3

    .line 720
    iput v12, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_4

    .line 722
    :cond_3
    iget v3, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v3, v12

    iput v3, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 726
    :goto_4
    iget v3, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v3, v3

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    iget-boolean v3, v1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v3, :cond_4

    if-eqz v14, :cond_5

    .line 728
    :cond_4
    const/4 v3, 0x1

    move/from16 v17, v3

    .line 714
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 732
    .end local v2    # "i":I
    :cond_6
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, v3

    cmp-long v1, v9, v1

    if-gez v1, :cond_a

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has crashed too many times: killing!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/16 v1, 0x7550

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 738
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v4, v3, v12

    iget v4, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 737
    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 739
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 740
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_8

    .line 745
    const/16 v1, 0x753f

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 747
    iget-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_7

    .line 750
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v2, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v1, v2

    move-object v11, v2

    move-wide v2, v9

    move v12, v4

    move-object/from16 v4, p3

    move/from16 v18, v14

    move-object v14, v5

    .end local v14    # "procIsBoundForeground":Z
    .local v18, "procIsBoundForeground":Z
    move-object/from16 v5, p4

    move-object/from16 v19, v15

    move-object v15, v6

    .end local v15    # "crashTime":Ljava/lang/Long;
    .local v19, "crashTime":Ljava/lang/Long;
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v14, v12, v11}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_5

    .line 747
    .end local v18    # "procIsBoundForeground":Z
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v14    # "procIsBoundForeground":Z
    .restart local v15    # "crashTime":Ljava/lang/Long;
    :cond_7
    move/from16 v18, v14

    move-object/from16 v19, v15

    .line 754
    .end local v14    # "procIsBoundForeground":Z
    .end local v15    # "crashTime":Ljava/lang/Long;
    .restart local v18    # "procIsBoundForeground":Z
    .restart local v19    # "crashTime":Ljava/lang/Long;
    :goto_5
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->bad:Z

    .line 755
    iput-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 759
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v5, 0x4

    const-string v6, "crash"

    move-object/from16 v2, p1

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 761
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 762
    if-nez v13, :cond_9

    .line 763
    return v2

    .line 740
    .end local v18    # "procIsBoundForeground":Z
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v14    # "procIsBoundForeground":Z
    .restart local v15    # "crashTime":Ljava/lang/Long;
    :cond_8
    move v2, v11

    move/from16 v18, v14

    move-object/from16 v19, v15

    .line 766
    .end local v14    # "procIsBoundForeground":Z
    .end local v15    # "crashTime":Ljava/lang/Long;
    .restart local v18    # "procIsBoundForeground":Z
    .restart local v19    # "crashTime":Ljava/lang/Long;
    :cond_9
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    move-object/from16 v5, p2

    goto :goto_6

    .line 732
    .end local v18    # "procIsBoundForeground":Z
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v14    # "procIsBoundForeground":Z
    .restart local v15    # "crashTime":Ljava/lang/Long;
    :cond_a
    move/from16 v18, v14

    move-object/from16 v19, v15

    .line 768
    .end local v14    # "procIsBoundForeground":Z
    .end local v15    # "crashTime":Ljava/lang/Long;
    .restart local v18    # "procIsBoundForeground":Z
    .restart local v19    # "crashTime":Ljava/lang/Long;
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 769
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 768
    move-object/from16 v5, p2

    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I

    move-result v1

    .line 770
    .local v1, "affectedTaskId":I
    if-eqz v8, :cond_b

    .line 771
    iput v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 773
    :cond_b
    if-eqz v8, :cond_c

    if-eqz v16, :cond_c

    .line 774
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v11, v3

    cmp-long v2, v9, v11

    if-gez v2, :cond_c

    .line 775
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .line 779
    .end local v1    # "affectedTaskId":I
    :cond_c
    :goto_6
    if-eqz v8, :cond_d

    if-eqz v17, :cond_d

    .line 780
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 787
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 788
    .local v1, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 789
    .local v2, "homeProc":Lcom/android/server/wm/WindowProcessController;
    if-ne v1, v2, :cond_e

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_e

    .line 791
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->clearPackagePreferredForHomeActivities()V

    .line 794
    :cond_e
    iget-boolean v3, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v3, :cond_f

    .line 797
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v4, v6, v11}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 798
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v4, v6, v11}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 801
    :cond_f
    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 802
    :cond_10
    const/4 v3, 0x1

    return v3
.end method

.method handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 921
    invoke-static {p1}, Lcom/android/server/am/OpStartAppControlInjector;->handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 882
    const/4 v0, 0x0

    .line 883
    .local v0, "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 884
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 885
    .local v2, "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    iget-object v3, v2, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 886
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v3, :cond_0

    .line 887
    const-string v4, "ActivityManager"

    const-string v5, "handleShowAnrUi: proc is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 890
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v4

    if-nez v4, :cond_1

    .line 891
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    .line 893
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->hasAnrDialogs()Z

    move-result v4

    const/16 v5, 0x13d

    if-eqz v4, :cond_2

    .line 894
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App already has anr dialog: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 897
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 900
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "anr_show_background"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    :cond_3
    move v4, v7

    .line 902
    .local v4, "showBackground":Z
    iget-object v6, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v4, :cond_4

    goto :goto_0

    .line 905
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v7, -0x1

    invoke-static {v6, v5, v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 908
    iget-object v5, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 903
    :cond_5
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 910
    .end local v2    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "showBackground":Z
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 912
    if-eqz v0, :cond_6

    .line 913
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 916
    :cond_6
    return-void

    .line 910
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .line 806
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    .line 807
    .local v3, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    move v6, v0

    .line 811
    .local v6, "showBackground":Z
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 812
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 813
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v8, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 814
    .local v8, "res":Lcom/android/server/am/AppErrorResult;
    if-nez v0, :cond_1

    .line 815
    const-string v4, "ActivityManager"

    const-string v5, "handleShowAppErrorUi: proc is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 818
    :cond_1
    :try_start_1
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 819
    .local v9, "userId":I
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->hasCrashDialogs()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 820
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App already has crash dialog: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    if-eqz v8, :cond_2

    .line 822
    sget v4, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v8, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 824
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 826
    :cond_3
    :try_start_2
    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/16 v11, 0x2710

    if-lt v10, v11, :cond_4

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v10, v11, :cond_4

    move v10, v4

    goto :goto_1

    :cond_4
    move v10, v5

    .line 829
    .local v10, "isBackground":Z
    :goto_1
    iget-object v11, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v11}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v11

    array-length v12, v11

    move v13, v5

    :goto_2
    if-ge v13, v12, :cond_6

    aget v14, v11, v13

    .line 830
    .local v14, "profileId":I
    if-eq v9, v14, :cond_5

    move v15, v4

    goto :goto_3

    :cond_5
    move v15, v5

    :goto_3
    and-int/2addr v10, v15

    .line 829
    .end local v14    # "profileId":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 832
    :cond_6
    if-eqz v10, :cond_8

    if-nez v6, :cond_8

    .line 833
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping crash dialog of "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": background"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    if-eqz v8, :cond_7

    .line 835
    sget v4, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v8, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 837
    :cond_7
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 839
    :cond_8
    const/4 v11, 0x0

    .line 840
    .local v11, "crashShowErrorTime":Ljava/lang/Long;
    :try_start_3
    iget-boolean v12, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v12, :cond_9

    .line 841
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object v11, v12

    .line 844
    :cond_9
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 845
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_first_crash_dialog"

    .line 844
    invoke-static {v12, v13, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_a

    move v12, v4

    goto :goto_4

    :cond_a
    move v12, v5

    .line 847
    .local v12, "showFirstCrash":Z
    :goto_4
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 848
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "show_first_crash_dialog_dev_option"

    iget-object v15, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 851
    invoke-virtual {v15}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v15

    .line 847
    invoke-static {v13, v14, v5, v15}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_b

    move v13, v4

    goto :goto_5

    :cond_b
    move v13, v5

    .line 852
    .local v13, "showFirstCrashDevOption":Z
    :goto_5
    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v14, :cond_c

    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 853
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    move v14, v4

    goto :goto_6

    :cond_c
    move v14, v5

    .line 854
    .local v14, "crashSilenced":Z
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 855
    .local v15, "now":J
    if-eqz v11, :cond_d

    .line 856
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/32 v19, 0xea60

    add-long v17, v17, v19

    cmp-long v17, v15, v17

    if-gez v17, :cond_d

    move v5, v4

    goto :goto_7

    :cond_d
    nop

    :goto_7
    move v4, v5

    .line 857
    .local v4, "shouldThottle":Z
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v5

    if-nez v5, :cond_f

    if-eqz v6, :cond_e

    goto :goto_8

    :cond_e
    move-object/from16 v17, v0

    goto :goto_9

    :cond_f
    :goto_8
    if-nez v14, :cond_12

    if-nez v4, :cond_12

    if-nez v12, :cond_10

    if-nez v13, :cond_10

    iget-boolean v5, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v5, :cond_e

    .line 860
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 861
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_11

    .line 862
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v17, v0

    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v17, "proc":Lcom/android/server/am/ProcessRecord;
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v1, v2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 861
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_11
    move-object/from16 v17, v0

    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    goto :goto_a

    .line 857
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_12
    move-object/from16 v17, v0

    .line 867
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :goto_9
    if-eqz v8, :cond_13

    .line 868
    sget v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v8, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 871
    .end local v4    # "shouldThottle":Z
    .end local v8    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v10    # "isBackground":Z
    .end local v11    # "crashShowErrorTime":Ljava/lang/Long;
    .end local v12    # "showFirstCrash":Z
    .end local v13    # "showFirstCrashDevOption":Z
    .end local v14    # "crashSilenced":Z
    .end local v15    # "now":J
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_13
    :goto_a
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 872
    return-void

    .line 871
    .end local v9    # "userId":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 267
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

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 319
    nop

    .line 320
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    move-result-object v0

    .line 322
    .local v0, "controller":Lcom/android/server/am/ProcessRecord$ErrorDialogController;
    const/4 v1, 0x6

    .line 323
    .local v1, "reasonCode":I
    const/4 v2, 0x0

    .line 324
    .local v2, "subReason":I
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->hasDebugWaitingDialog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    const/16 v1, 0xd

    .line 326
    const/4 v2, 0x1

    .line 329
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearAllErrorDialogs()V

    .line 330
    const-string/jumbo v7, "user-terminated"

    const-string/jumbo v8, "user request after error"

    move-object v3, p0

    move-object v4, p1

    move v5, v1

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppErrors;->killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public synthetic lambda$handleAppCrashInActivityController$1$AppErrors(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "shortMsg"    # Ljava/lang/String;
    .param p6, "longMsg"    # Ljava/lang/String;
    .param p7, "stackTrace"    # Ljava/lang/String;
    .param p8, "uid"    # I

    .line 585
    move-object v0, p2

    move v7, p3

    move-object/from16 v8, p4

    const-string/jumbo v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_0

    move-object v9, p1

    iget-object v1, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 586
    const-string v3, "Native crash"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip killing native crashed app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") during testing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, p0

    move/from16 v10, p8

    goto :goto_0

    .line 585
    :cond_0
    move-object v9, p1

    .line 590
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-killing crashed app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at watcher\'s request"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-eqz v8, :cond_3

    .line 592
    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 593
    const/4 v1, 0x4

    const/4 v2, 0x1

    const-string v3, "crash"

    invoke-virtual {v8, v3, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    move-object v11, p0

    move/from16 v10, p8

    goto :goto_0

    .line 592
    :cond_2
    move-object v11, p0

    move/from16 v10, p8

    goto :goto_0

    .line 597
    :cond_3
    invoke-static {p3}, Landroid/os/Process;->killProcess(I)V

    .line 598
    move/from16 v10, p8

    invoke-static {v10, p3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 599
    move-object v11, p0

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "crash"

    move v2, p3

    move/from16 v3, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    .line 605
    :goto_0
    return-void
.end method

.method public synthetic lambda$scheduleAppCrashLocked$0$AppErrors(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;

    .line 396
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 397
    const/16 v3, 0xd

    const/16 v4, 0xe

    const-string v5, "forced"

    const-string/jumbo v6, "killed for invalid state"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 400
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 401
    return-void

    .line 400
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

    .line 309
    if-eqz p1, :cond_0

    .line 310
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 312
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 313
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 316
    .end local v0    # "split":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 275
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 276
    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .locals 7
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 279
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 280
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "ip":I
    :goto_0
    if-ltz v1, :cond_6

    .line 281
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 282
    .local v2, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 283
    const/4 v4, 0x0

    .line 284
    .local v4, "remove":Z
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 285
    .local v5, "entUid":I
    if-nez p1, :cond_1

    .line 286
    const/4 v6, -0x1

    if-ne p3, v6, :cond_0

    .line 287
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_2

    .line 288
    const/4 v4, 0x1

    goto :goto_2

    .line 291
    :cond_0
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 292
    const/4 v4, 0x1

    goto :goto_2

    .line 295
    :cond_1
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_2

    .line 296
    const/4 v4, 0x1

    .line 298
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 299
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 282
    .end local v4    # "remove":Z
    .end local v5    # "entUid":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 302
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 303
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 280
    .end local v2    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 306
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

    .line 358
    const/4 v0, 0x0

    .line 364
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 365
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 366
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 367
    .local v3, "p":Lcom/android/server/am/ProcessRecord;
    if-ltz p1, :cond_0

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_0

    .line 368
    goto :goto_1

    .line 370
    :cond_0
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p2, :cond_1

    .line 371
    move-object v0, v3

    .line 372
    goto :goto_2

    .line 374
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, p3}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ltz p4, :cond_2

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_3

    .line 376
    :cond_2
    move-object v0, v3

    .line 365
    .end local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    .end local v2    # "i":I
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    if-nez v0, :cond_5

    .line 382
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

    .line 386
    return-void

    .line 389
    :cond_5
    invoke-virtual {v0, p5}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    .line 390
    if-eqz p6, :cond_6

    .line 393
    move-object v1, v0

    .line 394
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/-$$Lambda$AppErrors$1aFX_-j-MSc0clpKk9XdlBZz9lU;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/-$$Lambda$AppErrors$1aFX_-j-MSc0clpKk9XdlBZz9lU;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_6
    return-void

    .line 379
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
