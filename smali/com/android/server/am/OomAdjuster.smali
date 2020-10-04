.class public final Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
    }
.end annotation


# static fields
.field static final OOM_ADJ_REASON_ACTIVITY:Ljava/lang/String; = "updateOomAdj_activityChange"

.field static final OOM_ADJ_REASON_BIND_SERVICE:Ljava/lang/String; = "updateOomAdj_bindService"

.field static final OOM_ADJ_REASON_FINISH_RECEIVER:Ljava/lang/String; = "updateOomAdj_finishReceiver"

.field static final OOM_ADJ_REASON_GET_PROVIDER:Ljava/lang/String; = "updateOomAdj_getProvider"

.field static final OOM_ADJ_REASON_METHOD:Ljava/lang/String; = "updateOomAdj"

.field static final OOM_ADJ_REASON_NONE:Ljava/lang/String; = "updateOomAdj_meh"

.field static final OOM_ADJ_REASON_PROCESS_BEGIN:Ljava/lang/String; = "updateOomAdj_processBegin"

.field static final OOM_ADJ_REASON_PROCESS_END:Ljava/lang/String; = "updateOomAdj_processEnd"

.field static final OOM_ADJ_REASON_REMOVE_PROVIDER:Ljava/lang/String; = "updateOomAdj_removeProvider"

.field static final OOM_ADJ_REASON_START_RECEIVER:Ljava/lang/String; = "updateOomAdj_startReceiver"

.field static final OOM_ADJ_REASON_START_SERVICE:Ljava/lang/String; = "updateOomAdj_startService"

.field static final OOM_ADJ_REASON_UI_VISIBILITY:Ljava/lang/String; = "updateOomAdj_uiVisibility"

.field static final OOM_ADJ_REASON_UNBIND_SERVICE:Ljava/lang/String; = "updateOomAdj_unbindService"

.field static final OOM_ADJ_REASON_WHITELIST:Ljava/lang/String; = "updateOomAdj_whitelistChange"

.field private static final TAG:Ljava/lang/String; = "OomAdjuster"

.field public static mPerf:Landroid/util/BoostFramework;


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAdjSeq:I

.field mAppCompact:Lcom/android/server/am/AppCompactor;

.field mBServiceAppThreshold:I

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mEnableBServicePropagation:Z

.field private mLastTopUid:I

.field mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field mMinBServiceAgingTime:I

.field mNewNumAServiceProcs:I

.field mNewNumServiceProcs:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mNumServiceProcs:I

.field private final mProcessGroupHandler:Landroid/os/Handler;

.field private final mProcessList:Lcom/android/server/am/ProcessList;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpBroadcastQueue:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field final mTmpLong:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .locals 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 148
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 149
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 150
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 156
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 162
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 173
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    .line 179
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    .line 181
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    .line 183
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    .line 189
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mLastTopUid:I

    .line 835
    new-instance v2, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/OomAdjuster$1;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 214
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 215
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 216
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 218
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 219
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 220
    new-instance v2, Lcom/android/server/am/AppCompactor;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/am/AppCompactor;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    .line 222
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_0

    .line 223
    const-string/jumbo v3, "ro.vendor.qti.sys.fw.bservice_age"

    const-string v4, "5000"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    .line 224
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "ro.vendor.qti.sys.fw.bservice_limit"

    const-string v4, "5"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    .line 225
    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "ro.vendor.qti.sys.fw.bservice_enable"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    .line 229
    :cond_0
    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    const-string v3, "OomAdjuster"

    if-le v2, v1, :cond_1

    .line 230
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 231
    .local v2, "mi":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 232
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 233
    .local v4, "tototalRam":J
    const-wide v6, 0x180000000L

    .line 234
    .local v6, "ram6G":J
    const-wide v8, 0x180000000L

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    .line 235
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BServiceAppThreshold is set to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " due to RAM is less than 6G : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v2    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .end local v4    # "tototalRam":J
    .end local v6    # "ram6G":J
    :cond_1
    new-instance v2, Lcom/android/server/ServiceThread;

    const/16 v4, -0xa

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    move-object v0, v2

    .line 245
    .local v0, "adjusterThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 246
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v2

    invoke-static {v2, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 247
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;->INSTANCE:Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 262
    return-void
.end method

.method private final applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .locals 25
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "doingAll"    # Z
    .param p3, "now"    # J
    .param p5, "nowElapsed"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1900
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    const/4 v3, 0x1

    .line 1902
    .local v3, "success":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    if-eq v0, v4, :cond_0

    .line 1903
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    .line 1906
    :cond_0
    const/4 v4, 0x0

    .line 1909
    .local v4, "changes":I
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0}, Lcom/android/server/am/AppCompactor;->useCompaction()Z

    move-result v0

    const/16 v5, 0x384

    const/4 v13, 0x1

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_6

    .line 1911
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v0, v6, :cond_4

    .line 1915
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v6, 0xc8

    if-gt v0, v6, :cond_2

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x2bc

    if-eq v0, v6, :cond_1

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x258

    if-ne v0, v6, :cond_2

    .line 1918
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppSome(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 1919
    :cond_2
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v6, 0x3e7

    if-lt v0, v5, :cond_3

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v0, v6, :cond_6

    :cond_3
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v5, :cond_6

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v0, v6, :cond_6

    .line 1923
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppFull(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 1925
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_5

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    .line 1931
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/AppCompactor;->shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1932
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 1933
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_6

    .line 1934
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v6, 0x6

    if-ne v0, v6, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    .line 1936
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/AppCompactor;->shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1937
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V

    .line 1941
    :cond_6
    :goto_0
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const-string v14, " "

    const-string v15, ": "

    const-string v7, "ActivityManager"

    const/4 v8, 0x0

    if-eq v0, v6, :cond_c

    .line 1944
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v6}, Lcom/android/server/am/OomAdjusterInjector;->adjustProcessAdj(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1949
    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    if-eqz v0, :cond_7

    .line 1951
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2, v0}, Lcom/android/server/am/OomAdjusterInjector;->setOptimizationAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1952
    :catch_0
    move-exception v0

    .line 1953
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1954
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 1956
    :cond_7
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v0, :cond_8

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v5, :cond_8

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doIsHighUsedPackages(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1957
    const/16 v0, 0x320

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1976
    :cond_8
    :goto_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityManagerServiceInjector;->checkProcessExist(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1977
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v5, v6}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 1978
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v5, :cond_a

    .line 1979
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " adj "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1981
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    .end local v0    # "msg":Ljava/lang/String;
    :cond_a
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 1984
    const/16 v0, -0x2710

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    goto :goto_3

    .line 1986
    :cond_b
    return v8

    .line 1991
    :cond_c
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v6

    .line 1992
    .local v6, "curSchedGroup":I
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    const-string v8, " to "

    if-eq v0, v6, :cond_20

    .line 1993
    iget v13, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 1994
    .local v13, "oldSchedGroup":I
    iput v6, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 1995
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v5, :cond_e

    .line 1996
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting sched group of "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1998
    .restart local v0    # "msg":Ljava/lang/String;
    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    .end local v0    # "msg":Ljava/lang/String;
    :cond_e
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v0, :cond_10

    .line 2004
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    const-string/jumbo v5, "remove task"

    if-ne v0, v5, :cond_f

    .line 2005
    const/16 v0, 0x9

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->killReason:I

    goto :goto_4

    .line 2007
    :cond_f
    const/4 v5, 0x4

    iput v5, v2, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 2010
    :goto_4
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 2011
    const/4 v3, 0x0

    move/from16 v19, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v14

    const/4 v7, 0x0

    goto/16 :goto_a

    .line 2014
    :cond_10
    const/4 v0, 0x3

    if-eqz v6, :cond_13

    const/4 v5, 0x1

    if-eq v6, v5, :cond_12

    const/4 v5, 0x4

    if-eq v6, v0, :cond_11

    if-eq v6, v5, :cond_11

    .line 2026
    const/16 v17, -0x1

    move/from16 v5, v17

    .local v17, "processGroup":I
    goto :goto_5

    .line 2020
    .end local v17    # "processGroup":I
    :cond_11
    const/16 v17, 0x5

    .line 2021
    .restart local v17    # "processGroup":I
    move/from16 v5, v17

    goto :goto_5

    .line 2023
    .end local v17    # "processGroup":I
    :cond_12
    const/4 v5, 0x4

    const/16 v17, 0x7

    .line 2024
    .restart local v17    # "processGroup":I
    move/from16 v5, v17

    goto :goto_5

    .line 2016
    .end local v17    # "processGroup":I
    :cond_13
    const/4 v5, 0x4

    const/16 v17, 0x0

    .line 2017
    .restart local v17    # "processGroup":I
    move/from16 v5, v17

    .line 2032
    .end local v17    # "processGroup":I
    .local v5, "processGroup":I
    :goto_5
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->isInAudioWhiteList(Ljava/lang/String;)Z

    move-result v0

    move/from16 v19, v3

    .end local v3    # "success":Z
    .local v19, "success":Z
    const-string v3, "OomAdjuster"

    if-eqz v0, :cond_14

    if-gtz v5, :cond_14

    .line 2034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v7

    const-string v7, "IsInAudioWhiteList app.processName = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2036
    move-object/from16 v21, v8

    move-object/from16 v22, v14

    const/4 v8, 0x3

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 2035
    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 2032
    :cond_14
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v14

    .line 2038
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2039
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2044
    :goto_6
    const/4 v0, 0x3

    if-ne v6, v0, :cond_1b

    .line 2046
    if-eq v13, v0, :cond_1a

    .line 2047
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2048
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_18

    .line 2050
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    .line 2051
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 2052
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v7, "UI_FIFO"

    if-eqz v0, :cond_16

    .line 2053
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 2055
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_15

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set RenderThread (TID "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") to FIFO"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2055
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2060
    :cond_16
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_17

    .line 2061
    const-string v0, "Not setting RenderThread TID"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2060
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2066
    :cond_18
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v7, -0xa

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2067
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_19

    .line 2069
    :try_start_3
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 2071
    :catch_1
    move-exception v0

    .line 2073
    :goto_7
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2067
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2105
    :catch_2
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_8

    .line 2046
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2077
    :cond_1b
    const/4 v0, 0x3

    if-ne v13, v0, :cond_1e

    if-eq v6, v0, :cond_1e

    .line 2079
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2080
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v0, :cond_1d

    .line 2083
    :try_start_5
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v7, 0x0

    :try_start_6
    invoke-static {v0, v7, v7}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 2084
    :try_start_7
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2085
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_1c

    .line 2086
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v7, 0x0

    :try_start_8
    invoke-static {v0, v7, v7}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 2088
    :try_start_9
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v7, -0x4

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 2096
    :cond_1c
    const/4 v7, 0x0

    goto :goto_9

    .line 2094
    :catch_3
    move-exception v0

    .line 2095
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    const/4 v7, 0x0

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_9

    .line 2090
    :catch_4
    move-exception v0

    .line 2091
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    const/4 v7, 0x0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_9

    .line 2099
    :cond_1d
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    const/4 v7, 0x0

    :try_start_b
    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2100
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_1f

    .line 2101
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_9

    .line 2105
    :catch_5
    move-exception v0

    .line 2106
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v8, :cond_21

    .line 2107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed setting thread priority of "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 2077
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    const/4 v7, 0x0

    .line 2109
    :cond_1f
    :goto_9
    goto :goto_a

    .line 1992
    .end local v5    # "processGroup":I
    .end local v13    # "oldSchedGroup":I
    .end local v19    # "success":Z
    .restart local v3    # "success":Z
    :cond_20
    move/from16 v19, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v14

    const/4 v7, 0x0

    .line 2112
    .end local v3    # "success":Z
    .restart local v19    # "success":Z
    :cond_21
    :goto_a
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_22

    .line 2113
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    .line 2114
    or-int/lit8 v4, v4, 0x1

    move v13, v4

    goto :goto_b

    .line 2112
    :cond_22
    move v13, v4

    .line 2116
    .end local v4    # "changes":I
    .local v13, "changes":I
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_23

    .line 2117
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setReportedProcState(I)V

    .line 2118
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_23

    .line 2125
    :try_start_c
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6

    .line 2127
    goto :goto_c

    .line 2126
    :catch_6
    move-exception v0

    .line 2130
    :cond_23
    :goto_c
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0x15

    if-eq v0, v3, :cond_29

    .line 2131
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v0

    if-eqz v0, :cond_24

    move/from16 v16, v6

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    goto/16 :goto_e

    .line 2159
    :cond_24
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    cmp-long v0, v9, v3

    if-gtz v0, :cond_27

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    const-wide/32 v23, 0x36ee80

    add-long v3, v3, v23

    cmp-long v0, v9, v3

    if-lez v0, :cond_26

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    .line 2160
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v23

    add-long v3, v3, v23

    cmp-long v0, v9, v3

    if-lez v0, :cond_25

    goto :goto_d

    :cond_25
    move/from16 v16, v6

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    goto/16 :goto_f

    .line 2159
    :cond_26
    move/from16 v16, v6

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    goto/16 :goto_f

    .line 2162
    :cond_27
    :goto_d
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->requestPssLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2163
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2165
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v0

    .line 2163
    const/4 v14, 0x4

    move/from16 v16, v6

    .end local v6    # "curSchedGroup":I
    .local v16, "curSchedGroup":I
    move v6, v0

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    .end local v13    # "changes":I
    .local v18, "changes":I
    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    goto :goto_f

    .line 2162
    .end local v16    # "curSchedGroup":I
    .end local v18    # "changes":I
    .restart local v6    # "curSchedGroup":I
    .restart local v13    # "changes":I
    :cond_28
    move/from16 v16, v6

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    .end local v6    # "curSchedGroup":I
    .end local v13    # "changes":I
    .restart local v16    # "curSchedGroup":I
    .restart local v18    # "changes":I
    goto :goto_f

    .line 2130
    .end local v16    # "curSchedGroup":I
    .end local v18    # "changes":I
    .restart local v6    # "curSchedGroup":I
    .restart local v13    # "changes":I
    :cond_29
    move/from16 v16, v6

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    .line 2150
    .end local v6    # "curSchedGroup":I
    .end local v13    # "changes":I
    .restart local v16    # "curSchedGroup":I
    .restart local v18    # "changes":I
    :goto_e
    iput-wide v9, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 2151
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2153
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    .line 2151
    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    .line 2154
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process state change from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 2155
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " next pss in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    sub-long/2addr v3, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2154
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_2a
    :goto_f
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_32

    .line 2173
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v3, :cond_2c

    .line 2174
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proc state change of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2175
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2177
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v1, v13, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2c
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0xb

    if-ge v0, v3, :cond_2d

    const/4 v0, 0x1

    goto :goto_10

    :cond_2d
    const/4 v0, 0x0

    .line 2180
    .local v0, "setImportant":Z
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    if-ge v4, v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_11

    :cond_2e
    const/4 v3, 0x0

    .line 2181
    .local v3, "curImportant":Z
    :goto_11
    if-eqz v0, :cond_2f

    if-nez v3, :cond_2f

    .line 2185
    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/ProcessRecord;->setWhenUnimportant(J)V

    .line 2186
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    .line 2190
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2f

    .line 2191
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    iget-wide v7, v2, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    aput-wide v7, v6, v4

    .line 2190
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2197
    .end local v4    # "i":I
    :cond_2f
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 2199
    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V

    .line 2201
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 2202
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_30

    .line 2203
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    .line 2205
    :cond_30
    if-nez p2, :cond_31

    .line 2206
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2207
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 2206
    invoke-virtual {v4, v2, v5, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLocked(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_13

    .line 2209
    :cond_31
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 2211
    .end local v0    # "setImportant":Z
    .end local v3    # "curImportant":Z
    :goto_13
    goto :goto_14

    :cond_32
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v0, :cond_33

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v3

    sub-long v3, v11, v3

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_33

    .line 2215
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_14

    .line 2216
    :cond_33
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-nez v0, :cond_34

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v3

    sub-long v3, v11, v3

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_34

    .line 2219
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 2222
    :cond_34
    :goto_14
    if-eqz v18, :cond_36

    .line 2223
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changes in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v18

    .end local v18    # "changes":I
    .local v4, "changes":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .end local v4    # "changes":I
    .restart local v18    # "changes":I
    :cond_35
    move/from16 v4, v18

    .line 2225
    .end local v18    # "changes":I
    .restart local v4    # "changes":I
    :goto_15
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2226
    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActivityManagerService;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v0

    .line 2227
    .local v0, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    iput v4, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 2228
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 2229
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": changes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " foreground="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " source="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " target="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2229
    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2222
    .end local v0    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .end local v4    # "changes":I
    .restart local v18    # "changes":I
    :cond_36
    move/from16 v4, v18

    .line 2237
    .end local v18    # "changes":I
    .restart local v4    # "changes":I
    :cond_37
    :goto_16
    return v19
.end method

.method private final computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z
    .locals 42
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"    # I
    .param p3, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "doingAll"    # Z
    .param p5, "now"    # J
    .param p7, "cycleReEval"    # Z

    .line 961
    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v5, p3

    move-wide/from16 v3, p5

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 962
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    if-ne v0, v1, :cond_0

    .line 964
    return v2

    .line 968
    :cond_0
    iput-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 970
    return v2

    .line 974
    :cond_1
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_2

    .line 975
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 976
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 977
    const/16 v0, 0x14

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 978
    const/16 v0, 0x3e7

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 979
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 980
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 981
    return v2

    .line 984
    :cond_2
    iput v2, v7, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 985
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 986
    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 987
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 988
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 990
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 991
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 992
    .local v0, "appUid":I
    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v9, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 994
    .local v15, "logUid":I
    iget v14, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 995
    .local v14, "prevAppAdj":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v13

    .line 997
    .local v13, "prevProcState":I
    iget v9, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/4 v10, 0x2

    const-string v12, "ActivityManager"

    if-gtz v9, :cond_c

    .line 1000
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v9, :cond_3

    if-ne v15, v0, :cond_4

    .line 1001
    :cond_3
    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Making fixed: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v12, v6}, Lcom/android/server/am/ActivityManagerService;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_4
    const-string v6, "fixed"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1004
    iget v6, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v6, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 1005
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1006
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 1007
    invoke-virtual {v7, v10}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1008
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1013
    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1014
    if-ne v7, v5, :cond_5

    .line 1015
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1016
    const/4 v6, 0x3

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1017
    const-string/jumbo v6, "pers-top-activity"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_0

    .line 1018
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1020
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1021
    const-string/jumbo v6, "pers-top-ui"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_0

    .line 1022
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1023
    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1025
    :cond_7
    :goto_0
    iget-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    if-nez v6, :cond_9

    .line 1026
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_8

    .line 1028
    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1029
    const/4 v6, 0x3

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_1

    .line 1032
    :cond_8
    const/4 v11, 0x6

    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1033
    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1036
    :cond_9
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1037
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v6, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1038
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v6, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 1040
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v6, v14, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    if-ge v6, v13, :cond_a

    goto :goto_2

    :cond_a
    move/from16 v18, v2

    goto :goto_3

    :cond_b
    :goto_2
    const/16 v18, 0x1

    :goto_3
    return v18

    .line 1043
    :cond_c
    const/4 v6, 0x3

    const/4 v11, 0x6

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1045
    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v9

    .line 1054
    .local v9, "PROCESS_STATE_CUR_TOP":I
    const/16 v16, 0x0

    .line 1055
    .local v16, "foregroundActivities":Z
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    .line 1056
    if-ne v9, v10, :cond_f

    if-ne v7, v5, :cond_f

    .line 1058
    const/4 v6, 0x0

    .line 1059
    .local v6, "adj":I
    const/16 v19, 0x3

    .line 1060
    .local v19, "schedGroup":I
    const-string/jumbo v10, "top-activity"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1061
    const/4 v10, 0x1

    .line 1062
    .end local v16    # "foregroundActivities":Z
    .local v10, "foregroundActivities":Z
    move/from16 v16, v9

    .line 1063
    .local v16, "procState":I
    sget-boolean v20, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v20, :cond_d

    if-ne v15, v0, :cond_e

    .line 1064
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making top: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_e
    move v2, v10

    move/from16 v5, v19

    move/from16 v19, v6

    move/from16 v6, v16

    goto/16 :goto_d

    .line 1066
    .end local v6    # "adj":I
    .end local v10    # "foregroundActivities":Z
    .end local v19    # "schedGroup":I
    .local v16, "foregroundActivities":Z
    :cond_f
    iget-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v2, :cond_12

    .line 1067
    const/16 v2, 0x64

    .line 1068
    .local v2, "adj":I
    const/4 v6, 0x3

    .line 1069
    .local v6, "schedGroup":I
    const-string/jumbo v10, "running-remote-anim"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1070
    move v10, v9

    .line 1071
    .local v10, "procState":I
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_11

    if-ne v15, v0, :cond_10

    goto :goto_4

    :cond_10
    move/from16 v19, v2

    goto :goto_5

    .line 1072
    :cond_11
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    .end local v2    # "adj":I
    .local v19, "adj":I
    const-string v2, "Making running remote anim: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :goto_5
    move v5, v6

    move v6, v10

    move/from16 v2, v16

    goto/16 :goto_d

    .line 1074
    .end local v6    # "schedGroup":I
    .end local v10    # "procState":I
    .end local v19    # "adj":I
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1076
    const/4 v2, 0x0

    .line 1077
    .restart local v2    # "adj":I
    const/4 v6, 0x2

    .line 1078
    .restart local v6    # "schedGroup":I
    const-string v10, "instrumentation"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1079
    const/4 v10, 0x5

    .line 1080
    .restart local v10    # "procState":I
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_14

    if-ne v15, v0, :cond_13

    goto :goto_6

    :cond_13
    move/from16 v19, v2

    goto :goto_5

    .line 1081
    :cond_14
    :goto_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    .end local v2    # "adj":I
    .restart local v19    # "adj":I
    const-string v2, "Making instrumentation: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1083
    .end local v6    # "schedGroup":I
    .end local v10    # "procState":I
    .end local v19    # "adj":I
    :cond_15
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v2, v7, v6}, Lcom/android/server/am/ActivityManagerService;->isReceivingBroadcastLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1088
    const/4 v2, 0x0

    .line 1089
    .restart local v2    # "adj":I
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1090
    const/4 v6, 0x2

    goto :goto_7

    :cond_16
    const/4 v6, 0x0

    .line 1091
    .restart local v6    # "schedGroup":I
    :goto_7
    const-string v10, "broadcast"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1092
    const/16 v10, 0xc

    .line 1093
    .restart local v10    # "procState":I
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_18

    if-ne v15, v0, :cond_17

    goto :goto_8

    :cond_17
    move/from16 v19, v2

    goto :goto_5

    .line 1094
    :cond_18
    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    .end local v2    # "adj":I
    .restart local v19    # "adj":I
    const-string v2, "Making broadcast: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1096
    .end local v6    # "schedGroup":I
    .end local v10    # "procState":I
    .end local v19    # "adj":I
    :cond_19
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 1099
    const/4 v2, 0x0

    .line 1100
    .restart local v2    # "adj":I
    iget-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v6, :cond_1a

    .line 1101
    const/4 v6, 0x2

    goto :goto_9

    :cond_1a
    const/4 v6, 0x0

    .line 1102
    .restart local v6    # "schedGroup":I
    :goto_9
    const-string v10, "exec-service"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1103
    const/16 v10, 0xb

    .line 1104
    .restart local v10    # "procState":I
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_1c

    if-ne v15, v0, :cond_1b

    goto :goto_a

    :cond_1b
    move/from16 v19, v2

    goto/16 :goto_5

    .line 1105
    :cond_1c
    :goto_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    .end local v2    # "adj":I
    .restart local v19    # "adj":I
    const-string v2, "Making exec-service: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1108
    .end local v6    # "schedGroup":I
    .end local v10    # "procState":I
    .end local v19    # "adj":I
    :cond_1d
    if-ne v7, v5, :cond_20

    .line 1109
    const/4 v2, 0x0

    .line 1110
    .restart local v2    # "adj":I
    const/4 v6, 0x0

    .line 1111
    .restart local v6    # "schedGroup":I
    const-string/jumbo v10, "top-sleeping"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1112
    const/4 v10, 0x1

    .line 1113
    .end local v16    # "foregroundActivities":Z
    .local v10, "foregroundActivities":Z
    move v11, v9

    .line 1114
    .local v11, "procState":I
    sget-boolean v16, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v16, :cond_1f

    if-ne v15, v0, :cond_1e

    goto :goto_b

    :cond_1e
    move/from16 v19, v2

    goto :goto_c

    .line 1115
    :cond_1f
    :goto_b
    move/from16 v19, v2

    .end local v2    # "adj":I
    .restart local v19    # "adj":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making top (sleeping): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :goto_c
    move v5, v6

    move v2, v10

    move v6, v11

    goto :goto_d

    .line 1119
    .end local v6    # "schedGroup":I
    .end local v10    # "foregroundActivities":Z
    .end local v11    # "procState":I
    .end local v19    # "adj":I
    .restart local v16    # "foregroundActivities":Z
    :cond_20
    const/4 v2, 0x0

    .line 1122
    .local v2, "schedGroup":I
    move/from16 v5, p2

    .line 1123
    .local v5, "adj":I
    const/16 v6, 0x14

    .line 1124
    .local v6, "procState":I
    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1125
    iput-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 1126
    const-string v10, "cch-empty"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1127
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v10, :cond_21

    if-ne v15, v0, :cond_22

    .line 1128
    :cond_21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Making empty: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v12, v10}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_22
    move/from16 v19, v5

    move v5, v2

    move/from16 v2, v16

    .end local v16    # "foregroundActivities":Z
    .local v2, "foregroundActivities":Z
    .local v5, "schedGroup":I
    .restart local v19    # "adj":I
    :goto_d
    const/16 v11, 0x64

    if-nez v2, :cond_24

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1134
    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move/from16 v22, v9

    .end local v9    # "PROCESS_STATE_CUR_TOP":I
    .local v22, "PROCESS_STATE_CUR_TOP":I
    move-object v9, v10

    move-object/from16 v10, p1

    move v3, v11

    const/4 v4, 0x3

    const/16 v16, 0x6

    move/from16 v11, v19

    move-object v4, v12

    move v12, v2

    move/from16 v23, v13

    .end local v13    # "prevProcState":I
    .local v23, "prevProcState":I
    move v13, v6

    move/from16 v24, v14

    .end local v14    # "prevAppAdj":I
    .local v24, "prevAppAdj":I
    move v14, v5

    move/from16 v20, v15

    .end local v15    # "logUid":I
    .local v20, "logUid":I
    move v15, v0

    move/from16 v16, v20

    move/from16 v17, v22

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->initialize(Lcom/android/server/am/ProcessRecord;IZIIIII)V

    .line 1136
    const/16 v9, 0x63

    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/wm/WindowProcessController;->computeOomAdjFromActivities(ILcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I

    move-result v9

    .line 1139
    .local v9, "minLayer":I
    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v10, v10, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1140
    .end local v19    # "adj":I
    .local v10, "adj":I
    iget-object v11, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget-boolean v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1141
    iget-object v11, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v6, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1142
    iget-object v11, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v5, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1144
    if-ne v10, v3, :cond_23

    .line 1145
    add-int v19, v10, v9

    move v9, v2

    move/from16 v10, v19

    .end local v10    # "adj":I
    .restart local v19    # "adj":I
    goto :goto_e

    .line 1144
    .end local v19    # "adj":I
    .restart local v10    # "adj":I
    :cond_23
    move v9, v2

    goto :goto_e

    .line 1133
    .end local v10    # "adj":I
    .end local v20    # "logUid":I
    .end local v22    # "PROCESS_STATE_CUR_TOP":I
    .end local v23    # "prevProcState":I
    .end local v24    # "prevAppAdj":I
    .local v9, "PROCESS_STATE_CUR_TOP":I
    .restart local v13    # "prevProcState":I
    .restart local v14    # "prevAppAdj":I
    .restart local v15    # "logUid":I
    .restart local v19    # "adj":I
    :cond_24
    move/from16 v22, v9

    move v3, v11

    move-object v4, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v20, v15

    .line 1149
    .end local v9    # "PROCESS_STATE_CUR_TOP":I
    .end local v13    # "prevProcState":I
    .end local v14    # "prevAppAdj":I
    .end local v15    # "logUid":I
    .restart local v20    # "logUid":I
    .restart local v22    # "PROCESS_STATE_CUR_TOP":I
    .restart local v23    # "prevProcState":I
    .restart local v24    # "prevAppAdj":I
    move v9, v2

    move/from16 v10, v19

    .end local v2    # "foregroundActivities":Z
    .end local v19    # "adj":I
    .local v9, "foregroundActivities":Z
    .restart local v10    # "adj":I
    :goto_e
    const/16 v2, 0x13

    if-le v6, v2, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasRecentTasks()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1150
    const/16 v6, 0x13

    .line 1151
    const-string v2, "cch-rec"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1152
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_25

    move/from16 v11, v20

    .end local v20    # "logUid":I
    .local v11, "logUid":I
    if-ne v11, v0, :cond_27

    goto :goto_f

    .end local v11    # "logUid":I
    .restart local v20    # "logUid":I
    :cond_25
    move/from16 v11, v20

    .line 1153
    .end local v20    # "logUid":I
    .restart local v11    # "logUid":I
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise procstate to cached recent: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1149
    .end local v11    # "logUid":I
    .restart local v20    # "logUid":I
    :cond_26
    move/from16 v11, v20

    .line 1157
    .end local v20    # "logUid":I
    .restart local v11    # "logUid":I
    :cond_27
    :goto_10
    const-string v12, ": "

    const-string v13, "Raise to "

    const/16 v14, 0xc8

    if-gt v10, v14, :cond_28

    const/4 v15, 0x3

    if-le v6, v15, :cond_2d

    goto :goto_11

    :cond_28
    const/4 v15, 0x3

    .line 1159
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1161
    const/16 v10, 0xc8

    .line 1162
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasLocationForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1163
    const/4 v2, 0x3

    .line 1164
    .end local v6    # "procState":I
    .local v2, "procState":I
    const-string v6, "fg-service-location"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move v6, v2

    goto :goto_12

    .line 1167
    .end local v2    # "procState":I
    .restart local v6    # "procState":I
    :cond_29
    const/4 v2, 0x5

    .line 1168
    .end local v6    # "procState":I
    .restart local v2    # "procState":I
    const-string v6, "fg-service"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move v6, v2

    .line 1170
    .end local v2    # "procState":I
    .restart local v6    # "procState":I
    :goto_12
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1171
    const/4 v5, 0x2

    .line 1172
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_2a

    if-ne v11, v0, :cond_2d

    .line 1173
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1176
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1178
    const/16 v10, 0xc8

    .line 1179
    const/4 v6, 0x7

    .line 1180
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1181
    const-string v2, "has-overlay-ui"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1182
    const/4 v5, 0x2

    .line 1183
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_2c

    if-ne v11, v0, :cond_2d

    .line 1184
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to overlay ui: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    :cond_2d
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_30

    const/16 v2, 0x32

    if-le v10, v2, :cond_30

    iget-wide v2, v7, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    iget-object v15, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v15, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v2, v14

    const/16 v14, 0x64

    cmp-long v2, v2, p5

    if-gtz v2, :cond_2e

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v15, 0x2

    if-gt v2, v15, :cond_31

    goto :goto_14

    :cond_2e
    const/4 v15, 0x2

    .line 1195
    :goto_14
    const/16 v10, 0x32

    .line 1196
    const-string v2, "fg-service-act"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1197
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_2f

    if-ne v11, v0, :cond_31

    .line 1198
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to recent fg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 1192
    :cond_30
    const/16 v14, 0x64

    const/4 v15, 0x2

    .line 1202
    :cond_31
    :goto_15
    const/16 v3, 0x9

    const/16 v2, 0xc8

    if-gt v10, v2, :cond_32

    if-le v6, v3, :cond_34

    .line 1204
    :cond_32
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v2, :cond_34

    .line 1208
    const/16 v10, 0xc8

    .line 1209
    const/16 v6, 0x9

    .line 1210
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1211
    const-string v2, "force-imp"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1212
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1213
    const/4 v5, 0x2

    .line 1214
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_33

    if-ne v11, v0, :cond_34

    .line 1215
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise to force imp: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :cond_34
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isHeavyWeightProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1221
    const/16 v2, 0x190

    if-le v10, v2, :cond_36

    .line 1223
    const/16 v10, 0x190

    .line 1224
    const/4 v5, 0x0

    .line 1225
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1226
    const-string v2, "heavy"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1227
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_35

    if-ne v11, v0, :cond_36

    .line 1228
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise adj to heavy: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :cond_36
    const/16 v2, 0xe

    if-le v6, v2, :cond_38

    .line 1232
    const/16 v6, 0xe

    .line 1233
    const-string v2, "heavy"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1234
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_37

    if-ne v11, v0, :cond_38

    .line 1235
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise procstate to heavy: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    :cond_38
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1241
    const/16 v2, 0x258

    if-le v10, v2, :cond_3a

    .line 1244
    const/16 v10, 0x258

    .line 1245
    const/4 v5, 0x0

    .line 1246
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1247
    const-string v2, "home"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1248
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_39

    if-ne v11, v0, :cond_3a

    .line 1249
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise adj to home: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :cond_3a
    const/16 v2, 0xf

    if-le v6, v2, :cond_3c

    .line 1253
    const/16 v6, 0xf

    .line 1254
    const-string v2, "home"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1255
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_3b

    if-ne v11, v0, :cond_3c

    .line 1256
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise procstate to home: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_3c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v2

    const/16 v14, 0x10

    if-eqz v2, :cond_40

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1262
    const/16 v2, 0x2bc

    if-le v10, v2, :cond_3e

    .line 1266
    const/16 v10, 0x2bc

    .line 1267
    const/4 v5, 0x0

    .line 1268
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1269
    const-string/jumbo v2, "previous"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1270
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_3d

    if-ne v11, v0, :cond_3e

    .line 1271
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise adj to prev: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :cond_3e
    if-le v6, v14, :cond_40

    .line 1275
    const/16 v6, 0x10

    .line 1276
    const-string/jumbo v2, "previous"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1277
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_3f

    if-ne v11, v0, :cond_40

    .line 1278
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise procstate to prev: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :cond_40
    if-nez p7, :cond_41

    move v2, v10

    goto :goto_16

    :cond_41
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_16
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1292
    if-nez p7, :cond_42

    .line 1293
    move v2, v6

    goto :goto_17

    .line 1294
    :cond_42
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1292
    :goto_17
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1296
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    .line 1297
    iget v2, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v2, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 1299
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/am/BackupRecord;

    .line 1300
    .local v15, "backupTarget":Lcom/android/server/am/BackupRecord;
    if-eqz v15, :cond_49

    iget-object v2, v15, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v7, v2, :cond_49

    .line 1302
    const/16 v2, 0x12c

    if-le v10, v2, :cond_47

    .line 1303
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    if-eqz v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "oom BACKUP_APP_ADJ for "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_43
    const/16 v2, 0x12c

    .line 1305
    .end local v10    # "adj":I
    .local v2, "adj":I
    if-le v6, v3, :cond_44

    .line 1306
    const/16 v6, 0x9

    .line 1308
    :cond_44
    const-string v10, "backup"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1309
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v10, :cond_45

    if-ne v11, v0, :cond_46

    .line 1310
    :cond_45
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise adj to backup: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_46
    const/4 v10, 0x0

    iput-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    move v10, v2

    .line 1314
    .end local v2    # "adj":I
    .restart local v10    # "adj":I
    :cond_47
    const/16 v2, 0xa

    if-le v6, v2, :cond_49

    .line 1315
    const/16 v6, 0xa

    .line 1316
    const-string v2, "backup"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1317
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_48

    if-ne v11, v0, :cond_49

    .line 1318
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise procstate to backup: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :cond_49
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    move/from16 v39, v10

    move v10, v2

    move/from16 v2, v39

    .line 1324
    .restart local v2    # "adj":I
    .local v10, "is":I
    :goto_18
    if-ltz v10, :cond_8a

    if-gtz v2, :cond_4b

    if-eqz v5, :cond_4b

    const/4 v3, 0x2

    if-le v6, v3, :cond_4a

    goto :goto_19

    :cond_4a
    move v14, v0

    move-object/from16 v27, v1

    move/from16 v26, v5

    move-object v10, v7

    move/from16 v32, v9

    move-object/from16 v28, v15

    move-object v7, v4

    move-wide/from16 v4, p5

    goto/16 :goto_34

    .line 1328
    :cond_4b
    :goto_19
    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1329
    .local v3, "s":Lcom/android/server/am/ServiceRecord;
    iget-boolean v14, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v14, :cond_56

    .line 1330
    const/4 v14, 0x1

    iput-boolean v14, v7, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    .line 1331
    const/16 v14, 0xb

    if-le v6, v14, :cond_4e

    .line 1332
    const/16 v6, 0xb

    .line 1333
    const-string/jumbo v14, "started-services"

    iput-object v14, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1334
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v14, :cond_4d

    if-ne v11, v0, :cond_4c

    goto :goto_1a

    :cond_4c
    move/from16 v26, v5

    goto :goto_1b

    .line 1335
    :cond_4d
    :goto_1a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v5

    .end local v5    # "schedGroup":I
    .local v26, "schedGroup":I
    const-string v5, "Raise procstate to started service: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 1331
    .end local v26    # "schedGroup":I
    .restart local v5    # "schedGroup":I
    :cond_4e
    move/from16 v26, v5

    .line 1339
    .end local v5    # "schedGroup":I
    .restart local v26    # "schedGroup":I
    :goto_1b
    iget-boolean v5, v7, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v5, :cond_50

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v5

    if-nez v5, :cond_50

    .line 1344
    const/16 v5, 0x1f4

    if-le v2, v5, :cond_4f

    .line 1345
    const-string v5, "cch-started-ui-services"

    iput-object v5, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1371
    :cond_4f
    move-object/from16 v27, v1

    move-object/from16 v28, v15

    const/4 v5, 0x0

    goto :goto_1d

    .line 1348
    :cond_50
    move v14, v6

    .end local v6    # "procState":I
    .local v14, "procState":I
    iget-wide v5, v3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v27, v1

    .end local v1    # "wpc":Lcom/android/server/wm/WindowProcessController;
    .local v27, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v29, v14

    move-object/from16 v28, v15

    .end local v14    # "procState":I
    .end local v15    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v28, "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v29, "procState":I
    iget-wide v14, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v5, v14

    cmp-long v1, p5, v5

    if-gez v1, :cond_54

    .line 1352
    const/16 v1, 0x1f4

    if-le v2, v1, :cond_53

    .line 1353
    const/16 v1, 0x1f4

    .line 1354
    .end local v2    # "adj":I
    .local v1, "adj":I
    const-string/jumbo v2, "started-services"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1355
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_51

    if-ne v11, v0, :cond_52

    .line 1356
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise adj to started service: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    :cond_52
    const/4 v5, 0x0

    iput-boolean v5, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    move v2, v1

    goto :goto_1c

    .line 1352
    .end local v1    # "adj":I
    .restart local v2    # "adj":I
    :cond_53
    const/4 v5, 0x0

    goto :goto_1c

    .line 1348
    :cond_54
    const/4 v5, 0x0

    .line 1365
    :goto_1c
    const/16 v1, 0x1f4

    if-le v2, v1, :cond_55

    .line 1366
    const-string v1, "cch-started-services"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1371
    :cond_55
    move/from16 v6, v29

    goto :goto_1d

    .line 1329
    .end local v26    # "schedGroup":I
    .end local v27    # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v28    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v29    # "procState":I
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    .restart local v5    # "schedGroup":I
    .restart local v6    # "procState":I
    .restart local v15    # "backupTarget":Lcom/android/server/am/BackupRecord;
    :cond_56
    move-object/from16 v27, v1

    move/from16 v26, v5

    move-object/from16 v28, v15

    const/4 v5, 0x0

    .line 1371
    .end local v1    # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "schedGroup":I
    .end local v15    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v26    # "schedGroup":I
    .restart local v27    # "wpc":Lcom/android/server/wm/WindowProcessController;
    .restart local v28    # "backupTarget":Lcom/android/server/am/BackupRecord;
    :goto_1d
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v14

    .line 1372
    .local v14, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    move/from16 v39, v6

    move v6, v1

    move/from16 v1, v39

    .line 1373
    .local v1, "procState":I
    .local v6, "conni":I
    :goto_1e
    if-ltz v6, :cond_89

    if-gtz v2, :cond_58

    if-eqz v26, :cond_58

    const/4 v5, 0x2

    if-le v1, v5, :cond_57

    goto :goto_1f

    :cond_57
    move-wide/from16 v5, p5

    move v14, v0

    move/from16 v32, v9

    move/from16 v33, v10

    move-object v10, v7

    move-object v7, v4

    goto/16 :goto_33

    .line 1377
    :cond_58
    :goto_1f
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1378
    .local v5, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/16 v18, 0x0

    move v15, v1

    move v1, v2

    move/from16 v2, v18

    .line 1379
    .local v1, "adj":I
    .local v2, "i":I
    .local v15, "procState":I
    :goto_20
    move/from16 v25, v0

    .end local v0    # "appUid":I
    .local v25, "appUid":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_88

    if-gtz v1, :cond_5a

    if-eqz v26, :cond_5a

    const/4 v0, 0x2

    if-le v15, v0, :cond_59

    goto :goto_21

    :cond_59
    move/from16 v17, v6

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v31, v14

    move/from16 v14, v25

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    move v3, v1

    move-wide/from16 v1, p5

    goto/16 :goto_32

    .line 1385
    :cond_5a
    :goto_21
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 1386
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v29, v1

    .end local v1    # "adj":I
    .local v29, "adj":I
    iget-object v1, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v7, :cond_5b

    .line 1388
    move/from16 v21, v2

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-object/from16 v18, v5

    move/from16 v17, v6

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v31, v14

    move/from16 v14, v25

    move-object v10, v7

    goto :goto_22

    .line 1393
    :cond_5b
    invoke-static {v0, v7}, Lcom/android/server/am/OpBGFrozenInjector;->updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 1396
    const/16 v30, 0x0

    .line 1397
    .local v30, "trackedProcState":Z
    iget v1, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_82

    .line 1398
    iget-object v1, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1399
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    move/from16 v32, v9

    move-object/from16 v31, v14

    move/from16 v14, v25

    move-object v9, v0

    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v25    # "appUid":I
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v14, "appUid":I
    .local v31, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v32, "foregroundActivities":Z
    move-object/from16 v0, p0

    move-object/from16 v25, v1

    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .local v25, "client":Lcom/android/server/am/ProcessRecord;
    move/from16 v21, v2

    move/from16 v33, v10

    const/4 v10, 0x0

    .end local v2    # "i":I
    .end local v10    # "is":I
    .local v21, "i":I
    .local v33, "is":I
    move/from16 v2, p2

    move-object/from16 v34, v3

    .end local v3    # "s":Lcom/android/server/am/ServiceRecord;
    .local v34, "s":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v3, p3

    move-object/from16 v35, v4

    move/from16 v4, p4

    move-object/from16 v18, v5

    move/from16 v17, v6

    .end local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6    # "conni":I
    .local v17, "conni":I
    .local v18, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-wide/from16 v5, p5

    move-object v10, v7

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 1401
    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move v3, v15

    move/from16 v4, v29

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1402
    nop

    .line 1382
    .end local v17    # "conni":I
    .end local v18    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v21    # "i":I
    .end local v30    # "trackedProcState":Z
    .end local v31    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v32    # "foregroundActivities":Z
    .end local v33    # "is":I
    .end local v34    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v2    # "i":I
    .restart local v3    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v6    # "conni":I
    .local v9, "foregroundActivities":Z
    .restart local v10    # "is":I
    .local v14, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v25, "appUid":I
    :goto_22
    move-wide/from16 v1, p5

    move/from16 v3, v29

    move-object/from16 v4, v34

    move-object/from16 v7, v35

    .end local v2    # "i":I
    .end local v3    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6    # "conni":I
    .end local v9    # "foregroundActivities":Z
    .end local v10    # "is":I
    .end local v25    # "appUid":I
    .local v14, "appUid":I
    .restart local v17    # "conni":I
    .restart local v18    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v21    # "i":I
    .restart local v31    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v32    # "foregroundActivities":Z
    .restart local v33    # "is":I
    .restart local v34    # "s":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_31

    .line 1405
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v25, "client":Lcom/android/server/am/ProcessRecord;
    .restart local v30    # "trackedProcState":Z
    :cond_5c
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    .line 1406
    .local v0, "clientAdj":I
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    .line 1408
    .local v1, "clientProcState":I
    const/16 v2, 0x11

    if-lt v1, v2, :cond_5d

    .line 1412
    const/16 v1, 0x14

    .line 1414
    :cond_5d
    const/4 v2, 0x0

    .line 1415
    .local v2, "adjType":Ljava/lang/String;
    iget v3, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_61

    .line 1418
    iget-boolean v3, v10, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v3, :cond_5f

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 1423
    move/from16 v3, v29

    .end local v29    # "adj":I
    .local v3, "adj":I
    if-le v3, v0, :cond_5e

    .line 1424
    const-string v2, "cch-bound-ui-services"

    .line 1426
    :cond_5e
    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1427
    move v0, v3

    .line 1428
    move v1, v15

    move v5, v1

    move-object/from16 v29, v2

    move-object/from16 v4, v34

    move-wide/from16 v1, p5

    goto :goto_23

    .line 1418
    .end local v3    # "adj":I
    .restart local v29    # "adj":I
    :cond_5f
    move/from16 v3, v29

    .line 1430
    .end local v29    # "adj":I
    .restart local v3    # "adj":I
    move-object/from16 v4, v34

    .end local v34    # "s":Lcom/android/server/am/ServiceRecord;
    .local v4, "s":Lcom/android/server/am/ServiceRecord;
    iget-wide v5, v4, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v7, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v34, v1

    move-object/from16 v29, v2

    .end local v1    # "clientProcState":I
    .end local v2    # "adjType":Ljava/lang/String;
    .local v29, "adjType":Ljava/lang/String;
    .local v34, "clientProcState":I
    iget-wide v1, v7, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v5, v1

    move-wide/from16 v1, p5

    cmp-long v5, v1, v5

    if-ltz v5, :cond_62

    .line 1437
    if-le v3, v0, :cond_60

    .line 1438
    const-string v5, "cch-bound-services"

    move-object/from16 v29, v5

    .line 1440
    :cond_60
    move v0, v3

    move/from16 v5, v34

    goto :goto_23

    .line 1415
    .end local v3    # "adj":I
    .end local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v1    # "clientProcState":I
    .restart local v2    # "adjType":Ljava/lang/String;
    .local v29, "adj":I
    .local v34, "s":Lcom/android/server/am/ServiceRecord;
    :cond_61
    move/from16 v3, v29

    move-object/from16 v4, v34

    move/from16 v34, v1

    move-object/from16 v29, v2

    move-wide/from16 v1, p5

    .line 1444
    .end local v1    # "clientProcState":I
    .end local v2    # "adjType":Ljava/lang/String;
    .restart local v3    # "adj":I
    .restart local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .local v29, "adjType":Ljava/lang/String;
    .local v34, "clientProcState":I
    :cond_62
    move/from16 v5, v34

    .end local v34    # "clientProcState":I
    .local v5, "clientProcState":I
    :goto_23
    if-le v3, v0, :cond_6e

    .line 1452
    iget-boolean v6, v10, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v6, :cond_64

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v6

    if-nez v6, :cond_64

    const/16 v6, 0xc8

    if-le v0, v6, :cond_64

    .line 1454
    const/16 v6, 0x384

    if-lt v3, v6, :cond_63

    .line 1455
    const-string v29, "cch-bound-ui-services"

    move-object/from16 v7, v25

    move/from16 v25, v0

    move/from16 v0, v26

    goto/16 :goto_26

    .line 1454
    :cond_63
    move-object/from16 v7, v25

    move/from16 v25, v0

    goto/16 :goto_25

    .line 1459
    :cond_64
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x48

    if-eqz v6, :cond_66

    .line 1461
    const/16 v6, -0x2bc

    if-lt v0, v6, :cond_65

    .line 1462
    move v6, v0

    const/16 v7, 0x64

    .local v6, "newAdj":I
    goto :goto_24

    .line 1465
    .end local v6    # "newAdj":I
    :cond_65
    const/16 v6, -0x2bc

    .line 1466
    .restart local v6    # "newAdj":I
    const/16 v26, 0x2

    .line 1467
    const/4 v15, 0x0

    .line 1468
    iget v7, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v9, v15, v7, v1, v2}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 1469
    const/16 v30, 0x1

    const/16 v7, 0x64

    goto :goto_24

    .line 1471
    .end local v6    # "newAdj":I
    :cond_66
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_67

    const/16 v6, 0xc8

    if-ge v0, v6, :cond_67

    const/16 v6, 0xfa

    if-le v3, v6, :cond_67

    .line 1474
    const/16 v6, 0xfa

    const/16 v7, 0x64

    .restart local v6    # "newAdj":I
    goto :goto_24

    .line 1475
    .end local v6    # "newAdj":I
    :cond_67
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_68

    const/16 v6, 0xc8

    if-ge v0, v6, :cond_69

    if-le v3, v6, :cond_69

    .line 1478
    const/16 v7, 0xc8

    move v6, v7

    const/16 v7, 0x64

    .local v7, "newAdj":I
    goto :goto_24

    .line 1475
    .end local v7    # "newAdj":I
    :cond_68
    const/16 v6, 0xc8

    .line 1479
    :cond_69
    if-lt v0, v6, :cond_6a

    .line 1480
    move v6, v0

    const/16 v7, 0x64

    .restart local v6    # "newAdj":I
    goto :goto_24

    .line 1482
    .end local v6    # "newAdj":I
    :cond_6a
    const/16 v7, 0x64

    if-le v3, v7, :cond_6b

    .line 1484
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .restart local v6    # "newAdj":I
    goto :goto_24

    .line 1486
    .end local v6    # "newAdj":I
    :cond_6b
    move v6, v3

    .line 1489
    .restart local v6    # "newAdj":I
    :goto_24
    move-object/from16 v7, v25

    move/from16 v25, v0

    .end local v0    # "clientAdj":I
    .local v7, "client":Lcom/android/server/am/ProcessRecord;
    .local v25, "clientAdj":I
    iget-boolean v0, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    if-nez v0, :cond_6c

    .line 1490
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1492
    :cond_6c
    if-le v3, v6, :cond_6d

    .line 1493
    move v0, v6

    .line 1494
    .end local v3    # "adj":I
    .local v0, "adj":I
    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1495
    const-string/jumbo v29, "service"

    move v3, v0

    move/from16 v0, v26

    goto :goto_26

    .line 1492
    .end local v0    # "adj":I
    .restart local v3    # "adj":I
    :cond_6d
    move/from16 v0, v26

    goto :goto_26

    .line 1444
    .end local v6    # "newAdj":I
    .end local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .local v0, "clientAdj":I
    .local v25, "client":Lcom/android/server/am/ProcessRecord;
    :cond_6e
    move-object/from16 v7, v25

    move/from16 v25, v0

    .line 1499
    .end local v0    # "clientAdj":I
    .restart local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .local v25, "clientAdj":I
    :goto_25
    move/from16 v0, v26

    .end local v26    # "schedGroup":I
    .local v0, "schedGroup":I
    :goto_26
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v26, 0x800004

    and-int v6, v6, v26

    if-nez v6, :cond_77

    .line 1504
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v6

    .line 1505
    .local v6, "curSchedGroup":I
    if-le v6, v0, :cond_70

    .line 1506
    move/from16 v26, v0

    .end local v0    # "schedGroup":I
    .restart local v26    # "schedGroup":I
    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6f

    .line 1507
    move v0, v6

    .end local v26    # "schedGroup":I
    .restart local v0    # "schedGroup":I
    goto :goto_27

    .line 1509
    .end local v0    # "schedGroup":I
    .restart local v26    # "schedGroup":I
    :cond_6f
    const/4 v0, 0x2

    .end local v26    # "schedGroup":I
    .restart local v0    # "schedGroup":I
    goto :goto_27

    .line 1505
    :cond_70
    move/from16 v26, v0

    .line 1512
    :goto_27
    move/from16 v26, v0

    .end local v0    # "schedGroup":I
    .restart local v26    # "schedGroup":I
    const/4 v0, 0x2

    if-ge v5, v0, :cond_74

    .line 1517
    const/16 v0, 0x1000

    invoke-virtual {v9, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1518
    const/4 v0, 0x3

    goto :goto_28

    .line 1519
    :cond_71
    const/4 v0, 0x6

    :goto_28
    nop

    .line 1520
    .local v0, "bestState":I
    move/from16 v36, v6

    .end local v6    # "curSchedGroup":I
    .local v36, "curSchedGroup":I
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v34, 0x4000000

    and-int v6, v6, v34

    if-eqz v6, :cond_72

    .line 1521
    move v5, v0

    move-object/from16 v37, v7

    const/4 v7, 0x1

    goto :goto_29

    .line 1522
    :cond_72
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    move-object/from16 v37, v7

    const/4 v7, 0x1

    .end local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .local v37, "client":Lcom/android/server/am/ProcessRecord;
    if-ne v6, v7, :cond_73

    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v34, 0x2000000

    and-int v6, v6, v34

    if-eqz v6, :cond_73

    .line 1526
    move v5, v0

    goto :goto_29

    .line 1528
    :cond_73
    const/4 v5, 0x7

    .line 1531
    .end local v0    # "bestState":I
    :goto_29
    goto :goto_2a

    .end local v36    # "curSchedGroup":I
    .end local v37    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "curSchedGroup":I
    .restart local v7    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_74
    move/from16 v36, v6

    move-object/from16 v37, v7

    const/4 v7, 0x1

    .end local v6    # "curSchedGroup":I
    .end local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v36    # "curSchedGroup":I
    .restart local v37    # "client":Lcom/android/server/am/ProcessRecord;
    const/4 v0, 0x2

    if-ne v5, v0, :cond_75

    .line 1532
    const/16 v0, 0x1000

    invoke-virtual {v9, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1535
    const/4 v0, 0x4

    move v5, v0

    .end local v5    # "clientProcState":I
    .local v0, "clientProcState":I
    goto :goto_2a

    .line 1537
    .end local v0    # "clientProcState":I
    .restart local v5    # "clientProcState":I
    :cond_75
    const/16 v0, 0x1000

    const/4 v6, 0x5

    if-gt v5, v6, :cond_76

    .line 1539
    invoke-virtual {v9, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1540
    const/4 v0, 0x5

    move v5, v0

    .line 1543
    .end local v36    # "curSchedGroup":I
    :cond_76
    :goto_2a
    move v6, v5

    move/from16 v5, v26

    const/16 v0, 0x9

    goto :goto_2b

    .end local v26    # "schedGroup":I
    .end local v37    # "client":Lcom/android/server/am/ProcessRecord;
    .local v0, "schedGroup":I
    .restart local v7    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_77
    move/from16 v26, v0

    move-object/from16 v37, v7

    const/4 v7, 0x1

    .end local v0    # "schedGroup":I
    .end local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v26    # "schedGroup":I
    .restart local v37    # "client":Lcom/android/server/am/ProcessRecord;
    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v0, v6

    if-nez v0, :cond_78

    .line 1544
    const/16 v0, 0x9

    if-ge v5, v0, :cond_79

    .line 1546
    const/16 v5, 0x9

    move v6, v5

    move/from16 v5, v26

    goto :goto_2b

    .line 1550
    :cond_78
    const/16 v0, 0x9

    const/16 v6, 0x8

    if-ge v5, v6, :cond_79

    .line 1552
    const/16 v5, 0x8

    move v6, v5

    move/from16 v5, v26

    goto :goto_2b

    .line 1557
    :cond_79
    move v6, v5

    move/from16 v5, v26

    .end local v26    # "schedGroup":I
    .local v5, "schedGroup":I
    .local v6, "clientProcState":I
    :goto_2b
    const/4 v7, 0x3

    if-ge v5, v7, :cond_7a

    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v26, 0x80000

    and-int v0, v0, v26

    if-eqz v0, :cond_7a

    .line 1559
    const/4 v0, 0x3

    move/from16 v26, v0

    .end local v5    # "schedGroup":I
    .restart local v0    # "schedGroup":I
    goto :goto_2c

    .line 1562
    .end local v0    # "schedGroup":I
    .restart local v5    # "schedGroup":I
    :cond_7a
    move/from16 v26, v5

    .end local v5    # "schedGroup":I
    .restart local v26    # "schedGroup":I
    :goto_2c
    if-nez v30, :cond_7b

    .line 1563
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v9, v6, v0, v1, v2}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 1566
    :cond_7b
    if-le v15, v6, :cond_7d

    .line 1567
    move v15, v6

    .line 1568
    invoke-virtual {v10, v15}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1569
    if-nez v29, :cond_7c

    .line 1570
    const-string/jumbo v29, "service"

    move-object/from16 v0, v29

    goto :goto_2d

    .line 1569
    :cond_7c
    move-object/from16 v0, v29

    goto :goto_2d

    .line 1566
    :cond_7d
    move-object/from16 v0, v29

    .line 1573
    .end local v29    # "adjType":Ljava/lang/String;
    .local v0, "adjType":Ljava/lang/String;
    :goto_2d
    const/16 v5, 0x8

    if-ge v15, v5, :cond_7e

    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v29, 0x20000000

    and-int v5, v5, v29

    if-eqz v5, :cond_7e

    .line 1575
    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1577
    :cond_7e
    if-eqz v0, :cond_81

    .line 1578
    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1579
    const/4 v5, 0x2

    iput v5, v10, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 1581
    iget-object v5, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1582
    iput v6, v10, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 1583
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1584
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_80

    if-ne v11, v14, :cond_7f

    goto :goto_2e

    :cond_7f
    move-object/from16 v7, v35

    goto :goto_2f

    .line 1585
    :cond_80
    :goto_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", due to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " adj="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " procState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    invoke-static {v15}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1585
    move-object/from16 v7, v35

    invoke-virtual {v8, v7, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 1577
    :cond_81
    move-object/from16 v7, v35

    goto :goto_2f

    .line 1397
    .end local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v17    # "conni":I
    .end local v18    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v21    # "i":I
    .end local v31    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v32    # "foregroundActivities":Z
    .end local v33    # "is":I
    .end local v37    # "client":Lcom/android/server/am/ProcessRecord;
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v2, "i":I
    .local v3, "s":Lcom/android/server/am/ServiceRecord;
    .local v5, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "conni":I
    .local v9, "foregroundActivities":Z
    .restart local v10    # "is":I
    .local v14, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v25, "appUid":I
    .local v29, "adj":I
    :cond_82
    move/from16 v21, v2

    move-object/from16 v18, v5

    move/from16 v17, v6

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v31, v14

    move/from16 v14, v25

    move-wide/from16 v1, p5

    move-object v9, v0

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    move/from16 v3, v29

    .line 1592
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "i":I
    .end local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6    # "conni":I
    .end local v10    # "is":I
    .end local v25    # "appUid":I
    .end local v29    # "adj":I
    .local v3, "adj":I
    .restart local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v14, "appUid":I
    .restart local v17    # "conni":I
    .restart local v18    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v21    # "i":I
    .restart local v31    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v32    # "foregroundActivities":Z
    .restart local v33    # "is":I
    :goto_2f
    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_83

    .line 1593
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 1595
    :cond_83
    iget-object v0, v9, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 1596
    .local v0, "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_87

    .line 1597
    if-eqz v0, :cond_87

    if-lez v3, :cond_87

    .line 1598
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 1599
    const/4 v3, 0x0

    .line 1600
    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1601
    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_85

    .line 1602
    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_84

    .line 1603
    const/16 v26, 0x4

    goto :goto_30

    .line 1605
    :cond_84
    const/16 v26, 0x2

    .line 1608
    :cond_85
    :goto_30
    const/4 v5, 0x0

    iput-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1609
    const-string/jumbo v5, "service"

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1610
    const/4 v5, 0x2

    iput v5, v10, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 1612
    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1613
    iput v15, v10, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 1614
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1615
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_86

    if-ne v11, v14, :cond_87

    .line 1616
    :cond_86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise to service w/activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v7, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    .end local v0    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v9    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v30    # "trackedProcState":Z
    :cond_87
    :goto_31
    add-int/lit8 v0, v21, 0x1

    move v2, v0

    move v1, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v10

    move v0, v14

    move/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v14, v31

    move/from16 v9, v32

    move/from16 v10, v33

    .end local v21    # "i":I
    .local v0, "i":I
    goto/16 :goto_20

    .line 1379
    .end local v0    # "i":I
    .end local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v17    # "conni":I
    .end local v18    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v31    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v32    # "foregroundActivities":Z
    .end local v33    # "is":I
    .local v1, "adj":I
    .restart local v2    # "i":I
    .local v3, "s":Lcom/android/server/am/ServiceRecord;
    .restart local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v6    # "conni":I
    .local v9, "foregroundActivities":Z
    .restart local v10    # "is":I
    .local v14, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v25    # "appUid":I
    :cond_88
    move/from16 v21, v2

    move-object/from16 v18, v5

    move/from16 v17, v6

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v31, v14

    move/from16 v14, v25

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    move v3, v1

    move-wide/from16 v1, p5

    .line 1376
    .end local v1    # "adj":I
    .end local v2    # "i":I
    .end local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6    # "conni":I
    .end local v9    # "foregroundActivities":Z
    .end local v10    # "is":I
    .end local v25    # "appUid":I
    .local v3, "adj":I
    .restart local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .local v14, "appUid":I
    .restart local v17    # "conni":I
    .restart local v31    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v32    # "foregroundActivities":Z
    .restart local v33    # "is":I
    :goto_32
    add-int/lit8 v6, v17, -0x1

    move v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v10

    move v0, v14

    move v1, v15

    move-object/from16 v14, v31

    move/from16 v9, v32

    move/from16 v10, v33

    const/4 v5, 0x0

    const/4 v15, 0x1

    .end local v17    # "conni":I
    .restart local v6    # "conni":I
    goto/16 :goto_1e

    .line 1373
    .end local v4    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v15    # "procState":I
    .end local v31    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v32    # "foregroundActivities":Z
    .end local v33    # "is":I
    .local v0, "appUid":I
    .local v1, "procState":I
    .local v2, "adj":I
    .local v3, "s":Lcom/android/server/am/ServiceRecord;
    .restart local v9    # "foregroundActivities":Z
    .restart local v10    # "is":I
    .local v14, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :cond_89
    move/from16 v17, v6

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v31, v14

    move-wide/from16 v5, p5

    move v14, v0

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    .line 1327
    .end local v0    # "appUid":I
    .end local v3    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "conni":I
    .end local v9    # "foregroundActivities":Z
    .end local v10    # "is":I
    .local v14, "appUid":I
    .restart local v32    # "foregroundActivities":Z
    .restart local v33    # "is":I
    :goto_33
    add-int/lit8 v0, v33, -0x1

    move v6, v1

    move-object v4, v7

    move-object v7, v10

    move/from16 v5, v26

    move-object/from16 v1, v27

    move-object/from16 v15, v28

    move/from16 v9, v32

    const/16 v3, 0x9

    move v10, v0

    move v0, v14

    .end local v33    # "is":I
    .local v0, "is":I
    goto/16 :goto_18

    .line 1324
    .end local v14    # "appUid":I
    .end local v26    # "schedGroup":I
    .end local v27    # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v28    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v32    # "foregroundActivities":Z
    .local v0, "appUid":I
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    .local v5, "schedGroup":I
    .local v6, "procState":I
    .restart local v9    # "foregroundActivities":Z
    .restart local v10    # "is":I
    .local v15, "backupTarget":Lcom/android/server/am/BackupRecord;
    :cond_8a
    move v14, v0

    move-object/from16 v27, v1

    move/from16 v26, v5

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v28, v15

    move-object v10, v7

    move-object v7, v4

    move-wide/from16 v4, p5

    .line 1625
    .end local v0    # "appUid":I
    .end local v1    # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "schedGroup":I
    .end local v9    # "foregroundActivities":Z
    .end local v10    # "is":I
    .end local v15    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v14    # "appUid":I
    .restart local v26    # "schedGroup":I
    .restart local v27    # "wpc":Lcom/android/server/wm/WindowProcessController;
    .restart local v28    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v32    # "foregroundActivities":Z
    :goto_34
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v9, v0

    .line 1626
    .local v9, "provi":I
    :goto_35
    if-ltz v9, :cond_a6

    if-gtz v2, :cond_8c

    if-eqz v26, :cond_8c

    const/4 v0, 0x2

    if-le v6, v0, :cond_8b

    goto :goto_36

    :cond_8b
    const/16 v16, 0x3

    move/from16 v39, v11

    move-object v11, v7

    move-wide/from16 v40, v4

    move/from16 v5, v39

    move v4, v14

    move-wide/from16 v14, v40

    goto/16 :goto_43

    .line 1630
    :cond_8c
    :goto_36
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/am/ContentProviderRecord;

    .line 1631
    .local v15, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v0, v15, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v1, v6

    move/from16 v2, v26

    move v6, v0

    .line 1632
    .end local v26    # "schedGroup":I
    .local v1, "procState":I
    .local v2, "schedGroup":I
    .local v3, "adj":I
    .local v6, "i":I
    :goto_37
    if-ltz v6, :cond_9e

    if-gtz v3, :cond_8e

    if-eqz v2, :cond_8e

    const/4 v0, 0x2

    if-le v1, v0, :cond_8d

    goto :goto_38

    :cond_8d
    move v6, v1

    move/from16 v17, v9

    move-object/from16 v18, v12

    move-object/from16 v29, v13

    const/16 v16, 0x3

    move v13, v2

    move/from16 v39, v11

    move-object v11, v7

    move-object v7, v15

    move-wide/from16 v40, v4

    move/from16 v5, v39

    move v4, v14

    move-wide/from16 v14, v40

    goto/16 :goto_41

    .line 1636
    :cond_8e
    :goto_38
    iget-object v0, v15, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 1637
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    move/from16 v17, v9

    .end local v9    # "provi":I
    .local v17, "provi":I
    iget-object v9, v0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 1638
    .local v9, "client":Lcom/android/server/am/ProcessRecord;
    if-ne v9, v10, :cond_8f

    .line 1640
    move/from16 v21, v1

    move/from16 v26, v3

    move/from16 v33, v6

    move-object/from16 v38, v7

    move/from16 v34, v11

    move-object/from16 v18, v12

    move-object/from16 v29, v13

    move/from16 v30, v14

    move-object/from16 v31, v15

    move/from16 v11, v16

    const/16 v16, 0x3

    move v13, v2

    move-wide v14, v4

    goto :goto_39

    .line 1645
    :cond_8f
    invoke-static {v9, v10}, Lcom/android/server/am/OpBGFrozenInjector;->updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 1648
    move-object/from16 v18, v12

    move-object v12, v0

    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v12, "conn":Lcom/android/server/am/ContentProviderConnection;
    move-object/from16 v0, p0

    move/from16 v21, v1

    .end local v1    # "procState":I
    .local v21, "procState":I
    move-object v1, v9

    move-object/from16 v29, v13

    move v13, v2

    .end local v2    # "schedGroup":I
    .local v13, "schedGroup":I
    move/from16 v2, p2

    move/from16 v26, v3

    .end local v3    # "adj":I
    .local v26, "adj":I
    move-object/from16 v3, p3

    move/from16 v30, v14

    move-object/from16 v31, v15

    move-wide v14, v4

    .end local v14    # "appUid":I
    .end local v15    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v30, "appUid":I
    .local v31, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move/from16 v4, p4

    move/from16 v33, v6

    .end local v6    # "i":I
    .local v33, "i":I
    move-wide/from16 v5, p5

    move-object/from16 v38, v7

    move/from16 v34, v11

    move/from16 v11, v16

    const/16 v16, 0x3

    .end local v11    # "logUid":I
    .local v34, "logUid":I
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 1650
    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, v21

    move/from16 v4, v26

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1651
    nop

    .line 1635
    .end local v9    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v13    # "schedGroup":I
    .end local v21    # "procState":I
    .end local v26    # "adj":I
    .end local v30    # "appUid":I
    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v33    # "i":I
    .end local v34    # "logUid":I
    .restart local v1    # "procState":I
    .restart local v2    # "schedGroup":I
    .restart local v3    # "adj":I
    .restart local v6    # "i":I
    .restart local v11    # "logUid":I
    .restart local v14    # "appUid":I
    .restart local v15    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_39
    move v2, v13

    move/from16 v1, v21

    move/from16 v3, v26

    move/from16 v4, v30

    move-object/from16 v7, v31

    move/from16 v5, v34

    move-object/from16 v11, v38

    .end local v1    # "procState":I
    .end local v2    # "schedGroup":I
    .end local v3    # "adj":I
    .end local v6    # "i":I
    .end local v11    # "logUid":I
    .end local v14    # "appUid":I
    .end local v15    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v13    # "schedGroup":I
    .restart local v21    # "procState":I
    .restart local v26    # "adj":I
    .restart local v30    # "appUid":I
    .restart local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v33    # "i":I
    .restart local v34    # "logUid":I
    goto/16 :goto_40

    .line 1654
    .restart local v9    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v12    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_90
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    .line 1655
    .local v2, "clientAdj":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v0

    .line 1657
    .local v0, "clientProcState":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_91

    .line 1660
    const/16 v0, 0x14

    .line 1662
    :cond_91
    const/4 v1, 0x0

    .line 1663
    .local v1, "adjType":Ljava/lang/String;
    move/from16 v3, v26

    .end local v26    # "adj":I
    .restart local v3    # "adj":I
    if-le v3, v2, :cond_95

    .line 1664
    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v4, :cond_92

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v4

    if-nez v4, :cond_92

    const/16 v4, 0xc8

    if-le v2, v4, :cond_93

    .line 1666
    const-string v1, "cch-ui-provider"

    goto :goto_3b

    .line 1664
    :cond_92
    const/16 v4, 0xc8

    .line 1668
    :cond_93
    if-lez v2, :cond_94

    .line 1669
    move v5, v2

    goto :goto_3a

    :cond_94
    const/4 v5, 0x0

    :goto_3a
    move v3, v5

    .line 1670
    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1671
    const-string/jumbo v1, "provider"

    .line 1673
    :goto_3b
    iget-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    iget-boolean v6, v9, Lcom/android/server/am/ProcessRecord;->cached:Z

    and-int/2addr v5, v6

    iput-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    goto :goto_3c

    .line 1663
    :cond_95
    const/16 v4, 0xc8

    .line 1676
    :goto_3c
    const/4 v5, 0x5

    if-gt v0, v5, :cond_98

    .line 1677
    if-nez v1, :cond_96

    .line 1678
    const-string/jumbo v1, "provider"

    .line 1680
    :cond_96
    const/4 v5, 0x2

    if-ne v0, v5, :cond_97

    .line 1681
    const/4 v0, 0x4

    goto :goto_3d

    .line 1683
    :cond_97
    const/4 v0, 0x6

    goto :goto_3d

    .line 1676
    :cond_98
    const/4 v5, 0x2

    .line 1687
    :goto_3d
    iget v6, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v0, v6, v14, v15}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(IIJ)V

    .line 1688
    move/from16 v6, v21

    .end local v21    # "procState":I
    .local v6, "procState":I
    if-le v6, v0, :cond_99

    .line 1689
    move v6, v0

    .line 1690
    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1692
    :cond_99
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v7

    if-le v7, v13, :cond_9a

    .line 1693
    const/4 v7, 0x2

    move v13, v7

    .line 1695
    :cond_9a
    if-eqz v1, :cond_9d

    .line 1696
    iput-object v1, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1697
    iput v11, v10, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 1699
    iput-object v9, v10, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1700
    iput v0, v10, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 1701
    move-object/from16 v7, v31

    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v7, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v7, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v4, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1702
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_9c

    move/from16 v4, v30

    move/from16 v5, v34

    .end local v30    # "appUid":I
    .end local v34    # "logUid":I
    .local v4, "appUid":I
    .local v5, "logUid":I
    if-ne v5, v4, :cond_9b

    goto :goto_3e

    :cond_9b
    move-object/from16 v11, v38

    goto :goto_3f

    .end local v4    # "appUid":I
    .end local v5    # "logUid":I
    .restart local v30    # "appUid":I
    .restart local v34    # "logUid":I
    :cond_9c
    move/from16 v4, v30

    move/from16 v5, v34

    .line 1703
    .end local v30    # "appUid":I
    .end local v34    # "logUid":I
    .restart local v4    # "appUid":I
    .restart local v5    # "logUid":I
    :goto_3e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v0

    move-object/from16 v0, v29

    .end local v0    # "clientProcState":I
    .local v21, "clientProcState":I
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", due to "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " adj="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " procState="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-static {v6}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1703
    move-object/from16 v11, v38

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 1695
    .end local v4    # "appUid":I
    .end local v5    # "logUid":I
    .end local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v21    # "clientProcState":I
    .restart local v0    # "clientProcState":I
    .restart local v30    # "appUid":I
    .restart local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v34    # "logUid":I
    :cond_9d
    move/from16 v21, v0

    move/from16 v4, v30

    move-object/from16 v7, v31

    move/from16 v5, v34

    move-object/from16 v11, v38

    .line 1635
    .end local v0    # "clientProcState":I
    .end local v1    # "adjType":Ljava/lang/String;
    .end local v2    # "clientAdj":I
    .end local v9    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v30    # "appUid":I
    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v34    # "logUid":I
    .restart local v4    # "appUid":I
    .restart local v5    # "logUid":I
    .restart local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_3f
    move v1, v6

    move v2, v13

    .end local v6    # "procState":I
    .end local v13    # "schedGroup":I
    .local v1, "procState":I
    .local v2, "schedGroup":I
    :goto_40
    add-int/lit8 v6, v33, -0x1

    move/from16 v9, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v29

    const/16 v16, 0x1

    move-wide/from16 v39, v14

    move v14, v4

    move-object v15, v7

    move-object v7, v11

    move v11, v5

    move-wide/from16 v4, v39

    .end local v33    # "i":I
    .local v6, "i":I
    goto/16 :goto_37

    .line 1632
    .end local v4    # "appUid":I
    .end local v5    # "logUid":I
    .end local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v17    # "provi":I
    .local v9, "provi":I
    .restart local v11    # "logUid":I
    .restart local v14    # "appUid":I
    .restart local v15    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_9e
    move/from16 v33, v6

    move/from16 v17, v9

    move-object/from16 v18, v12

    move-object/from16 v29, v13

    const/16 v16, 0x3

    move v6, v1

    move v13, v2

    move/from16 v39, v11

    move-object v11, v7

    move-object v7, v15

    move-wide/from16 v40, v4

    move/from16 v5, v39

    move v4, v14

    move-wide/from16 v14, v40

    .line 1713
    .end local v1    # "procState":I
    .end local v2    # "schedGroup":I
    .end local v9    # "provi":I
    .end local v11    # "logUid":I
    .end local v14    # "appUid":I
    .end local v15    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4    # "appUid":I
    .restart local v5    # "logUid":I
    .local v6, "procState":I
    .restart local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v13    # "schedGroup":I
    .restart local v17    # "provi":I
    :goto_41
    invoke-virtual {v7}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1714
    if-lez v3, :cond_a1

    .line 1715
    const/4 v3, 0x0

    .line 1716
    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1717
    const/4 v2, 0x2

    .line 1718
    .end local v13    # "schedGroup":I
    .restart local v2    # "schedGroup":I
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1719
    const-string v0, "ext-provider"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1720
    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1721
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_9f

    if-ne v5, v4, :cond_a0

    .line 1722
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to external provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    :cond_a0
    move v13, v2

    .end local v2    # "schedGroup":I
    .restart local v13    # "schedGroup":I
    :cond_a1
    const/4 v0, 0x7

    if-le v6, v0, :cond_a4

    .line 1727
    const/4 v0, 0x7

    .line 1728
    .end local v6    # "procState":I
    .local v0, "procState":I
    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1729
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_a2

    if-ne v5, v4, :cond_a3

    .line 1730
    :cond_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to external provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v11, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    .end local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_a3
    move v6, v0

    move v2, v3

    move/from16 v26, v13

    goto :goto_42

    .line 1726
    .end local v0    # "procState":I
    .restart local v6    # "procState":I
    .restart local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_a4
    move v2, v3

    move/from16 v26, v13

    goto :goto_42

    .line 1713
    :cond_a5
    move v2, v3

    move/from16 v26, v13

    .line 1629
    .end local v3    # "adj":I
    .end local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v13    # "schedGroup":I
    .local v2, "adj":I
    .local v26, "schedGroup":I
    :goto_42
    add-int/lit8 v9, v17, -0x1

    move-object v7, v11

    move-object/from16 v12, v18

    move-object/from16 v13, v29

    move v11, v5

    move-wide/from16 v39, v14

    move v14, v4

    move-wide/from16 v4, v39

    .end local v17    # "provi":I
    .restart local v9    # "provi":I
    goto/16 :goto_35

    .line 1626
    .end local v4    # "appUid":I
    .end local v5    # "logUid":I
    .restart local v11    # "logUid":I
    .restart local v14    # "appUid":I
    :cond_a6
    move/from16 v17, v9

    const/16 v16, 0x3

    move/from16 v39, v11

    move-object v11, v7

    move-wide/from16 v40, v4

    move/from16 v5, v39

    move v4, v14

    move-wide/from16 v14, v40

    .line 1737
    .end local v9    # "provi":I
    .end local v11    # "logUid":I
    .end local v14    # "appUid":I
    .restart local v4    # "appUid":I
    .restart local v5    # "logUid":I
    :goto_43
    iget-wide v0, v10, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-lez v0, :cond_aa

    iget-wide v0, v10, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v3, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v0, v12

    cmp-long v0, v0, v14

    if-lez v0, :cond_aa

    .line 1739
    const/16 v0, 0x2bc

    if-le v2, v0, :cond_a8

    .line 1740
    const/16 v2, 0x2bc

    .line 1741
    const/16 v26, 0x0

    .line 1742
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 1743
    const-string/jumbo v0, "recent-provider"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1744
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_a7

    if-ne v5, v4, :cond_a8

    .line 1745
    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to recent provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :cond_a8
    const/16 v0, 0x10

    if-le v6, v0, :cond_aa

    .line 1750
    const/16 v6, 0x10

    .line 1751
    const-string/jumbo v0, "recent-provider"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1752
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_a9

    if-ne v5, v4, :cond_aa

    .line 1753
    :cond_a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise procstate to recent provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    :cond_aa
    const/16 v0, 0x14

    if-lt v6, v0, :cond_ac

    .line 1760
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1762
    const/16 v6, 0x12

    .line 1763
    const-string v0, "cch-client-act"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_44

    .line 1764
    :cond_ab
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v0, :cond_ac

    .line 1767
    const/16 v6, 0x11

    .line 1768
    const-string v0, "cch-as-act"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1772
    :cond_ac
    :goto_44
    const/16 v0, 0x1f4

    if-ne v2, v0, :cond_b2

    .line 1773
    if-eqz p4, :cond_b1

    .line 1774
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_ad

    const/4 v0, 0x1

    goto :goto_45

    :cond_ad
    const/4 v0, 0x0

    :goto_45
    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    .line 1775
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 1777
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-nez v0, :cond_b0

    .line 1782
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez v0, :cond_af

    iget-wide v0, v10, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1783
    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v11

    cmp-long v0, v0, v11

    if-ltz v0, :cond_ae

    .line 1784
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    .line 1785
    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    const/4 v0, 0x0

    goto :goto_47

    .line 1783
    :cond_ae
    const/4 v0, 0x1

    goto :goto_46

    .line 1782
    :cond_af
    const/4 v0, 0x1

    .line 1788
    :goto_46
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v1, v0

    iput v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    const/4 v0, 0x0

    goto :goto_47

    .line 1792
    :cond_b0
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    goto :goto_47

    .line 1773
    :cond_b1
    const/4 v0, 0x0

    .line 1795
    :goto_47
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v1, :cond_b3

    .line 1796
    const/16 v2, 0x320

    goto :goto_48

    .line 1772
    :cond_b2
    const/4 v0, 0x0

    .line 1802
    :cond_b3
    :goto_48
    move-object/from16 v1, p3

    if-ne v10, v1, :cond_b4

    iget v3, v8, Lcom/android/server/am/OomAdjuster;->mLastTopUid:I

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, v7, :cond_b4

    .line 1803
    invoke-direct {v8, v1}, Lcom/android/server/am/OomAdjuster;->updataKernelTopUid(Lcom/android/server/am/ProcessRecord;)V

    .line 1804
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mLastTopUid:I

    .line 1808
    :cond_b4
    invoke-virtual {v10, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1812
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-le v2, v3, :cond_b6

    .line 1813
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 1814
    iget v3, v10, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/16 v7, 0xfa

    if-gt v3, v7, :cond_b5

    .line 1815
    const/16 v26, 0x2

    move v3, v2

    move/from16 v2, v26

    goto :goto_49

    .line 1814
    :cond_b5
    move v3, v2

    move/from16 v2, v26

    goto :goto_49

    .line 1812
    :cond_b6
    move v3, v2

    move/from16 v2, v26

    .line 1821
    .end local v26    # "schedGroup":I
    .local v2, "schedGroup":I
    .restart local v3    # "adj":I
    :goto_49
    const/4 v7, 0x6

    if-lt v6, v7, :cond_b7

    iget-object v7, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v7, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v9, 0x1

    if-eq v7, v9, :cond_b8

    .line 1823
    if-le v2, v9, :cond_b8

    .line 1824
    const/4 v2, 0x1

    goto :goto_4a

    .line 1821
    :cond_b7
    const/4 v9, 0x1

    .line 1833
    :cond_b8
    :goto_4a
    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v7

    iput v7, v10, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1834
    invoke-virtual {v10, v2}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1835
    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1836
    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1837
    move/from16 v7, v32

    .end local v32    # "foregroundActivities":Z
    .local v7, "foregroundActivities":Z
    invoke-virtual {v10, v7}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 1838
    iget v11, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v11, v10, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 1842
    invoke-static {v10, v1}, Lcom/android/server/am/OomAdjusterInjector;->setTunedAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 1846
    iget v11, v10, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v12, v24

    .end local v24    # "prevAppAdj":I
    .local v12, "prevAppAdj":I
    if-lt v11, v12, :cond_ba

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v11

    move/from16 v13, v23

    .end local v23    # "prevProcState":I
    .local v13, "prevProcState":I
    if-ge v11, v13, :cond_b9

    goto :goto_4b

    :cond_b9
    move v9, v0

    goto :goto_4b

    .end local v13    # "prevProcState":I
    .restart local v23    # "prevProcState":I
    :cond_ba
    move/from16 v13, v23

    .end local v23    # "prevProcState":I
    .restart local v13    # "prevProcState":I
    :goto_4b
    return v9
.end method

.method static synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 8
    .param p0, "msg"    # Landroid/os/Message;

    .line 248
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "setProcessGroup"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 249
    iget v2, p0, Landroid/os/Message;->arg1:I

    .line 250
    .local v2, "pid":I
    iget v3, p0, Landroid/os/Message;->arg2:I

    .line 252
    .local v3, "group":I
    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 259
    goto :goto_1

    .line 258
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 253
    :catch_0
    move-exception v4

    .line 254
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v5, :cond_0

    .line 255
    const-string v5, "OomAdjuster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed setting process group of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 258
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method private maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowUptime"    # J

    .line 2298
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 2299
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 2300
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    .line 2302
    :cond_0
    return-void
.end method

.method private maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2250
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    if-eqz v0, :cond_0

    .line 2251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking proc ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] state changes: old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2251
    const-string v1, "OomAdjuster"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v0, :cond_1

    .line 2256
    return-void

    .line 2262
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-le v0, v1, :cond_7

    .line 2263
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 2266
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v0, v1, :cond_5

    .line 2267
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 2268
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    .line 2269
    const/4 v0, 0x0

    .local v0, "isInteraction":Z
    goto :goto_1

    .line 2271
    .end local v0    # "isInteraction":Z
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    add-long/2addr v0, v6

    cmp-long v0, p2, v0

    if-lez v0, :cond_4

    move v4, v5

    :cond_4
    move v0, v4

    .restart local v0    # "isInteraction":Z
    goto :goto_1

    .line 2275
    .end local v0    # "isInteraction":Z
    :cond_5
    nop

    .line 2276
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_6

    move v4, v5

    :cond_6
    move v0, v4

    .line 2277
    .restart local v0    # "isInteraction":Z
    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    goto :goto_1

    .line 2264
    .end local v0    # "isInteraction":Z
    :cond_7
    :goto_0
    const/4 v0, 0x1

    .line 2265
    .restart local v0    # "isInteraction":Z
    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    .line 2279
    :goto_1
    if-eqz v0, :cond_9

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v1, :cond_8

    .line 2280
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v4

    sub-long v4, p2, v4

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_9

    .line 2282
    :cond_8
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    .line 2283
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 2284
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 2285
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v5, v1

    if-ge v4, v5, :cond_9

    .line 2286
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v6, v1, v4

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const/4 v8, 0x6

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2285
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2291
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_9
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    .line 2292
    if-nez v0, :cond_a

    .line 2293
    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    .line 2295
    :cond_a
    return-void
.end method

.method private shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "procState"    # I
    .param p4, "adj"    # I
    .param p5, "cycleReEval"    # Z

    .line 1862
    iget-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v0, :cond_1

    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 1869
    iget v1, p2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v1, v2, :cond_1

    .line 1870
    if-eqz p5, :cond_0

    .line 1873
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    if-lt v1, p3, :cond_1

    .line 1874
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    if-lt v1, p4, :cond_1

    .line 1875
    return v0

    .line 1880
    :cond_0
    return v0

    .line 1884
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updataKernelTopUid(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOP_APP is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " uid is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Foreground_io"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Lcom/android/server/am/OomAdjuster$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/OomAdjuster$1;-><init>(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    .line 209
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$1;->start()V

    .line 210
    return-void
.end method

.method private final updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"    # I
    .param p3, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "doingAll"    # Z
    .param p5, "now"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 310
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    return v0

    .line 314
    :cond_0
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-wide v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method dumpAppCompactorSettings(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2406
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppCompactor;->dump(Ljava/io/PrintWriter;)V

    .line 2407
    return-void
.end method

.method dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2398
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2397
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2402
    return-void
.end method

.method dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2380
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v1, 0x10500000031L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2381
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v0, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2382
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const-wide v1, 0x10500000033L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2384
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const-wide v1, 0x10500000035L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2385
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v1, 0x10500000036L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2388
    return-void
.end method

.method dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v1, v1, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2393
    return-void
.end method

.method idleUidsLocked()V
    .locals 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2310
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 2311
    .local v0, "N":I
    if-gtz v0, :cond_0

    .line 2312
    return-void

    .line 2314
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2315
    .local v1, "nowElapsed":J
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v3, v1, v3

    .line 2316
    .local v3, "maxBgTime":J
    const-wide/16 v5, 0x0

    .line 2317
    .local v5, "nextTime":J
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_1

    .line 2318
    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 2320
    :cond_1
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    const-wide/16 v8, 0x0

    if-ltz v7, :cond_6

    .line 2321
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    .line 2322
    .local v10, "uidRec":Lcom/android/server/am/UidRecord;
    iget-wide v11, v10, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 2323
    .local v11, "bgTime":J
    cmp-long v13, v11, v8

    if-lez v13, :cond_5

    iget-boolean v13, v10, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v13, :cond_5

    .line 2324
    cmp-long v13, v11, v3

    if-gtz v13, :cond_3

    .line 2327
    iget-object v8, v10, Lcom/android/server/am/UidRecord;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->shoudSkipIdle(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2328
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "skip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/UidRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OomAdjuster"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    goto :goto_1

    .line 2332
    :cond_2
    iget v8, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v8}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 2333
    const/4 v8, 0x1

    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->idle:Z

    .line 2334
    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->setIdle:Z

    .line 2335
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_1

    .line 2337
    :cond_3
    cmp-long v8, v5, v8

    if-eqz v8, :cond_4

    cmp-long v8, v5, v11

    if-lez v8, :cond_5

    .line 2338
    :cond_4
    move-wide v5, v11

    .line 2320
    .end local v10    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v11    # "bgTime":J
    :cond_5
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 2343
    .end local v7    # "i":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_7

    .line 2344
    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 2346
    :cond_7
    cmp-long v7, v5, v8

    if-lez v7, :cond_8

    .line 2347
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2348
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v9, v5

    sub-long/2addr v9, v1

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2351
    :cond_8
    return-void
.end method

.method initSettings()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0}, Lcom/android/server/am/AppCompactor;->init()V

    .line 266
    return-void
.end method

.method maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2243
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2244
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 2245
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2246
    return-void

    .line 2245
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1890
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1894
    :cond_0
    return-void
.end method

.method final setAppIdTempWhitelistStateLocked(IZ)V
    .locals 4
    .param p1, "appId"    # I
    .param p2, "onWhitelist"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2355
    const/4 v0, 0x0

    .line 2356
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2357
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 2358
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    iget v3, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-boolean v3, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v3, p2, :cond_0

    .line 2359
    iput-boolean p2, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    .line 2360
    const/4 v0, 0x1

    .line 2356
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2363
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 2364
    const-string/jumbo v1, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2366
    :cond_2
    return-void
.end method

.method final setUidTempWhitelistStateLocked(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "onWhitelist"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2370
    const/4 v0, 0x0

    .line 2371
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 2372
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v2, p2, :cond_0

    .line 2373
    iput-boolean p2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    .line 2374
    const-string/jumbo v2, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2376
    :cond_0
    return-void
.end method

.method updateOomAdjLocked(Ljava/lang/String;)V
    .locals 62
    .param p1, "oomAdjReason"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 321
    move-object/from16 v8, p0

    const-wide/16 v9, 0x40

    move-object/from16 v11, p1

    invoke-static {v9, v10, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 322
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 323
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 324
    .local v12, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 325
    .local v13, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 326
    .local v5, "nowElapsed":J
    const-wide/32 v15, 0x1b7740

    sub-long v17, v13, v15

    .line 327
    .local v17, "oldTime":J
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSizeLocked()I

    move-result v7

    .line 330
    .local v7, "N":I
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 331
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 334
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->reset()V

    .line 330
    .end local v1    # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    :cond_0
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->rankTaskLayersIfNeeded()V

    .line 341
    :cond_1
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v0, v4

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 342
    const/4 v3, 0x0

    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 343
    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 347
    invoke-static {}, Lcom/android/server/am/OpBGFrozenInjector;->clearImportantUids()V

    .line 350
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 351
    .local v2, "emptyProcessLimit":I
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int v1, v0, v2

    .line 358
    .local v1, "cachedProcessLimit":I
    const/16 v19, 0xa

    .line 361
    .local v19, "numSlots":I
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v0, v7, v0

    iget v9, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v0, v9

    .line 362
    .local v0, "numEmptyProcs":I
    if-le v0, v1, :cond_2

    .line 369
    move v0, v1

    move v9, v0

    goto :goto_1

    .line 362
    :cond_2
    move v9, v0

    .line 371
    .end local v0    # "numEmptyProcs":I
    .local v9, "numEmptyProcs":I
    :goto_1
    add-int/lit8 v0, v9, 0xa

    sub-int/2addr v0, v4

    const/16 v10, 0xa

    div-int/2addr v0, v10

    .line 372
    .local v0, "emptyFactor":I
    if-ge v0, v4, :cond_3

    const/4 v0, 0x1

    .line 373
    :cond_3
    iget v15, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    if-lez v15, :cond_4

    add-int/2addr v15, v10

    sub-int/2addr v15, v4

    goto :goto_2

    :cond_4
    move v15, v4

    :goto_2
    div-int/2addr v15, v10

    .line 375
    .local v15, "cachedFactor":I
    if-ge v15, v4, :cond_5

    const/4 v15, 0x1

    .line 376
    :cond_5
    const/16 v16, -0x1

    .line 377
    .local v16, "stepCached":I
    const/16 v22, -0x1

    .line 378
    .local v22, "stepEmpty":I
    const/16 v23, 0x0

    .line 379
    .local v23, "numCached":I
    const/16 v24, 0x0

    .line 380
    .local v24, "numCachedExtraGroup":I
    const/16 v25, 0x0

    .line 381
    .local v25, "numEmpty":I
    const/16 v26, 0x0

    .line 382
    .local v26, "numTrimming":I
    const/16 v27, 0x0

    .line 383
    .local v27, "lastCachedGroup":I
    const/16 v28, 0x0

    .line 384
    .local v28, "lastCachedGroupImportance":I
    const/16 v29, 0x0

    .line 386
    .local v29, "lastCachedGroupUid":I
    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 387
    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 391
    const/16 v30, 0x384

    .line 392
    .local v30, "curCachedAdj":I
    add-int/lit8 v31, v30, 0xa

    .line 393
    .local v31, "nextCachedAdj":I
    const/16 v32, 0x0

    .line 394
    .local v32, "curCachedImpAdj":I
    const/16 v33, 0x389

    .line 395
    .local v33, "curEmptyAdj":I
    add-int/lit8 v34, v33, 0xa

    .line 396
    .local v34, "nextEmptyAdj":I
    const/16 v35, 0x0

    .line 397
    .local v35, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v36, 0x0

    .line 398
    .local v36, "serviceLastActivity":J
    const/16 v38, 0x0

    .line 400
    .local v38, "numBServices":I
    const/16 v39, 0x0

    .line 403
    .local v39, "retryCycles":Z
    add-int/lit8 v40, v7, -0x1

    move/from16 v10, v40

    .local v10, "i":I
    :goto_3
    move/from16 v40, v2

    .end local v2    # "emptyProcessLimit":I
    .local v40, "emptyProcessLimit":I
    const/16 v4, 0x14

    if-ltz v10, :cond_6

    .line 404
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 405
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 406
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 407
    const/16 v4, 0x3e9

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 403
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, v40

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/16 v2, 0x3e9

    .line 409
    .end local v10    # "i":I
    add-int/lit8 v10, v7, -0x1

    move/from16 v47, v27

    move/from16 v49, v28

    move/from16 v48, v29

    move/from16 v50, v30

    move/from16 v51, v31

    move/from16 v45, v33

    move/from16 v46, v34

    move-object/from16 v44, v35

    move/from16 v27, v16

    move/from16 v16, v7

    move/from16 v7, v38

    .end local v28    # "lastCachedGroupImportance":I
    .end local v29    # "lastCachedGroupUid":I
    .end local v30    # "curCachedAdj":I
    .end local v31    # "nextCachedAdj":I
    .end local v33    # "curEmptyAdj":I
    .end local v34    # "nextEmptyAdj":I
    .end local v35    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "numBServices":I
    .local v7, "numBServices":I
    .restart local v10    # "i":I
    .local v16, "N":I
    .local v27, "stepCached":I
    .local v44, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v45, "curEmptyAdj":I
    .local v46, "nextEmptyAdj":I
    .local v47, "lastCachedGroup":I
    .local v48, "lastCachedGroupUid":I
    .local v49, "lastCachedGroupImportance":I
    .local v50, "curCachedAdj":I
    .local v51, "nextCachedAdj":I
    :goto_4
    move-wide/from16 v28, v5

    .end local v5    # "nowElapsed":J
    .local v28, "nowElapsed":J
    const-string v3, "app.processName = "

    const-string v4, " app.pid = "

    move/from16 v31, v9

    .end local v9    # "numEmptyProcs":I
    .local v31, "numEmptyProcs":I
    const-string v9, "OomAdjuster"

    if-ltz v10, :cond_1d

    .line 410
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 411
    .restart local v2    # "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v5, v8, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    if-eqz v5, :cond_d

    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v5, :cond_d

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_d

    .line 413
    add-int/lit8 v7, v7, 0x1

    .line 414
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "s":I
    :goto_5
    if-ltz v5, :cond_c

    .line 415
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 416
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    sget-boolean v52, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v52, :cond_7

    move/from16 v52, v0

    .end local v0    # "emptyFactor":I
    .local v52, "emptyFactor":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v53, v1

    .end local v1    # "cachedProcessLimit":I
    .local v53, "cachedProcessLimit":I
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serviceb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sr.lastActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v54, v10

    .end local v10    # "i":I
    .local v54, "i":I
    iget-wide v10, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " processName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v52    # "emptyFactor":I
    .end local v53    # "cachedProcessLimit":I
    .end local v54    # "i":I
    .restart local v0    # "emptyFactor":I
    .restart local v1    # "cachedProcessLimit":I
    .restart local v10    # "i":I
    :cond_7
    move/from16 v52, v0

    move/from16 v53, v1

    move/from16 v54, v10

    .line 420
    .end local v0    # "emptyFactor":I
    .end local v1    # "cachedProcessLimit":I
    .end local v10    # "i":I
    .restart local v52    # "emptyFactor":I
    .restart local v53    # "cachedProcessLimit":I
    .restart local v54    # "i":I
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v10, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    sub-long/2addr v0, v10

    iget v10, v8, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    int-to-long v10, v10

    cmp-long v0, v0, v10

    if-gez v0, :cond_9

    .line 422
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_8

    .line 423
    const-string v0, "Not aged enough!!!"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    goto :goto_7

    .line 422
    :cond_8
    const-wide/16 v10, 0x0

    goto :goto_7

    .line 427
    :cond_9
    const-wide/16 v10, 0x0

    cmp-long v0, v36, v10

    if-nez v0, :cond_a

    .line 428
    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 429
    .end local v36    # "serviceLastActivity":J
    .local v0, "serviceLastActivity":J
    move-object/from16 v33, v2

    move-wide/from16 v36, v0

    move-object/from16 v44, v33

    .end local v44    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v33, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    goto :goto_7

    .line 430
    .end local v0    # "serviceLastActivity":J
    .end local v33    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v36    # "serviceLastActivity":J
    .restart local v44    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_a
    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    cmp-long v0, v0, v36

    if-gez v0, :cond_b

    .line 431
    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 432
    .end local v36    # "serviceLastActivity":J
    .restart local v0    # "serviceLastActivity":J
    move-object/from16 v33, v2

    move-wide/from16 v36, v0

    move-object/from16 v44, v33

    .line 414
    .end local v0    # "serviceLastActivity":J
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v36    # "serviceLastActivity":J
    :cond_b
    :goto_7
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v11, p1

    move/from16 v0, v52

    move/from16 v1, v53

    move/from16 v10, v54

    const/4 v6, 0x1

    goto/16 :goto_5

    .end local v52    # "emptyFactor":I
    .end local v53    # "cachedProcessLimit":I
    .end local v54    # "i":I
    .local v0, "emptyFactor":I
    .restart local v1    # "cachedProcessLimit":I
    .restart local v10    # "i":I
    :cond_c
    move/from16 v52, v0

    move/from16 v53, v1

    move/from16 v54, v10

    .end local v0    # "emptyFactor":I
    .end local v1    # "cachedProcessLimit":I
    .end local v10    # "i":I
    .restart local v52    # "emptyFactor":I
    .restart local v53    # "cachedProcessLimit":I
    .restart local v54    # "i":I
    move v11, v7

    move-object/from16 v10, v44

    goto :goto_8

    .line 411
    .end local v5    # "s":I
    .end local v52    # "emptyFactor":I
    .end local v53    # "cachedProcessLimit":I
    .end local v54    # "i":I
    .restart local v0    # "emptyFactor":I
    .restart local v1    # "cachedProcessLimit":I
    .restart local v10    # "i":I
    :cond_d
    move/from16 v52, v0

    move/from16 v53, v1

    move/from16 v54, v10

    .line 436
    .end local v0    # "emptyFactor":I
    .end local v1    # "cachedProcessLimit":I
    .end local v10    # "i":I
    .restart local v52    # "emptyFactor":I
    .restart local v53    # "cachedProcessLimit":I
    .restart local v54    # "i":I
    move v11, v7

    move-object/from16 v10, v44

    .end local v7    # "numBServices":I
    .end local v44    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v10, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v11, "numBServices":I
    :goto_8
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_e

    if-eqz v10, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Identified app.processName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_e
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_1c

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1c

    .line 441
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 442
    const/16 v4, 0x3e9

    const/4 v5, 0x1

    const/4 v7, 0x0

    move/from16 v9, v52

    .end local v52    # "emptyFactor":I
    .local v9, "emptyFactor":I
    move-object/from16 v0, p0

    move/from16 v6, v53

    .end local v53    # "cachedProcessLimit":I
    .local v6, "cachedProcessLimit":I
    move-object v1, v2

    move-object/from16 v56, v2

    move/from16 v55, v40

    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "emptyProcessLimit":I
    .local v55, "emptyProcessLimit":I
    .local v56, "app":Lcom/android/server/am/ProcessRecord;
    move v2, v4

    move v4, v3

    move-object v3, v12

    move/from16 v30, v4

    move v4, v5

    move/from16 v57, v6

    move-wide/from16 v33, v28

    .end local v6    # "cachedProcessLimit":I
    .end local v28    # "nowElapsed":J
    .local v33, "nowElapsed":J
    .local v57, "cachedProcessLimit":I
    move-wide v5, v13

    move-object/from16 v28, v10

    move/from16 v10, v16

    .end local v16    # "N":I
    .local v10, "N":I
    .local v28, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    .line 445
    move-object/from16 v0, v56

    .end local v56    # "app":Lcom/android/server/am/ProcessRecord;
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    or-int v1, v39, v1

    .line 449
    .end local v39    # "retryCycles":Z
    .local v1, "retryCycles":Z
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x3e9

    if-lt v2, v5, :cond_1b

    .line 450
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 498
    move/from16 v29, v11

    move/from16 v16, v47

    move/from16 v6, v48

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    const/16 v11, 0x3e7

    .end local v11    # "numBServices":I
    .end local v47    # "lastCachedGroup":I
    .end local v48    # "lastCachedGroupUid":I
    .end local v49    # "lastCachedGroupImportance":I
    .end local v50    # "curCachedAdj":I
    .end local v51    # "nextCachedAdj":I
    .local v3, "curCachedAdj":I
    .local v4, "nextCachedAdj":I
    .local v6, "lastCachedGroupUid":I
    .local v7, "lastCachedGroupImportance":I
    .local v16, "lastCachedGroup":I
    .local v29, "numBServices":I
    move/from16 v5, v45

    move/from16 v2, v46

    .end local v45    # "curEmptyAdj":I
    .end local v46    # "nextEmptyAdj":I
    .local v2, "nextEmptyAdj":I
    .local v5, "curEmptyAdj":I
    if-eq v5, v2, :cond_1a

    .line 499
    add-int/lit8 v11, v22, 0x1

    .line 500
    .end local v22    # "stepEmpty":I
    .local v11, "stepEmpty":I
    if-lt v11, v9, :cond_19

    .line 501
    const/16 v22, 0x0

    .line 502
    .end local v11    # "stepEmpty":I
    .restart local v22    # "stepEmpty":I
    move/from16 v45, v2

    .line 503
    .end local v5    # "curEmptyAdj":I
    .restart local v45    # "curEmptyAdj":I
    add-int/lit8 v2, v2, 0xa

    .line 504
    const/16 v5, 0x3e7

    if-le v2, v5, :cond_18

    .line 505
    const/16 v46, 0x3e7

    move/from16 v5, v45

    move/from16 v2, v46

    .end local v2    # "nextEmptyAdj":I
    .restart local v46    # "nextEmptyAdj":I
    goto/16 :goto_d

    .line 455
    .end local v3    # "curCachedAdj":I
    .end local v4    # "nextCachedAdj":I
    .end local v6    # "lastCachedGroupUid":I
    .end local v7    # "lastCachedGroupImportance":I
    .end local v16    # "lastCachedGroup":I
    .end local v29    # "numBServices":I
    .local v11, "numBServices":I
    .restart local v47    # "lastCachedGroup":I
    .restart local v48    # "lastCachedGroupUid":I
    .restart local v49    # "lastCachedGroupImportance":I
    .restart local v50    # "curCachedAdj":I
    .restart local v51    # "nextCachedAdj":I
    :pswitch_0
    const/4 v2, 0x0

    .line 456
    .local v2, "inGroup":Z
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v3, :cond_14

    .line 457
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v6, v48

    .end local v48    # "lastCachedGroupUid":I
    .restart local v6    # "lastCachedGroupUid":I
    if-ne v6, v3, :cond_13

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move/from16 v4, v47

    .end local v47    # "lastCachedGroup":I
    .local v4, "lastCachedGroup":I
    if-ne v4, v3, :cond_12

    .line 461
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 v7, v49

    .end local v49    # "lastCachedGroupImportance":I
    .restart local v7    # "lastCachedGroupImportance":I
    if-le v3, v7, :cond_11

    .line 462
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 463
    .end local v7    # "lastCachedGroupImportance":I
    .local v3, "lastCachedGroupImportance":I
    move/from16 v16, v4

    move/from16 v7, v50

    move/from16 v4, v51

    .end local v50    # "curCachedAdj":I
    .end local v51    # "nextCachedAdj":I
    .local v4, "nextCachedAdj":I
    .local v7, "curCachedAdj":I
    .restart local v16    # "lastCachedGroup":I
    if-ge v7, v4, :cond_f

    move/from16 v29, v11

    const/16 v11, 0x3e7

    .end local v11    # "numBServices":I
    .restart local v29    # "numBServices":I
    if-ge v7, v11, :cond_10

    .line 465
    add-int/lit8 v32, v32, 0x1

    move/from16 v49, v3

    move v3, v7

    goto :goto_9

    .line 463
    .end local v29    # "numBServices":I
    .restart local v11    # "numBServices":I
    :cond_f
    move/from16 v29, v11

    const/16 v11, 0x3e7

    .line 468
    .end local v11    # "numBServices":I
    .restart local v29    # "numBServices":I
    :cond_10
    move/from16 v49, v3

    move v3, v7

    goto :goto_9

    .line 461
    .end local v3    # "lastCachedGroupImportance":I
    .end local v16    # "lastCachedGroup":I
    .end local v29    # "numBServices":I
    .local v4, "lastCachedGroup":I
    .local v7, "lastCachedGroupImportance":I
    .restart local v11    # "numBServices":I
    .restart local v50    # "curCachedAdj":I
    .restart local v51    # "nextCachedAdj":I
    :cond_11
    move/from16 v16, v4

    move/from16 v29, v11

    move/from16 v3, v50

    move/from16 v4, v51

    const/16 v11, 0x3e7

    .end local v11    # "numBServices":I
    .end local v50    # "curCachedAdj":I
    .end local v51    # "nextCachedAdj":I
    .local v3, "curCachedAdj":I
    .local v4, "nextCachedAdj":I
    .restart local v16    # "lastCachedGroup":I
    .restart local v29    # "numBServices":I
    move/from16 v49, v7

    .line 468
    .end local v7    # "lastCachedGroupImportance":I
    .restart local v49    # "lastCachedGroupImportance":I
    :goto_9
    const/4 v2, 0x1

    move/from16 v7, v49

    goto :goto_b

    .line 457
    .end local v3    # "curCachedAdj":I
    .end local v16    # "lastCachedGroup":I
    .end local v29    # "numBServices":I
    .local v4, "lastCachedGroup":I
    .restart local v11    # "numBServices":I
    .restart local v50    # "curCachedAdj":I
    .restart local v51    # "nextCachedAdj":I
    :cond_12
    move/from16 v16, v4

    move/from16 v29, v11

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    const/16 v11, 0x3e7

    .end local v11    # "numBServices":I
    .end local v49    # "lastCachedGroupImportance":I
    .end local v50    # "curCachedAdj":I
    .end local v51    # "nextCachedAdj":I
    .restart local v3    # "curCachedAdj":I
    .local v4, "nextCachedAdj":I
    .restart local v7    # "lastCachedGroupImportance":I
    .restart local v16    # "lastCachedGroup":I
    .restart local v29    # "numBServices":I
    goto :goto_a

    .end local v3    # "curCachedAdj":I
    .end local v4    # "nextCachedAdj":I
    .end local v7    # "lastCachedGroupImportance":I
    .end local v16    # "lastCachedGroup":I
    .end local v29    # "numBServices":I
    .restart local v11    # "numBServices":I
    .restart local v47    # "lastCachedGroup":I
    .restart local v49    # "lastCachedGroupImportance":I
    .restart local v50    # "curCachedAdj":I
    .restart local v51    # "nextCachedAdj":I
    :cond_13
    move/from16 v29, v11

    move/from16 v16, v47

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    const/16 v11, 0x3e7

    .line 470
    .end local v11    # "numBServices":I
    .end local v47    # "lastCachedGroup":I
    .end local v49    # "lastCachedGroupImportance":I
    .end local v50    # "curCachedAdj":I
    .end local v51    # "nextCachedAdj":I
    .restart local v3    # "curCachedAdj":I
    .restart local v4    # "nextCachedAdj":I
    .restart local v7    # "lastCachedGroupImportance":I
    .restart local v16    # "lastCachedGroup":I
    .restart local v29    # "numBServices":I
    :goto_a
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 471
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 472
    .end local v16    # "lastCachedGroup":I
    .local v5, "lastCachedGroup":I
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 v16, v5

    goto :goto_b

    .line 456
    .end local v3    # "curCachedAdj":I
    .end local v4    # "nextCachedAdj":I
    .end local v5    # "lastCachedGroup":I
    .end local v6    # "lastCachedGroupUid":I
    .end local v7    # "lastCachedGroupImportance":I
    .end local v29    # "numBServices":I
    .restart local v11    # "numBServices":I
    .restart local v47    # "lastCachedGroup":I
    .restart local v48    # "lastCachedGroupUid":I
    .restart local v49    # "lastCachedGroupImportance":I
    .restart local v50    # "curCachedAdj":I
    .restart local v51    # "nextCachedAdj":I
    :cond_14
    move/from16 v29, v11

    move/from16 v16, v47

    move/from16 v6, v48

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    const/16 v11, 0x3e7

    .line 475
    .end local v11    # "numBServices":I
    .end local v47    # "lastCachedGroup":I
    .end local v48    # "lastCachedGroupUid":I
    .end local v49    # "lastCachedGroupImportance":I
    .end local v50    # "curCachedAdj":I
    .end local v51    # "nextCachedAdj":I
    .restart local v3    # "curCachedAdj":I
    .restart local v4    # "nextCachedAdj":I
    .restart local v6    # "lastCachedGroupUid":I
    .restart local v7    # "lastCachedGroupImportance":I
    .restart local v16    # "lastCachedGroup":I
    .restart local v29    # "numBServices":I
    :goto_b
    if-nez v2, :cond_17

    if-eq v3, v4, :cond_17

    .line 476
    add-int/lit8 v5, v27, 0x1

    .line 477
    .end local v27    # "stepCached":I
    .local v5, "stepCached":I
    const/16 v32, 0x0

    .line 478
    if-lt v5, v15, :cond_16

    .line 479
    const/16 v27, 0x0

    .line 480
    .end local v5    # "stepCached":I
    .restart local v27    # "stepCached":I
    move/from16 v50, v4

    .line 481
    .end local v3    # "curCachedAdj":I
    .restart local v50    # "curCachedAdj":I
    add-int/lit8 v3, v4, 0xa

    .line 482
    .end local v4    # "nextCachedAdj":I
    .local v3, "nextCachedAdj":I
    if-le v3, v11, :cond_15

    .line 483
    const/16 v51, 0x3e7

    move/from16 v3, v50

    move/from16 v4, v51

    .end local v3    # "nextCachedAdj":I
    .restart local v51    # "nextCachedAdj":I
    goto :goto_c

    .line 482
    .end local v51    # "nextCachedAdj":I
    .restart local v3    # "nextCachedAdj":I
    :cond_15
    move v4, v3

    move/from16 v3, v50

    goto :goto_c

    .line 478
    .end local v27    # "stepCached":I
    .end local v50    # "curCachedAdj":I
    .local v3, "curCachedAdj":I
    .restart local v4    # "nextCachedAdj":I
    .restart local v5    # "stepCached":I
    :cond_16
    move/from16 v27, v5

    .line 490
    .end local v5    # "stepCached":I
    .restart local v27    # "stepCached":I
    :cond_17
    :goto_c
    add-int v5, v3, v32

    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 491
    add-int v5, v3, v32

    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v5

    iput v5, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 492
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 409
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "inGroup":Z
    move/from16 v39, v1

    move/from16 v50, v3

    move/from16 v51, v4

    move/from16 v48, v6

    move/from16 v49, v7

    move/from16 v47, v16

    goto/16 :goto_e

    .line 504
    .end local v46    # "nextEmptyAdj":I
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .local v2, "nextEmptyAdj":I
    :cond_18
    move/from16 v5, v45

    goto :goto_d

    .line 500
    .end local v22    # "stepEmpty":I
    .end local v45    # "curEmptyAdj":I
    .local v5, "curEmptyAdj":I
    .local v11, "stepEmpty":I
    :cond_19
    move/from16 v22, v11

    .line 514
    .end local v11    # "stepEmpty":I
    .restart local v22    # "stepEmpty":I
    :cond_1a
    :goto_d
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 515
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v11

    iput v11, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 516
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    move/from16 v39, v1

    move/from16 v46, v2

    move/from16 v50, v3

    move/from16 v51, v4

    move/from16 v45, v5

    move/from16 v48, v6

    move/from16 v49, v7

    move/from16 v47, v16

    goto :goto_e

    .line 449
    .end local v2    # "nextEmptyAdj":I
    .end local v3    # "curCachedAdj":I
    .end local v4    # "nextCachedAdj":I
    .end local v5    # "curEmptyAdj":I
    .end local v6    # "lastCachedGroupUid":I
    .end local v7    # "lastCachedGroupImportance":I
    .end local v16    # "lastCachedGroup":I
    .end local v29    # "numBServices":I
    .local v11, "numBServices":I
    .restart local v45    # "curEmptyAdj":I
    .restart local v46    # "nextEmptyAdj":I
    .restart local v47    # "lastCachedGroup":I
    .restart local v48    # "lastCachedGroupUid":I
    .restart local v49    # "lastCachedGroupImportance":I
    .restart local v50    # "curCachedAdj":I
    .restart local v51    # "nextCachedAdj":I
    :cond_1b
    move/from16 v29, v11

    move/from16 v5, v45

    move/from16 v2, v46

    move/from16 v16, v47

    move/from16 v6, v48

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    .end local v11    # "numBServices":I
    .end local v45    # "curEmptyAdj":I
    .end local v46    # "nextEmptyAdj":I
    .end local v47    # "lastCachedGroup":I
    .end local v48    # "lastCachedGroupUid":I
    .end local v49    # "lastCachedGroupImportance":I
    .end local v50    # "curCachedAdj":I
    .end local v51    # "nextCachedAdj":I
    .restart local v2    # "nextEmptyAdj":I
    .restart local v3    # "curCachedAdj":I
    .restart local v4    # "nextCachedAdj":I
    .restart local v5    # "curEmptyAdj":I
    .restart local v6    # "lastCachedGroupUid":I
    .restart local v7    # "lastCachedGroupImportance":I
    .restart local v16    # "lastCachedGroup":I
    .restart local v29    # "numBServices":I
    move/from16 v39, v1

    goto :goto_e

    .line 440
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "retryCycles":Z
    .end local v3    # "curCachedAdj":I
    .end local v4    # "nextCachedAdj":I
    .end local v5    # "curEmptyAdj":I
    .end local v6    # "lastCachedGroupUid":I
    .end local v7    # "lastCachedGroupImportance":I
    .end local v9    # "emptyFactor":I
    .end local v29    # "numBServices":I
    .end local v33    # "nowElapsed":J
    .end local v55    # "emptyProcessLimit":I
    .end local v57    # "cachedProcessLimit":I
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    .local v10, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "numBServices":I
    .local v16, "N":I
    .local v28, "nowElapsed":J
    .restart local v39    # "retryCycles":Z
    .restart local v40    # "emptyProcessLimit":I
    .restart local v45    # "curEmptyAdj":I
    .restart local v46    # "nextEmptyAdj":I
    .restart local v47    # "lastCachedGroup":I
    .restart local v48    # "lastCachedGroupUid":I
    .restart local v49    # "lastCachedGroupImportance":I
    .restart local v50    # "curCachedAdj":I
    .restart local v51    # "nextCachedAdj":I
    .restart local v52    # "emptyFactor":I
    .restart local v53    # "cachedProcessLimit":I
    :cond_1c
    move-object v0, v2

    move-wide/from16 v33, v28

    move/from16 v55, v40

    move/from16 v5, v45

    move/from16 v2, v46

    move/from16 v6, v48

    move/from16 v7, v49

    move/from16 v3, v50

    move/from16 v4, v51

    move/from16 v9, v52

    move/from16 v57, v53

    const/16 v30, 0x0

    move-object/from16 v28, v10

    move/from16 v29, v11

    move/from16 v10, v16

    move/from16 v16, v47

    .line 409
    .end local v11    # "numBServices":I
    .end local v40    # "emptyProcessLimit":I
    .end local v45    # "curEmptyAdj":I
    .end local v46    # "nextEmptyAdj":I
    .end local v47    # "lastCachedGroup":I
    .end local v48    # "lastCachedGroupUid":I
    .end local v49    # "lastCachedGroupImportance":I
    .end local v50    # "curCachedAdj":I
    .end local v51    # "nextCachedAdj":I
    .end local v52    # "emptyFactor":I
    .end local v53    # "cachedProcessLimit":I
    .local v2, "nextEmptyAdj":I
    .restart local v3    # "curCachedAdj":I
    .restart local v4    # "nextCachedAdj":I
    .restart local v5    # "curEmptyAdj":I
    .restart local v6    # "lastCachedGroupUid":I
    .restart local v7    # "lastCachedGroupImportance":I
    .restart local v9    # "emptyFactor":I
    .local v10, "N":I
    .local v16, "lastCachedGroup":I
    .local v28, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "numBServices":I
    .restart local v33    # "nowElapsed":J
    .restart local v55    # "emptyProcessLimit":I
    .restart local v57    # "cachedProcessLimit":I
    move/from16 v46, v2

    move/from16 v50, v3

    move/from16 v51, v4

    move/from16 v45, v5

    move/from16 v48, v6

    move/from16 v49, v7

    move/from16 v47, v16

    .end local v2    # "nextEmptyAdj":I
    .end local v3    # "curCachedAdj":I
    .end local v4    # "nextCachedAdj":I
    .end local v5    # "curEmptyAdj":I
    .end local v6    # "lastCachedGroupUid":I
    .end local v7    # "lastCachedGroupImportance":I
    .end local v16    # "lastCachedGroup":I
    .restart local v45    # "curEmptyAdj":I
    .restart local v46    # "nextEmptyAdj":I
    .restart local v47    # "lastCachedGroup":I
    .restart local v48    # "lastCachedGroupUid":I
    .restart local v49    # "lastCachedGroupImportance":I
    .restart local v50    # "curCachedAdj":I
    .restart local v51    # "nextCachedAdj":I
    :goto_e
    add-int/lit8 v0, v54, -0x1

    move-object/from16 v11, p1

    move/from16 v16, v10

    move-object/from16 v44, v28

    move/from16 v7, v29

    move/from16 v3, v30

    move-wide/from16 v5, v33

    move/from16 v40, v55

    move/from16 v1, v57

    const/16 v2, 0x3e9

    const/16 v4, 0x14

    move v10, v0

    move v0, v9

    move/from16 v9, v31

    .end local v54    # "i":I
    .local v0, "i":I
    goto/16 :goto_4

    .end local v9    # "emptyFactor":I
    .end local v29    # "numBServices":I
    .end local v33    # "nowElapsed":J
    .end local v55    # "emptyProcessLimit":I
    .end local v57    # "cachedProcessLimit":I
    .local v0, "emptyFactor":I
    .local v1, "cachedProcessLimit":I
    .local v7, "numBServices":I
    .local v10, "i":I
    .local v16, "N":I
    .local v28, "nowElapsed":J
    .restart local v40    # "emptyProcessLimit":I
    .restart local v44    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_1d
    move v11, v0

    move/from16 v57, v1

    move/from16 v54, v10

    move/from16 v10, v16

    move-wide/from16 v33, v28

    move/from16 v55, v40

    move/from16 v5, v45

    move/from16 v2, v46

    move/from16 v6, v48

    move/from16 v28, v49

    const/16 v30, 0x0

    const-wide/16 v42, 0x0

    move-object/from16 v16, v4

    move/from16 v4, v51

    .line 529
    .end local v0    # "emptyFactor":I
    .end local v1    # "cachedProcessLimit":I
    .end local v16    # "N":I
    .end local v40    # "emptyProcessLimit":I
    .end local v45    # "curEmptyAdj":I
    .end local v46    # "nextEmptyAdj":I
    .end local v48    # "lastCachedGroupUid":I
    .end local v49    # "lastCachedGroupImportance":I
    .end local v51    # "nextCachedAdj":I
    .restart local v2    # "nextEmptyAdj":I
    .restart local v4    # "nextCachedAdj":I
    .restart local v5    # "curEmptyAdj":I
    .restart local v6    # "lastCachedGroupUid":I
    .local v10, "N":I
    .local v11, "emptyFactor":I
    .local v28, "lastCachedGroupImportance":I
    .restart local v33    # "nowElapsed":J
    .restart local v55    # "emptyProcessLimit":I
    .restart local v57    # "cachedProcessLimit":I
    const/4 v0, 0x0

    move v1, v0

    .line 530
    .local v1, "cycleCount":I
    :goto_f
    if-eqz v39, :cond_24

    const/16 v0, 0xa

    if-ge v1, v0, :cond_24

    .line 531
    add-int/lit8 v29, v1, 0x1

    .line 532
    .end local v1    # "cycleCount":I
    .local v29, "cycleCount":I
    const/4 v1, 0x0

    .line 534
    .end local v39    # "retryCycles":Z
    .local v1, "retryCycles":Z
    const/16 v35, 0x0

    move/from16 v0, v35

    .local v0, "i":I
    :goto_10
    if-ge v0, v10, :cond_20

    .line 535
    move/from16 v35, v1

    .end local v1    # "retryCycles":Z
    .local v35, "retryCycles":Z
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 536
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v38, v2

    .end local v2    # "nextEmptyAdj":I
    .local v38, "nextEmptyAdj":I
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v2, :cond_1e

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1e

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    move/from16 v40, v7

    const/4 v7, 0x1

    .end local v7    # "numBServices":I
    .local v40, "numBServices":I
    if-ne v2, v7, :cond_1f

    .line 537
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 538
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    goto :goto_11

    .line 536
    .end local v40    # "numBServices":I
    .restart local v7    # "numBServices":I
    :cond_1e
    move/from16 v40, v7

    const/4 v7, 0x1

    .line 534
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "numBServices":I
    .restart local v40    # "numBServices":I
    :cond_1f
    :goto_11
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v35

    move/from16 v2, v38

    move/from16 v7, v40

    goto :goto_10

    .end local v35    # "retryCycles":Z
    .end local v38    # "nextEmptyAdj":I
    .end local v40    # "numBServices":I
    .local v1, "retryCycles":Z
    .restart local v2    # "nextEmptyAdj":I
    .restart local v7    # "numBServices":I
    :cond_20
    move/from16 v35, v1

    move/from16 v38, v2

    move/from16 v40, v7

    const/4 v7, 0x1

    .line 542
    .end local v0    # "i":I
    .end local v1    # "retryCycles":Z
    .end local v2    # "nextEmptyAdj":I
    .end local v7    # "numBServices":I
    .restart local v35    # "retryCycles":Z
    .restart local v38    # "nextEmptyAdj":I
    .restart local v40    # "numBServices":I
    const/4 v0, 0x0

    move v2, v0

    move/from16 v39, v35

    .end local v35    # "retryCycles":Z
    .local v2, "i":I
    .restart local v39    # "retryCycles":Z
    :goto_12
    if-ge v2, v10, :cond_23

    .line 543
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 544
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_21

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_21

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-ne v0, v7, :cond_21

    .line 545
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v35

    const/16 v45, 0x1

    const/16 v46, 0x1

    const/16 v41, 0xa

    move-object/from16 v0, p0

    move-object/from16 v48, v1

    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .local v48, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v49, v38

    move/from16 v38, v2

    .end local v2    # "i":I
    .local v38, "i":I
    .local v49, "nextEmptyAdj":I
    move/from16 v2, v35

    move-object/from16 v58, v3

    move-object v3, v12

    move/from16 v51, v4

    move-object/from16 v59, v16

    .end local v4    # "nextCachedAdj":I
    .restart local v51    # "nextCachedAdj":I
    move/from16 v4, v45

    move/from16 v45, v5

    move/from16 v16, v6

    .end local v5    # "curEmptyAdj":I
    .end local v6    # "lastCachedGroupUid":I
    .local v16, "lastCachedGroupUid":I
    .restart local v45    # "curEmptyAdj":I
    move-wide v5, v13

    move/from16 v52, v11

    move-object/from16 v35, v12

    move/from16 v11, v40

    move v12, v7

    .end local v12    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "numBServices":I
    .local v11, "numBServices":I
    .local v35, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .restart local v52    # "emptyFactor":I
    move/from16 v7, v46

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 547
    const/16 v39, 0x1

    goto :goto_13

    .line 544
    .end local v16    # "lastCachedGroupUid":I
    .end local v35    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v45    # "curEmptyAdj":I
    .end local v48    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v49    # "nextEmptyAdj":I
    .end local v51    # "nextCachedAdj":I
    .end local v52    # "emptyFactor":I
    .restart local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "i":I
    .restart local v4    # "nextCachedAdj":I
    .restart local v5    # "curEmptyAdj":I
    .restart local v6    # "lastCachedGroupUid":I
    .local v11, "emptyFactor":I
    .restart local v12    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .local v38, "nextEmptyAdj":I
    .restart local v40    # "numBServices":I
    :cond_21
    move-object/from16 v48, v1

    move-object/from16 v58, v3

    move/from16 v51, v4

    move/from16 v45, v5

    move/from16 v52, v11

    move-object/from16 v35, v12

    move-object/from16 v59, v16

    move/from16 v49, v38

    move/from16 v11, v40

    const/16 v41, 0xa

    move/from16 v38, v2

    move/from16 v16, v6

    move v12, v7

    .line 542
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "i":I
    .end local v4    # "nextCachedAdj":I
    .end local v5    # "curEmptyAdj":I
    .end local v6    # "lastCachedGroupUid":I
    .end local v12    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "numBServices":I
    .local v11, "numBServices":I
    .restart local v16    # "lastCachedGroupUid":I
    .restart local v35    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .local v38, "i":I
    .restart local v45    # "curEmptyAdj":I
    .restart local v49    # "nextEmptyAdj":I
    .restart local v51    # "nextCachedAdj":I
    .restart local v52    # "emptyFactor":I
    :cond_22
    :goto_13
    add-int/lit8 v2, v38, 0x1

    move/from16 v40, v11

    move v7, v12

    move/from16 v6, v16

    move-object/from16 v12, v35

    move/from16 v5, v45

    move/from16 v38, v49

    move/from16 v4, v51

    move/from16 v11, v52

    move-object/from16 v3, v58

    move-object/from16 v16, v59

    const-wide/16 v42, 0x0

    .end local v38    # "i":I
    .restart local v2    # "i":I
    goto :goto_12

    .end local v16    # "lastCachedGroupUid":I
    .end local v35    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v45    # "curEmptyAdj":I
    .end local v49    # "nextEmptyAdj":I
    .end local v51    # "nextCachedAdj":I
    .end local v52    # "emptyFactor":I
    .restart local v4    # "nextCachedAdj":I
    .restart local v5    # "curEmptyAdj":I
    .restart local v6    # "lastCachedGroupUid":I
    .local v11, "emptyFactor":I
    .restart local v12    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .local v38, "nextEmptyAdj":I
    .restart local v40    # "numBServices":I
    :cond_23
    move-object/from16 v58, v3

    move/from16 v51, v4

    move/from16 v45, v5

    move/from16 v52, v11

    move-object/from16 v35, v12

    move-object/from16 v59, v16

    move/from16 v49, v38

    move/from16 v11, v40

    const/16 v41, 0xa

    move/from16 v38, v2

    move/from16 v16, v6

    move v12, v7

    .end local v2    # "i":I
    .end local v4    # "nextCachedAdj":I
    .end local v5    # "curEmptyAdj":I
    .end local v6    # "lastCachedGroupUid":I
    .end local v12    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "numBServices":I
    .local v11, "numBServices":I
    .restart local v16    # "lastCachedGroupUid":I
    .restart local v35    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .local v38, "i":I
    .restart local v45    # "curEmptyAdj":I
    .restart local v49    # "nextEmptyAdj":I
    .restart local v51    # "nextCachedAdj":I
    .restart local v52    # "emptyFactor":I
    move v7, v11

    move/from16 v1, v29

    move-object/from16 v12, v35

    move/from16 v2, v49

    move/from16 v11, v52

    move-object/from16 v16, v59

    const-wide/16 v42, 0x0

    .end local v38    # "i":I
    goto/16 :goto_f

    .line 530
    .end local v16    # "lastCachedGroupUid":I
    .end local v29    # "cycleCount":I
    .end local v35    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .end local v45    # "curEmptyAdj":I
    .end local v49    # "nextEmptyAdj":I
    .end local v51    # "nextCachedAdj":I
    .end local v52    # "emptyFactor":I
    .local v1, "cycleCount":I
    .local v2, "nextEmptyAdj":I
    .restart local v4    # "nextCachedAdj":I
    .restart local v5    # "curEmptyAdj":I
    .restart local v6    # "lastCachedGroupUid":I
    .restart local v7    # "numBServices":I
    .local v11, "emptyFactor":I
    .restart local v12    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :cond_24
    move/from16 v49, v2

    move-object/from16 v58, v3

    move/from16 v51, v4

    move/from16 v45, v5

    move/from16 v52, v11

    move-object/from16 v35, v12

    move-object/from16 v59, v16

    const/4 v12, 0x1

    move/from16 v16, v6

    move v11, v7

    .line 553
    .end local v2    # "nextEmptyAdj":I
    .end local v4    # "nextCachedAdj":I
    .end local v5    # "curEmptyAdj":I
    .end local v6    # "lastCachedGroupUid":I
    .end local v7    # "numBServices":I
    .end local v12    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .local v11, "numBServices":I
    .restart local v16    # "lastCachedGroupUid":I
    .restart local v35    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    .restart local v45    # "curEmptyAdj":I
    .restart local v49    # "nextEmptyAdj":I
    .restart local v51    # "nextCachedAdj":I
    .restart local v52    # "emptyFactor":I
    move/from16 v0, v30

    .end local v16    # "lastCachedGroupUid":I
    .local v0, "lastCachedGroupUid":I
    move/from16 v2, v30

    .line 555
    .end local v47    # "lastCachedGroup":I
    .local v2, "lastCachedGroup":I
    add-int/lit8 v7, v10, -0x1

    move v4, v0

    move v3, v2

    move/from16 v5, v23

    move/from16 v6, v25

    move/from16 v2, v26

    .end local v0    # "lastCachedGroupUid":I
    .end local v23    # "numCached":I
    .end local v25    # "numEmpty":I
    .end local v26    # "numTrimming":I
    .local v2, "numTrimming":I
    .local v3, "lastCachedGroup":I
    .local v4, "lastCachedGroupUid":I
    .local v5, "numCached":I
    .local v6, "numEmpty":I
    .local v7, "i":I
    :goto_14
    if-ltz v7, :cond_3a

    .line 556
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 557
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v12, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v12, :cond_39

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v12, :cond_39

    .line 558
    const/4 v12, 0x1

    move-object/from16 v23, v0

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .local v23, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    move/from16 v29, v1

    .end local v1    # "cycleCount":I
    .restart local v29    # "cycleCount":I
    move-object/from16 v1, v23

    move/from16 v16, v15

    move v15, v2

    .end local v2    # "numTrimming":I
    .local v15, "numTrimming":I
    .local v16, "cachedFactor":I
    move v2, v12

    move v12, v3

    move/from16 v60, v4

    .end local v3    # "lastCachedGroup":I
    .end local v4    # "lastCachedGroupUid":I
    .local v12, "lastCachedGroup":I
    .local v60, "lastCachedGroupUid":I
    move-wide v3, v13

    move-wide/from16 v25, v13

    move v13, v5

    move v14, v6

    .end local v5    # "numCached":I
    .end local v6    # "numEmpty":I
    .local v13, "numCached":I
    .local v14, "numEmpty":I
    .local v25, "now":J
    move-wide/from16 v5, v33

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    .line 560
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_29

    const/16 v2, 0x12

    if-eq v0, v2, :cond_29

    const/16 v2, 0x14

    if-eq v0, v2, :cond_25

    .line 647
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    move-object/from16 v0, v23

    goto :goto_15

    .line 626
    :cond_25
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v14, v0, :cond_26

    move-object/from16 v0, v23

    .end local v23    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    iget-wide v3, v0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v1, v3, v17

    if-gez v1, :cond_27

    .line 630
    const/4 v1, 0x6

    iput v1, v0, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v3, 0x1b7740

    add-long v5, v17, v3

    iget-wide v2, v0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long/2addr v5, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 651
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_15
    move/from16 v47, v10

    move/from16 v38, v12

    move/from16 v12, v57

    .end local v23    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_1f

    .line 626
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_26
    move-object/from16 v0, v23

    .line 636
    .end local v23    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_27
    add-int/lit8 v6, v14, 0x1

    .line 637
    .end local v14    # "numEmpty":I
    .restart local v6    # "numEmpty":I
    move/from16 v2, v55

    .end local v55    # "emptyProcessLimit":I
    .local v2, "emptyProcessLimit":I
    if-le v6, v2, :cond_28

    .line 640
    const/4 v1, 0x6

    iput v1, v0, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_16

    .line 637
    :cond_28
    const/4 v3, 0x1

    .line 651
    :goto_16
    move/from16 v55, v2

    move v14, v6

    move/from16 v47, v10

    move/from16 v38, v12

    move/from16 v12, v57

    goto/16 :goto_1f

    .line 560
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "emptyProcessLimit":I
    .end local v6    # "numEmpty":I
    .restart local v14    # "numEmpty":I
    .restart local v23    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v55    # "emptyProcessLimit":I
    :cond_29
    move-object/from16 v0, v23

    move/from16 v2, v55

    const/4 v3, 0x1

    .line 563
    .end local v23    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v55    # "emptyProcessLimit":I
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "emptyProcessLimit":I
    iget v4, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v4, v3

    iput v4, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 564
    add-int/lit8 v5, v13, 0x1

    .line 565
    .end local v13    # "numCached":I
    .restart local v5    # "numCached":I
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v3, :cond_2b

    .line 566
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v4, v60

    .end local v60    # "lastCachedGroupUid":I
    .restart local v4    # "lastCachedGroupUid":I
    if-ne v4, v3, :cond_2a

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v12, v3, :cond_2a

    .line 571
    add-int/lit8 v24, v24, 0x1

    move v3, v12

    goto :goto_17

    .line 573
    :cond_2a
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 574
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .end local v12    # "lastCachedGroup":I
    .restart local v3    # "lastCachedGroup":I
    goto :goto_17

    .line 577
    .end local v3    # "lastCachedGroup":I
    .end local v4    # "lastCachedGroupUid":I
    .restart local v12    # "lastCachedGroup":I
    .restart local v60    # "lastCachedGroupUid":I
    :cond_2b
    move/from16 v4, v60

    .end local v60    # "lastCachedGroupUid":I
    .restart local v4    # "lastCachedGroupUid":I
    move/from16 v3, v30

    .end local v12    # "lastCachedGroup":I
    .restart local v3    # "lastCachedGroup":I
    move/from16 v4, v30

    .line 580
    :goto_17
    sub-int v6, v5, v24

    move/from16 v12, v57

    .end local v57    # "cachedProcessLimit":I
    .local v12, "cachedProcessLimit":I
    if-le v6, v12, :cond_34

    .line 591
    move-object v6, v0

    .line 592
    .local v6, "killApp":Lcom/android/server/am/ProcessRecord;
    const/4 v13, 0x0

    .line 593
    .local v13, "anyClientActivities":Z
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v23

    if-eqz v23, :cond_33

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v23

    if-nez v23, :cond_33

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v1, :cond_33

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v1, v1, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    move/from16 v55, v2

    .end local v2    # "emptyProcessLimit":I
    .restart local v55    # "emptyProcessLimit":I
    add-int/lit8 v2, v10, -0x1

    if-ge v1, v2, :cond_32

    .line 595
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "servi":I
    :goto_18
    if-ltz v1, :cond_31

    if-nez v13, :cond_31

    .line 596
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 597
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    move/from16 v38, v3

    .end local v3    # "lastCachedGroup":I
    .local v38, "lastCachedGroup":I
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    .line 598
    .local v3, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v40

    const/16 v41, 0x1

    add-int/lit8 v40, v40, -0x1

    move/from16 v61, v40

    move-object/from16 v40, v6

    move/from16 v6, v61

    .local v6, "conni":I
    .local v40, "killApp":Lcom/android/server/am/ProcessRecord;
    :goto_19
    if-ltz v6, :cond_30

    if-nez v13, :cond_30

    .line 599
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v43, v2

    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    .local v43, "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v2, v42

    check-cast v2, Ljava/util/ArrayList;

    .line 600
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v41, v3

    move/from16 v3, v42

    .local v3, "cri":I
    .local v41, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :goto_1a
    if-ltz v3, :cond_2f

    .line 601
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v46, v2

    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v46, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v2, v42

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    iget-object v2, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 602
    .local v2, "clientApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_2d

    if-eq v2, v0, :cond_2d

    move/from16 v42, v4

    .end local v4    # "lastCachedGroupUid":I
    .local v42, "lastCachedGroupUid":I
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    move/from16 v47, v10

    const/16 v10, 0x11

    .end local v10    # "N":I
    .local v47, "N":I
    if-lt v4, v10, :cond_2e

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v10, 0x384

    if-ge v4, v10, :cond_2c

    .line 605
    goto :goto_1b

    .line 607
    :cond_2c
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 608
    move-object v4, v2

    .line 609
    .end local v40    # "killApp":Lcom/android/server/am/ProcessRecord;
    .local v4, "killApp":Lcom/android/server/am/ProcessRecord;
    const/4 v10, 0x1

    .line 610
    .end local v13    # "anyClientActivities":Z
    .local v10, "anyClientActivities":Z
    move-object/from16 v40, v4

    move v13, v10

    goto :goto_1c

    .line 602
    .end local v42    # "lastCachedGroupUid":I
    .end local v47    # "N":I
    .local v4, "lastCachedGroupUid":I
    .local v10, "N":I
    .restart local v13    # "anyClientActivities":Z
    .restart local v40    # "killApp":Lcom/android/server/am/ProcessRecord;
    :cond_2d
    move/from16 v42, v4

    move/from16 v47, v10

    .line 600
    .end local v2    # "clientApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "lastCachedGroupUid":I
    .end local v10    # "N":I
    .restart local v42    # "lastCachedGroupUid":I
    .restart local v47    # "N":I
    :cond_2e
    :goto_1b
    add-int/lit8 v3, v3, -0x1

    move/from16 v4, v42

    move-object/from16 v2, v46

    move/from16 v10, v47

    goto :goto_1a

    .end local v42    # "lastCachedGroupUid":I
    .end local v46    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v47    # "N":I
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v4    # "lastCachedGroupUid":I
    .restart local v10    # "N":I
    :cond_2f
    move-object/from16 v46, v2

    move/from16 v42, v4

    move/from16 v47, v10

    .line 598
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "cri":I
    .end local v4    # "lastCachedGroupUid":I
    .end local v10    # "N":I
    .restart local v42    # "lastCachedGroupUid":I
    .restart local v47    # "N":I
    :goto_1c
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v3, v41

    move/from16 v4, v42

    move-object/from16 v2, v43

    move/from16 v10, v47

    const/16 v41, 0x1

    goto :goto_19

    .end local v41    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v42    # "lastCachedGroupUid":I
    .end local v43    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v47    # "N":I
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    .local v3, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v4    # "lastCachedGroupUid":I
    .restart local v10    # "N":I
    :cond_30
    move-object/from16 v43, v2

    move-object/from16 v41, v3

    move/from16 v42, v4

    move/from16 v47, v10

    .line 595
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v3    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v4    # "lastCachedGroupUid":I
    .end local v6    # "conni":I
    .end local v10    # "N":I
    .restart local v42    # "lastCachedGroupUid":I
    .restart local v47    # "N":I
    add-int/lit8 v1, v1, -0x1

    move/from16 v3, v38

    move-object/from16 v6, v40

    move/from16 v4, v42

    move/from16 v10, v47

    goto/16 :goto_18

    .end local v38    # "lastCachedGroup":I
    .end local v40    # "killApp":Lcom/android/server/am/ProcessRecord;
    .end local v42    # "lastCachedGroupUid":I
    .end local v47    # "N":I
    .local v3, "lastCachedGroup":I
    .restart local v4    # "lastCachedGroupUid":I
    .local v6, "killApp":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "N":I
    :cond_31
    move/from16 v38, v3

    move/from16 v42, v4

    move/from16 v47, v10

    .end local v3    # "lastCachedGroup":I
    .end local v4    # "lastCachedGroupUid":I
    .end local v10    # "N":I
    .restart local v38    # "lastCachedGroup":I
    .restart local v42    # "lastCachedGroupUid":I
    .restart local v47    # "N":I
    goto :goto_1d

    .line 593
    .end local v1    # "servi":I
    .end local v38    # "lastCachedGroup":I
    .end local v42    # "lastCachedGroupUid":I
    .end local v47    # "N":I
    .restart local v3    # "lastCachedGroup":I
    .restart local v4    # "lastCachedGroupUid":I
    .restart local v10    # "N":I
    :cond_32
    move/from16 v38, v3

    move/from16 v42, v4

    move/from16 v47, v10

    .end local v3    # "lastCachedGroup":I
    .end local v4    # "lastCachedGroupUid":I
    .end local v10    # "N":I
    .restart local v38    # "lastCachedGroup":I
    .restart local v42    # "lastCachedGroupUid":I
    .restart local v47    # "N":I
    goto :goto_1d

    .end local v38    # "lastCachedGroup":I
    .end local v42    # "lastCachedGroupUid":I
    .end local v47    # "N":I
    .end local v55    # "emptyProcessLimit":I
    .local v2, "emptyProcessLimit":I
    .restart local v3    # "lastCachedGroup":I
    .restart local v4    # "lastCachedGroupUid":I
    .restart local v10    # "N":I
    :cond_33
    move/from16 v55, v2

    move/from16 v38, v3

    move/from16 v42, v4

    move/from16 v47, v10

    .line 618
    .end local v2    # "emptyProcessLimit":I
    .end local v3    # "lastCachedGroup":I
    .end local v4    # "lastCachedGroupUid":I
    .end local v10    # "N":I
    .restart local v38    # "lastCachedGroup":I
    .restart local v42    # "lastCachedGroupUid":I
    .restart local v47    # "N":I
    .restart local v55    # "emptyProcessLimit":I
    :goto_1d
    const/4 v1, 0x5

    iput v1, v6, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cached op#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; killed because of client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 623
    .end local v6    # "killApp":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "anyClientActivities":Z
    goto :goto_1e

    .line 580
    .end local v38    # "lastCachedGroup":I
    .end local v42    # "lastCachedGroupUid":I
    .end local v47    # "N":I
    .end local v55    # "emptyProcessLimit":I
    .restart local v2    # "emptyProcessLimit":I
    .restart local v3    # "lastCachedGroup":I
    .restart local v4    # "lastCachedGroupUid":I
    .restart local v10    # "N":I
    :cond_34
    move/from16 v55, v2

    move/from16 v38, v3

    move/from16 v42, v4

    move/from16 v47, v10

    .line 651
    .end local v2    # "emptyProcessLimit":I
    .end local v3    # "lastCachedGroup":I
    .end local v4    # "lastCachedGroupUid":I
    .end local v10    # "N":I
    .restart local v38    # "lastCachedGroup":I
    .restart local v42    # "lastCachedGroupUid":I
    .restart local v47    # "N":I
    .restart local v55    # "emptyProcessLimit":I
    :goto_1e
    move v13, v5

    move/from16 v60, v42

    .end local v5    # "numCached":I
    .end local v42    # "lastCachedGroupUid":I
    .local v13, "numCached":I
    .restart local v60    # "lastCachedGroupUid":I
    :goto_1f
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_35

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_35

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v1, :cond_35

    .line 662
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 663
    const-string/jumbo v1, "isolated not needed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_20

    .line 667
    :cond_35
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 668
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v1, :cond_37

    .line 669
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/UidRecord;->ephemeral:Z

    .line 670
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-le v2, v3, :cond_36

    .line 671
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 673
    :cond_36
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 674
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    .line 679
    .end local v1    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_37
    :goto_20
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_38

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v1, :cond_38

    .line 681
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    move v2, v12

    move v5, v13

    move v6, v14

    move/from16 v3, v38

    move/from16 v4, v60

    .end local v15    # "numTrimming":I
    .local v2, "numTrimming":I
    goto :goto_21

    .line 555
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "numTrimming":I
    .restart local v15    # "numTrimming":I
    :cond_38
    move v2, v12

    move v5, v13

    move v6, v14

    move/from16 v3, v38

    move/from16 v4, v60

    goto :goto_21

    .line 557
    .end local v12    # "cachedProcessLimit":I
    .end local v14    # "numEmpty":I
    .end local v16    # "cachedFactor":I
    .end local v25    # "now":J
    .end local v29    # "cycleCount":I
    .end local v38    # "lastCachedGroup":I
    .end local v47    # "N":I
    .end local v60    # "lastCachedGroupUid":I
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .local v1, "cycleCount":I
    .restart local v2    # "numTrimming":I
    .restart local v3    # "lastCachedGroup":I
    .restart local v4    # "lastCachedGroupUid":I
    .restart local v5    # "numCached":I
    .local v6, "numEmpty":I
    .restart local v10    # "N":I
    .local v13, "now":J
    .local v15, "cachedFactor":I
    .restart local v57    # "cachedProcessLimit":I
    :cond_39
    move/from16 v29, v1

    move v12, v3

    move/from16 v47, v10

    move-wide/from16 v25, v13

    move/from16 v16, v15

    move v15, v2

    move v13, v5

    move v14, v6

    move/from16 v2, v57

    .line 555
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "cycleCount":I
    .end local v3    # "lastCachedGroup":I
    .end local v5    # "numCached":I
    .end local v6    # "numEmpty":I
    .end local v10    # "N":I
    .end local v57    # "cachedProcessLimit":I
    .local v2, "cachedProcessLimit":I
    .local v12, "lastCachedGroup":I
    .local v13, "numCached":I
    .restart local v14    # "numEmpty":I
    .local v15, "numTrimming":I
    .restart local v16    # "cachedFactor":I
    .restart local v25    # "now":J
    .restart local v29    # "cycleCount":I
    .restart local v47    # "N":I
    move v3, v12

    move v5, v13

    move v6, v14

    .end local v12    # "lastCachedGroup":I
    .end local v13    # "numCached":I
    .end local v14    # "numEmpty":I
    .restart local v3    # "lastCachedGroup":I
    .restart local v5    # "numCached":I
    .restart local v6    # "numEmpty":I
    :goto_21
    add-int/lit8 v7, v7, -0x1

    move/from16 v57, v2

    move v2, v15

    move/from16 v15, v16

    move-wide/from16 v13, v25

    move/from16 v1, v29

    move/from16 v10, v47

    const/4 v12, 0x1

    goto/16 :goto_14

    .end local v16    # "cachedFactor":I
    .end local v25    # "now":J
    .end local v29    # "cycleCount":I
    .end local v47    # "N":I
    .restart local v1    # "cycleCount":I
    .local v2, "numTrimming":I
    .restart local v10    # "N":I
    .local v13, "now":J
    .local v15, "cachedFactor":I
    .restart local v57    # "cachedProcessLimit":I
    :cond_3a
    move/from16 v29, v1

    move v12, v3

    move/from16 v47, v10

    move-wide/from16 v25, v13

    move/from16 v16, v15

    const/4 v1, 0x5

    move v15, v2

    move v13, v5

    move v14, v6

    move/from16 v2, v57

    .line 686
    .end local v1    # "cycleCount":I
    .end local v3    # "lastCachedGroup":I
    .end local v5    # "numCached":I
    .end local v6    # "numEmpty":I
    .end local v7    # "i":I
    .end local v10    # "N":I
    .end local v57    # "cachedProcessLimit":I
    .local v2, "cachedProcessLimit":I
    .restart local v12    # "lastCachedGroup":I
    .local v13, "numCached":I
    .restart local v14    # "numEmpty":I
    .local v15, "numTrimming":I
    .restart local v16    # "cachedFactor":I
    .restart local v25    # "now":J
    .restart local v29    # "cycleCount":I
    .restart local v47    # "N":I
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    if-le v11, v0, :cond_3d

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mAllowLowerMemLevel:Z

    const/4 v3, 0x1

    if-ne v3, v0, :cond_3d

    move-object/from16 v0, v44

    .end local v44    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v0, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_3e

    .line 692
    invoke-static {}, Lcom/android/server/am/OomAdjusterInjector;->getBServiceLimitWhiteList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-static {}, Lcom/android/server/am/OomAdjusterInjector;->getBServiceLimitWhiteList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 693
    iget v3, v8, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    sub-int v7, v11, v3

    mul-int/2addr v7, v1

    rem-int/lit8 v7, v7, 0x31

    const/16 v1, 0x3e7

    rsub-int v5, v7, 0x3e7

    iput v5, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 700
    :cond_3b
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v1

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3, v5}, Lcom/android/server/am/ActivityManagerServiceInjector;->checkProcessExist(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 701
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v1, v3, v5}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 710
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v1, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 711
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v58

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v59

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is moved to higher adj"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 703
    :cond_3c
    return-void

    .line 686
    .end local v0    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v44    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_3d
    move-object/from16 v0, v44

    .line 715
    .end local v44    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_3e
    :goto_22
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->incrementProcStateSeqAndNotifyAppsLocked()V

    .line 717
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v1, v8, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 719
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v13, v14, v15}, Lcom/android/server/am/ActivityManagerService;->updateLowMemStateLocked(III)Z

    move-result v1

    .line 721
    .local v1, "allChanged":Z
    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v3, :cond_3f

    .line 724
    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v5, "always-finish"

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 727
    :cond_3f
    if-eqz v1, :cond_40

    .line 728
    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 729
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v5

    .line 728
    move-wide/from16 v6, v25

    move/from16 v9, v30

    .end local v25    # "now":J
    .local v6, "now":J
    invoke-virtual {v3, v6, v7, v9, v5}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    goto :goto_23

    .line 727
    .end local v6    # "now":J
    .restart local v25    # "now":J
    :cond_40
    move-wide/from16 v6, v25

    move/from16 v9, v30

    .line 732
    .end local v25    # "now":J
    .restart local v6    # "now":J
    :goto_23
    const/4 v3, 0x0

    .line 735
    .local v3, "becameIdle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UidRecord;>;"
    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_41

    .line 736
    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 738
    :cond_41
    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v5}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v5

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    .local v5, "i":I
    :goto_24
    if-ltz v5, :cond_53

    .line 739
    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v5}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    .line 740
    .local v10, "uidRec":Lcom/android/server/am/UidRecord;
    const/16 v20, 0x0

    .line 741
    .local v20, "uidChange":I
    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    move-object/from16 v21, v0

    .end local v0    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v21, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    const/16 v0, 0x15

    if-eq v9, v0, :cond_51

    iget v0, v10, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 742
    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-ne v0, v9, :cond_43

    iget-boolean v0, v10, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v9, v10, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v0, v9, :cond_42

    goto :goto_25

    :cond_42
    move v9, v1

    move/from16 v53, v2

    move/from16 v40, v11

    move/from16 v23, v12

    goto/16 :goto_2f

    .line 744
    :cond_43
    :goto_25
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Changes in "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": proc state from "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", whitelist from "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v10, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v10, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_44
    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-boolean v0, v10, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-nez v0, :cond_4a

    .line 752
    iget v0, v10, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, v10, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    if-eqz v0, :cond_45

    goto :goto_26

    :cond_45
    move v9, v1

    move/from16 v53, v2

    move/from16 v40, v11

    move/from16 v23, v12

    goto :goto_27

    .line 754
    :cond_46
    :goto_26
    move v9, v1

    move-wide/from16 v0, v33

    .end local v1    # "allChanged":Z
    .end local v33    # "nowElapsed":J
    .local v0, "nowElapsed":J
    .local v9, "allChanged":Z
    iput-wide v0, v10, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 755
    nop

    .end local v0    # "nowElapsed":J
    .restart local v33    # "nowElapsed":J
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_47

    .line 760
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x3a

    move/from16 v53, v2

    .end local v2    # "cachedProcessLimit":I
    .restart local v53    # "cachedProcessLimit":I
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v40, v11

    move/from16 v23, v12

    .end local v11    # "numBServices":I
    .end local v12    # "lastCachedGroup":I
    .local v23, "lastCachedGroup":I
    .local v40, "numBServices":I
    iget-wide v11, v2, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_27

    .line 755
    .end local v23    # "lastCachedGroup":I
    .end local v40    # "numBServices":I
    .end local v53    # "cachedProcessLimit":I
    .restart local v2    # "cachedProcessLimit":I
    .restart local v11    # "numBServices":I
    .restart local v12    # "lastCachedGroup":I
    :cond_47
    move/from16 v53, v2

    move/from16 v40, v11

    move/from16 v23, v12

    .line 764
    .end local v2    # "cachedProcessLimit":I
    .end local v11    # "numBServices":I
    .end local v12    # "lastCachedGroup":I
    .restart local v23    # "lastCachedGroup":I
    .restart local v40    # "numBServices":I
    .restart local v53    # "cachedProcessLimit":I
    :goto_27
    iget-boolean v0, v10, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v0, :cond_49

    iget-boolean v0, v10, Lcom/android/server/am/UidRecord;->setIdle:Z

    if-nez v0, :cond_49

    .line 765
    const/16 v20, 0x2

    .line 766
    if-nez v3, :cond_48

    .line 767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 769
    :cond_48
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    goto :goto_29

    .line 779
    :cond_49
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    goto :goto_29

    .line 748
    .end local v9    # "allChanged":Z
    .end local v23    # "lastCachedGroup":I
    .end local v40    # "numBServices":I
    .end local v53    # "cachedProcessLimit":I
    .restart local v1    # "allChanged":Z
    .restart local v2    # "cachedProcessLimit":I
    .restart local v11    # "numBServices":I
    .restart local v12    # "lastCachedGroup":I
    :cond_4a
    move v9, v1

    move/from16 v53, v2

    move/from16 v40, v11

    move/from16 v23, v12

    .line 772
    .end local v1    # "allChanged":Z
    .end local v2    # "cachedProcessLimit":I
    .end local v11    # "numBServices":I
    .end local v12    # "lastCachedGroup":I
    .restart local v9    # "allChanged":Z
    .restart local v23    # "lastCachedGroup":I
    .restart local v40    # "numBServices":I
    .restart local v53    # "cachedProcessLimit":I
    iget-boolean v0, v10, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v0, :cond_4b

    .line 773
    const/16 v20, 0x4

    .line 774
    iget v0, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v0}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 775
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/UidRecord;->idle:Z

    goto :goto_28

    .line 772
    :cond_4b
    const/4 v0, 0x0

    .line 777
    :goto_28
    const-wide/16 v1, 0x0

    iput-wide v1, v10, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 779
    :goto_29
    iget v11, v10, Lcom/android/server/am/UidRecord;->setProcState:I

    const/16 v12, 0xc

    if-le v11, v12, :cond_4c

    const/4 v11, 0x1

    goto :goto_2a

    :cond_4c
    move v11, v0

    .line 781
    .local v11, "wasCached":Z
    :goto_2a
    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v12

    const/16 v0, 0xc

    if-le v12, v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_2b

    :cond_4d
    const/4 v0, 0x0

    .line 783
    .local v0, "isCached":Z
    :goto_2b
    if-ne v11, v0, :cond_4f

    iget v12, v10, Lcom/android/server/am/UidRecord;->setProcState:I

    const/16 v1, 0x15

    if-ne v12, v1, :cond_4e

    goto :goto_2c

    :cond_4e
    move/from16 v1, v20

    goto :goto_2e

    .line 784
    :cond_4f
    :goto_2c
    if-eqz v0, :cond_50

    const/16 v1, 0x8

    goto :goto_2d

    :cond_50
    const/16 v1, 0x10

    :goto_2d
    or-int v20, v20, v1

    move/from16 v1, v20

    .line 786
    .end local v20    # "uidChange":I
    .local v1, "uidChange":I
    :goto_2e
    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    iput v2, v10, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 787
    iget-boolean v2, v10, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v2, v10, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    .line 788
    iget-boolean v2, v10, Lcom/android/server/am/UidRecord;->idle:Z

    iput-boolean v2, v10, Lcom/android/server/am/UidRecord;->setIdle:Z

    .line 789
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v12, v10, Lcom/android/server/am/UidRecord;->uid:I

    move/from16 v20, v0

    .end local v0    # "isCached":Z
    .local v20, "isCached":Z
    iget v0, v10, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v2, v12, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    .line 790
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, -0x1

    invoke-virtual {v0, v10, v2, v1}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 791
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v12

    invoke-virtual {v0, v2, v12}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 792
    iget-boolean v0, v10, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    if-eqz v0, :cond_52

    .line 793
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    goto :goto_2f

    .line 741
    .end local v9    # "allChanged":Z
    .end local v23    # "lastCachedGroup":I
    .end local v40    # "numBServices":I
    .end local v53    # "cachedProcessLimit":I
    .local v1, "allChanged":Z
    .restart local v2    # "cachedProcessLimit":I
    .local v11, "numBServices":I
    .restart local v12    # "lastCachedGroup":I
    .local v20, "uidChange":I
    :cond_51
    move v9, v1

    move/from16 v53, v2

    move/from16 v40, v11

    move/from16 v23, v12

    .line 738
    .end local v1    # "allChanged":Z
    .end local v2    # "cachedProcessLimit":I
    .end local v10    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v11    # "numBServices":I
    .end local v12    # "lastCachedGroup":I
    .end local v20    # "uidChange":I
    .restart local v9    # "allChanged":Z
    .restart local v23    # "lastCachedGroup":I
    .restart local v40    # "numBServices":I
    .restart local v53    # "cachedProcessLimit":I
    :cond_52
    :goto_2f
    add-int/lit8 v5, v5, -0x1

    move v1, v9

    move-object/from16 v0, v21

    move/from16 v12, v23

    move/from16 v11, v40

    move/from16 v2, v53

    const/4 v9, 0x0

    goto/16 :goto_24

    .end local v9    # "allChanged":Z
    .end local v21    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v23    # "lastCachedGroup":I
    .end local v40    # "numBServices":I
    .end local v53    # "cachedProcessLimit":I
    .local v0, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "allChanged":Z
    .restart local v2    # "cachedProcessLimit":I
    .restart local v11    # "numBServices":I
    .restart local v12    # "lastCachedGroup":I
    :cond_53
    move-object/from16 v21, v0

    move v9, v1

    move/from16 v53, v2

    move/from16 v40, v11

    move/from16 v23, v12

    .line 797
    .end local v0    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "allChanged":Z
    .end local v2    # "cachedProcessLimit":I
    .end local v5    # "i":I
    .end local v11    # "numBServices":I
    .end local v12    # "lastCachedGroup":I
    .restart local v9    # "allChanged":Z
    .restart local v21    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "lastCachedGroup":I
    .restart local v40    # "numBServices":I
    .restart local v53    # "cachedProcessLimit":I
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_54

    .line 798
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 801
    :cond_54
    if-eqz v3, :cond_55

    .line 804
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_30
    if-ltz v0, :cond_55

    .line 805
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UidRecord;

    iget v2, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    .line 804
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 811
    .end local v0    # "i":I
    :cond_55
    invoke-static {}, Lcom/android/server/am/OpBGFrozenInjector;->updateLastImportantUidsIfNeeded()V

    .line 814
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 815
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v1, v2, v5}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 820
    :cond_56
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 822
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_57

    .line 823
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 828
    .local v0, "duration":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did OOM ADJ in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ActivityManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    .end local v0    # "duration":J
    :cond_57
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 832
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 833
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjAll"    # Z
    .param p3, "oomAdjReason"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 282
    .local v0, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    if-nez p1, :cond_0

    .line 283
    const/4 v1, 0x0

    return v1

    .line 286
    :cond_0
    iget-boolean v8, p1, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 288
    .local v8, "wasCached":Z
    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 294
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    const/16 v2, 0x384

    const/16 v9, 0x3e9

    if-lt v1, v2, :cond_1

    .line 295
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v9

    .line 296
    .local v3, "cachedAdj":I
    :goto_0
    const/4 v5, 0x0

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 296
    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z

    move-result v1

    .line 298
    .local v1, "success":Z
    if-eqz p2, :cond_3

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->cached:Z

    if-ne v8, v2, :cond_2

    .line 299
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    if-ne v2, v9, :cond_3

    .line 302
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 304
    :cond_3
    return v1
.end method
