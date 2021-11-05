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
.field static final CAMERA_MICROPHONE_CAPABILITY_CHANGE_ID:J = 0x81e8a55L

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

.field static final PROCESS_CAPABILITY_CHANGE_ID:J = 0x81f62a4L

.field private static final TAG:Ljava/lang/String; = "OomAdjuster"

.field public static mCurRenderThreadTid:I

.field public static mIsTopAppRenderThreadBoostEnabled:Z

.field public static mPerf:Landroid/util/BoostFramework;

.field public static mPerfBoost:Landroid/util/BoostFramework;

.field public static mPerfHandle:I

.field private static sEnableFeatures:Z


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAdjSeq:I

.field mBServiceAppThreshold:I

.field mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mEnableBServicePropagation:Z

.field mEnableBgt:Z

.field mEnableProcessGroupCgroupFollow:Z

.field mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field mMinBServiceAgingTime:I

.field mNewNumAServiceProcs:I

.field mNewNumServiceProcs:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mNumServiceProcs:I

.field private final mNumSlots:I

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field mProcessGroupCgroupFollowDex2oatOnly:Z

.field private final mProcessGroupHandler:Landroid/os/Handler;

.field private final mProcessList:Lcom/android/server/am/ProcessList;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTmpBecameIdle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidRecord;",
            ">;"
        }
    .end annotation
.end field

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

.field private mTmpProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xac

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OomAdjuster;->sEnableFeatures:Z

    .line 248
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    .line 251
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    .line 252
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    .line 253
    sput v0, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    .line 254
    sput-boolean v2, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 265
    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V

    .line 266
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p4, "adjusterThread"    # Lcom/android/server/ServiceThread;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 206
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 207
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 208
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 214
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 220
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 231
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    .line 237
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    .line 239
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    .line 241
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    .line 243
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    .line 244
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 1199
    new-instance v1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 281
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 282
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 283
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 285
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 286
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 287
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 289
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_0

    .line 290
    const-string/jumbo v2, "ro.vendor.qti.sys.fw.bservice_age"

    const-string v3, "5000"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    .line 291
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.sys.fw.bservice_limit"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    .line 292
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.sys.fw.bservice_enable"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    .line 293
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.cgroup_follow.enable"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    .line 294
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.cgroup_follow.dex2oat_only"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    .line 295
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "vendor.perf.topAppRenderThreadBoost.enable"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    .line 296
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "vendor.perf.bgt.enable"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    .line 299
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/-$$Lambda$OomAdjuster$j3IvuemoJG_PvJj2IluuTqsAsvo;

    invoke-direct {v3, p0}, Lcom/android/server/am/-$$Lambda$OomAdjuster$j3IvuemoJG_PvJj2IluuTqsAsvo;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 322
    new-instance v1, Lcom/android/server/am/ActiveUids;

    invoke-direct {v1, p1, v0}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 323
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 324
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    .line 326
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 327
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 328
    return-void
.end method

.method private final applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .locals 22
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "doingAll"    # Z
    .param p3, "now"    # J
    .param p5, "nowElapsed"    # J

    .line 2372
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    const/4 v3, 0x1

    .line 2374
    .local v3, "success":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    if-eq v0, v4, :cond_0

    .line 2375
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    .line 2378
    :cond_0
    const/4 v4, 0x0

    .line 2381
    .local v4, "changes":I
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    const/16 v5, 0x2bc

    const/16 v6, 0x3e7

    const/16 v7, 0x384

    const/4 v13, 0x1

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_6

    .line 2383
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v0, v8, :cond_4

    .line 2387
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v8, 0xc8

    if-gt v0, v8, :cond_2

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-eq v0, v5, :cond_1

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v8, 0x258

    if-ne v0, v8, :cond_2

    .line 2390
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppSome(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 2391
    :cond_2
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-lt v0, v7, :cond_3

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v0, v6, :cond_6

    :cond_3
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v7, :cond_6

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v0, v6, :cond_6

    .line 2395
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppFull(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 2397
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_5

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2403
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2404
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 2405
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_6

    .line 2406
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v8, 0x5

    if-ne v0, v8, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2408
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2409
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V

    .line 2413
    :cond_6
    :goto_0
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const-string v14, " "

    const-string v15, ": "

    const-string v5, "OomAdjuster"

    const-string v13, "ActivityManager"

    if-eq v0, v8, :cond_11

    .line 2416
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v8}, Lcom/android/server/am/OomAdjusterInjector;->adjustProcessAdj(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2422
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    .line 2423
    .local v8, "topApp":Lcom/android/server/am/ProcessRecord;
    const/4 v0, 0x0

    .line 2424
    .local v0, "isSettingsTop":Z
    if-eqz v8, :cond_7

    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v7, "com.android.settings"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2425
    const/4 v0, 0x1

    move v6, v0

    goto :goto_1

    .line 2427
    :cond_7
    move v6, v0

    .end local v0    # "isSettingsTop":Z
    .local v6, "isSettingsTop":Z
    :goto_1
    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    if-eqz v0, :cond_8

    if-nez v6, :cond_8

    .line 2429
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2, v0}, Lcom/android/server/am/OomAdjusterInjector;->setOptimizationAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2430
    :catch_0
    move-exception v0

    .line 2431
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2432
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 2434
    :cond_8
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v0, :cond_9

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v7, 0x384

    if-lt v0, v7, :cond_9

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doIsHighUsedPackages(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2435
    const/16 v0, 0x320

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2441
    :cond_9
    :goto_3
    iget-boolean v0, v1, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    if-eqz v0, :cond_d

    .line 2442
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v7, 0x384

    if-lt v0, v7, :cond_c

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v7, 0x3e7

    if-gt v0, v7, :cond_c

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-nez v0, :cond_c

    .line 2445
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App adj change from cached state to fg state : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    sget-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_a

    .line 2449
    const/4 v0, 0x2

    new-array v7, v0, [I

    const/high16 v0, 0x42820000    # 65.0f

    const/16 v19, 0x0

    aput v0, v7, v19

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v18, 0x1

    aput v0, v7, v18

    move-object v0, v7

    .line 2450
    .local v0, "fgAppPerfLockArgs":[I
    sget-object v7, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    move/from16 v21, v3

    const/16 v3, 0xa

    .end local v3    # "success":Z
    .local v21, "success":Z
    invoke-virtual {v7, v3, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto :goto_4

    .line 2448
    .end local v0    # "fgAppPerfLockArgs":[I
    .end local v21    # "success":Z
    .restart local v3    # "success":Z
    :cond_a
    move/from16 v21, v3

    .end local v3    # "success":Z
    .restart local v21    # "success":Z
    goto :goto_4

    .line 2445
    .end local v21    # "success":Z
    .restart local v3    # "success":Z
    :cond_b
    move/from16 v21, v3

    .end local v3    # "success":Z
    .restart local v21    # "success":Z
    goto :goto_4

    .line 2442
    .end local v21    # "success":Z
    .restart local v3    # "success":Z
    :cond_c
    move/from16 v21, v3

    .line 2453
    .end local v3    # "success":Z
    .restart local v21    # "success":Z
    :goto_4
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v3, 0x2bc

    if-ne v0, v3, :cond_e

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v3, 0x384

    if-lt v0, v3, :cond_e

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v3, 0x3e7

    if-gt v0, v3, :cond_e

    .line 2456
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App adj change from previous state to cached state : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    sget-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_e

    .line 2460
    const/4 v0, 0x2

    new-array v0, v0, [I

    const v3, 0x42824000    # 65.125f

    const/4 v7, 0x0

    aput v3, v0, v7

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v7, 0x1

    aput v3, v0, v7

    .line 2461
    .local v0, "bgAppPerfLockArgs":[I
    sget-object v3, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const/16 v7, 0xa

    invoke-virtual {v3, v7, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto :goto_5

    .line 2441
    .end local v0    # "bgAppPerfLockArgs":[I
    .end local v21    # "success":Z
    .restart local v3    # "success":Z
    :cond_d
    move/from16 v21, v3

    .line 2465
    .end local v3    # "success":Z
    .restart local v21    # "success":Z
    :cond_e
    :goto_5
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v3, v7}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 2466
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v3, :cond_10

    .line 2467
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adj "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2469
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v1, v13, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    .end local v0    # "msg":Ljava/lang/String;
    :cond_10
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 2472
    const/16 v0, -0x2710

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    goto :goto_6

    .line 2413
    .end local v6    # "isSettingsTop":Z
    .end local v8    # "topApp":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "success":Z
    .restart local v3    # "success":Z
    :cond_11
    move/from16 v21, v3

    .line 2475
    .end local v3    # "success":Z
    .restart local v21    # "success":Z
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v7

    .line 2476
    .local v7, "curSchedGroup":I
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    const-string v8, " to "

    if-eq v0, v7, :cond_25

    .line 2477
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 2478
    .local v3, "oldSchedGroup":I
    iput v7, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 2479
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v6, :cond_13

    .line 2480
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting sched group of "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2482
    .restart local v0    # "msg":Ljava/lang/String;
    invoke-virtual {v1, v13, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    .end local v0    # "msg":Ljava/lang/String;
    :cond_13
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v0, :cond_15

    .line 2488
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    const-string/jumbo v5, "remove task"

    if-ne v0, v5, :cond_14

    .line 2489
    const/16 v0, 0x9

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->killReason:I

    goto :goto_7

    .line 2491
    :cond_14
    const/4 v5, 0x4

    iput v5, v2, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 2494
    :goto_7
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    move-object/from16 v17, v8

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v8, 0x1

    invoke-virtual {v2, v0, v6, v5, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 2496
    const/4 v0, 0x0

    move/from16 v21, v0

    move-object/from16 v20, v14

    const/4 v8, 0x0

    .end local v21    # "success":Z
    .local v0, "success":Z
    goto/16 :goto_e

    .line 2484
    .end local v0    # "success":Z
    .restart local v21    # "success":Z
    :cond_15
    move-object/from16 v17, v8

    const/16 v6, 0xa

    .line 2499
    const/4 v0, 0x3

    if-eqz v7, :cond_18

    const/4 v8, 0x1

    if-eq v7, v8, :cond_17

    const/4 v8, 0x4

    if-eq v7, v0, :cond_16

    if-eq v7, v8, :cond_16

    .line 2511
    const/16 v16, -0x1

    move/from16 v6, v16

    .local v16, "processGroup":I
    goto :goto_8

    .line 2505
    .end local v16    # "processGroup":I
    :cond_16
    const/16 v16, 0x5

    .line 2506
    .restart local v16    # "processGroup":I
    move/from16 v6, v16

    goto :goto_8

    .line 2508
    .end local v16    # "processGroup":I
    :cond_17
    const/4 v8, 0x4

    const/16 v16, 0x7

    .line 2509
    .restart local v16    # "processGroup":I
    move/from16 v6, v16

    goto :goto_8

    .line 2501
    .end local v16    # "processGroup":I
    :cond_18
    const/4 v8, 0x4

    const/16 v16, 0x0

    .line 2502
    .restart local v16    # "processGroup":I
    move/from16 v6, v16

    .line 2516
    .end local v16    # "processGroup":I
    .local v6, "processGroup":I
    :goto_8
    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v8}, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->isInAudioWhiteList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    if-gtz v6, :cond_19

    .line 2518
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IsInAudioWhiteList app.processName = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v20, v14

    const/4 v11, 0x0

    const/4 v14, 0x3

    invoke-virtual {v0, v11, v8, v14, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 2516
    :cond_19
    move-object/from16 v20, v14

    const/4 v11, 0x0

    .line 2522
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v11, v8, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2529
    :goto_9
    const/4 v0, 0x3

    if-ne v7, v0, :cond_1f

    .line 2531
    if-eq v3, v0, :cond_1e

    .line 2532
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2533
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_1b

    .line 2535
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    .line 2536
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 2537
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v8, "UI_FIFO"

    if-eqz v0, :cond_1a

    .line 2538
    :try_start_2
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 2540
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_1c

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set RenderThread (TID "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") to FIFO"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2545
    :cond_1a
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_1c

    .line 2546
    const-string v0, "Not setting RenderThread TID"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2551
    :cond_1b
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v8, -0xa

    invoke-static {v0, v8}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2552
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_1c

    .line 2554
    :try_start_3
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-static {v0, v8}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2558
    goto :goto_a

    .line 2556
    :catch_1
    move-exception v0

    .line 2563
    :cond_1c
    :goto_a
    :try_start_4
    sget-boolean v0, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v0, :cond_1d

    .line 2564
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const-string v11, "1"

    invoke-static {v0, v8, v11}, Lcom/oneplus/uifirst/UIFirstUtils;->setUxThread(IILjava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_d

    .line 2563
    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_d

    .line 2603
    :catch_2
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_c

    .line 2531
    :cond_1e
    const/4 v8, 0x0

    goto/16 :goto_d

    .line 2568
    :cond_1f
    const/4 v0, 0x3

    if-ne v3, v0, :cond_23

    if-eq v7, v0, :cond_23

    .line 2570
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2571
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v0, :cond_21

    .line 2574
    :try_start_5
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v8, 0x0

    :try_start_6
    invoke-static {v0, v8, v8}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 2575
    :try_start_7
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    invoke-static {v0, v8}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2576
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_20

    .line 2577
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v8, 0x0

    :try_start_8
    invoke-static {v0, v8, v8}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 2586
    :cond_20
    const/4 v8, 0x0

    goto :goto_b

    .line 2584
    :catch_3
    move-exception v0

    .line 2585
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    const/4 v8, 0x0

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_b

    .line 2580
    :catch_4
    move-exception v0

    .line 2581
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    const/4 v8, 0x0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_b

    .line 2589
    :cond_21
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const/4 v8, 0x0

    :try_start_a
    invoke-static {v0, v8}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2592
    :goto_b
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_22

    .line 2593
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v11, -0x4

    invoke-static {v0, v11}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2598
    :cond_22
    sget-boolean v0, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v0, :cond_24

    .line 2599
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v11, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const-string v12, "0"

    invoke-static {v0, v11, v12}, Lcom/oneplus/uifirst/UIFirstUtils;->setUxThread(IILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_d

    .line 2603
    :catch_5
    move-exception v0

    .line 2604
    .local v0, "e":Ljava/lang/Exception;
    :goto_c
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v11, :cond_26

    .line 2605
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed setting thread priority of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 2568
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    const/4 v8, 0x0

    .line 2607
    :cond_24
    :goto_d
    goto :goto_e

    .line 2476
    .end local v3    # "oldSchedGroup":I
    .end local v6    # "processGroup":I
    :cond_25
    move-object/from16 v17, v8

    move-object/from16 v20, v14

    const/4 v8, 0x0

    .line 2610
    :cond_26
    :goto_e
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_27

    .line 2611
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    .line 2612
    or-int/lit8 v4, v4, 0x1

    move v11, v4

    goto :goto_f

    .line 2610
    :cond_27
    move v11, v4

    .line 2615
    .end local v4    # "changes":I
    .local v11, "changes":I
    :goto_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2617
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_28

    .line 2618
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setReportedProcState(I)V

    .line 2619
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_28

    .line 2626
    :try_start_b
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6

    .line 2628
    goto :goto_10

    .line 2627
    :catch_6
    move-exception v0

    .line 2631
    :cond_28
    :goto_10
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0x14

    if-eq v0, v3, :cond_2e

    .line 2632
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v0

    if-eqz v0, :cond_29

    move/from16 v16, v7

    move-object/from16 v14, v17

    const/16 v12, 0xa

    goto/16 :goto_12

    .line 2660
    :cond_29
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    cmp-long v0, v9, v3

    if-gtz v0, :cond_2c

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v0, v9, v3

    if-lez v0, :cond_2b

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    .line 2661
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v0, v9, v3

    if-lez v0, :cond_2a

    goto :goto_11

    :cond_2a
    move/from16 v16, v7

    move-object/from16 v14, v17

    const/16 v12, 0xa

    goto/16 :goto_13

    .line 2660
    :cond_2b
    move/from16 v16, v7

    move-object/from16 v14, v17

    const/16 v12, 0xa

    goto/16 :goto_13

    .line 2663
    :cond_2c
    :goto_11
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->requestPssLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2664
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2666
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    .line 2664
    const/16 v12, 0xa

    move v14, v8

    const/4 v8, 0x4

    move/from16 v16, v7

    move-object/from16 v14, v17

    .end local v7    # "curSchedGroup":I
    .local v16, "curSchedGroup":I
    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    goto :goto_13

    .line 2663
    .end local v16    # "curSchedGroup":I
    .restart local v7    # "curSchedGroup":I
    :cond_2d
    move/from16 v16, v7

    move-object/from16 v14, v17

    const/16 v12, 0xa

    .end local v7    # "curSchedGroup":I
    .restart local v16    # "curSchedGroup":I
    goto :goto_13

    .line 2631
    .end local v16    # "curSchedGroup":I
    .restart local v7    # "curSchedGroup":I
    :cond_2e
    move/from16 v16, v7

    move-object/from16 v14, v17

    const/16 v12, 0xa

    .line 2651
    .end local v7    # "curSchedGroup":I
    .restart local v16    # "curSchedGroup":I
    :goto_12
    iput-wide v9, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 2652
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2654
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    .line 2652
    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    .line 2655
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process state change from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 2656
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2657
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

    .line 2655
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    :cond_2f
    :goto_13
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_37

    .line 2674
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_30

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_30

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v3, :cond_31

    .line 2675
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proc state change of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2676
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2678
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v1, v13, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    .end local v0    # "msg":Ljava/lang/String;
    :cond_31
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge v0, v12, :cond_32

    const/4 v6, 0x1

    goto :goto_14

    :cond_32
    const/4 v6, 0x0

    :goto_14
    move v0, v6

    .line 2681
    .local v0, "setImportant":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-ge v3, v12, :cond_33

    const/4 v6, 0x1

    goto :goto_15

    :cond_33
    const/4 v6, 0x0

    :goto_15
    move v3, v6

    .line 2682
    .local v3, "curImportant":Z
    if-eqz v0, :cond_34

    if-nez v3, :cond_34

    .line 2686
    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/ProcessRecord;->setWhenUnimportant(J)V

    .line 2687
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    .line 2691
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    const/4 v5, 0x4

    if-ge v4, v5, :cond_34

    .line 2692
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    iget-wide v7, v2, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    aput-wide v7, v6, v4

    .line 2691
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 2698
    .end local v4    # "i":I
    :cond_34
    move-wide/from16 v4, p5

    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 2700
    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V

    .line 2702
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    iput v6, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 2703
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_35

    .line 2704
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    .line 2706
    :cond_35
    if-nez p2, :cond_36

    .line 2707
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2708
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    .line 2707
    invoke-virtual {v6, v2, v7, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLocked(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_17

    .line 2710
    :cond_36
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 2712
    .end local v0    # "setImportant":Z
    .end local v3    # "curImportant":Z
    :goto_17
    goto :goto_18

    :cond_37
    move-wide/from16 v4, p5

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v0, :cond_38

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_38

    .line 2716
    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_18

    .line 2717
    :cond_38
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-nez v0, :cond_39

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_39

    .line 2720
    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 2723
    :cond_39
    :goto_18
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curCapability:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    if-eq v0, v3, :cond_3a

    .line 2724
    or-int/lit8 v11, v11, 0x4

    .line 2725
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curCapability:I

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    .line 2728
    :cond_3a
    if-eqz v11, :cond_3c

    .line 2729
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changes in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    :cond_3b
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2732
    invoke-virtual {v0, v3, v6}, Lcom/android/server/am/ActivityManagerService;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v0

    .line 2733
    .local v0, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    iget v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr v3, v11

    iput v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 2734
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 2735
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    iput v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    .line 2736
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v3, :cond_3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2737
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2738
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": changes="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " foreground="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " source="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " target="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " capability="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2736
    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    .end local v0    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :cond_3c
    return v21
.end method

.method private assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 713
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 717
    .local v1, "numLru":I
    const/16 v2, 0x384

    .line 718
    .local v2, "curCachedAdj":I
    add-int/lit8 v3, v2, 0xa

    .line 719
    .local v3, "nextCachedAdj":I
    const/4 v4, 0x0

    .line 720
    .local v4, "curCachedImpAdj":I
    const/16 v5, 0x389

    .line 721
    .local v5, "curEmptyAdj":I
    add-int/lit8 v6, v5, 0xa

    .line 723
    .local v6, "nextEmptyAdj":I
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v7, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 724
    .local v7, "emptyProcessLimit":I
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v8, v7

    .line 730
    .local v8, "cachedProcessLimit":I
    iget v9, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v9, v1, v9

    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v9, v10

    .line 731
    .local v9, "numEmptyProcs":I
    if-le v9, v8, :cond_0

    .line 738
    move v9, v8

    .line 740
    :cond_0
    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v11, 0x1

    if-lez v10, :cond_1

    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v10, v12

    sub-int/2addr v10, v11

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v10, v12

    .line 742
    .local v10, "cachedFactor":I
    if-ge v10, v11, :cond_2

    const/4 v10, 0x1

    .line 744
    :cond_2
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int v13, v9, v12

    sub-int/2addr v13, v11

    div-int/2addr v13, v12

    .line 745
    .local v13, "emptyFactor":I
    if-ge v13, v11, :cond_3

    const/4 v13, 0x1

    .line 747
    :cond_3
    const/4 v11, -0x1

    .line 748
    .local v11, "stepCached":I
    const/4 v12, -0x1

    .line 749
    .local v12, "stepEmpty":I
    const/4 v14, 0x0

    .line 750
    .local v14, "lastCachedGroup":I
    const/4 v15, 0x0

    .line 751
    .local v15, "lastCachedGroupImportance":I
    const/16 v16, 0x0

    .line 753
    .local v16, "lastCachedGroupUid":I
    add-int/lit8 v17, v1, -0x1

    move/from16 v0, v16

    move/from16 v16, v1

    move/from16 v1, v17

    .local v0, "lastCachedGroupUid":I
    .local v1, "i":I
    .local v16, "numLru":I
    :goto_1
    if-ltz v1, :cond_10

    .line 754
    move/from16 v17, v7

    move-object/from16 v7, p1

    .end local v7    # "emptyProcessLimit":I
    .local v17, "emptyProcessLimit":I
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 757
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v18, v8

    .end local v8    # "cachedProcessLimit":I
    .local v18, "cachedProcessLimit":I
    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v8, :cond_f

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_f

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v19, v9

    .end local v9    # "numEmptyProcs":I
    .local v19, "numEmptyProcs":I
    const/16 v9, 0x3e9

    if-lt v8, v9, :cond_e

    .line 759
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v8

    const-string v9, ")"

    move/from16 v20, v13

    .end local v13    # "emptyFactor":I
    .local v20, "emptyFactor":I
    const-string v13, " adj: "

    move/from16 v21, v12

    .end local v12    # "stepEmpty":I
    .local v21, "stepEmpty":I
    const-string v12, "ActivityManager"

    move/from16 v22, v5

    .end local v5    # "curEmptyAdj":I
    .local v22, "curEmptyAdj":I
    packed-switch v8, :pswitch_data_0

    .line 809
    move/from16 v5, v22

    .end local v22    # "curEmptyAdj":I
    .restart local v5    # "curEmptyAdj":I
    if-eq v5, v6, :cond_b

    .line 810
    add-int/lit8 v8, v21, 0x1

    .line 811
    .end local v21    # "stepEmpty":I
    .local v8, "stepEmpty":I
    move/from16 v22, v0

    move/from16 v0, v20

    .end local v20    # "emptyFactor":I
    .local v0, "emptyFactor":I
    .local v22, "lastCachedGroupUid":I
    if-lt v8, v0, :cond_a

    .line 812
    const/4 v8, 0x0

    .line 813
    move v5, v6

    .line 814
    add-int/lit8 v6, v6, 0xa

    .line 815
    move/from16 v20, v0

    const/16 v0, 0x3e7

    .end local v0    # "emptyFactor":I
    .restart local v20    # "emptyFactor":I
    if-le v6, v0, :cond_c

    .line 816
    const/16 v6, 0x3e7

    goto/16 :goto_5

    .line 764
    .end local v5    # "curEmptyAdj":I
    .end local v8    # "stepEmpty":I
    .local v0, "lastCachedGroupUid":I
    .restart local v21    # "stepEmpty":I
    .local v22, "curEmptyAdj":I
    :pswitch_0
    const/4 v8, 0x0

    .line 765
    .local v8, "inGroup":Z
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v5, :cond_7

    .line 766
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v5, :cond_6

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v14, v5, :cond_6

    .line 770
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-le v5, v15, :cond_5

    .line 771
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 772
    .end local v15    # "lastCachedGroupImportance":I
    .local v5, "lastCachedGroupImportance":I
    if-ge v2, v3, :cond_4

    const/16 v15, 0x3e7

    if-ge v2, v15, :cond_4

    .line 774
    add-int/lit8 v4, v4, 0x1

    move v15, v5

    goto :goto_2

    .line 777
    :cond_4
    move v15, v5

    .end local v5    # "lastCachedGroupImportance":I
    .restart local v15    # "lastCachedGroupImportance":I
    :cond_5
    :goto_2
    const/4 v8, 0x1

    goto :goto_3

    .line 779
    :cond_6
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 780
    iget v14, v7, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 781
    iget v15, v7, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 784
    :cond_7
    :goto_3
    if-nez v8, :cond_8

    if-eq v2, v3, :cond_8

    .line 785
    add-int/lit8 v11, v11, 0x1

    .line 786
    const/4 v4, 0x0

    .line 787
    if-lt v11, v10, :cond_8

    .line 788
    const/4 v11, 0x0

    .line 789
    move v2, v3

    .line 790
    add-int/lit8 v3, v3, 0xa

    .line 791
    const/16 v5, 0x3e7

    if-le v3, v5, :cond_8

    .line 792
    const/16 v3, 0x3e7

    .line 799
    :cond_8
    add-int v5, v2, v4

    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 800
    add-int v5, v2, v4

    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v5

    iput v5, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 801
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_9

    .line 802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v0

    .end local v0    # "lastCachedGroupUid":I
    .local v23, "lastCachedGroupUid":I
    const-string v0, "Assigning activity LRU #"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (curCachedAdj="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " curCachedImpAdj="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 801
    .end local v23    # "lastCachedGroupUid":I
    .restart local v0    # "lastCachedGroupUid":I
    :cond_9
    move/from16 v23, v0

    .line 753
    .end local v0    # "lastCachedGroupUid":I
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "inGroup":Z
    .restart local v23    # "lastCachedGroupUid":I
    :goto_4
    move/from16 v12, v21

    move/from16 v5, v22

    move/from16 v0, v23

    goto/16 :goto_8

    .line 811
    .end local v20    # "emptyFactor":I
    .end local v21    # "stepEmpty":I
    .end local v23    # "lastCachedGroupUid":I
    .local v0, "emptyFactor":I
    .local v5, "curEmptyAdj":I
    .restart local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .local v8, "stepEmpty":I
    .local v22, "lastCachedGroupUid":I
    :cond_a
    move/from16 v20, v0

    .end local v0    # "emptyFactor":I
    .restart local v20    # "emptyFactor":I
    goto :goto_5

    .line 809
    .end local v8    # "stepEmpty":I
    .end local v22    # "lastCachedGroupUid":I
    .local v0, "lastCachedGroupUid":I
    .restart local v21    # "stepEmpty":I
    :cond_b
    move/from16 v22, v0

    .end local v0    # "lastCachedGroupUid":I
    .restart local v22    # "lastCachedGroupUid":I
    move/from16 v8, v21

    .line 825
    .end local v21    # "stepEmpty":I
    .restart local v8    # "stepEmpty":I
    :cond_c
    :goto_5
    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 826
    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 827
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_d

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v2

    .end local v2    # "curCachedAdj":I
    .local v23, "curCachedAdj":I
    const-string v2, "Assigning empty LRU #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (curEmptyAdj="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 827
    .end local v23    # "curCachedAdj":I
    .restart local v2    # "curCachedAdj":I
    :cond_d
    move/from16 v23, v2

    .line 753
    .end local v2    # "curCachedAdj":I
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "curCachedAdj":I
    :goto_6
    move v12, v8

    move/from16 v0, v22

    move/from16 v2, v23

    goto :goto_8

    .line 757
    .end local v8    # "stepEmpty":I
    .end local v20    # "emptyFactor":I
    .end local v22    # "lastCachedGroupUid":I
    .end local v23    # "curCachedAdj":I
    .restart local v0    # "lastCachedGroupUid":I
    .restart local v2    # "curCachedAdj":I
    .restart local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v12    # "stepEmpty":I
    .restart local v13    # "emptyFactor":I
    :cond_e
    move/from16 v22, v0

    move/from16 v23, v2

    move/from16 v21, v12

    move/from16 v20, v13

    .end local v0    # "lastCachedGroupUid":I
    .end local v2    # "curCachedAdj":I
    .end local v12    # "stepEmpty":I
    .end local v13    # "emptyFactor":I
    .restart local v20    # "emptyFactor":I
    .restart local v21    # "stepEmpty":I
    .restart local v22    # "lastCachedGroupUid":I
    .restart local v23    # "curCachedAdj":I
    goto :goto_7

    .end local v19    # "numEmptyProcs":I
    .end local v20    # "emptyFactor":I
    .end local v21    # "stepEmpty":I
    .end local v22    # "lastCachedGroupUid":I
    .end local v23    # "curCachedAdj":I
    .restart local v0    # "lastCachedGroupUid":I
    .restart local v2    # "curCachedAdj":I
    .restart local v9    # "numEmptyProcs":I
    .restart local v12    # "stepEmpty":I
    .restart local v13    # "emptyFactor":I
    :cond_f
    move/from16 v22, v0

    move/from16 v23, v2

    move/from16 v19, v9

    move/from16 v21, v12

    move/from16 v20, v13

    .line 753
    .end local v0    # "lastCachedGroupUid":I
    .end local v2    # "curCachedAdj":I
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "numEmptyProcs":I
    .end local v12    # "stepEmpty":I
    .end local v13    # "emptyFactor":I
    .restart local v19    # "numEmptyProcs":I
    .restart local v20    # "emptyFactor":I
    .restart local v21    # "stepEmpty":I
    .restart local v22    # "lastCachedGroupUid":I
    .restart local v23    # "curCachedAdj":I
    :goto_7
    move/from16 v12, v21

    move/from16 v0, v22

    move/from16 v2, v23

    .end local v21    # "stepEmpty":I
    .end local v22    # "lastCachedGroupUid":I
    .end local v23    # "curCachedAdj":I
    .restart local v0    # "lastCachedGroupUid":I
    .restart local v2    # "curCachedAdj":I
    .restart local v12    # "stepEmpty":I
    :goto_8
    add-int/lit8 v1, v1, -0x1

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v13, v20

    goto/16 :goto_1

    .line 836
    .end local v1    # "i":I
    .end local v17    # "emptyProcessLimit":I
    .end local v18    # "cachedProcessLimit":I
    .end local v19    # "numEmptyProcs":I
    .end local v20    # "emptyFactor":I
    .local v7, "emptyProcessLimit":I
    .local v8, "cachedProcessLimit":I
    .restart local v9    # "numEmptyProcs":I
    .restart local v13    # "emptyFactor":I
    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z
    .locals 48
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"    # I
    .param p3, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "doingAll"    # Z
    .param p5, "now"    # J
    .param p7, "cycleReEval"    # Z
    .param p8, "computeClients"    # Z

    .line 1326
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-wide/from16 v13, p5

    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    const/4 v15, 0x1

    const/4 v9, 0x0

    if-ne v0, v1, :cond_1

    .line 1327
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    if-ne v0, v1, :cond_0

    .line 1329
    return v9

    .line 1333
    :cond_0
    iput-boolean v15, v11, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 1335
    return v9

    .line 1339
    :cond_1
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/16 v8, 0x13

    if-nez v0, :cond_2

    .line 1340
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 1341
    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1342
    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1343
    const/16 v0, 0x3e7

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1344
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1345
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 1346
    iput v9, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    .line 1347
    return v9

    .line 1350
    :cond_2
    iput v9, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 1351
    const/4 v0, 0x0

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1352
    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1353
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 1354
    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1355
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    .line 1357
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1358
    .local v7, "appUid":I
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1360
    .local v6, "logUid":I
    iget v5, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1361
    .local v5, "prevAppAdj":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    .line 1362
    .local v4, "prevProcState":I
    iget v3, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    .line 1364
    .local v3, "prevCapability":I
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/4 v1, 0x2

    const-string v15, "ActivityManager"

    if-gtz v0, :cond_c

    .line 1367
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_3

    if-ne v6, v7, :cond_4

    .line 1368
    :cond_3
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making fixed: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/ActivityManagerService;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    :cond_4
    const-string v0, "fixed"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1371
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 1372
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1373
    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 1374
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1375
    const/4 v2, 0x7

    iput v2, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    .line 1376
    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1381
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1382
    if-ne v11, v12, :cond_5

    .line 1383
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1384
    const/4 v1, 0x3

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1385
    const-string/jumbo v0, "pers-top-activity"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_0

    .line 1386
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1388
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1389
    const-string/jumbo v0, "pers-top-ui"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_0

    .line 1390
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1391
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1393
    :cond_7
    :goto_0
    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    if-nez v0, :cond_9

    .line 1394
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1396
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1397
    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_1

    .line 1400
    :cond_8
    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1401
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1404
    :cond_9
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1405
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1406
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 1408
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-ge v0, v4, :cond_a

    goto :goto_2

    :cond_a
    move v15, v9

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v15, 0x1

    :goto_3
    return v15

    .line 1411
    :cond_c
    const/4 v2, 0x7

    const/16 v16, 0x5

    const/16 v17, 0x3

    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1413
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v1

    .line 1421
    .local v1, "PROCESS_STATE_CUR_TOP":I
    const/4 v0, 0x0

    .line 1423
    .local v0, "capability":I
    const/16 v20, 0x0

    .line 1424
    .local v20, "foregroundActivities":Z
    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    if-ne v11, v12, :cond_12

    .line 1426
    const/16 v19, 0x0

    .line 1427
    .local v19, "adj":I
    const/16 v22, 0x3

    .line 1428
    .local v22, "schedGroup":I
    const-string/jumbo v2, "top-activity"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1429
    const/16 v20, 0x1

    .line 1430
    move v2, v1

    .line 1431
    .local v2, "procState":I
    sget-boolean v24, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    if-eqz v24, :cond_10

    .line 1432
    sget v8, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    iget v9, v11, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eq v8, v9, :cond_f

    iget v8, v11, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-lez v8, :cond_f

    .line 1433
    iget v8, v11, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    sput v8, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    .line 1434
    sget-object v8, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v8, :cond_e

    .line 1435
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TOP-APP: pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", processName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", renderThreadTid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v11, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OomAdjuster"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    sget v8, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    if-ltz v8, :cond_d

    .line 1438
    sget-object v8, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v8}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 1439
    const/4 v8, -0x1

    sput v8, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    .line 1441
    :cond_d
    sget-object v8, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    move/from16 v26, v0

    .end local v0    # "capability":I
    .local v26, "capability":I
    const/16 v0, 0x1096

    move/from16 v27, v2

    .end local v2    # "procState":I
    .local v27, "procState":I
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move/from16 v28, v3

    .end local v3    # "prevCapability":I
    .local v28, "prevCapability":I
    iget v3, v11, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    move/from16 v29, v4

    const/4 v4, 0x1

    .end local v4    # "prevProcState":I
    .local v29, "prevProcState":I
    invoke-virtual {v8, v0, v2, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VENDOR_HINT_BOOST_RENDERTHREAD perfHint was called. mPerfHandle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1434
    .end local v26    # "capability":I
    .end local v27    # "procState":I
    .end local v28    # "prevCapability":I
    .end local v29    # "prevProcState":I
    .restart local v0    # "capability":I
    .restart local v2    # "procState":I
    .restart local v3    # "prevCapability":I
    .restart local v4    # "prevProcState":I
    :cond_e
    move/from16 v26, v0

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    .end local v0    # "capability":I
    .end local v2    # "procState":I
    .end local v3    # "prevCapability":I
    .end local v4    # "prevProcState":I
    .restart local v26    # "capability":I
    .restart local v27    # "procState":I
    .restart local v28    # "prevCapability":I
    .restart local v29    # "prevProcState":I
    goto :goto_4

    .line 1432
    .end local v26    # "capability":I
    .end local v27    # "procState":I
    .end local v28    # "prevCapability":I
    .end local v29    # "prevProcState":I
    .restart local v0    # "capability":I
    .restart local v2    # "procState":I
    .restart local v3    # "prevCapability":I
    .restart local v4    # "prevProcState":I
    :cond_f
    move/from16 v26, v0

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    .end local v0    # "capability":I
    .end local v2    # "procState":I
    .end local v3    # "prevCapability":I
    .end local v4    # "prevProcState":I
    .restart local v26    # "capability":I
    .restart local v27    # "procState":I
    .restart local v28    # "prevCapability":I
    .restart local v29    # "prevProcState":I
    goto :goto_4

    .line 1431
    .end local v26    # "capability":I
    .end local v27    # "procState":I
    .end local v28    # "prevCapability":I
    .end local v29    # "prevProcState":I
    .restart local v0    # "capability":I
    .restart local v2    # "procState":I
    .restart local v3    # "prevCapability":I
    .restart local v4    # "prevProcState":I
    :cond_10
    move/from16 v26, v0

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    .line 1449
    .end local v0    # "capability":I
    .end local v2    # "procState":I
    .end local v3    # "prevCapability":I
    .end local v4    # "prevProcState":I
    .restart local v26    # "capability":I
    .restart local v27    # "procState":I
    .restart local v28    # "prevCapability":I
    .restart local v29    # "prevProcState":I
    :goto_4
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_11

    if-ne v6, v7, :cond_22

    .line 1450
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making top: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1424
    .end local v19    # "adj":I
    .end local v22    # "schedGroup":I
    .end local v26    # "capability":I
    .end local v27    # "procState":I
    .end local v28    # "prevCapability":I
    .end local v29    # "prevProcState":I
    .restart local v0    # "capability":I
    .restart local v3    # "prevCapability":I
    .restart local v4    # "prevProcState":I
    :cond_12
    move/from16 v26, v0

    move/from16 v28, v3

    move/from16 v29, v4

    .line 1452
    .end local v0    # "capability":I
    .end local v3    # "prevCapability":I
    .end local v4    # "prevProcState":I
    .restart local v26    # "capability":I
    .restart local v28    # "prevCapability":I
    .restart local v29    # "prevProcState":I
    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v0, :cond_15

    .line 1453
    const/16 v19, 0x64

    .line 1454
    .restart local v19    # "adj":I
    const/16 v22, 0x3

    .line 1455
    .restart local v22    # "schedGroup":I
    const-string/jumbo v0, "running-remote-anim"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1456
    move v2, v1

    .line 1457
    .restart local v2    # "procState":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_13

    if-ne v6, v7, :cond_14

    .line 1458
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making running remote anim: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    :cond_14
    :goto_5
    move/from16 v27, v2

    goto/16 :goto_8

    .line 1460
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v22    # "schedGroup":I
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1462
    const/16 v19, 0x0

    .line 1463
    .restart local v19    # "adj":I
    const/16 v22, 0x2

    .line 1464
    .restart local v22    # "schedGroup":I
    const-string/jumbo v0, "instrumentation"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1465
    const/4 v2, 0x4

    .line 1466
    .restart local v2    # "procState":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_16

    if-ne v6, v7, :cond_14

    .line 1467
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making instrumentation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1469
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v22    # "schedGroup":I
    :cond_17
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1474
    const/16 v19, 0x0

    .line 1475
    .restart local v19    # "adj":I
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1476
    const/4 v0, 0x2

    goto :goto_6

    :cond_18
    const/4 v0, 0x0

    :goto_6
    move/from16 v22, v0

    .line 1477
    .restart local v22    # "schedGroup":I
    const-string v0, "broadcast"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1478
    const/16 v2, 0xb

    .line 1479
    .restart local v2    # "procState":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_19

    if-ne v6, v7, :cond_14

    .line 1480
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making broadcast: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1482
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v22    # "schedGroup":I
    :cond_1a
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1485
    const/16 v19, 0x0

    .line 1486
    .restart local v19    # "adj":I
    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v0, :cond_1b

    .line 1487
    const/4 v0, 0x2

    goto :goto_7

    :cond_1b
    const/4 v0, 0x0

    :goto_7
    move/from16 v22, v0

    .line 1488
    .restart local v22    # "schedGroup":I
    const-string v0, "exec-service"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1489
    const/16 v2, 0xa

    .line 1490
    .restart local v2    # "procState":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_1c

    if-ne v6, v7, :cond_14

    .line 1491
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making exec-service: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1494
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v22    # "schedGroup":I
    :cond_1d
    if-ne v11, v12, :cond_1f

    .line 1495
    const/16 v19, 0x0

    .line 1496
    .restart local v19    # "adj":I
    const/16 v22, 0x0

    .line 1497
    .restart local v22    # "schedGroup":I
    const-string/jumbo v0, "top-sleeping"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1498
    const/16 v20, 0x1

    .line 1499
    move v2, v1

    .line 1500
    .restart local v2    # "procState":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_1e

    if-ne v6, v7, :cond_14

    .line 1501
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making top (sleeping): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1505
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v22    # "schedGroup":I
    :cond_1f
    const/16 v22, 0x0

    .line 1508
    .restart local v22    # "schedGroup":I
    move/from16 v19, p2

    .line 1509
    .restart local v19    # "adj":I
    const/16 v2, 0x13

    .line 1510
    .restart local v2    # "procState":I
    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-nez v0, :cond_20

    .line 1511
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1512
    iput-boolean v3, v11, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 1513
    const-string v0, "cch-empty"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1515
    :cond_20
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_21

    if-ne v6, v7, :cond_14

    .line 1516
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making empty: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1521
    .end local v2    # "procState":I
    .restart local v27    # "procState":I
    :cond_22
    :goto_8
    if-nez v20, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasActivities()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1522
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move/from16 v9, v17

    const/4 v8, 0x2

    move/from16 v17, v1

    .end local v1    # "PROCESS_STATE_CUR_TOP":I
    .local v17, "PROCESS_STATE_CUR_TOP":I
    move-object/from16 v1, p1

    move/from16 v4, v16

    const/4 v3, 0x7

    move v12, v3

    move/from16 v30, v28

    .end local v28    # "prevCapability":I
    .local v30, "prevCapability":I
    move/from16 v3, v19

    move/from16 v31, v29

    .end local v29    # "prevProcState":I
    .local v31, "prevProcState":I
    move/from16 v4, v20

    move/from16 v32, v5

    .end local v5    # "prevAppAdj":I
    .local v32, "prevAppAdj":I
    move/from16 v5, v27

    move/from16 v16, v6

    .end local v6    # "logUid":I
    .local v16, "logUid":I
    move/from16 v6, v22

    move/from16 v21, v7

    .end local v7    # "appUid":I
    .local v21, "appUid":I
    move v12, v8

    move/from16 v8, v16

    const/4 v12, 0x0

    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ProcessRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZIIIII)V

    .line 1526
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->mCachedAdj:I

    .line 1527
    .end local v19    # "adj":I
    .local v0, "adj":I
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->mCachedForegroundActivities:Z

    .line 1528
    .end local v20    # "foregroundActivities":Z
    .local v1, "foregroundActivities":Z
    iget v2, v11, Lcom/android/server/am/ProcessRecord;->mCachedProcState:I

    .line 1529
    .end local v27    # "procState":I
    .restart local v2    # "procState":I
    iget v3, v11, Lcom/android/server/am/ProcessRecord;->mCachedSchedGroup:I

    move v9, v1

    move/from16 v22, v3

    .end local v22    # "schedGroup":I
    .local v3, "schedGroup":I
    goto :goto_9

    .line 1521
    .end local v0    # "adj":I
    .end local v2    # "procState":I
    .end local v3    # "schedGroup":I
    .end local v16    # "logUid":I
    .end local v17    # "PROCESS_STATE_CUR_TOP":I
    .end local v21    # "appUid":I
    .end local v30    # "prevCapability":I
    .end local v31    # "prevProcState":I
    .end local v32    # "prevAppAdj":I
    .local v1, "PROCESS_STATE_CUR_TOP":I
    .restart local v5    # "prevAppAdj":I
    .restart local v6    # "logUid":I
    .restart local v7    # "appUid":I
    .restart local v19    # "adj":I
    .restart local v20    # "foregroundActivities":Z
    .restart local v22    # "schedGroup":I
    .restart local v27    # "procState":I
    .restart local v28    # "prevCapability":I
    .restart local v29    # "prevProcState":I
    :cond_23
    move/from16 v17, v1

    move/from16 v32, v5

    move/from16 v16, v6

    move/from16 v21, v7

    move/from16 v30, v28

    move/from16 v31, v29

    const/4 v12, 0x0

    .line 1532
    .end local v1    # "PROCESS_STATE_CUR_TOP":I
    .end local v5    # "prevAppAdj":I
    .end local v6    # "logUid":I
    .end local v7    # "appUid":I
    .end local v28    # "prevCapability":I
    .end local v29    # "prevProcState":I
    .restart local v16    # "logUid":I
    .restart local v17    # "PROCESS_STATE_CUR_TOP":I
    .restart local v21    # "appUid":I
    .restart local v30    # "prevCapability":I
    .restart local v31    # "prevProcState":I
    .restart local v32    # "prevAppAdj":I
    move/from16 v0, v19

    move/from16 v9, v20

    move/from16 v2, v27

    .end local v19    # "adj":I
    .end local v20    # "foregroundActivities":Z
    .end local v27    # "procState":I
    .restart local v0    # "adj":I
    .restart local v2    # "procState":I
    .local v9, "foregroundActivities":Z
    :goto_9
    const/16 v1, 0x12

    if-le v2, v1, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasRecentTasks()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1533
    const/16 v2, 0x12

    .line 1534
    const-string v1, "cch-rec"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1535
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_24

    move/from16 v6, v16

    move/from16 v8, v21

    .end local v16    # "logUid":I
    .end local v21    # "appUid":I
    .restart local v6    # "logUid":I
    .local v8, "appUid":I
    if-ne v6, v8, :cond_26

    goto :goto_a

    .end local v6    # "logUid":I
    .end local v8    # "appUid":I
    .restart local v16    # "logUid":I
    .restart local v21    # "appUid":I
    :cond_24
    move/from16 v6, v16

    move/from16 v8, v21

    .line 1536
    .end local v16    # "logUid":I
    .end local v21    # "appUid":I
    .restart local v6    # "logUid":I
    .restart local v8    # "appUid":I
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to cached recent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1532
    .end local v6    # "logUid":I
    .end local v8    # "appUid":I
    .restart local v16    # "logUid":I
    .restart local v21    # "appUid":I
    :cond_25
    move/from16 v6, v16

    move/from16 v8, v21

    .line 1540
    .end local v16    # "logUid":I
    .end local v21    # "appUid":I
    .restart local v6    # "logUid":I
    .restart local v8    # "appUid":I
    :cond_26
    :goto_b
    const-string v7, ": "

    const-string v5, "Raise to "

    const/4 v4, 0x4

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_27

    if-le v2, v4, :cond_2b

    .line 1542
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1544
    const/16 v0, 0xc8

    .line 1545
    const/4 v2, 0x4

    .line 1546
    const-string v1, "fg-service"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1547
    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1548
    const/16 v22, 0x2

    .line 1549
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_28

    if-ne v6, v8, :cond_2b

    .line 1550
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1553
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1555
    const/16 v0, 0xc8

    .line 1556
    const/4 v2, 0x6

    .line 1557
    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1558
    const-string v1, "has-overlay-ui"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1559
    const/16 v22, 0x2

    .line 1560
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_2a

    if-ne v6, v8, :cond_2b

    .line 1561
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise to overlay ui: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_2b
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/16 v1, 0x32

    if-le v0, v1, :cond_2e

    iget-wide v3, v11, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v20, v0

    .end local v0    # "adj":I
    .local v20, "adj":I
    iget-wide v0, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v3, v0

    cmp-long v0, v3, v13

    if-gtz v0, :cond_2c

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2f

    .line 1572
    :cond_2c
    const/16 v0, 0x32

    .line 1573
    .end local v20    # "adj":I
    .restart local v0    # "adj":I
    const-string v1, "fg-service-act"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1574
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_2d

    if-ne v6, v8, :cond_30

    .line 1575
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to recent fg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1569
    :cond_2e
    move/from16 v20, v0

    .line 1579
    .end local v0    # "adj":I
    .restart local v20    # "adj":I
    :cond_2f
    move/from16 v0, v20

    .end local v20    # "adj":I
    .restart local v0    # "adj":I
    :cond_30
    :goto_d
    const/16 v4, 0x8

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_31

    if-le v2, v4, :cond_33

    .line 1581
    :cond_31
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v1, :cond_33

    .line 1585
    const/16 v0, 0xc8

    .line 1586
    const/16 v2, 0x8

    .line 1587
    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1588
    const-string v1, "force-imp"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1589
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1590
    const/16 v22, 0x2

    .line 1591
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_32

    if-ne v6, v8, :cond_33

    .line 1592
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to force imp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHeavyWeight()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1598
    const/16 v1, 0x190

    const-string v3, "heavy"

    if-le v0, v1, :cond_35

    .line 1600
    const/16 v0, 0x190

    .line 1601
    const/16 v22, 0x0

    .line 1602
    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1603
    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1604
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_34

    if-ne v6, v8, :cond_35

    .line 1605
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to heavy: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    :cond_35
    const/16 v1, 0xd

    if-le v2, v1, :cond_37

    .line 1609
    const/16 v2, 0xd

    .line 1610
    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1611
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_36

    if-ne v6, v8, :cond_37

    .line 1612
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to heavy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    :cond_37
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1618
    const/16 v1, 0x258

    const-string v3, "home"

    if-le v0, v1, :cond_39

    .line 1621
    const/16 v0, 0x258

    .line 1622
    const/16 v22, 0x0

    .line 1623
    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1624
    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1625
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_38

    if-ne v6, v8, :cond_39

    .line 1626
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to home: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    :cond_39
    const/16 v1, 0xe

    if-le v2, v1, :cond_3b

    .line 1630
    const/16 v2, 0xe

    .line 1631
    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1632
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_3a

    if-ne v6, v8, :cond_3b

    .line 1633
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to home: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsPreviousProcess()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasActivities()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1639
    const/16 v1, 0x2bc

    if-le v0, v1, :cond_3d

    .line 1643
    const/16 v0, 0x2bc

    .line 1644
    const/16 v22, 0x0

    .line 1645
    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1646
    const-string/jumbo v1, "previous"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1647
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_3c

    if-ne v6, v8, :cond_3d

    .line 1648
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to prev: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    :cond_3d
    const/16 v1, 0xf

    if-le v2, v1, :cond_3f

    .line 1652
    const/16 v2, 0xf

    .line 1653
    const-string/jumbo v1, "previous"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1654
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_3e

    if-ne v6, v8, :cond_40

    .line 1655
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to prev: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1651
    :cond_3f
    move/from16 v1, v22

    goto :goto_f

    .line 1668
    :cond_40
    :goto_e
    move/from16 v1, v22

    .end local v22    # "schedGroup":I
    .local v1, "schedGroup":I
    :goto_f
    if-eqz p7, :cond_41

    .line 1669
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1670
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1671
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1673
    :cond_41
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1674
    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1676
    iput-boolean v12, v11, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    .line 1677
    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v3, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 1679
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v4, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/am/BackupRecord;

    .line 1680
    .local v4, "backupTarget":Lcom/android/server/am/BackupRecord;
    if-eqz v4, :cond_48

    iget-object v3, v4, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v11, v3, :cond_48

    .line 1682
    const/16 v3, 0x12c

    if-le v0, v3, :cond_46

    .line 1683
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "oom BACKUP_APP_ADJ for "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_42
    const/16 v0, 0x12c

    .line 1685
    const/16 v12, 0x8

    if-le v2, v12, :cond_43

    .line 1686
    const/16 v2, 0x8

    .line 1688
    :cond_43
    const-string v3, "backup"

    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1689
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_44

    if-ne v6, v8, :cond_45

    .line 1690
    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise adj to backup: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v15, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    :cond_45
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1694
    :cond_46
    const/16 v3, 0x9

    if-le v2, v3, :cond_48

    .line 1695
    const/16 v2, 0x9

    .line 1696
    const-string v3, "backup"

    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1697
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_47

    if-ne v6, v8, :cond_48

    .line 1698
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise procstate to backup: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v15, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    :cond_48
    const/4 v3, 0x0

    .line 1704
    .local v3, "capabilityFromFGS":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v12

    const/16 v18, 0x1

    add-int/lit8 v12, v12, -0x1

    move/from16 v47, v12

    move v12, v3

    move/from16 v3, v47

    .line 1705
    .local v3, "is":I
    .local v12, "capabilityFromFGS":I
    :goto_10
    move/from16 v21, v9

    .end local v9    # "foregroundActivities":Z
    .local v21, "foregroundActivities":Z
    if-ltz v3, :cond_93

    if-gtz v0, :cond_4a

    if-eqz v1, :cond_4a

    const/4 v9, 0x2

    if-le v2, v9, :cond_49

    goto :goto_11

    :cond_49
    move/from16 v28, v1

    move-object/from16 v16, v4

    move-object/from16 v40, v5

    move v9, v6

    move-object v14, v7

    move/from16 v38, v12

    move-object v6, v15

    move/from16 v44, v21

    const/16 v4, 0x1f4

    move v12, v8

    goto/16 :goto_32

    .line 1709
    :cond_4a
    :goto_11
    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v9

    .line 1710
    .local v9, "s":Lcom/android/server/am/ServiceRecord;
    move/from16 v28, v1

    .end local v1    # "schedGroup":I
    .local v28, "schedGroup":I
    iget-boolean v1, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_54

    .line 1711
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    .line 1712
    const/16 v1, 0xa

    if-le v2, v1, :cond_4d

    .line 1713
    const/16 v2, 0xa

    .line 1714
    const-string/jumbo v1, "started-services"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1715
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_4c

    if-ne v6, v8, :cond_4b

    goto :goto_12

    :cond_4b
    move/from16 v29, v2

    goto :goto_13

    .line 1716
    :cond_4c
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v2

    .end local v2    # "procState":I
    .local v29, "procState":I
    const-string v2, "Raise procstate to started service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    :goto_13
    move/from16 v2, v29

    .end local v29    # "procState":I
    .restart local v2    # "procState":I
    :cond_4d
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_4f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1725
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_4e

    .line 1726
    const-string v1, "cch-started-ui-services"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1752
    :cond_4e
    move v1, v0

    move/from16 v33, v3

    move-object/from16 v34, v4

    goto :goto_14

    .line 1729
    :cond_4f
    move/from16 v29, v2

    .end local v2    # "procState":I
    .restart local v29    # "procState":I
    iget-wide v1, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move/from16 v33, v3

    .end local v3    # "is":I
    .local v33, "is":I
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v34, v4

    .end local v4    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v34, "backupTarget":Lcom/android/server/am/BackupRecord;
    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v1, v3

    cmp-long v1, v13, v1

    if-gez v1, :cond_52

    .line 1733
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_52

    .line 1734
    const/16 v0, 0x1f4

    .line 1735
    const-string/jumbo v1, "started-services"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1736
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_50

    if-ne v6, v8, :cond_51

    .line 1737
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise adj to started service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    :cond_51
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1746
    :cond_52
    const/16 v4, 0x1f4

    if-le v0, v4, :cond_53

    .line 1747
    const-string v1, "cch-started-services"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1752
    :cond_53
    move v1, v0

    move/from16 v2, v29

    goto :goto_14

    .line 1710
    .end local v29    # "procState":I
    .end local v33    # "is":I
    .end local v34    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v2    # "procState":I
    .restart local v3    # "is":I
    .restart local v4    # "backupTarget":Lcom/android/server/am/BackupRecord;
    :cond_54
    move/from16 v33, v3

    move-object/from16 v34, v4

    .end local v3    # "is":I
    .end local v4    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v33    # "is":I
    .restart local v34    # "backupTarget":Lcom/android/server/am/BackupRecord;
    move v1, v0

    .line 1752
    .end local v0    # "adj":I
    .local v1, "adj":I
    :goto_14
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_5a

    .line 1753
    iget v3, v9, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 1754
    .local v3, "fgsType":I
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-eqz v0, :cond_59

    .line 1755
    nop

    .line 1757
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    goto :goto_15

    :cond_55
    const/4 v0, 0x0

    :goto_15
    or-int v4, v12, v0

    .line 1759
    .end local v12    # "capabilityFromFGS":I
    .local v4, "capabilityFromFGS":I
    const/4 v12, 0x0

    .line 1761
    .local v12, "enabled":Z
    :try_start_0
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v27, v1

    move/from16 v29, v2

    .end local v1    # "adj":I
    .end local v2    # "procState":I
    .local v27, "adj":I
    .restart local v29    # "procState":I
    :try_start_1
    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v38, v5

    move/from16 v37, v6

    const-wide/32 v5, 0x81e8a55

    .end local v6    # "logUid":I
    .local v37, "logUid":I
    :try_start_2
    invoke-interface {v0, v5, v6, v1}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v12, v0

    .line 1764
    goto :goto_16

    .line 1763
    :catch_0
    move-exception v0

    goto :goto_16

    .end local v37    # "logUid":I
    .restart local v6    # "logUid":I
    :catch_1
    move-exception v0

    move-object/from16 v38, v5

    move/from16 v37, v6

    .end local v6    # "logUid":I
    .restart local v37    # "logUid":I
    goto :goto_16

    .end local v27    # "adj":I
    .end local v29    # "procState":I
    .end local v37    # "logUid":I
    .restart local v1    # "adj":I
    .restart local v2    # "procState":I
    .restart local v6    # "logUid":I
    :catch_2
    move-exception v0

    move/from16 v27, v1

    move/from16 v29, v2

    move-object/from16 v38, v5

    move/from16 v37, v6

    .line 1765
    .end local v1    # "adj":I
    .end local v2    # "procState":I
    .end local v6    # "logUid":I
    .restart local v27    # "adj":I
    .restart local v29    # "procState":I
    .restart local v37    # "logUid":I
    :goto_16
    if-eqz v12, :cond_58

    .line 1766
    nop

    .line 1768
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_56

    const/4 v0, 0x2

    goto :goto_17

    :cond_56
    const/4 v0, 0x0

    :goto_17
    or-int/2addr v0, v4

    .line 1769
    .end local v4    # "capabilityFromFGS":I
    .local v0, "capabilityFromFGS":I
    nop

    .line 1771
    and-int/lit16 v1, v3, 0x80

    if-eqz v1, :cond_57

    const/4 v1, 0x4

    goto :goto_18

    :cond_57
    const/4 v1, 0x0

    :goto_18
    or-int/2addr v0, v1

    move v12, v0

    goto :goto_19

    .line 1773
    .end local v0    # "capabilityFromFGS":I
    .restart local v4    # "capabilityFromFGS":I
    :cond_58
    or-int/lit8 v0, v4, 0x6

    move v12, v0

    .end local v4    # "capabilityFromFGS":I
    .restart local v0    # "capabilityFromFGS":I
    goto :goto_19

    .line 1754
    .end local v0    # "capabilityFromFGS":I
    .end local v27    # "adj":I
    .end local v29    # "procState":I
    .end local v37    # "logUid":I
    .restart local v1    # "adj":I
    .restart local v2    # "procState":I
    .restart local v6    # "logUid":I
    .local v12, "capabilityFromFGS":I
    :cond_59
    move/from16 v27, v1

    move/from16 v29, v2

    move-object/from16 v38, v5

    move/from16 v37, v6

    .end local v1    # "adj":I
    .end local v2    # "procState":I
    .end local v6    # "logUid":I
    .restart local v27    # "adj":I
    .restart local v29    # "procState":I
    .restart local v37    # "logUid":I
    goto :goto_19

    .line 1752
    .end local v3    # "fgsType":I
    .end local v27    # "adj":I
    .end local v29    # "procState":I
    .end local v37    # "logUid":I
    .restart local v1    # "adj":I
    .restart local v2    # "procState":I
    .restart local v6    # "logUid":I
    :cond_5a
    move/from16 v27, v1

    move/from16 v29, v2

    move-object/from16 v38, v5

    move/from16 v37, v6

    .line 1779
    .end local v1    # "adj":I
    .end local v2    # "procState":I
    .end local v6    # "logUid":I
    .restart local v27    # "adj":I
    .restart local v29    # "procState":I
    .restart local v37    # "logUid":I
    :goto_19
    invoke-virtual {v9}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v6

    .line 1780
    .local v6, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v5, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    .line 1781
    .end local v27    # "adj":I
    .end local v28    # "schedGroup":I
    .end local v29    # "procState":I
    .local v0, "adj":I
    .local v1, "schedGroup":I
    .restart local v2    # "procState":I
    .local v5, "conni":I
    :goto_1a
    if-ltz v5, :cond_92

    if-gtz v0, :cond_5c

    if-eqz v1, :cond_5c

    const/4 v3, 0x2

    if-le v2, v3, :cond_5b

    goto :goto_1b

    :cond_5b
    move-object v14, v7

    move v4, v8

    move-object v6, v15

    move/from16 v44, v21

    move-object/from16 v16, v34

    move/from16 v9, v37

    move-object/from16 v40, v38

    move/from16 v38, v12

    goto/16 :goto_31

    .line 1785
    :cond_5c
    :goto_1b
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    .line 1786
    .local v4, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    move/from16 v27, v26

    move/from16 v26, v1

    move/from16 v47, v3

    move v3, v2

    move/from16 v2, v47

    .line 1787
    .end local v1    # "schedGroup":I
    .local v2, "i":I
    .local v3, "procState":I
    .local v26, "schedGroup":I
    .local v27, "capability":I
    :goto_1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_91

    if-gtz v0, :cond_5e

    if-eqz v26, :cond_5e

    const/4 v1, 0x2

    if-le v3, v1, :cond_5d

    goto :goto_1d

    :cond_5d
    move/from16 v19, v3

    move-object v14, v7

    move v4, v8

    move/from16 v44, v21

    move-object/from16 v16, v34

    move-object/from16 v40, v38

    move/from16 v34, v5

    move/from16 v38, v12

    move/from16 v47, v37

    move-object/from16 v37, v6

    move-object v6, v15

    move-object v15, v9

    move/from16 v9, v47

    goto/16 :goto_30

    .line 1793
    :cond_5e
    :goto_1d
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 1794
    .local v1, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v28, v2

    .end local v2    # "i":I
    .local v28, "i":I
    iget-object v2, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v2, v11, :cond_5f

    .line 1796
    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v42, v7

    move-object/from16 v43, v15

    move/from16 v44, v21

    move-object/from16 v16, v34

    move/from16 v41, v37

    move-object/from16 v40, v38

    move/from16 v34, v5

    move-object/from16 v37, v6

    move/from16 v21, v8

    move-object v15, v9

    move/from16 v38, v12

    goto/16 :goto_1f

    .line 1801
    :cond_5f
    invoke-static {v1, v11}, Lcom/android/server/am/OpBGFrozenInjector;->updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 1804
    const/16 v29, 0x0

    .line 1806
    .local v29, "trackedProcState":Z
    iget-object v2, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1807
    .local v2, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz p8, :cond_60

    .line 1808
    const/16 v35, 0x1

    move-object/from16 v39, v1

    .end local v1    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v39, "cr":Lcom/android/server/am/ConnectionRecord;
    move-object/from16 v1, p0

    move-object/from16 v36, v2

    .end local v2    # "client":Lcom/android/server/am/ProcessRecord;
    .local v36, "client":Lcom/android/server/am/ProcessRecord;
    move/from16 v19, v3

    .end local v3    # "procState":I
    .local v19, "procState":I
    move/from16 v3, p2

    move-object/from16 v20, v4

    move-object/from16 v16, v34

    .end local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v34    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v16, "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v20, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v4, p3

    move/from16 v34, v5

    move-object/from16 v40, v38

    .end local v5    # "conni":I
    .local v34, "conni":I
    move/from16 v5, p4

    move-object/from16 v42, v7

    move/from16 v41, v37

    move-object/from16 v37, v6

    .end local v6    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v37, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v41, "logUid":I
    move-wide/from16 v6, p5

    move/from16 v38, v12

    move v12, v8

    .end local v8    # "appUid":I
    .local v12, "appUid":I
    .local v38, "capabilityFromFGS":I
    move/from16 v8, p7

    move-object/from16 v43, v15

    move/from16 v44, v21

    move-object v15, v9

    move/from16 v21, v12

    const/16 v12, 0x10

    .end local v9    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v12    # "appUid":I
    .local v15, "s":Lcom/android/server/am/ServiceRecord;
    .local v21, "appUid":I
    .local v44, "foregroundActivities":Z
    move/from16 v9, v35

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v7, v36

    goto :goto_1e

    .line 1811
    .end local v15    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v16    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v19    # "procState":I
    .end local v20    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v36    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "capabilityFromFGS":I
    .end local v39    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v41    # "logUid":I
    .end local v44    # "foregroundActivities":Z
    .restart local v1    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v2    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "procState":I
    .restart local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v5    # "conni":I
    .restart local v6    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v8    # "appUid":I
    .restart local v9    # "s":Lcom/android/server/am/ServiceRecord;
    .local v12, "capabilityFromFGS":I
    .local v21, "foregroundActivities":Z
    .local v34, "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v37, "logUid":I
    :cond_60
    move-object/from16 v39, v1

    move-object/from16 v36, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v42, v7

    move-object/from16 v43, v15

    move/from16 v44, v21

    move-object/from16 v16, v34

    move/from16 v41, v37

    move-object/from16 v40, v38

    move/from16 v34, v5

    move-object/from16 v37, v6

    move/from16 v21, v8

    move-object v15, v9

    move/from16 v38, v12

    const/16 v12, 0x10

    .end local v1    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "procState":I
    .end local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "conni":I
    .end local v6    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v8    # "appUid":I
    .end local v9    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v12    # "capabilityFromFGS":I
    .restart local v15    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v16    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v19    # "procState":I
    .restart local v20    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v21, "appUid":I
    .local v34, "conni":I
    .restart local v36    # "client":Lcom/android/server/am/ProcessRecord;
    .local v37, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v38    # "capabilityFromFGS":I
    .restart local v39    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v41    # "logUid":I
    .restart local v44    # "foregroundActivities":Z
    move-object/from16 v7, v36

    .end local v36    # "client":Lcom/android/server/am/ProcessRecord;
    .local v7, "client":Lcom/android/server/am/ProcessRecord;
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1812
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1815
    :goto_1e
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v8

    .line 1816
    .local v8, "clientAdj":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v9

    .line 1818
    .local v9, "clientProcState":I
    move-object/from16 v6, v39

    .end local v39    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v6, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v1, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_87

    .line 1819
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v4, v19

    move v5, v0

    move-object v12, v6

    .end local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v12, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1820
    nop

    .line 1790
    .end local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v16    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v19    # "procState":I
    .end local v20    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v29    # "trackedProcState":Z
    .end local v38    # "capabilityFromFGS":I
    .end local v41    # "logUid":I
    .end local v44    # "foregroundActivities":Z
    .restart local v3    # "procState":I
    .restart local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v5    # "conni":I
    .local v6, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v8, "appUid":I
    .local v9, "s":Lcom/android/server/am/ServiceRecord;
    .local v12, "capabilityFromFGS":I
    .local v21, "foregroundActivities":Z
    .local v34, "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v37, "logUid":I
    :goto_1f
    move/from16 v3, v19

    move/from16 v4, v21

    move/from16 v9, v41

    move-object/from16 v14, v42

    move-object/from16 v6, v43

    .end local v3    # "procState":I
    .end local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "conni":I
    .end local v6    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v8    # "appUid":I
    .end local v9    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v12    # "capabilityFromFGS":I
    .restart local v15    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v16    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v19    # "procState":I
    .restart local v20    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v21, "appUid":I
    .local v34, "conni":I
    .local v37, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v38    # "capabilityFromFGS":I
    .restart local v41    # "logUid":I
    .restart local v44    # "foregroundActivities":Z
    goto/16 :goto_2f

    .line 1823
    .restart local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .local v8, "clientAdj":I
    .local v9, "clientProcState":I
    .local v12, "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v29    # "trackedProcState":Z
    :cond_61
    const/16 v1, 0x1000

    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1824
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->curCapability:I

    or-int v27, v27, v1

    .line 1827
    :cond_62
    const/16 v1, 0x10

    if-lt v9, v1, :cond_63

    .line 1831
    const/16 v9, 0x13

    .line 1833
    :cond_63
    const/4 v2, 0x0

    .line 1834
    .local v2, "adjType":Ljava/lang/String;
    iget v3, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_67

    .line 1837
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_65

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_65

    .line 1842
    if-le v0, v8, :cond_64

    .line 1843
    const-string v2, "cch-bound-ui-services"

    .line 1845
    :cond_64
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1846
    move v8, v0

    .line 1847
    move/from16 v9, v19

    goto :goto_20

    .line 1849
    :cond_65
    iget-wide v3, v15, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v3, v5

    cmp-long v1, v13, v3

    if-ltz v1, :cond_67

    .line 1856
    if-le v0, v8, :cond_66

    .line 1857
    const-string v2, "cch-bound-services"

    .line 1859
    :cond_66
    move v8, v0

    .line 1863
    :cond_67
    :goto_20
    if-le v0, v8, :cond_72

    .line 1871
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_68

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_68

    const/16 v6, 0xc8

    if-le v8, v6, :cond_69

    .line 1873
    const/16 v1, 0x384

    if-lt v0, v1, :cond_73

    .line 1874
    const-string v2, "cch-bound-ui-services"

    move v1, v0

    move/from16 v3, v19

    move/from16 v0, v26

    goto/16 :goto_22

    .line 1871
    :cond_68
    const/16 v6, 0xc8

    .line 1878
    :cond_69
    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v1, v1, 0x48

    if-eqz v1, :cond_6b

    .line 1880
    const/16 v1, -0x2bc

    if-lt v8, v1, :cond_6a

    .line 1881
    move v1, v8

    move/from16 v3, v19

    .local v1, "newAdj":I
    goto :goto_21

    .line 1884
    .end local v1    # "newAdj":I
    :cond_6a
    const/16 v1, -0x2bc

    .line 1885
    .restart local v1    # "newAdj":I
    const/16 v26, 0x2

    .line 1886
    const/4 v3, 0x0

    .line 1887
    .end local v19    # "procState":I
    .restart local v3    # "procState":I
    iget v4, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v3, v4, v13, v14}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 1888
    const/16 v29, 0x1

    goto :goto_21

    .line 1890
    .end local v1    # "newAdj":I
    .end local v3    # "procState":I
    .restart local v19    # "procState":I
    :cond_6b
    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_6c

    if-gt v8, v6, :cond_6c

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_6c

    .line 1893
    const/16 v1, 0xfa

    move/from16 v3, v19

    .restart local v1    # "newAdj":I
    goto :goto_21

    .line 1894
    .end local v1    # "newAdj":I
    :cond_6c
    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_6d

    if-ge v8, v6, :cond_6d

    if-lt v0, v6, :cond_6d

    .line 1897
    const/16 v1, 0xc8

    move/from16 v3, v19

    .restart local v1    # "newAdj":I
    goto :goto_21

    .line 1898
    .end local v1    # "newAdj":I
    :cond_6d
    if-lt v8, v6, :cond_6e

    .line 1899
    move v1, v8

    move/from16 v3, v19

    .restart local v1    # "newAdj":I
    goto :goto_21

    .line 1901
    .end local v1    # "newAdj":I
    :cond_6e
    const/16 v1, 0x64

    if-le v0, v1, :cond_6f

    .line 1903
    const/16 v1, 0x64

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v3, v19

    .restart local v1    # "newAdj":I
    goto :goto_21

    .line 1905
    .end local v1    # "newAdj":I
    :cond_6f
    move v1, v0

    move/from16 v3, v19

    .line 1908
    .end local v19    # "procState":I
    .restart local v1    # "newAdj":I
    .restart local v3    # "procState":I
    :goto_21
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v4

    if-nez v4, :cond_70

    .line 1909
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1911
    :cond_70
    if-le v0, v1, :cond_71

    .line 1912
    move v0, v1

    .line 1913
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1914
    const-string/jumbo v2, "service"

    move/from16 v0, v26

    goto :goto_22

    .line 1911
    :cond_71
    move v1, v0

    move/from16 v0, v26

    goto :goto_22

    .line 1863
    .end local v1    # "newAdj":I
    .end local v3    # "procState":I
    .restart local v19    # "procState":I
    :cond_72
    const/16 v6, 0xc8

    .line 1918
    :cond_73
    move v1, v0

    move/from16 v3, v19

    move/from16 v0, v26

    .end local v19    # "procState":I
    .end local v26    # "schedGroup":I
    .local v0, "schedGroup":I
    .local v1, "adj":I
    .restart local v3    # "procState":I
    :goto_22
    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v5, 0x800004

    and-int/2addr v4, v5

    if-nez v4, :cond_7c

    .line 1923
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v4

    .line 1924
    .local v4, "curSchedGroup":I
    if-le v4, v0, :cond_75

    .line 1925
    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_74

    .line 1926
    move v0, v4

    move v5, v0

    goto :goto_23

    .line 1928
    :cond_74
    const/4 v0, 0x2

    move v5, v0

    goto :goto_23

    .line 1924
    :cond_75
    move v5, v0

    .line 1931
    .end local v0    # "schedGroup":I
    .local v5, "schedGroup":I
    :goto_23
    const/4 v6, 0x2

    if-ge v9, v6, :cond_78

    .line 1936
    const/high16 v0, 0x4000000

    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1937
    const/4 v9, 0x5

    move/from16 v26, v5

    goto :goto_26

    .line 1938
    :cond_76
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_77

    iget v0, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v6, 0x2000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_77

    .line 1942
    const/4 v9, 0x5

    move/from16 v26, v5

    goto :goto_26

    .line 1944
    :cond_77
    const/4 v9, 0x6

    move/from16 v26, v5

    goto :goto_26

    .line 1947
    :cond_78
    const/4 v6, 0x2

    if-ne v9, v6, :cond_7a

    .line 1950
    const/4 v9, 0x3

    .line 1951
    const/4 v6, 0x0

    .line 1953
    .local v6, "enabled":Z
    :try_start_3
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    move/from16 v19, v4

    move/from16 v26, v5

    .end local v4    # "curSchedGroup":I
    .end local v5    # "schedGroup":I
    .local v19, "curSchedGroup":I
    .restart local v26    # "schedGroup":I
    :try_start_4
    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move/from16 v39, v6

    const-wide/32 v5, 0x81f62a4

    .end local v6    # "enabled":Z
    .local v39, "enabled":Z
    :try_start_5
    invoke-interface {v0, v5, v6, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move v6, v0

    .line 1956
    .end local v39    # "enabled":Z
    .restart local v6    # "enabled":Z
    goto :goto_25

    .line 1955
    .end local v6    # "enabled":Z
    .restart local v39    # "enabled":Z
    :catch_3
    move-exception v0

    goto :goto_24

    .end local v39    # "enabled":Z
    .restart local v6    # "enabled":Z
    :catch_4
    move-exception v0

    move/from16 v39, v6

    .end local v6    # "enabled":Z
    .restart local v39    # "enabled":Z
    goto :goto_24

    .end local v19    # "curSchedGroup":I
    .end local v26    # "schedGroup":I
    .end local v39    # "enabled":Z
    .restart local v4    # "curSchedGroup":I
    .restart local v5    # "schedGroup":I
    .restart local v6    # "enabled":Z
    :catch_5
    move-exception v0

    move/from16 v19, v4

    move/from16 v26, v5

    move/from16 v39, v6

    .end local v4    # "curSchedGroup":I
    .end local v5    # "schedGroup":I
    .end local v6    # "enabled":Z
    .restart local v19    # "curSchedGroup":I
    .restart local v26    # "schedGroup":I
    .restart local v39    # "enabled":Z
    :goto_24
    move/from16 v6, v39

    .line 1957
    .end local v39    # "enabled":Z
    .restart local v6    # "enabled":Z
    :goto_25
    if-eqz v6, :cond_79

    .line 1958
    const/16 v0, 0x1000

    invoke-virtual {v12, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1960
    or-int/lit8 v27, v27, 0x7

    goto :goto_26

    .line 1966
    :cond_79
    or-int/lit8 v27, v27, 0x7

    goto :goto_26

    .line 1947
    .end local v6    # "enabled":Z
    .end local v19    # "curSchedGroup":I
    .end local v26    # "schedGroup":I
    .restart local v4    # "curSchedGroup":I
    .restart local v5    # "schedGroup":I
    :cond_7a
    move/from16 v19, v4

    move/from16 v26, v5

    .line 1969
    .end local v4    # "curSchedGroup":I
    .end local v5    # "schedGroup":I
    .restart local v26    # "schedGroup":I
    :cond_7b
    :goto_26
    move/from16 v0, v26

    const/16 v5, 0x8

    goto :goto_27

    .end local v26    # "schedGroup":I
    .restart local v0    # "schedGroup":I
    :cond_7c
    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-nez v4, :cond_7d

    .line 1970
    const/16 v5, 0x8

    if-ge v9, v5, :cond_7e

    .line 1972
    const/16 v4, 0x8

    move v9, v4

    .end local v9    # "clientProcState":I
    .local v4, "clientProcState":I
    goto :goto_27

    .line 1976
    .end local v4    # "clientProcState":I
    .restart local v9    # "clientProcState":I
    :cond_7d
    const/16 v5, 0x8

    const/4 v4, 0x7

    if-ge v9, v4, :cond_7e

    .line 1978
    const/4 v4, 0x7

    move v9, v4

    .line 1983
    :cond_7e
    :goto_27
    const/4 v6, 0x3

    if-ge v0, v6, :cond_7f

    iget v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v19, 0x80000

    and-int v4, v4, v19

    if-eqz v4, :cond_7f

    .line 1985
    const/4 v0, 0x3

    move/from16 v26, v0

    goto :goto_28

    .line 1988
    :cond_7f
    move/from16 v26, v0

    .end local v0    # "schedGroup":I
    .restart local v26    # "schedGroup":I
    :goto_28
    if-nez v29, :cond_80

    .line 1989
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v9, v0, v13, v14}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 1992
    :cond_80
    if-le v3, v9, :cond_82

    .line 1993
    move v0, v9

    .line 1994
    .end local v3    # "procState":I
    .local v0, "procState":I
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1995
    if-nez v2, :cond_81

    .line 1996
    const-string/jumbo v2, "service"

    move v3, v0

    goto :goto_29

    .line 1995
    :cond_81
    move v3, v0

    .line 1999
    .end local v0    # "procState":I
    .restart local v3    # "procState":I
    :cond_82
    :goto_29
    const/4 v4, 0x7

    if-ge v3, v4, :cond_83

    iget v0, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v19, 0x20000000

    and-int v0, v0, v19

    if-eqz v0, :cond_83

    .line 2001
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 2003
    :cond_83
    if-eqz v2, :cond_86

    .line 2004
    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2005
    const/4 v4, 0x2

    iput v4, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 2007
    iget-object v0, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 2008
    iput v9, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 2009
    iget-object v0, v15, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 2010
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_85

    move v0, v9

    move/from16 v4, v21

    move/from16 v9, v41

    .end local v21    # "appUid":I
    .end local v41    # "logUid":I
    .local v0, "clientProcState":I
    .local v4, "appUid":I
    .local v9, "logUid":I
    if-ne v9, v4, :cond_84

    goto :goto_2a

    :cond_84
    move-object/from16 v13, v40

    move-object/from16 v14, v42

    move-object/from16 v6, v43

    goto :goto_2b

    .end local v0    # "clientProcState":I
    .end local v4    # "appUid":I
    .local v9, "clientProcState":I
    .restart local v21    # "appUid":I
    .restart local v41    # "logUid":I
    :cond_85
    move v0, v9

    move/from16 v4, v21

    move/from16 v9, v41

    .line 2011
    .end local v21    # "appUid":I
    .end local v41    # "logUid":I
    .restart local v0    # "clientProcState":I
    .restart local v4    # "appUid":I
    .local v9, "logUid":I
    :goto_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v40

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v42

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " adj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " procState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2011
    move-object/from16 v6, v43

    invoke-virtual {v10, v6, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 2003
    .end local v0    # "clientProcState":I
    .end local v4    # "appUid":I
    .local v9, "clientProcState":I
    .restart local v21    # "appUid":I
    .restart local v41    # "logUid":I
    :cond_86
    move v0, v9

    move/from16 v4, v21

    move-object/from16 v13, v40

    move/from16 v9, v41

    move-object/from16 v14, v42

    move-object/from16 v6, v43

    .line 2017
    .end local v2    # "adjType":Ljava/lang/String;
    .end local v21    # "appUid":I
    .end local v41    # "logUid":I
    .restart local v0    # "clientProcState":I
    .restart local v4    # "appUid":I
    .local v9, "logUid":I
    :goto_2b
    const/4 v2, 0x1

    move/from16 v47, v1

    move v1, v0

    move/from16 v0, v47

    goto :goto_2d

    .line 2027
    .end local v1    # "adj":I
    .end local v3    # "procState":I
    .end local v4    # "appUid":I
    .end local v12    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v0, "adj":I
    .local v6, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v9, "clientProcState":I
    .local v19, "procState":I
    .restart local v21    # "appUid":I
    .restart local v41    # "logUid":I
    :cond_87
    move-object v12, v6

    move v1, v9

    move/from16 v4, v21

    move-object/from16 v13, v40

    move/from16 v9, v41

    move-object/from16 v14, v42

    move-object/from16 v6, v43

    .end local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v21    # "appUid":I
    .end local v41    # "logUid":I
    .local v1, "clientProcState":I
    .restart local v4    # "appUid":I
    .local v9, "logUid":I
    .restart local v12    # "cr":Lcom/android/server/am/ConnectionRecord;
    const/16 v2, 0x384

    if-ge v8, v2, :cond_88

    .line 2028
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    goto :goto_2c

    .line 2027
    :cond_88
    const/4 v2, 0x1

    .line 2031
    :goto_2c
    move/from16 v3, v19

    .end local v19    # "procState":I
    .restart local v3    # "procState":I
    :goto_2d
    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v18, 0x8000000

    and-int v5, v5, v18

    if-eqz v5, :cond_89

    .line 2032
    iput-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 2034
    :cond_89
    iget-object v2, v12, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 2035
    .local v2, "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_8f

    .line 2036
    if-eqz v2, :cond_8e

    if-lez v0, :cond_8e

    .line 2037
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 2038
    const/4 v0, 0x0

    .line 2039
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2040
    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    move-object/from16 v40, v13

    const/4 v13, 0x4

    and-int/2addr v5, v13

    if-nez v5, :cond_8b

    .line 2041
    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_8a

    .line 2042
    const/16 v26, 0x4

    goto :goto_2e

    .line 2044
    :cond_8a
    const/16 v26, 0x2

    .line 2047
    :cond_8b
    :goto_2e
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 2048
    const-string/jumbo v5, "service"

    iput-object v5, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2049
    const/4 v5, 0x2

    iput v5, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 2051
    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 2052
    iput v3, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 2053
    iget-object v5, v15, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v5, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 2054
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_8c

    if-ne v9, v4, :cond_90

    .line 2055
    :cond_8c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Raise to service w/activity: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v6, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 2037
    :cond_8d
    move-object/from16 v40, v13

    goto :goto_2f

    .line 2036
    :cond_8e
    move-object/from16 v40, v13

    goto :goto_2f

    .line 2035
    :cond_8f
    move-object/from16 v40, v13

    .line 1790
    .end local v1    # "clientProcState":I
    .end local v2    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "clientAdj":I
    .end local v12    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v29    # "trackedProcState":Z
    :cond_90
    :goto_2f
    add-int/lit8 v2, v28, 0x1

    move v8, v4

    move-object v7, v14

    move-object/from16 v4, v20

    move/from16 v5, v34

    move/from16 v12, v38

    move-object/from16 v38, v40

    move/from16 v21, v44

    move-wide/from16 v13, p5

    move-object/from16 v34, v16

    move-object/from16 v47, v15

    move-object v15, v6

    move-object/from16 v6, v37

    move/from16 v37, v9

    move-object/from16 v9, v47

    .end local v28    # "i":I
    .local v2, "i":I
    goto/16 :goto_1c

    .line 1787
    .end local v15    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v16    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v20    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v38    # "capabilityFromFGS":I
    .end local v44    # "foregroundActivities":Z
    .local v4, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v5, "conni":I
    .local v6, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v8, "appUid":I
    .local v9, "s":Lcom/android/server/am/ServiceRecord;
    .local v12, "capabilityFromFGS":I
    .local v21, "foregroundActivities":Z
    .local v34, "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v37, "logUid":I
    :cond_91
    move/from16 v28, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object v14, v7

    move v4, v8

    move/from16 v44, v21

    move-object/from16 v16, v34

    move-object/from16 v40, v38

    move/from16 v34, v5

    move/from16 v38, v12

    move/from16 v47, v37

    move-object/from16 v37, v6

    move-object v6, v15

    move-object v15, v9

    move/from16 v9, v47

    .line 1784
    .end local v2    # "i":I
    .end local v3    # "procState":I
    .end local v5    # "conni":I
    .end local v6    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v8    # "appUid":I
    .end local v12    # "capabilityFromFGS":I
    .end local v21    # "foregroundActivities":Z
    .local v4, "appUid":I
    .local v9, "logUid":I
    .restart local v15    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v16    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v19    # "procState":I
    .local v34, "conni":I
    .local v37, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v38    # "capabilityFromFGS":I
    .restart local v44    # "foregroundActivities":Z
    :goto_30
    add-int/lit8 v5, v34, -0x1

    move v8, v4

    move-object v7, v14

    move-object/from16 v34, v16

    move/from16 v2, v19

    move/from16 v1, v26

    move/from16 v26, v27

    move/from16 v12, v38

    move-object/from16 v38, v40

    move/from16 v21, v44

    move-wide/from16 v13, p5

    move-object/from16 v47, v15

    move-object v15, v6

    move-object/from16 v6, v37

    move/from16 v37, v9

    move-object/from16 v9, v47

    .end local v34    # "conni":I
    .restart local v5    # "conni":I
    goto/16 :goto_1a

    .line 1781
    .end local v4    # "appUid":I
    .end local v15    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v16    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v19    # "procState":I
    .end local v27    # "capability":I
    .end local v38    # "capabilityFromFGS":I
    .end local v44    # "foregroundActivities":Z
    .local v1, "schedGroup":I
    .local v2, "procState":I
    .restart local v6    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v8    # "appUid":I
    .local v9, "s":Lcom/android/server/am/ServiceRecord;
    .restart local v12    # "capabilityFromFGS":I
    .restart local v21    # "foregroundActivities":Z
    .local v26, "capability":I
    .local v34, "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v37, "logUid":I
    :cond_92
    move-object v14, v7

    move v4, v8

    move/from16 v44, v21

    move-object/from16 v16, v34

    move-object/from16 v40, v38

    move/from16 v34, v5

    move/from16 v38, v12

    move/from16 v47, v37

    move-object/from16 v37, v6

    move-object v6, v15

    move-object v15, v9

    move/from16 v9, v47

    .line 1708
    .end local v5    # "conni":I
    .end local v6    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v8    # "appUid":I
    .end local v12    # "capabilityFromFGS":I
    .end local v21    # "foregroundActivities":Z
    .end local v34    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v37    # "logUid":I
    .restart local v4    # "appUid":I
    .local v9, "logUid":I
    .restart local v16    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v38    # "capabilityFromFGS":I
    .restart local v44    # "foregroundActivities":Z
    :goto_31
    add-int/lit8 v3, v33, -0x1

    move v8, v4

    move-object v15, v6

    move v6, v9

    move-object v7, v14

    move-object/from16 v4, v16

    move/from16 v12, v38

    move-object/from16 v5, v40

    move/from16 v9, v44

    move-wide/from16 v13, p5

    .end local v33    # "is":I
    .local v3, "is":I
    goto/16 :goto_10

    .line 1705
    .end local v9    # "logUid":I
    .end local v16    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v38    # "capabilityFromFGS":I
    .end local v44    # "foregroundActivities":Z
    .local v4, "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v6, "logUid":I
    .restart local v8    # "appUid":I
    .restart local v12    # "capabilityFromFGS":I
    .restart local v21    # "foregroundActivities":Z
    :cond_93
    move/from16 v28, v1

    move/from16 v33, v3

    move-object/from16 v16, v4

    move-object/from16 v40, v5

    move v9, v6

    move-object v14, v7

    move/from16 v38, v12

    move-object v6, v15

    move/from16 v44, v21

    const/16 v4, 0x1f4

    move v12, v8

    .line 2064
    .end local v1    # "schedGroup":I
    .end local v3    # "is":I
    .end local v4    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v6    # "logUid":I
    .end local v8    # "appUid":I
    .end local v21    # "foregroundActivities":Z
    .restart local v9    # "logUid":I
    .local v12, "appUid":I
    .restart local v16    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v28, "schedGroup":I
    .restart local v38    # "capabilityFromFGS":I
    .restart local v44    # "foregroundActivities":Z
    :goto_32
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    move v13, v1

    move/from16 v1, v28

    .line 2065
    .end local v28    # "schedGroup":I
    .restart local v1    # "schedGroup":I
    .local v13, "provi":I
    :goto_33
    if-ltz v13, :cond_b0

    if-gtz v0, :cond_95

    if-eqz v1, :cond_95

    const/4 v3, 0x2

    if-le v2, v3, :cond_94

    goto :goto_34

    :cond_94
    move-wide/from16 v3, p5

    move-object v5, v6

    move v14, v9

    const/16 v28, 0x3

    goto/16 :goto_42

    .line 2069
    :cond_95
    :goto_34
    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/server/am/ContentProviderRecord;

    .line 2070
    .local v15, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v3, v15, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    move v8, v1

    move v7, v2

    move v5, v3

    .line 2071
    .end local v1    # "schedGroup":I
    .end local v2    # "procState":I
    .local v5, "i":I
    .local v7, "procState":I
    .local v8, "schedGroup":I
    :goto_35
    if-ltz v5, :cond_a8

    if-gtz v0, :cond_97

    if-eqz v8, :cond_97

    const/4 v1, 0x2

    if-le v7, v1, :cond_96

    goto :goto_36

    :cond_96
    move-wide/from16 v3, p5

    move-object v5, v6

    move/from16 v29, v13

    move-object/from16 v42, v14

    move-object/from16 v6, v40

    const/16 v28, 0x3

    move v13, v8

    move v14, v9

    move v8, v7

    goto/16 :goto_40

    .line 2075
    :cond_97
    :goto_36
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/am/ContentProviderConnection;

    .line 2076
    .local v3, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-object v2, v3, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 2077
    .local v2, "client":Lcom/android/server/am/ProcessRecord;
    if-ne v2, v11, :cond_98

    .line 2079
    move/from16 v23, v5

    move-object/from16 v46, v6

    move/from16 v27, v7

    move/from16 v29, v13

    move-object/from16 v42, v14

    const/16 v28, 0x3

    move v13, v8

    move v14, v9

    goto/16 :goto_38

    .line 2084
    :cond_98
    invoke-static {v2, v11}, Lcom/android/server/am/OpBGFrozenInjector;->updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 2087
    if-eqz p8, :cond_99

    .line 2088
    const/16 v19, 0x1

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    .end local v2    # "client":Lcom/android/server/am/ProcessRecord;
    .local v20, "client":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v45, v3

    .end local v3    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v45, "conn":Lcom/android/server/am/ContentProviderConnection;
    move/from16 v3, p2

    move/from16 v21, v4

    move-object/from16 v4, p3

    move/from16 v23, v5

    .end local v5    # "i":I
    .local v23, "i":I
    move/from16 v5, p4

    move-object/from16 v46, v6

    move/from16 v27, v7

    const/16 v28, 0x3

    .end local v7    # "procState":I
    .local v27, "procState":I
    move-wide/from16 v6, p5

    move/from16 v29, v13

    move v13, v8

    .end local v8    # "schedGroup":I
    .local v13, "schedGroup":I
    .local v29, "provi":I
    move/from16 v8, p7

    move-object/from16 v42, v14

    move v14, v9

    .end local v9    # "logUid":I
    .local v14, "logUid":I
    move/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v7, v20

    goto :goto_37

    .line 2091
    .end local v14    # "logUid":I
    .end local v20    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v23    # "i":I
    .end local v27    # "procState":I
    .end local v29    # "provi":I
    .end local v45    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v2    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v5    # "i":I
    .restart local v7    # "procState":I
    .restart local v8    # "schedGroup":I
    .restart local v9    # "logUid":I
    .local v13, "provi":I
    :cond_99
    move-object/from16 v20, v2

    move-object/from16 v45, v3

    move/from16 v23, v5

    move-object/from16 v46, v6

    move/from16 v27, v7

    move/from16 v29, v13

    move-object/from16 v42, v14

    const/16 v28, 0x3

    move v13, v8

    move v14, v9

    .end local v2    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v5    # "i":I
    .end local v7    # "procState":I
    .end local v8    # "schedGroup":I
    .end local v9    # "logUid":I
    .local v13, "schedGroup":I
    .restart local v14    # "logUid":I
    .restart local v20    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "i":I
    .restart local v27    # "procState":I
    .restart local v29    # "provi":I
    .restart local v45    # "conn":Lcom/android/server/am/ContentProviderConnection;
    move-object/from16 v7, v20

    .end local v20    # "client":Lcom/android/server/am/ProcessRecord;
    .local v7, "client":Lcom/android/server/am/ProcessRecord;
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2092
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 2095
    :goto_37
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v4, v27

    move v5, v0

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 2096
    nop

    .line 2074
    .end local v14    # "logUid":I
    .end local v23    # "i":I
    .end local v27    # "procState":I
    .end local v29    # "provi":I
    .end local v45    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v5    # "i":I
    .local v7, "procState":I
    .restart local v8    # "schedGroup":I
    .restart local v9    # "logUid":I
    .local v13, "provi":I
    :goto_38
    move-wide/from16 v3, p5

    move v8, v13

    move/from16 v7, v27

    move-object/from16 v6, v40

    move-object/from16 v5, v46

    .end local v5    # "i":I
    .end local v7    # "procState":I
    .end local v8    # "schedGroup":I
    .end local v9    # "logUid":I
    .local v13, "schedGroup":I
    .restart local v14    # "logUid":I
    .restart local v23    # "i":I
    .restart local v27    # "procState":I
    .restart local v29    # "provi":I
    goto/16 :goto_3f

    .line 2099
    .local v7, "client":Lcom/android/server/am/ProcessRecord;
    .restart local v45    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_9a
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v9

    .line 2100
    .local v9, "clientAdj":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    .line 2102
    .local v1, "clientProcState":I
    const/16 v3, 0x10

    if-lt v1, v3, :cond_9b

    .line 2105
    const/16 v1, 0x13

    .line 2107
    :cond_9b
    const/4 v2, 0x0

    .line 2108
    .local v2, "adjType":Ljava/lang/String;
    if-le v0, v9, :cond_9f

    .line 2109
    iget-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v4, :cond_9c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v4

    if-nez v4, :cond_9c

    const/16 v4, 0xc8

    if-le v9, v4, :cond_9d

    .line 2111
    const-string v2, "cch-ui-provider"

    goto :goto_3a

    .line 2109
    :cond_9c
    const/16 v4, 0xc8

    .line 2113
    :cond_9d
    if-lez v9, :cond_9e

    .line 2114
    move v5, v9

    goto :goto_39

    :cond_9e
    const/4 v5, 0x0

    :goto_39
    move v0, v5

    .line 2115
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2116
    const-string/jumbo v2, "provider"

    .line 2118
    :goto_3a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v5

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v6

    and-int/2addr v5, v6

    invoke-virtual {v11, v5}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    goto :goto_3b

    .line 2108
    :cond_9f
    const/16 v4, 0xc8

    .line 2121
    :goto_3b
    const/4 v5, 0x4

    if-gt v1, v5, :cond_a2

    .line 2122
    if-nez v2, :cond_a0

    .line 2123
    const-string/jumbo v2, "provider"

    .line 2125
    :cond_a0
    const/4 v6, 0x2

    if-ne v1, v6, :cond_a1

    .line 2126
    const/4 v1, 0x3

    goto :goto_3c

    .line 2128
    :cond_a1
    const/4 v1, 0x5

    goto :goto_3c

    .line 2121
    :cond_a2
    const/4 v6, 0x2

    .line 2132
    :goto_3c
    iget v8, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-wide/from16 v3, p5

    move-object/from16 v6, v40

    move-object/from16 v5, v45

    .end local v45    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v5, "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-virtual {v5, v1, v8, v3, v4}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(IIJ)V

    .line 2133
    move/from16 v8, v27

    .end local v27    # "procState":I
    .local v8, "procState":I
    if-le v8, v1, :cond_a3

    .line 2134
    move v8, v1

    .line 2135
    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 2137
    :cond_a3
    move-object/from16 v45, v5

    .end local v5    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v45    # "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v5

    if-le v5, v13, :cond_a4

    .line 2138
    const/4 v5, 0x2

    move v13, v5

    .line 2140
    :cond_a4
    if-eqz v2, :cond_a7

    .line 2141
    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2142
    const/4 v5, 0x1

    iput v5, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 2144
    iput-object v7, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 2145
    iput v1, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 2146
    iget-object v5, v15, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v5, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 2147
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_a6

    if-ne v14, v12, :cond_a5

    goto :goto_3d

    :cond_a5
    move-object/from16 v5, v46

    goto :goto_3e

    .line 2148
    :cond_a6
    :goto_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v20, v1

    move-object/from16 v1, v42

    .end local v1    # "clientProcState":I
    .local v20, "clientProcState":I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", due to "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " adj="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " procState="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    invoke-static {v8}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2148
    move-object/from16 v5, v46

    invoke-virtual {v10, v5, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 2140
    .end local v20    # "clientProcState":I
    .restart local v1    # "clientProcState":I
    :cond_a7
    move/from16 v20, v1

    move-object/from16 v5, v46

    .line 2074
    .end local v1    # "clientProcState":I
    .end local v2    # "adjType":Ljava/lang/String;
    .end local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "clientAdj":I
    .end local v45    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :goto_3e
    move v7, v8

    move v8, v13

    .end local v13    # "schedGroup":I
    .local v7, "procState":I
    .local v8, "schedGroup":I
    :goto_3f
    add-int/lit8 v1, v23, -0x1

    move-object/from16 v40, v6

    move v9, v14

    move/from16 v13, v29

    move-object/from16 v14, v42

    const/16 v4, 0x1f4

    move-object v6, v5

    move v5, v1

    .end local v23    # "i":I
    .local v1, "i":I
    goto/16 :goto_35

    .line 2071
    .end local v1    # "i":I
    .end local v14    # "logUid":I
    .end local v29    # "provi":I
    .local v5, "i":I
    .local v9, "logUid":I
    .local v13, "provi":I
    :cond_a8
    move-wide/from16 v3, p5

    move/from16 v23, v5

    move-object v5, v6

    move/from16 v29, v13

    move-object/from16 v42, v14

    move-object/from16 v6, v40

    const/16 v28, 0x3

    move v13, v8

    move v14, v9

    move v8, v7

    .line 2158
    .end local v5    # "i":I
    .end local v7    # "procState":I
    .end local v9    # "logUid":I
    .local v8, "procState":I
    .local v13, "schedGroup":I
    .restart local v14    # "logUid":I
    .restart local v29    # "provi":I
    :goto_40
    invoke-virtual {v15}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2159
    if-lez v0, :cond_ab

    .line 2160
    const/4 v0, 0x0

    .line 2161
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2162
    const/4 v1, 0x2

    .line 2163
    .end local v13    # "schedGroup":I
    .local v1, "schedGroup":I
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 2164
    const-string v2, "ext-provider"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2165
    iget-object v2, v15, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 2166
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_a9

    if-ne v14, v12, :cond_aa

    .line 2167
    :cond_a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raise adj to external provider: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v5, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    :cond_aa
    move v13, v1

    .end local v1    # "schedGroup":I
    .restart local v13    # "schedGroup":I
    :cond_ab
    const/4 v1, 0x6

    if-le v8, v1, :cond_ae

    .line 2172
    const/4 v1, 0x6

    .line 2173
    .end local v8    # "procState":I
    .local v1, "procState":I
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 2174
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_ac

    if-ne v14, v12, :cond_ad

    .line 2175
    :cond_ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raise procstate to external provider: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v5, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    .end local v15    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_ad
    move v2, v1

    move v1, v13

    goto :goto_41

    .line 2171
    .end local v1    # "procState":I
    .restart local v8    # "procState":I
    .restart local v15    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_ae
    move v2, v8

    move v1, v13

    goto :goto_41

    .line 2158
    :cond_af
    move v2, v8

    move v1, v13

    .line 2068
    .end local v8    # "procState":I
    .end local v13    # "schedGroup":I
    .end local v15    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v1, "schedGroup":I
    .local v2, "procState":I
    :goto_41
    add-int/lit8 v13, v29, -0x1

    move-object/from16 v40, v6

    move v9, v14

    move-object/from16 v14, v42

    const/16 v4, 0x1f4

    move-object v6, v5

    .end local v29    # "provi":I
    .local v13, "provi":I
    goto/16 :goto_33

    .line 2065
    .end local v14    # "logUid":I
    .restart local v9    # "logUid":I
    :cond_b0
    move-wide/from16 v3, p5

    move-object v5, v6

    move v14, v9

    move/from16 v29, v13

    const/16 v28, 0x3

    .line 2182
    .end local v9    # "logUid":I
    .end local v13    # "provi":I
    .restart local v14    # "logUid":I
    :goto_42
    iget-wide v6, v11, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_b4

    iget-wide v6, v11, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    iget-object v8, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v6, v8

    cmp-long v6, v6, v3

    if-lez v6, :cond_b4

    .line 2184
    const/16 v6, 0x2bc

    if-le v0, v6, :cond_b2

    .line 2185
    const/16 v0, 0x2bc

    .line 2186
    const/4 v1, 0x0

    .line 2187
    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 2188
    const-string/jumbo v6, "recent-provider"

    iput-object v6, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2189
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v6, :cond_b1

    if-ne v14, v12, :cond_b2

    .line 2190
    :cond_b1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raise adj to recent provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    :cond_b2
    const/16 v6, 0xf

    if-le v2, v6, :cond_b4

    .line 2195
    const/16 v2, 0xf

    .line 2196
    const-string/jumbo v6, "recent-provider"

    iput-object v6, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2197
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v6, :cond_b3

    if-ne v14, v12, :cond_b4

    .line 2198
    :cond_b3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raise procstate to recent provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    :cond_b4
    const/16 v5, 0x13

    if-lt v2, v5, :cond_b6

    .line 2205
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 2207
    const/16 v2, 0x11

    .line 2208
    const-string v5, "cch-client-act"

    iput-object v5, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_43

    .line 2209
    :cond_b5
    iget-boolean v5, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v5, :cond_b6

    .line 2212
    const/16 v2, 0x10

    .line 2213
    const-string v5, "cch-as-act"

    iput-object v5, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2217
    :cond_b6
    :goto_43
    const/16 v5, 0x1f4

    if-ne v0, v5, :cond_bc

    .line 2218
    if-eqz p4, :cond_bb

    if-nez p7, :cond_bb

    .line 2219
    iget v5, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v6, v10, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    div-int/lit8 v6, v6, 0x3

    if-le v5, v6, :cond_b7

    const/4 v9, 0x1

    goto :goto_44

    :cond_b7
    const/4 v9, 0x0

    :goto_44
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    .line 2220
    iget v5, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 2222
    iget-boolean v5, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-nez v5, :cond_ba

    .line 2227
    iget-object v5, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez v5, :cond_b9

    iget-wide v5, v11, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iget-object v7, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2228
    invoke-virtual {v7}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_b8

    .line 2229
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    .line 2230
    iput-boolean v5, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    const/4 v5, 0x0

    goto :goto_46

    .line 2228
    :cond_b8
    const/4 v5, 0x1

    goto :goto_45

    .line 2227
    :cond_b9
    const/4 v5, 0x1

    .line 2233
    :goto_45
    iget v6, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v6, v5

    iput v6, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    const/4 v5, 0x0

    goto :goto_46

    .line 2237
    :cond_ba
    const/4 v5, 0x0

    iput-boolean v5, v11, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    goto :goto_46

    .line 2218
    :cond_bb
    const/4 v5, 0x0

    .line 2240
    :goto_46
    iget-boolean v6, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v6, :cond_bd

    .line 2241
    const/16 v0, 0x320

    goto :goto_47

    .line 2217
    :cond_bc
    const/4 v5, 0x0

    .line 2245
    :cond_bd
    :goto_47
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2249
    iget v6, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-le v0, v6, :cond_be

    .line 2250
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 2251
    iget v6, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/16 v7, 0xfa

    if-gt v6, v7, :cond_be

    .line 2252
    const/4 v1, 0x2

    .line 2258
    :cond_be
    const/4 v6, 0x5

    if-lt v2, v6, :cond_bf

    iget-object v6, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c0

    .line 2260
    if-le v1, v7, :cond_c0

    .line 2261
    const/4 v1, 0x1

    goto :goto_48

    .line 2258
    :cond_bf
    const/4 v7, 0x1

    .line 2266
    :cond_c0
    :goto_48
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 2267
    or-int v26, v26, v38

    .line 2270
    :cond_c1
    invoke-direct {v10, v11, v2}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I

    move-result v6

    or-int v6, v26, v6

    .line 2277
    .end local v26    # "capability":I
    .local v6, "capability":I
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v8

    iput v8, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2278
    iput v6, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    .line 2279
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 2280
    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 2281
    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 2282
    move/from16 v8, v44

    .end local v44    # "foregroundActivities":Z
    .local v8, "foregroundActivities":Z
    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 2283
    iget v9, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v9, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 2287
    move-object/from16 v9, p3

    invoke-static {v11, v9}, Lcom/android/server/am/OomAdjusterInjector;->setTunedAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 2291
    iget v13, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v15, v32

    .end local v32    # "prevAppAdj":I
    .local v15, "prevAppAdj":I
    if-lt v13, v15, :cond_c4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v13

    move/from16 v5, v31

    .end local v31    # "prevProcState":I
    .local v5, "prevProcState":I
    if-lt v13, v5, :cond_c3

    iget v13, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    move/from16 v7, v30

    .end local v30    # "prevCapability":I
    .local v7, "prevCapability":I
    if-eq v13, v7, :cond_c2

    goto :goto_49

    :cond_c2
    const/16 v25, 0x0

    goto :goto_4a

    .end local v7    # "prevCapability":I
    .restart local v30    # "prevCapability":I
    :cond_c3
    move/from16 v7, v30

    .end local v30    # "prevCapability":I
    .restart local v7    # "prevCapability":I
    goto :goto_49

    .end local v5    # "prevProcState":I
    .end local v7    # "prevCapability":I
    .restart local v30    # "prevCapability":I
    .restart local v31    # "prevProcState":I
    :cond_c4
    move/from16 v7, v30

    move/from16 v5, v31

    .end local v30    # "prevCapability":I
    .end local v31    # "prevProcState":I
    .restart local v5    # "prevProcState":I
    .restart local v7    # "prevCapability":I
    :goto_49
    const/16 v25, 0x1

    :goto_4a
    return v25
.end method

.method private static createAdjusterThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 271
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "OomAdjuster"

    const/16 v2, -0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 273
    .local v0, "adjusterThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 274
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$OomAdjuster$w2JKyOlVhlVlGBOm72ve5OICjWM;

    invoke-direct {v2, v0}, Lcom/android/server/am/-$$Lambda$OomAdjuster$w2JKyOlVhlVlGBOm72ve5OICjWM;-><init>(Lcom/android/server/ServiceThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-object v0
.end method

.method private getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "procState"    # I

    .line 2296
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    .line 2317
    return v1

    .line 2304
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2307
    return v1

    .line 2312
    :cond_1
    const/4 v0, 0x6

    return v0

    .line 2300
    :cond_2
    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$createAdjusterThread$0(Lcom/android/server/ServiceThread;)V
    .locals 2
    .param p0, "adjusterThread"    # Lcom/android/server/ServiceThread;

    .line 274
    nop

    .line 275
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    .line 274
    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void
.end method

.method private maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowUptime"    # J

    .line 2837
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 2838
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 2839
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    .line 2841
    :cond_0
    return-void
.end method

.method private maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"    # J

    .line 2789
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    if-eqz v0, :cond_0

    .line 2790
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

    .line 2792
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2790
    const-string v1, "OomAdjuster"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v0, :cond_1

    .line 2795
    return-void

    .line 2801
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    const-wide/16 v3, 0x0

    if-le v0, v1, :cond_7

    .line 2802
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 2805
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v0, v1, :cond_5

    .line 2806
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    .line 2807
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    .line 2808
    const/4 v0, 0x0

    .local v0, "isInteraction":Z
    goto :goto_1

    .line 2810
    .end local v0    # "isInteraction":Z
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    add-long/2addr v0, v7

    cmp-long v0, p2, v0

    if-lez v0, :cond_4

    move v5, v6

    :cond_4
    move v0, v5

    .restart local v0    # "isInteraction":Z
    goto :goto_1

    .line 2814
    .end local v0    # "isInteraction":Z
    :cond_5
    nop

    .line 2815
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-gt v0, v2, :cond_6

    move v5, v6

    :cond_6
    move v0, v5

    .line 2816
    .restart local v0    # "isInteraction":Z
    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    goto :goto_1

    .line 2803
    .end local v0    # "isInteraction":Z
    :cond_7
    :goto_0
    const/4 v0, 0x1

    .line 2804
    .restart local v0    # "isInteraction":Z
    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    .line 2818
    :goto_1
    if-eqz v0, :cond_9

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v1, :cond_8

    .line 2819
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v5

    sub-long v5, p2, v5

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v1, v5, v7

    if-lez v1, :cond_9

    .line 2821
    :cond_8
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    .line 2822
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 2823
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 2824
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_9

    .line 2825
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v7, v1, v5

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v6, v7, v8, v2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2824
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2830
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_9
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    .line 2831
    if-nez v0, :cond_a

    .line 2832
    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    .line 2834
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

    .line 2334
    iget-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v0, :cond_1

    .line 2338
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 2341
    iget v1, p2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v1, v2, :cond_1

    .line 2342
    if-eqz p5, :cond_0

    .line 2345
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    if-lt v1, p3, :cond_1

    .line 2346
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    if-lt v1, p4, :cond_1

    .line 2347
    return v0

    .line 2352
    :cond_0
    return v0

    .line 2356
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateAndTrimProcessLocked(JJJLcom/android/server/am/ActiveUids;)Z
    .locals 35
    .param p1, "now"    # J
    .param p3, "nowElapsed"    # J
    .param p5, "oldTime"    # J
    .param p7, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 840
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 841
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 843
    .local v9, "numLru":I
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v10, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 844
    .local v10, "emptyProcessLimit":I
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int v11, v0, v10

    .line 846
    .local v11, "cachedProcessLimit":I
    const/4 v0, 0x0

    .line 847
    .local v0, "lastCachedGroup":I
    const/4 v1, 0x0

    .line 848
    .local v1, "lastCachedGroupUid":I
    const/4 v2, 0x0

    .line 849
    .local v2, "numCached":I
    const/4 v3, 0x0

    .line 850
    .local v3, "numCachedExtraGroup":I
    const/4 v4, 0x0

    .line 851
    .local v4, "numEmpty":I
    const/4 v5, 0x0

    .line 852
    .local v5, "numTrimming":I
    const/4 v6, 0x0

    .line 853
    .local v6, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v12, 0x0

    .line 854
    .local v12, "serviceLastActivity":J
    const/4 v14, 0x0

    .line 856
    .local v14, "numBServices":I
    add-int/lit8 v15, v9, -0x1

    move-wide/from16 v33, v12

    move v12, v0

    move v13, v1

    move-object v0, v6

    move v6, v5

    move v5, v4

    move v4, v15

    move v15, v3

    move v3, v14

    move v14, v2

    move-wide/from16 v1, v33

    .end local v2    # "numCached":I
    .local v0, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v1, "serviceLastActivity":J
    .local v3, "numBServices":I
    .local v4, "i":I
    .local v5, "numEmpty":I
    .local v6, "numTrimming":I
    .local v12, "lastCachedGroup":I
    .local v13, "lastCachedGroupUid":I
    .local v14, "numCached":I
    .local v15, "numCachedExtraGroup":I
    :goto_0
    move-wide/from16 v16, v1

    .end local v1    # "serviceLastActivity":J
    .local v16, "serviceLastActivity":J
    const-string v1, "app.processName = "

    const-string v2, " app.pid = "

    move/from16 v19, v5

    .end local v5    # "numEmpty":I
    .local v19, "numEmpty":I
    const-string v5, "OomAdjuster"

    move/from16 v20, v9

    .end local v9    # "numLru":I
    .local v20, "numLru":I
    if-ltz v4, :cond_1c

    .line 857
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v9, v21

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 858
    .local v9, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v21, v4

    .end local v4    # "i":I
    .local v21, "i":I
    iget-boolean v4, v7, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    if-eqz v4, :cond_6

    iget-boolean v4, v9, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v4, :cond_6

    iget v4, v9, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v23, v6

    .end local v6    # "numTrimming":I
    .local v23, "numTrimming":I
    const/16 v6, 0x320

    if-ne v4, v6, :cond_5

    .line 860
    add-int/lit8 v3, v3, 0x1

    .line 861
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    .local v4, "s":I
    :goto_1
    if-ltz v4, :cond_4

    .line 862
    invoke-virtual {v9, v4}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v6

    .line 863
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    sget-boolean v24, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v24, :cond_0

    move-object/from16 v24, v0

    .end local v0    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v24, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v25, v3

    .end local v3    # "numBServices":I
    .local v25, "numBServices":I
    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " serviceb = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v9, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " s = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sr.lastActivity = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v26, v11

    move/from16 v27, v12

    .end local v11    # "cachedProcessLimit":I
    .end local v12    # "lastCachedGroup":I
    .local v26, "cachedProcessLimit":I
    .local v27, "lastCachedGroup":I
    iget-wide v11, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " packageName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " processName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v24    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "numBServices":I
    .end local v26    # "cachedProcessLimit":I
    .end local v27    # "lastCachedGroup":I
    .restart local v0    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "numBServices":I
    .restart local v11    # "cachedProcessLimit":I
    .restart local v12    # "lastCachedGroup":I
    :cond_0
    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v11

    move/from16 v27, v12

    .line 867
    .end local v0    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "numBServices":I
    .end local v11    # "cachedProcessLimit":I
    .end local v12    # "lastCachedGroup":I
    .restart local v24    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v25    # "numBServices":I
    .restart local v26    # "cachedProcessLimit":I
    .restart local v27    # "lastCachedGroup":I
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v28, v1

    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    sub-long/2addr v11, v0

    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    int-to-long v0, v0

    cmp-long v0, v11, v0

    if-gez v0, :cond_1

    .line 869
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_3

    .line 870
    const-string v0, "Not aged enough!!!"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 874
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v16, v0

    if-nez v0, :cond_2

    .line 875
    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 876
    .end local v16    # "serviceLastActivity":J
    .local v0, "serviceLastActivity":J
    move-object v3, v9

    move-wide/from16 v16, v0

    move-object v0, v3

    .end local v24    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v3, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    goto :goto_4

    .line 877
    .end local v0    # "serviceLastActivity":J
    .end local v3    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "serviceLastActivity":J
    .restart local v24    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_2
    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    cmp-long v0, v0, v16

    if-gez v0, :cond_3

    .line 878
    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 879
    .end local v16    # "serviceLastActivity":J
    .restart local v0    # "serviceLastActivity":J
    move-object v3, v9

    move-wide/from16 v16, v0

    move-object v0, v3

    .end local v24    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    goto :goto_4

    .line 861
    .end local v0    # "serviceLastActivity":J
    .end local v3    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v16    # "serviceLastActivity":J
    .restart local v24    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_3
    move-object/from16 v0, v24

    .end local v24    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v0, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :goto_4
    add-int/lit8 v4, v4, -0x1

    move/from16 v3, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move-object/from16 v1, v28

    goto/16 :goto_1

    .end local v25    # "numBServices":I
    .end local v26    # "cachedProcessLimit":I
    .end local v27    # "lastCachedGroup":I
    .local v3, "numBServices":I
    .restart local v11    # "cachedProcessLimit":I
    .restart local v12    # "lastCachedGroup":I
    :cond_4
    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v11

    move/from16 v27, v12

    .end local v0    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "numBServices":I
    .end local v11    # "cachedProcessLimit":I
    .end local v12    # "lastCachedGroup":I
    .restart local v24    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v25    # "numBServices":I
    .restart local v26    # "cachedProcessLimit":I
    .restart local v27    # "lastCachedGroup":I
    move-object/from16 v11, v24

    goto :goto_6

    .line 858
    .end local v4    # "s":I
    .end local v24    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "numBServices":I
    .end local v26    # "cachedProcessLimit":I
    .end local v27    # "lastCachedGroup":I
    .restart local v0    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "numBServices":I
    .restart local v11    # "cachedProcessLimit":I
    .restart local v12    # "lastCachedGroup":I
    :cond_5
    move/from16 v26, v11

    move/from16 v27, v12

    .end local v11    # "cachedProcessLimit":I
    .end local v12    # "lastCachedGroup":I
    .restart local v26    # "cachedProcessLimit":I
    .restart local v27    # "lastCachedGroup":I
    goto :goto_5

    .end local v23    # "numTrimming":I
    .end local v26    # "cachedProcessLimit":I
    .end local v27    # "lastCachedGroup":I
    .local v6, "numTrimming":I
    .restart local v11    # "cachedProcessLimit":I
    .restart local v12    # "lastCachedGroup":I
    :cond_6
    move/from16 v23, v6

    move/from16 v26, v11

    move/from16 v27, v12

    .line 883
    .end local v6    # "numTrimming":I
    .end local v11    # "cachedProcessLimit":I
    .end local v12    # "lastCachedGroup":I
    .restart local v23    # "numTrimming":I
    .restart local v26    # "cachedProcessLimit":I
    .restart local v27    # "lastCachedGroup":I
    :goto_5
    move-object v11, v0

    move/from16 v25, v3

    .end local v0    # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "numBServices":I
    .local v11, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v25    # "numBServices":I
    :goto_6
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_7

    if-eqz v11, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Identified app.processName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_7
    iget-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_1b

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1b

    .line 888
    iget v0, v9, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v0, v1, :cond_8

    .line 889
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    const/4 v12, 0x5

    move/from16 v18, v21

    .end local v21    # "i":I
    .local v18, "i":I
    move-wide/from16 v3, p1

    move/from16 v12, v19

    move-object/from16 v19, v8

    move/from16 v8, v23

    .end local v23    # "numTrimming":I
    .local v8, "numTrimming":I
    .local v12, "numEmpty":I
    .local v19, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    goto :goto_7

    .line 888
    .end local v12    # "numEmpty":I
    .end local v18    # "i":I
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v19, "numEmpty":I
    .restart local v21    # "i":I
    .restart local v23    # "numTrimming":I
    :cond_8
    move/from16 v12, v19

    move/from16 v18, v21

    move-object/from16 v19, v8

    move/from16 v8, v23

    .line 893
    .end local v21    # "i":I
    .end local v23    # "numTrimming":I
    .local v8, "numTrimming":I
    .restart local v12    # "numEmpty":I
    .restart local v18    # "i":I
    .local v19, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_7
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/16 v3, 0xd

    if-eq v0, v2, :cond_c

    if-eq v0, v1, :cond_c

    const/16 v2, 0x13

    if-eq v0, v2, :cond_9

    .line 996
    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto :goto_8

    .line 969
    :cond_9
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    const/4 v2, 0x6

    if-le v12, v0, :cond_a

    iget-wide v4, v9, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v0, v4, p5

    if-gez v0, :cond_a

    .line 973
    iput v2, v9, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x1b7740

    add-long v4, p5, v4

    iget-wide v1, v9, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long/2addr v4, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v9, v0, v3, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1000
    :goto_8
    move v5, v12

    move/from16 v32, v26

    move/from16 v12, v27

    goto/16 :goto_12

    .line 982
    :cond_a
    add-int/lit8 v5, v12, 0x1

    .line 983
    .end local v12    # "numEmpty":I
    .restart local v5    # "numEmpty":I
    if-le v5, v10, :cond_b

    .line 986
    iput v2, v9, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "empty #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v4, 0x1

    invoke-virtual {v9, v0, v3, v1, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    goto :goto_9

    .line 983
    :cond_b
    const/4 v4, 0x1

    .line 1000
    :goto_9
    move/from16 v32, v26

    move/from16 v12, v27

    goto/16 :goto_12

    .line 893
    .end local v5    # "numEmpty":I
    .restart local v12    # "numEmpty":I
    :cond_c
    const/4 v4, 0x1

    .line 896
    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v0, v4

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 897
    add-int/lit8 v14, v14, 0x1

    .line 898
    iget v0, v9, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v0, :cond_f

    .line 899
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v13, v0, :cond_d

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move/from16 v1, v27

    .end local v27    # "lastCachedGroup":I
    .local v1, "lastCachedGroup":I
    if-ne v1, v0, :cond_e

    .line 904
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 899
    .end local v1    # "lastCachedGroup":I
    .restart local v27    # "lastCachedGroup":I
    :cond_d
    move/from16 v1, v27

    .line 906
    .end local v27    # "lastCachedGroup":I
    .restart local v1    # "lastCachedGroup":I
    :cond_e
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 907
    iget v0, v9, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move v1, v0

    .end local v1    # "lastCachedGroup":I
    .local v0, "lastCachedGroup":I
    goto :goto_a

    .line 910
    .end local v0    # "lastCachedGroup":I
    .restart local v27    # "lastCachedGroup":I
    :cond_f
    move/from16 v1, v27

    .end local v27    # "lastCachedGroup":I
    .restart local v1    # "lastCachedGroup":I
    const/4 v0, 0x0

    move v1, v0

    move v13, v0

    .line 915
    :goto_a
    sget-boolean v0, Lcom/android/server/am/ProcessList;->mOmmKillEnabled:Z

    if-eqz v0, :cond_10

    .line 916
    move/from16 v29, v1

    move/from16 v32, v26

    goto/16 :goto_11

    .line 920
    :cond_10
    sub-int v0, v14, v15

    move/from16 v4, v26

    .end local v26    # "cachedProcessLimit":I
    .local v4, "cachedProcessLimit":I
    if-le v0, v4, :cond_18

    .line 932
    move-object v0, v9

    .line 933
    .local v0, "killApp":Lcom/android/server/am/ProcessRecord;
    const/4 v5, 0x0

    .line 934
    .local v5, "anyClientActivities":Z
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v23

    if-eqz v23, :cond_17

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v23

    if-nez v23, :cond_17

    iget-boolean v6, v9, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v6, :cond_17

    iget-object v6, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v6, v6, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/lit8 v3, v20, -0x1

    if-ge v6, v3, :cond_17

    .line 936
    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    .local v3, "servi":I
    :goto_b
    if-ltz v3, :cond_16

    if-nez v5, :cond_16

    .line 937
    iget-object v6, v9, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 938
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v2

    .line 939
    .local v2, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v27

    const/16 v22, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v33, v27

    move-object/from16 v27, v0

    move/from16 v0, v33

    .local v0, "conni":I
    .local v27, "killApp":Lcom/android/server/am/ProcessRecord;
    :goto_c
    if-ltz v0, :cond_15

    if-nez v5, :cond_15

    .line 940
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    move/from16 v29, v1

    .end local v1    # "lastCachedGroup":I
    .local v29, "lastCachedGroup":I
    move-object/from16 v1, v28

    check-cast v1, Ljava/util/ArrayList;

    .line 941
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v30, v2

    move/from16 v2, v28

    .local v2, "cri":I
    .local v30, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :goto_d
    if-ltz v2, :cond_14

    .line 942
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v31, v1

    .end local v1    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v31, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v1, v28

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    iget-object v1, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 943
    .local v1, "clientApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_12

    if-eq v1, v9, :cond_12

    move/from16 v32, v4

    .end local v4    # "cachedProcessLimit":I
    .local v32, "cachedProcessLimit":I
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    move/from16 v28, v5

    const/16 v5, 0x10

    .end local v5    # "anyClientActivities":Z
    .local v28, "anyClientActivities":Z
    if-lt v4, v5, :cond_13

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x384

    if-ge v4, v5, :cond_11

    .line 946
    goto :goto_e

    .line 948
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 949
    move-object v4, v1

    .line 950
    .end local v27    # "killApp":Lcom/android/server/am/ProcessRecord;
    .local v4, "killApp":Lcom/android/server/am/ProcessRecord;
    const/4 v5, 0x1

    .line 951
    .end local v28    # "anyClientActivities":Z
    .restart local v5    # "anyClientActivities":Z
    move-object/from16 v27, v4

    goto :goto_f

    .line 943
    .end local v32    # "cachedProcessLimit":I
    .local v4, "cachedProcessLimit":I
    .restart local v27    # "killApp":Lcom/android/server/am/ProcessRecord;
    :cond_12
    move/from16 v32, v4

    move/from16 v28, v5

    .line 941
    .end local v1    # "clientApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "cachedProcessLimit":I
    .end local v5    # "anyClientActivities":Z
    .restart local v28    # "anyClientActivities":Z
    .restart local v32    # "cachedProcessLimit":I
    :cond_13
    :goto_e
    add-int/lit8 v2, v2, -0x1

    move/from16 v5, v28

    move-object/from16 v1, v31

    move/from16 v4, v32

    goto :goto_d

    .end local v28    # "anyClientActivities":Z
    .end local v31    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v32    # "cachedProcessLimit":I
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v4    # "cachedProcessLimit":I
    .restart local v5    # "anyClientActivities":Z
    :cond_14
    move-object/from16 v31, v1

    move/from16 v32, v4

    move/from16 v28, v5

    .line 939
    .end local v1    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v2    # "cri":I
    .end local v4    # "cachedProcessLimit":I
    .restart local v32    # "cachedProcessLimit":I
    :goto_f
    add-int/lit8 v0, v0, -0x1

    move/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v4, v32

    const/16 v22, 0x1

    goto :goto_c

    .end local v29    # "lastCachedGroup":I
    .end local v30    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v32    # "cachedProcessLimit":I
    .local v1, "lastCachedGroup":I
    .local v2, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v4    # "cachedProcessLimit":I
    :cond_15
    move/from16 v29, v1

    move-object/from16 v30, v2

    move/from16 v32, v4

    move/from16 v28, v5

    .line 936
    .end local v0    # "conni":I
    .end local v1    # "lastCachedGroup":I
    .end local v2    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v4    # "cachedProcessLimit":I
    .end local v5    # "anyClientActivities":Z
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v28    # "anyClientActivities":Z
    .restart local v29    # "lastCachedGroup":I
    .restart local v32    # "cachedProcessLimit":I
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v27

    move/from16 v5, v28

    move/from16 v1, v29

    move/from16 v4, v32

    const/16 v2, 0x10

    goto/16 :goto_b

    .end local v27    # "killApp":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "anyClientActivities":Z
    .end local v29    # "lastCachedGroup":I
    .end local v32    # "cachedProcessLimit":I
    .local v0, "killApp":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "lastCachedGroup":I
    .restart local v4    # "cachedProcessLimit":I
    .restart local v5    # "anyClientActivities":Z
    :cond_16
    move/from16 v29, v1

    move/from16 v32, v4

    move/from16 v28, v5

    .line 959
    .end local v1    # "lastCachedGroup":I
    .end local v3    # "servi":I
    .end local v4    # "cachedProcessLimit":I
    .end local v5    # "anyClientActivities":Z
    .restart local v28    # "anyClientActivities":Z
    .restart local v29    # "lastCachedGroup":I
    .restart local v32    # "cachedProcessLimit":I
    move/from16 v5, v28

    goto :goto_10

    .line 934
    .end local v28    # "anyClientActivities":Z
    .end local v29    # "lastCachedGroup":I
    .end local v32    # "cachedProcessLimit":I
    .restart local v1    # "lastCachedGroup":I
    .restart local v4    # "cachedProcessLimit":I
    .restart local v5    # "anyClientActivities":Z
    :cond_17
    move/from16 v29, v1

    move/from16 v32, v4

    .line 959
    .end local v1    # "lastCachedGroup":I
    .end local v4    # "cachedProcessLimit":I
    .restart local v29    # "lastCachedGroup":I
    .restart local v32    # "cachedProcessLimit":I
    :goto_10
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cached op#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; killed because of client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 966
    .end local v0    # "killApp":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "anyClientActivities":Z
    goto :goto_11

    .line 920
    .end local v29    # "lastCachedGroup":I
    .end local v32    # "cachedProcessLimit":I
    .restart local v1    # "lastCachedGroup":I
    .restart local v4    # "cachedProcessLimit":I
    :cond_18
    move/from16 v29, v1

    move/from16 v32, v4

    .line 1000
    .end local v1    # "lastCachedGroup":I
    .end local v4    # "cachedProcessLimit":I
    .restart local v29    # "lastCachedGroup":I
    .restart local v32    # "cachedProcessLimit":I
    :goto_11
    move v5, v12

    move/from16 v12, v29

    .end local v29    # "lastCachedGroup":I
    .local v5, "numEmpty":I
    .local v12, "lastCachedGroup":I
    :goto_12
    iget-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_19

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_19

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 1011
    const/4 v0, 0x7

    iput v0, v9, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 1013
    const-string/jumbo v0, "isolated not needed"

    const/16 v1, 0x11

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-virtual {v9, v0, v2, v1, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    goto :goto_13

    .line 1017
    :cond_19
    invoke-direct {v7, v9}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1020
    :goto_13
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1a

    iget-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_1a

    .line 1022
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "numTrimming":I
    .local v6, "numTrimming":I
    goto :goto_14

    .line 856
    .end local v6    # "numTrimming":I
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "numTrimming":I
    :cond_1a
    move v6, v8

    goto :goto_14

    .line 886
    .end local v5    # "numEmpty":I
    .end local v12    # "lastCachedGroup":I
    .end local v18    # "i":I
    .end local v32    # "cachedProcessLimit":I
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .local v19, "numEmpty":I
    .restart local v21    # "i":I
    .restart local v23    # "numTrimming":I
    .restart local v26    # "cachedProcessLimit":I
    .local v27, "lastCachedGroup":I
    :cond_1b
    move/from16 v12, v19

    move/from16 v18, v21

    move/from16 v32, v26

    move/from16 v1, v27

    move-object/from16 v19, v8

    move/from16 v8, v23

    .line 856
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "i":I
    .end local v23    # "numTrimming":I
    .end local v26    # "cachedProcessLimit":I
    .end local v27    # "lastCachedGroup":I
    .restart local v1    # "lastCachedGroup":I
    .local v8, "numTrimming":I
    .local v12, "numEmpty":I
    .restart local v18    # "i":I
    .local v19, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v32    # "cachedProcessLimit":I
    move v6, v8

    move v5, v12

    move v12, v1

    .end local v1    # "lastCachedGroup":I
    .end local v8    # "numTrimming":I
    .restart local v5    # "numEmpty":I
    .restart local v6    # "numTrimming":I
    .local v12, "lastCachedGroup":I
    :goto_14
    add-int/lit8 v4, v18, -0x1

    move-object v0, v11

    move-wide/from16 v1, v16

    move-object/from16 v8, v19

    move/from16 v9, v20

    move/from16 v3, v25

    move/from16 v11, v32

    .end local v18    # "i":I
    .local v4, "i":I
    goto/16 :goto_0

    .end local v5    # "numEmpty":I
    .end local v25    # "numBServices":I
    .end local v32    # "cachedProcessLimit":I
    .local v0, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v3, "numBServices":I
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v11, "cachedProcessLimit":I
    .local v19, "numEmpty":I
    :cond_1c
    move-object/from16 v28, v1

    move/from16 v18, v4

    move/from16 v32, v11

    move v1, v12

    move/from16 v12, v19

    move-object/from16 v19, v8

    move v8, v6

    .line 1027
    .end local v4    # "i":I
    .end local v6    # "numTrimming":I
    .end local v11    # "cachedProcessLimit":I
    .restart local v1    # "lastCachedGroup":I
    .local v8, "numTrimming":I
    .local v12, "numEmpty":I
    .local v19, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v32    # "cachedProcessLimit":I
    iget v4, v7, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    if-le v3, v4, :cond_1e

    iget-object v4, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mAllowLowerMemLevel:Z

    const/4 v6, 0x1

    if-ne v6, v4, :cond_1e

    if-eqz v0, :cond_1e

    .line 1033
    invoke-static {}, Lcom/android/server/am/OomAdjusterInjector;->getBServiceLimitWhiteList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-static {}, Lcom/android/server/am/OomAdjusterInjector;->getBServiceLimitWhiteList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1034
    iget v4, v7, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    sub-int v4, v3, v4

    const/4 v6, 0x5

    mul-int/2addr v4, v6

    rem-int/lit8 v4, v4, 0x31

    rsub-int v4, v4, 0x3e7

    iput v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1039
    :cond_1d
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v4, v6, v9}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 1044
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v4, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 1045
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v4, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v28

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is moved to higher adj"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_1e
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v4, p7

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLocked(Lcom/android/server/am/ActiveUids;)V

    .line 1051
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v14, v12, v8}, Lcom/android/server/am/ActivityManagerService;->updateLowMemStateLocked(III)Z

    move-result v2

    return v2
.end method

.method private updateAppUidRecLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1055
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 1056
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v0, :cond_2

    .line 1057
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/UidRecord;->ephemeral:Z

    .line 1058
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1059
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 1061
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1062
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    .line 1064
    :cond_1
    iget v1, v0, Lcom/android/server/am/UidRecord;->curCapability:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curCapability:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/UidRecord;->curCapability:I

    .line 1066
    :cond_2
    return-void
.end method

.method private final updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"    # I
    .param p3, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "doingAll"    # Z
    .param p5, "now"    # J

    .line 373
    move-object v9, p0

    move-object v10, p1

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    return v0

    .line 377
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->resetCachedInfo()V

    .line 378
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 379
    .local v11, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v11, :cond_2

    .line 380
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_1

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting update of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->reset()V

    .line 386
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move/from16 v2, p4

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result v0

    .line 390
    .local v0, "success":Z
    if-eqz v11, :cond_9

    .line 393
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget-object v1, v1, Lcom/android/server/am/UidRecord;->procRecords:Landroid/util/ArraySet;

    .line 394
    .local v1, "procRecords":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 395
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 396
    .local v3, "pr":Lcom/android/server/am/ProcessRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v4, :cond_4

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_4

    .line 397
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v4

    if-gtz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_1

    .line 402
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 394
    .end local v3    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 406
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_8

    iget v2, v11, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 407
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget v2, v11, Lcom/android/server/am/UidRecord;->setCapability:I

    iget v3, v11, Lcom/android/server/am/UidRecord;->curCapability:I

    if-ne v2, v3, :cond_7

    iget-boolean v2, v11, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v3, v11, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v2, v3, :cond_6

    goto :goto_2

    :cond_6
    move-wide/from16 v3, p5

    goto :goto_3

    .line 410
    :cond_7
    :goto_2
    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 411
    .local v2, "uids":Lcom/android/server/am/ActiveUids;
    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 412
    iget v3, v11, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v2, v3, v11}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 413
    move-wide/from16 v3, p5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/OomAdjuster;->updateUidsLocked(Lcom/android/server/am/ActiveUids;J)V

    .line 414
    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLocked(Lcom/android/server/am/ActiveUids;)V

    goto :goto_3

    .line 406
    .end local v2    # "uids":Lcom/android/server/am/ActiveUids;
    :cond_8
    move-wide/from16 v3, p5

    goto :goto_3

    .line 390
    .end local v1    # "procRecords":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    :cond_9
    move-wide/from16 v3, p5

    .line 418
    :goto_3
    return v0
.end method

.method private updateOomAdjLockedInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .locals 29
    .param p1, "oomAdjReason"    # Ljava/lang/String;
    .param p2, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uids"    # Lcom/android/server/am/ActiveUids;
    .param p5, "potentialCycles"    # Z
    .param p6, "startProfiling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            "ZZ)V"
        }
    .end annotation

    .line 563
    .local p3, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v9, p0

    const-wide/16 v10, 0x40

    if-eqz p6, :cond_0

    .line 564
    move-object/from16 v12, p1

    invoke-static {v10, v11, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 565
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    goto :goto_0

    .line 563
    :cond_0
    move-object/from16 v12, p1

    .line 567
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 568
    .local v13, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 569
    .local v7, "nowElapsed":J
    const-wide/32 v0, 0x1b7740

    sub-long v15, v13, v0

    .line 570
    .local v15, "oldTime":J
    const/4 v5, 0x0

    const/16 v17, 0x1

    if-nez p3, :cond_1

    move/from16 v0, v17

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    move/from16 v18, v0

    .line 571
    .local v18, "fullUpdate":Z
    move-object/from16 v0, p4

    .line 572
    .local v0, "activeUids":Lcom/android/server/am/ActiveUids;
    if-eqz v18, :cond_2

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    goto :goto_2

    .line 573
    :cond_2
    move-object/from16 v1, p3

    :goto_2
    move-object v6, v1

    .line 574
    .local v6, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 576
    .local v4, "numProc":I
    if-nez v0, :cond_4

    .line 577
    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    .line 578
    .local v1, "numUids":I
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 579
    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 580
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 581
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 582
    .local v3, "r":Lcom/android/server/am/UidRecord;
    iget v10, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v0, v10, v3}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 580
    .end local v3    # "r":Lcom/android/server/am/UidRecord;
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x40

    goto :goto_3

    :cond_3
    move-object v10, v0

    goto :goto_4

    .line 576
    .end local v1    # "numUids":I
    .end local v2    # "i":I
    :cond_4
    move-object v10, v0

    .line 587
    .end local v0    # "activeUids":Lcom/android/server/am/ActiveUids;
    .local v10, "activeUids":Lcom/android/server/am/ActiveUids;
    :goto_4
    invoke-virtual {v10}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_5
    const-string v11, "ActivityManager"

    if-ltz v0, :cond_6

    .line 588
    invoke-virtual {v10, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 589
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v2, :cond_5

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting update of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->reset()V

    .line 587
    .end local v1    # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 595
    .end local v0    # "i":I
    :cond_6
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_7

    .line 596
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->rankTaskLayersIfNeeded()V

    .line 599
    :cond_7
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 600
    if-eqz v18, :cond_8

    .line 601
    iput v5, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 602
    iput v5, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 606
    :cond_8
    invoke-static {}, Lcom/android/server/am/OpBGFrozenInjector;->clearImportantUids()V

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "retryCycles":Z
    if-nez v18, :cond_a

    if-eqz p5, :cond_9

    goto :goto_6

    :cond_9
    move v1, v5

    goto :goto_7

    :cond_a
    :goto_6
    move/from16 v1, v17

    :goto_7
    move/from16 v19, v1

    .line 613
    .local v19, "computeClients":Z
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_c

    .line 614
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 615
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iput-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    .line 617
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v5, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v3, v5, :cond_b

    .line 618
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 619
    const/16 v5, 0x13

    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 620
    const/16 v5, 0x3e9

    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 621
    iput v3, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    .line 622
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->resetCachedInfo()V

    .line 613
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_b
    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x0

    goto :goto_8

    .line 625
    .end local v1    # "i":I
    :cond_c
    add-int/lit8 v1, v4, -0x1

    move/from16 v21, v0

    move v5, v1

    .end local v0    # "retryCycles":Z
    .local v5, "i":I
    .local v21, "retryCycles":Z
    :goto_9
    if-ltz v5, :cond_e

    .line 626
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 627
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v3, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_d

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_d

    .line 628
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 629
    const/16 v20, 0x3e9

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v23, v2

    move/from16 v2, v20

    move-object/from16 v24, v3

    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .local v24, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v3, p2

    move/from16 v25, v4

    .end local v4    # "numProc":I
    .local v25, "numProc":I
    move/from16 v4, v18

    move/from16 v20, v5

    move-object/from16 v26, v6

    .end local v5    # "i":I
    .end local v6    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v20, "i":I
    .local v26, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-wide v5, v13

    move-wide/from16 v27, v7

    .end local v7    # "nowElapsed":J
    .local v27, "nowElapsed":J
    move/from16 v7, v22

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 632
    move-object/from16 v0, v24

    .end local v24    # "app":Lcom/android/server/am/ProcessRecord;
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    or-int v1, v21, v1

    .line 634
    .end local v21    # "retryCycles":Z
    .local v1, "retryCycles":Z
    iget v2, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v2, v0, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    move/from16 v21, v1

    goto :goto_a

    .line 627
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "retryCycles":Z
    .end local v20    # "i":I
    .end local v25    # "numProc":I
    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v27    # "nowElapsed":J
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "numProc":I
    .restart local v5    # "i":I
    .restart local v6    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "nowElapsed":J
    .restart local v21    # "retryCycles":Z
    :cond_d
    move-object v0, v3

    move/from16 v25, v4

    move/from16 v20, v5

    move-object/from16 v26, v6

    move-wide/from16 v27, v7

    .line 625
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "numProc":I
    .end local v5    # "i":I
    .end local v6    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v7    # "nowElapsed":J
    .restart local v20    # "i":I
    .restart local v25    # "numProc":I
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v27    # "nowElapsed":J
    :goto_a
    add-int/lit8 v5, v20, -0x1

    move/from16 v4, v25

    move-object/from16 v6, v26

    move-wide/from16 v7, v27

    .end local v20    # "i":I
    .restart local v5    # "i":I
    goto :goto_9

    .end local v25    # "numProc":I
    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v27    # "nowElapsed":J
    .restart local v4    # "numProc":I
    .restart local v6    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "nowElapsed":J
    :cond_e
    move/from16 v25, v4

    move/from16 v20, v5

    move-object/from16 v26, v6

    move-wide/from16 v27, v7

    .line 638
    .end local v4    # "numProc":I
    .end local v5    # "i":I
    .end local v6    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v7    # "nowElapsed":J
    .restart local v25    # "numProc":I
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v27    # "nowElapsed":J
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 640
    if-eqz v19, :cond_15

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "cycleCount":I
    :goto_b
    if-eqz v21, :cond_14

    const/16 v1, 0xa

    if-ge v0, v1, :cond_14

    .line 647
    add-int/lit8 v20, v0, 0x1

    .line 648
    .end local v0    # "cycleCount":I
    .local v20, "cycleCount":I
    const/4 v0, 0x0

    .line 650
    .end local v21    # "retryCycles":Z
    .local v0, "retryCycles":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    move/from16 v8, v25

    .end local v25    # "numProc":I
    .local v8, "numProc":I
    if-ge v1, v8, :cond_10

    .line 651
    move-object/from16 v7, v26

    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v7, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 652
    .restart local v2    # "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v3, :cond_f

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_f

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v3, :cond_f

    .line 653
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 654
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 650
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v26, v7

    move/from16 v25, v8

    goto :goto_c

    .end local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_10
    move-object/from16 v7, v26

    .line 658
    .end local v1    # "i":I
    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, 0x0

    move/from16 v21, v0

    move v5, v1

    .end local v0    # "retryCycles":Z
    .restart local v5    # "i":I
    .restart local v21    # "retryCycles":Z
    :goto_d
    if-ge v5, v8, :cond_13

    .line 659
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 660
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v6, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_11

    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_11

    iget-boolean v0, v6, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v0, :cond_11

    .line 661
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    const/4 v4, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v3, p2

    move/from16 v24, v5

    move-object/from16 v25, v6

    .end local v5    # "i":I
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .local v24, "i":I
    .local v25, "app":Lcom/android/server/am/ProcessRecord;
    move-wide v5, v13

    move-object/from16 v26, v7

    .end local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move/from16 v7, v22

    move/from16 v22, v8

    .end local v8    # "numProc":I
    .local v22, "numProc":I
    move/from16 v8, v23

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 663
    const/16 v21, 0x1

    goto :goto_e

    .line 660
    .end local v22    # "numProc":I
    .end local v24    # "i":I
    .end local v25    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v5    # "i":I
    .restart local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8    # "numProc":I
    :cond_11
    move/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move/from16 v22, v8

    .line 658
    .end local v5    # "i":I
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v8    # "numProc":I
    .restart local v22    # "numProc":I
    .restart local v24    # "i":I
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_12
    :goto_e
    add-int/lit8 v5, v24, 0x1

    move/from16 v8, v22

    move-object/from16 v7, v26

    .end local v24    # "i":I
    .restart local v5    # "i":I
    goto :goto_d

    .end local v22    # "numProc":I
    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8    # "numProc":I
    :cond_13
    move/from16 v24, v5

    move-object/from16 v26, v7

    move/from16 v22, v8

    .end local v5    # "i":I
    .end local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v8    # "numProc":I
    .restart local v22    # "numProc":I
    .restart local v24    # "i":I
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move/from16 v0, v20

    move/from16 v25, v22

    .end local v24    # "i":I
    goto/16 :goto_b

    .line 646
    .end local v20    # "cycleCount":I
    .end local v22    # "numProc":I
    .local v0, "cycleCount":I
    .local v25, "numProc":I
    :cond_14
    move/from16 v22, v25

    .end local v25    # "numProc":I
    .restart local v22    # "numProc":I
    goto :goto_f

    .line 640
    .end local v0    # "cycleCount":I
    .end local v22    # "numProc":I
    .restart local v25    # "numProc":I
    :cond_15
    move/from16 v22, v25

    .line 670
    .end local v25    # "numProc":I
    .restart local v22    # "numProc":I
    :goto_f
    const/4 v8, 0x0

    iput v8, v9, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 671
    iput v8, v9, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 673
    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide/from16 v3, v27

    move-wide v5, v15

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLocked(JJJLcom/android/server/am/ActiveUids;)Z

    move-result v0

    .line 674
    .local v0, "allChanged":Z
    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v1, v9, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 676
    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v1, :cond_16

    .line 679
    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v2, "always-finish"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 682
    :cond_16
    if-eqz v0, :cond_17

    .line 683
    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 684
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v2

    .line 683
    invoke-virtual {v1, v13, v14, v8, v2}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 687
    :cond_17
    move-wide/from16 v1, v27

    .end local v27    # "nowElapsed":J
    .local v1, "nowElapsed":J
    invoke-direct {v9, v10, v1, v2}, Lcom/android/server/am/OomAdjuster;->updateUidsLocked(Lcom/android/server/am/ActiveUids;J)V

    .line 689
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3, v13, v14}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 690
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 695
    :cond_18
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v4, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v3, v4, v13, v14}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 697
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v3, :cond_19

    .line 698
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v13

    .line 703
    .local v3, "duration":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did OOM ADJ in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v3    # "duration":J
    :cond_19
    if-eqz p6, :cond_1a

    .line 707
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 708
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 710
    :cond_1a
    return-void
.end method

.method private updateUidsLocked(Lcom/android/server/am/ActiveUids;J)V
    .locals 12
    .param p1, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p2, "nowElapsed"    # J

    .line 1076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .local v0, "becameIdle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UidRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_0

    .line 1081
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 1083
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_14

    .line 1084
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 1087
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v3, :cond_1

    .line 1088
    goto/16 :goto_6

    .line 1091
    :cond_1
    const/4 v4, 0x0

    .line 1092
    .local v4, "uidChange":I
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    const/16 v6, 0x14

    if-eq v5, v6, :cond_13

    iget v5, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 1093
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    if-ne v5, v7, :cond_2

    iget v5, v3, Lcom/android/server/am/UidRecord;->setCapability:I

    iget v7, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    if-ne v5, v7, :cond_2

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v7, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v5, v7, :cond_13

    .line 1096
    :cond_2
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changes in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": proc state from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", capability from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/am/UidRecord;->setCapability:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", whitelist from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1096
    const-string v7, "ActivityManager"

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-nez v5, :cond_6

    .line 1106
    iget v5, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    if-eqz v5, :cond_5

    .line 1108
    :cond_4
    iput-wide p2, v3, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 1109
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1114
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1118
    :cond_5
    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v5, :cond_8

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->setIdle:Z

    if-nez v5, :cond_8

    .line 1119
    const/4 v4, 0x2

    .line 1120
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1123
    :cond_6
    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v5, :cond_7

    .line 1124
    const/4 v4, 0x4

    .line 1125
    iget v5, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v5}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 1126
    iput-boolean v7, v3, Lcom/android/server/am/UidRecord;->idle:Z

    .line 1128
    :cond_7
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 1130
    :cond_8
    :goto_1
    iget v5, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    const/16 v8, 0xb

    if-le v5, v8, :cond_9

    move v5, v2

    goto :goto_2

    :cond_9
    move v5, v7

    .line 1132
    .local v5, "wasCached":Z
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-le v9, v8, :cond_a

    move v7, v2

    .line 1134
    .local v7, "isCached":Z
    :cond_a
    if-ne v5, v7, :cond_b

    iget v8, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    if-ne v8, v6, :cond_d

    .line 1135
    :cond_b
    if-eqz v7, :cond_c

    const/16 v6, 0x8

    goto :goto_3

    :cond_c
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v4, v6

    .line 1139
    :cond_d
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    .line 1140
    .local v6, "curProcState":I
    sget-boolean v8, Lcom/android/server/am/OomAdjuster;->sEnableFeatures:Z

    if-eqz v8, :cond_12

    .line 1141
    iget v8, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1142
    const/4 v8, 0x6

    if-gt v6, v8, :cond_e

    iget v9, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    if-gt v9, v8, :cond_f

    :cond_e
    if-le v6, v8, :cond_12

    iget v9, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    if-gt v9, v8, :cond_12

    .line 1145
    :cond_f
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v8, v8, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 1146
    .local v9, "p":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_10

    iget v10, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v11, v3, Lcom/android/server/am/UidRecord;->uid:I

    if-ne v10, v11, :cond_10

    .line 1147
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v10, v6}, Landroid/app/IApplicationThread;->dispatchUidCurProcState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    .end local v9    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_10
    goto :goto_4

    .line 1153
    :cond_11
    goto :goto_5

    .line 1150
    :catch_0
    move-exception v8

    .line 1151
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUidsLocked err, uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " from:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " err:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OomAdjuster"

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1157
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_5
    iput v6, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 1162
    iget v8, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    iput v8, v3, Lcom/android/server/am/UidRecord;->setCapability:I

    .line 1163
    iget-boolean v8, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v8, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    .line 1164
    iget-boolean v8, v3, Lcom/android/server/am/UidRecord;->idle:Z

    iput-boolean v8, v3, Lcom/android/server/am/UidRecord;->setIdle:Z

    .line 1165
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v9, v3, Lcom/android/server/am/UidRecord;->uid:I

    iget v10, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    .line 1166
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, -0x1

    invoke-virtual {v8, v3, v9, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 1167
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v10

    iget v11, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 1169
    iget-boolean v8, v3, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    if-eqz v8, :cond_13

    .line 1170
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v8, v3}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    .line 1173
    .end local v5    # "wasCached":Z
    .end local v6    # "curProcState":I
    .end local v7    # "isCached":Z
    :cond_13
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v6, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(I)V

    .line 1083
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v4    # "uidChange":I
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 1175
    .end local v1    # "i":I
    :cond_14
    :goto_6
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_15

    .line 1176
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 1179
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1180
    .local v1, "size":I
    if-lez v1, :cond_16

    .line 1183
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_16

    .line 1184
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidRecord;

    iget v4, v4, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    .line 1183
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 1190
    .end local v2    # "i":I
    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1195
    invoke-static {}, Lcom/android/server/am/OpBGFrozenInjector;->updateLastImportantUidsIfNeeded()V

    .line 1197
    return-void
.end method


# virtual methods
.method dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2945
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    .line 2946
    return-void
.end method

.method dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2937
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

    .line 2936
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2941
    return-void
.end method

.method dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2919
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v1, 0x10500000031L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2920
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v0, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2921
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const-wide v1, 0x10500000033L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2923
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const-wide v1, 0x10500000035L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2924
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v1, 0x10500000036L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2927
    return-void
.end method

.method dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2931
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

    .line 2932
    return-void
.end method

.method idleUidsLocked()V
    .locals 14

    .line 2849
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 2850
    .local v0, "N":I
    if-gtz v0, :cond_0

    .line 2851
    return-void

    .line 2853
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2854
    .local v1, "nowElapsed":J
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v3, v1, v3

    .line 2855
    .local v3, "maxBgTime":J
    const-wide/16 v5, 0x0

    .line 2856
    .local v5, "nextTime":J
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_1

    .line 2857
    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 2859
    :cond_1
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    const-wide/16 v8, 0x0

    if-ltz v7, :cond_6

    .line 2860
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    .line 2861
    .local v10, "uidRec":Lcom/android/server/am/UidRecord;
    iget-wide v11, v10, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 2862
    .local v11, "bgTime":J
    cmp-long v13, v11, v8

    if-lez v13, :cond_5

    iget-boolean v13, v10, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v13, :cond_5

    .line 2863
    cmp-long v13, v11, v3

    if-gtz v13, :cond_3

    .line 2866
    iget-object v8, v10, Lcom/android/server/am/UidRecord;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->shoudSkipIdle(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2867
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

    .line 2868
    goto :goto_1

    .line 2871
    :cond_2
    iget v8, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v8}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 2872
    const/4 v8, 0x1

    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->idle:Z

    .line 2873
    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->setIdle:Z

    .line 2874
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_1

    .line 2876
    :cond_3
    cmp-long v8, v5, v8

    if-eqz v8, :cond_4

    cmp-long v8, v5, v11

    if-lez v8, :cond_5

    .line 2877
    :cond_4
    move-wide v5, v11

    .line 2859
    .end local v10    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v11    # "bgTime":J
    :cond_5
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 2882
    .end local v7    # "i":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_7

    .line 2883
    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 2885
    :cond_7
    cmp-long v7, v5, v8

    if-lez v7, :cond_8

    .line 2886
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2887
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v9, v5

    sub-long/2addr v9, v1

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2890
    :cond_8
    return-void
.end method

.method initSettings()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    .line 332
    return-void
.end method

.method public synthetic lambda$new$1$OomAdjuster(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 300
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 301
    .local v0, "pid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 302
    .local v1, "group":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 303
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    const-string v6, " to "

    if-eqz v5, :cond_0

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProcessGroup "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 308
    :cond_0
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    if-eqz v5, :cond_1

    .line 309
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v7, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    invoke-static {v5, v0, v1, v7}, Landroid/os/Process;->setCgroupProcsProcessGroup(IIIZ)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_2
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 319
    goto :goto_1

    .line 318
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 313
    :catch_0
    move-exception v5

    .line 314
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v7, :cond_2

    .line 315
    const-string v7, "OomAdjuster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed setting process group of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 318
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 319
    throw v5
.end method

.method maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"    # J

    .line 2782
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2783
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 2784
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2785
    return-void

    .line 2784
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

    .line 2362
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v0, :cond_0

    .line 2364
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2366
    :cond_0
    return-void
.end method

.method final setAppIdTempWhitelistStateLocked(IZ)V
    .locals 4
    .param p1, "appId"    # I
    .param p2, "onWhitelist"    # Z

    .line 2894
    const/4 v0, 0x0

    .line 2895
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2896
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 2897
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    iget v3, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-boolean v3, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v3, p2, :cond_0

    .line 2898
    iput-boolean p2, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    .line 2899
    const/4 v0, 0x1

    .line 2895
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2902
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 2903
    const-string/jumbo v1, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2905
    :cond_2
    return-void
.end method

.method setAttachingSchedGroupLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2749
    const/4 v0, 0x2

    .line 2752
    .local v0, "initialSchedGroup":I
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2753
    const/4 v1, 0x0

    .line 2758
    .local v1, "fallbackReason":Ljava/lang/String;
    :try_start_0
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 2759
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2760
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v3, -0xa

    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V

    goto :goto_0

    .line 2762
    :cond_0
    const-string/jumbo v2, "not expected top priority"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2766
    :goto_0
    goto :goto_1

    .line 2764
    :catch_0
    move-exception v2

    .line 2765
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2767
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    if-nez v1, :cond_1

    .line 2768
    const/4 v0, 0x3

    goto :goto_2

    .line 2772
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fallback pre-set sched group to default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OomAdjuster"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    .end local v1    # "fallbackReason":Ljava/lang/String;
    :cond_2
    :goto_2
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 2777
    return-void
.end method

.method final setUidTempWhitelistStateLocked(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "onWhitelist"    # Z

    .line 2909
    const/4 v0, 0x0

    .line 2910
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 2911
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v2, p2, :cond_0

    .line 2912
    iput-boolean p2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    .line 2913
    const-string/jumbo v2, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2915
    :cond_0
    return-void
.end method

.method updateAppFreezeStateLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2950
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2951
    return-void

    .line 2955
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    if-eqz v0, :cond_1

    .line 2956
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2960
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    if-nez v0, :cond_2

    .line 2961
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsync(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 2962
    :cond_2
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-ge v0, v1, :cond_3

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-eqz v0, :cond_3

    .line 2963
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2965
    :cond_3
    :goto_0
    return-void
.end method

.method updateOomAdjLocked(Ljava/lang/String;)V
    .locals 8
    .param p1, "oomAdjReason"    # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 427
    .local v0, "topApp":Lcom/android/server/am/ProcessRecord;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLockedInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 428
    return-void
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 25
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"    # Ljava/lang/String;

    .line 440
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const/4 v13, 0x1

    if-eqz v11, :cond_15

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 445
    :cond_0
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    .line 447
    .local v14, "topApp":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 448
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 449
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v0, v13

    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v15

    .line 453
    .local v15, "wasCached":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v7

    .line 454
    .local v7, "oldAdj":I
    const/16 v0, 0x384

    const/16 v5, 0x3e9

    if-lt v7, v0, :cond_1

    .line 455
    move v2, v7

    goto :goto_0

    :cond_1
    move v2, v5

    .line 456
    .local v2, "cachedAdj":I
    :goto_0
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v6

    .line 457
    .local v6, "wasBackground":Z
    const/4 v4, 0x0

    iput-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 458
    iput-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 459
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->resetCachedInfo()V

    .line 460
    const/16 v16, 0x0

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v14

    move v8, v4

    move/from16 v4, v16

    move v9, v6

    .end local v6    # "wasBackground":Z
    .local v9, "wasBackground":Z
    move-wide/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z

    move-result v0

    .line 462
    .local v0, "success":Z
    if-eqz v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v1

    if-ne v15, v1, :cond_2

    const/16 v1, -0x2710

    if-eq v7, v1, :cond_2

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 463
    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-ne v9, v1, :cond_2

    move/from16 v21, v2

    move/from16 v23, v7

    move/from16 v24, v9

    const-wide/16 v19, 0x40

    goto/16 :goto_9

    .line 474
    :cond_2
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 475
    .local v1, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v6, v10, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 476
    .local v6, "uids":Lcom/android/server/am/ActiveUids;
    iget-object v5, v10, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 478
    .local v5, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 479
    invoke-virtual {v6}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 480
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->clear()V

    .line 483
    const/4 v3, 0x0

    .line 485
    .local v3, "containsCycle":Z
    iput-boolean v13, v11, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    .line 486
    move-object/from16 v4, p1

    move/from16 v16, v3

    .end local v3    # "containsCycle":Z
    .local v4, "pr":Lcom/android/server/am/ProcessRecord;
    .local v16, "containsCycle":Z
    :goto_1
    if-eqz v4, :cond_f

    .line 487
    if-eq v4, v11, :cond_3

    .line 488
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_3
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v3, :cond_4

    .line 491
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget v3, v3, Lcom/android/server/am/UidRecord;->uid:I

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    invoke-virtual {v6, v3, v8}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 493
    :cond_4
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v13

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    .line 494
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    .line 495
    .local v8, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v13, v8, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_5

    .line 496
    iget-object v13, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_3

    :cond_5
    iget-object v13, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 497
    .local v13, "service":Lcom/android/server/am/ProcessRecord;
    :goto_3
    if-eqz v13, :cond_9

    if-ne v13, v4, :cond_6

    .line 498
    move/from16 v21, v2

    move-object/from16 v22, v6

    goto :goto_4

    .line 500
    :cond_6
    move/from16 v21, v2

    .end local v2    # "cachedAdj":I
    .local v21, "cachedAdj":I
    iget-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    or-int v2, v16, v2

    .line 501
    .end local v16    # "containsCycle":Z
    .local v2, "containsCycle":Z
    move/from16 v16, v2

    .end local v2    # "containsCycle":Z
    .restart local v16    # "containsCycle":Z
    iget-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    if-eqz v2, :cond_7

    .line 502
    move-object/from16 v22, v6

    goto :goto_4

    .line 504
    :cond_7
    iget v2, v8, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v22, 0x80000a0

    and-int v2, v2, v22

    move-object/from16 v22, v6

    .end local v6    # "uids":Lcom/android/server/am/ActiveUids;
    .local v22, "uids":Lcom/android/server/am/ActiveUids;
    const/16 v6, 0x20

    if-ne v2, v6, :cond_8

    .line 508
    goto :goto_4

    .line 510
    :cond_8
    invoke-virtual {v5, v13}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 511
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    goto :goto_4

    .line 497
    .end local v21    # "cachedAdj":I
    .end local v22    # "uids":Lcom/android/server/am/ActiveUids;
    .local v2, "cachedAdj":I
    .restart local v6    # "uids":Lcom/android/server/am/ActiveUids;
    :cond_9
    move/from16 v21, v2

    move-object/from16 v22, v6

    .line 493
    .end local v2    # "cachedAdj":I
    .end local v6    # "uids":Lcom/android/server/am/ActiveUids;
    .end local v8    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v13    # "service":Lcom/android/server/am/ProcessRecord;
    .restart local v21    # "cachedAdj":I
    .restart local v22    # "uids":Lcom/android/server/am/ActiveUids;
    :goto_4
    add-int/lit8 v3, v3, -0x1

    move/from16 v2, v21

    move-object/from16 v6, v22

    const/4 v13, 0x1

    goto :goto_2

    .end local v21    # "cachedAdj":I
    .end local v22    # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v2    # "cachedAdj":I
    .restart local v6    # "uids":Lcom/android/server/am/ActiveUids;
    :cond_a
    move/from16 v21, v2

    move-object/from16 v22, v6

    .line 513
    .end local v2    # "cachedAdj":I
    .end local v3    # "i":I
    .end local v6    # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v21    # "cachedAdj":I
    .restart local v22    # "uids":Lcom/android/server/am/ActiveUids;
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_5
    if-ltz v2, :cond_e

    .line 514
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderConnection;

    .line 515
    .local v3, "cpc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v6, v3, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 516
    .local v6, "provider":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_d

    if-eq v6, v4, :cond_d

    iget-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    or-int v8, v16, v8

    move/from16 v16, v8

    if-eqz v8, :cond_b

    .line 517
    goto :goto_6

    .line 519
    :cond_b
    iget-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    or-int v16, v16, v8

    .line 520
    iget-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    if-eqz v8, :cond_c

    .line 521
    goto :goto_6

    .line 523
    :cond_c
    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 524
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    .line 513
    .end local v3    # "cpc":Lcom/android/server/am/ContentProviderConnection;
    .end local v6    # "provider":Lcom/android/server/am/ProcessRecord;
    :cond_d
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 486
    .end local v2    # "i":I
    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    move/from16 v2, v21

    move-object/from16 v6, v22

    const/4 v8, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    .end local v21    # "cachedAdj":I
    .end local v22    # "uids":Lcom/android/server/am/ActiveUids;
    .local v2, "cachedAdj":I
    .local v6, "uids":Lcom/android/server/am/ActiveUids;
    :cond_f
    move/from16 v21, v2

    move-object/from16 v22, v6

    .line 529
    .end local v2    # "cachedAdj":I
    .end local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v21    # "cachedAdj":I
    .restart local v22    # "uids":Lcom/android/server/am/ActiveUids;
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    .line 530
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 531
    .local v2, "size":I
    if-lez v2, :cond_11

    .line 533
    const/4 v3, 0x0

    .local v3, "l":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "r":I
    :goto_7
    if-ge v3, v4, :cond_10

    .line 534
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 535
    .local v6, "t":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-virtual {v1, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 533
    .end local v6    # "t":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 538
    .end local v3    # "l":I
    .end local v4    # "r":I
    :cond_10
    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 540
    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v17, v5

    .end local v5    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .local v17, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    move-object v5, v14

    move-object v6, v1

    move/from16 v23, v7

    .end local v7    # "oldAdj":I
    .local v23, "oldAdj":I
    move-object/from16 v7, v22

    const-wide/16 v19, 0x40

    move/from16 v8, v16

    move/from16 v24, v9

    .end local v9    # "wasBackground":Z
    .local v24, "wasBackground":Z
    move v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLockedInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_8

    .line 541
    .end local v17    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .end local v23    # "oldAdj":I
    .end local v24    # "wasBackground":Z
    .restart local v5    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "oldAdj":I
    .restart local v9    # "wasBackground":Z
    :cond_11
    move-object/from16 v17, v5

    move/from16 v23, v7

    move/from16 v24, v9

    const-wide/16 v19, 0x40

    .end local v5    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .end local v7    # "oldAdj":I
    .end local v9    # "wasBackground":Z
    .restart local v17    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v23    # "oldAdj":I
    .restart local v24    # "wasBackground":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v3

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_12

    .line 544
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-direct {v10, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 546
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 546
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    .line 549
    :cond_12
    :goto_8
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 550
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 551
    const/4 v3, 0x1

    return v3

    .line 462
    .end local v1    # "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v16    # "containsCycle":Z
    .end local v17    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .end local v21    # "cachedAdj":I
    .end local v22    # "uids":Lcom/android/server/am/ActiveUids;
    .end local v23    # "oldAdj":I
    .end local v24    # "wasBackground":Z
    .local v2, "cachedAdj":I
    .restart local v7    # "oldAdj":I
    .restart local v9    # "wasBackground":Z
    :cond_13
    move/from16 v21, v2

    move/from16 v23, v7

    move/from16 v24, v9

    const-wide/16 v19, 0x40

    .line 465
    .end local v2    # "cachedAdj":I
    .end local v7    # "oldAdj":I
    .end local v9    # "wasBackground":Z
    .restart local v21    # "cachedAdj":I
    .restart local v23    # "oldAdj":I
    .restart local v24    # "wasBackground":Z
    :goto_9
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_14

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No oomadj changes for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_14
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 469
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 470
    return v0

    .line 441
    .end local v0    # "success":Z
    .end local v14    # "topApp":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "wasCached":Z
    .end local v21    # "cachedAdj":I
    .end local v23    # "oldAdj":I
    .end local v24    # "wasBackground":Z
    :cond_15
    :goto_a
    invoke-virtual {v10, v12}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjAll"    # Z
    .param p3, "oomAdjReason"    # Ljava/lang/String;

    .line 345
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 349
    .local v0, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v8

    .line 351
    .local v8, "wasCached":Z
    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 357
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    const/16 v2, 0x384

    const/16 v9, 0x3e9

    if-lt v1, v2, :cond_1

    .line 358
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v9

    .line 359
    .local v3, "cachedAdj":I
    :goto_0
    const/4 v5, 0x0

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 359
    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z

    move-result v1

    .line 361
    .local v1, "success":Z
    if-eqz p2, :cond_3

    .line 362
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v2

    if-ne v8, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    if-ne v2, v9, :cond_3

    .line 365
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 367
    :cond_3
    return v1
.end method
