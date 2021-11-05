.class public final Lcom/android/server/am/CachedAppOptimizer;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;,
        Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;,
        Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;,
        Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;,
        Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;,
        Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    }
.end annotation


# static fields
.field private static final COMPACT_ACTION_ANON:Ljava/lang/String; = "anon"

.field private static final COMPACT_ACTION_ANON_FLAG:I = 0x2

.field private static final COMPACT_ACTION_FILE:Ljava/lang/String; = "file"

.field private static final COMPACT_ACTION_FILE_FLAG:I = 0x1

.field private static final COMPACT_ACTION_FULL:Ljava/lang/String; = "all"

.field private static final COMPACT_ACTION_FULL_FLAG:I = 0x3

.field private static final COMPACT_ACTION_NONE:Ljava/lang/String; = ""

.field private static final COMPACT_ACTION_NONE_FLAG:I = 0x4

.field static final COMPACT_PROCESS_BFGS:I = 0x4

.field static final COMPACT_PROCESS_FULL:I = 0x2

.field static final COMPACT_PROCESS_MSG:I = 0x1

.field static final COMPACT_PROCESS_PERSISTENT:I = 0x3

.field static final COMPACT_PROCESS_SOME:I = 0x1

.field static final COMPACT_SYSTEM_MSG:I = 0x2

.field static final DEFAULT_COMPACT_ACTION_1:I = 0x1

.field static final DEFAULT_COMPACT_ACTION_2:I = 0x3

.field static final DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:J = 0x1f40L

.field static final DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB:J = 0x2ee0L

.field static final DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

.field static final DEFAULT_COMPACT_THROTTLE_1:J = 0x1388L

.field static final DEFAULT_COMPACT_THROTTLE_2:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_3:J = 0x1f4L

.field static final DEFAULT_COMPACT_THROTTLE_4:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_5:J = 0x927c0L

.field static final DEFAULT_COMPACT_THROTTLE_6:J = 0x927c0L

.field static final DEFAULT_STATSD_SAMPLE_RATE:F = 0.1f

.field static DEFAULT_USE_COMPACTION:Ljava/lang/Boolean; = null

.field static final DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

.field static final DO_FREEZE:I = 0x1

.field static final FREEZE_TIMEOUT_MS:I = 0x1f4

.field static final KEY_COMPACT_ACTION_1:Ljava/lang/String; = "compact_action_1"

.field static final KEY_COMPACT_ACTION_2:Ljava/lang/String; = "compact_action_2"

.field static final KEY_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_delta_rss_throttle_kb"

.field static final KEY_COMPACT_FULL_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_rss_throttle_kb"

.field static final KEY_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String; = "compact_proc_state_throttle"

.field static final KEY_COMPACT_STATSD_SAMPLE_RATE:Ljava/lang/String; = "compact_statsd_sample_rate"

.field static final KEY_COMPACT_THROTTLE_1:Ljava/lang/String; = "compact_throttle_1"

.field static final KEY_COMPACT_THROTTLE_2:Ljava/lang/String; = "compact_throttle_2"

.field static final KEY_COMPACT_THROTTLE_3:Ljava/lang/String; = "compact_throttle_3"

.field static final KEY_COMPACT_THROTTLE_4:Ljava/lang/String; = "compact_throttle_4"

.field static final KEY_COMPACT_THROTTLE_5:Ljava/lang/String; = "compact_throttle_5"

.field static final KEY_COMPACT_THROTTLE_6:Ljava/lang/String; = "compact_throttle_6"

.field static final KEY_FREEZER_STATSD_SAMPLE_RATE:Ljava/lang/String; = "freeze_statsd_sample_rate"

.field static final KEY_USE_COMPACTION:Ljava/lang/String; = "use_compaction"

.field static final KEY_USE_FREEZER:Ljava/lang/String; = "use_freezer"

.field static final REPORT_UNFREEZE:I = 0x2

.field static final REPORT_UNFREEZE_MSG:I = 0x4

.field static final SET_FROZEN_PROCESS_MSG:I = 0x3

.field public static mPerf:Landroid/util/BoostFramework;


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mBfgsCompactionCount:I

.field final mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

.field volatile mCompactActionFull:Ljava/lang/String;

.field volatile mCompactActionSome:Ljava/lang/String;

.field volatile mCompactStatsdSampleRate:F

.field volatile mCompactThrottleBFGS:J

.field volatile mCompactThrottleFullFull:J

.field volatile mCompactThrottleFullSome:J

.field volatile mCompactThrottlePersistent:J

.field volatile mCompactThrottleSomeFull:J

.field volatile mCompactThrottleSomeSome:J

.field mCompactionHandler:Landroid/os/Handler;

.field private mFreezeHandler:Landroid/os/Handler;

.field volatile mFreezerStatsdSampleRate:F

.field volatile mFullAnonRssThrottleKb:J

.field private mFullCompactionCount:I

.field volatile mFullDeltaRssThrottleKb:J

.field mLastCompactionStats:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mPendingCompactionProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistentCompactionCount:I

.field private final mPhenotypeFlagLock:Ljava/lang/Object;

.field final mProcStateThrottle:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

.field private final mRandom:Ljava/util/Random;

.field private mSomeCompactionCount:I

.field private mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

.field private volatile mUseCompaction:Z

.field private volatile mUseFreezer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 97
    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

    .line 111
    nop

    .line 112
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    .line 251
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 254
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>(Lcom/android/server/am/CachedAppOptimizer$1;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V

    .line 255
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V
    .locals 5
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "callback"    # Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    .param p3, "processDependencies"    # Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$1;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 194
    nop

    .line 196
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    .line 197
    nop

    .line 199
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    .line 200
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 202
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 204
    const-wide/16 v3, 0x1f4

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 206
    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 208
    const-wide/32 v1, 0x927c0

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 210
    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    .line 212
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 213
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 214
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 215
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    .line 216
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 218
    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 219
    const-wide/16 v1, 0x2ee0

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 222
    const-wide/16 v1, 0x1f40

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 237
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/CachedAppOptimizer$2;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 260
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 261
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "CachedAppOptimizerThread"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 263
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 264
    iput-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 265
    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/CachedAppOptimizer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    return-object v0
.end method

.method static synthetic access$1608(Lcom/android/server/am/CachedAppOptimizer;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    return v0
.end method

.method static synthetic access$1708(Lcom/android/server/am/CachedAppOptimizer;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    return v0
.end method

.method static synthetic access$1808(Lcom/android/server/am/CachedAppOptimizer;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    return v0
.end method

.method static synthetic access$1908(Lcom/android/server/am/CachedAppOptimizer;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionActions()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->compactSystem()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 60
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    return-object v0
.end method

.method static compactActionIntToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .line 695
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 705
    const-string v0, ""

    return-object v0

    .line 703
    :cond_0
    const-string v0, "all"

    return-object v0

    .line 701
    :cond_1
    const-string v0, "anon"

    return-object v0

    .line 699
    :cond_2
    const-string v0, "file"

    return-object v0
.end method

.method private native compactSystem()V
.end method

.method public static isFreezerSupported()Z
    .locals 6

    .line 507
    const-string v0, "ActivityManager"

    const/4 v1, 0x0

    .line 508
    .local v1, "supported":Z
    const/4 v2, 0x0

    .line 511
    .local v2, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/dev/freezer/frozen/freezer.killable"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 512
    invoke-virtual {v2}, Ljava/io/FileReader;->read()I

    move-result v3

    .line 514
    .local v3, "i":I
    int-to-char v4, v3

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    .line 515
    const/4 v1, 0x1

    goto :goto_0

    .line 517
    :cond_0
    const-string v4, "Freezer killability is turned off, disabling freezer"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    .end local v3    # "i":I
    :catch_0
    move-exception v3

    .line 522
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read freezer.killable, disabling freezer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 519
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 520
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "Freezer.killable not present, disabling freezer"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 525
    :goto_1
    if-eqz v2, :cond_1

    .line 527
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 530
    goto :goto_2

    .line 528
    :catch_2
    move-exception v3

    .line 529
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception closing freezer.killable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return v1
.end method

.method private parseProcStateThrottle(Ljava/lang/String;)Z
    .locals 7
    .param p1, "procStateThrottleString"    # Ljava/lang/String;

    .line 679
    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "procStates":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 681
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 683
    .local v4, "procState":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    nop

    .line 681
    .end local v4    # "procState":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 684
    .restart local v4    # "procState":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 685
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse default app compaction proc state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return v2

    .line 690
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "procState":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private setAppCompactProperties()V
    .locals 15

    .line 292
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 293
    const-string/jumbo v1, "vendor.appcompact.enable_app_compact"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 295
    .local v0, "useCompaction":Z
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 297
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 296
    const-string/jumbo v4, "vendor.appcompact.some_compact_type"

    invoke-virtual {v1, v4, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 298
    .local v1, "someCompactionType":I
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 300
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    const-string/jumbo v4, "vendor.appcompact.full_compact_type"

    invoke-virtual {v3, v4, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 301
    .local v2, "fullCompactionType":I
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 303
    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 302
    const-string/jumbo v5, "vendor.appcompact.compact_throttle_somesome"

    invoke-virtual {v3, v5, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 304
    .local v3, "compactThrottleSomeSome":I
    sget-object v4, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 306
    const-wide/16 v5, 0x2710

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 305
    const-string/jumbo v8, "vendor.appcompact.compact_throttle_somefull"

    invoke-virtual {v4, v8, v7}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 307
    .local v4, "compactThrottleSomeFull":I
    sget-object v7, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 309
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 308
    const-string/jumbo v9, "vendor.appcompact.compact_throttle_fullsome"

    invoke-virtual {v7, v9, v8}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 310
    .local v7, "compactThrottleFullSome":I
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 312
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 311
    const-string/jumbo v6, "vendor.appcompact.compact_throttle_fullfull"

    invoke-virtual {v8, v6, v5}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 313
    .local v5, "compactThrottleFullFull":I
    sget-object v6, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 315
    const-wide/32 v8, 0x927c0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 314
    const-string/jumbo v11, "vendor.appcompact.compact_throttle_bfgs"

    invoke-virtual {v6, v11, v10}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 316
    .local v6, "compactThrottleBfgs":I
    sget-object v10, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 318
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 317
    const-string/jumbo v9, "vendor.appcompact.compact_throttle_persistent"

    invoke-virtual {v10, v9, v8}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 319
    .local v8, "compactThrottlePersistent":I
    sget-object v9, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 321
    const-wide/16 v10, 0x2ee0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 320
    const-string/jumbo v11, "vendor.appcompact.rss_throttle_kb"

    invoke-virtual {v9, v11, v10}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 322
    .local v9, "fullRssThrottleKB":I
    sget-object v10, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 324
    const-wide/16 v11, 0x1f40

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 323
    const-string/jumbo v12, "vendor.appcompact.delta_rss_throttle_kb"

    invoke-virtual {v10, v12, v11}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 326
    .local v10, "deltaRssThrottleKB":I
    nop

    .line 328
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 326
    const-string v12, "activity_manager"

    const-string v13, "compact_action_1"

    const/4 v14, 0x1

    invoke-static {v12, v13, v11, v14}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 329
    nop

    .line 331
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 329
    const-string v13, "compact_action_2"

    invoke-static {v12, v13, v11, v14}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 332
    nop

    .line 334
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 332
    const-string v13, "compact_throttle_1"

    invoke-static {v12, v13, v11, v14}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 335
    nop

    .line 337
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 335
    const-string v13, "compact_throttle_2"

    invoke-static {v12, v13, v11, v14}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 338
    nop

    .line 340
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 338
    const-string v13, "compact_throttle_3"

    invoke-static {v12, v13, v11, v14}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 341
    nop

    .line 343
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 341
    const-string v13, "compact_throttle_4"

    invoke-static {v12, v13, v11, v14}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 344
    nop

    .line 346
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 344
    const-string v13, "compact_throttle_5"

    invoke-static {v12, v13, v11, v14}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 347
    nop

    .line 349
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 347
    const-string v13, "compact_throttle_6"

    invoke-static {v12, v13, v11, v14}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 350
    nop

    .line 352
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 350
    const-string v13, "compact_full_rss_throttle_kb"

    invoke-static {v12, v13, v11, v14}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 353
    nop

    .line 355
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 353
    const-string v13, "compact_full_delta_rss_throttle_kb"

    invoke-static {v12, v13, v11, v14}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 356
    nop

    .line 358
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    .line 356
    const-string/jumbo v13, "use_compaction"

    invoke-static {v12, v13, v11, v14}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 359
    return-void
.end method

.method private updateCompactStatsdSampleRate()V
    .locals 3

    .line 629
    const-string v0, "activity_manager"

    const-string v1, "compact_statsd_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 631
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 632
    return-void
.end method

.method private updateCompactionActions()V
    .locals 4

    .line 565
    const-string v0, "activity_manager"

    const-string v1, "compact_action_1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 568
    .local v1, "compactAction1":I
    const-string v2, "compact_action_2"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 571
    .local v0, "compactAction2":I
    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    .line 572
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    .line 573
    return-void
.end method

.method private updateCompactionThrottles()V
    .locals 11

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "useThrottleDefaults":Z
    nop

    .line 579
    const-string v1, "activity_manager"

    const-string v2, "compact_throttle_1"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "throttleSomeSomeFlag":Ljava/lang/String;
    nop

    .line 582
    const-string v3, "compact_throttle_2"

    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "throttleSomeFullFlag":Ljava/lang/String;
    nop

    .line 585
    const-string v4, "compact_throttle_3"

    invoke-static {v1, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, "throttleFullSomeFlag":Ljava/lang/String;
    nop

    .line 588
    const-string v5, "compact_throttle_4"

    invoke-static {v1, v5}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 590
    .local v5, "throttleFullFullFlag":Ljava/lang/String;
    nop

    .line 591
    const-string v6, "compact_throttle_5"

    invoke-static {v1, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 593
    .local v6, "throttleBFGSFlag":Ljava/lang/String;
    nop

    .line 594
    const-string v7, "compact_throttle_6"

    invoke-static {v1, v7}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "throttlePersistentFlag":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 598
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 599
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 600
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 601
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 607
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 608
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 609
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 610
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 611
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    goto :goto_1

    .line 612
    :catch_0
    move-exception v7

    .line 613
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    goto :goto_1

    .line 603
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 617
    :goto_1
    if-eqz v0, :cond_2

    .line 618
    const-wide/16 v7, 0x1388

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 619
    const-wide/16 v7, 0x2710

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 620
    const-wide/16 v9, 0x1f4

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 621
    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 622
    const-wide/32 v7, 0x927c0

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 623
    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    .line 625
    :cond_2
    return-void
.end method

.method private updateFreezerStatsdSampleRate()V
    .locals 3

    .line 636
    const-string v0, "activity_manager"

    const-string v1, "freeze_statsd_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 638
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 639
    return-void
.end method

.method private updateFullDeltaRssThrottle()V
    .locals 6

    .line 654
    const-string v0, "activity_manager"

    const-string v1, "compact_full_delta_rss_throttle_kb"

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 657
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 658
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 660
    :cond_0
    return-void
.end method

.method private updateFullRssThrottle()V
    .locals 6

    .line 643
    const-string v0, "activity_manager"

    const-string v1, "compact_full_rss_throttle_kb"

    const-wide/16 v2, 0x2ee0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 647
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 648
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 650
    :cond_0
    return-void
.end method

.method private updateProcStateThrottle()V
    .locals 4

    .line 664
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    const-string v1, "activity_manager"

    const-string v2, "compact_proc_state_throttle"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "procStateThrottleString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse app compact proc state throttle \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" falling back to default."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse default app compact proc state throttle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_0
    return-void
.end method

.method private updateUseCompaction()V
    .locals 4

    .line 486
    const-string v0, "activity_manager"

    const-string/jumbo v1, "use_compaction"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "useCompaction":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->setAppCompactProperties()V

    .line 491
    :cond_0
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 492
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 491
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 494
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 499
    :cond_1
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 501
    :cond_2
    return-void
.end method

.method private updateUseFreezer()V
    .locals 4

    .line 542
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cached_apps_freezer"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "configOverride":Ljava/lang/String;
    const-string v1, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    goto :goto_0

    .line 547
    :cond_0
    const-string v1, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

    .line 549
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 548
    const-string v2, "activity_manager_native_boot"

    const-string/jumbo v3, "use_freezer"

    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    :cond_1
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->isFreezerSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 553
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v1, :cond_4

    .line 554
    const-string v1, "ActivityManager"

    const-string v2, "Freezer enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 556
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 559
    :cond_3
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    .line 561
    :cond_4
    return-void
.end method


# virtual methods
.method compactAllSystem()V
    .locals 2

    .line 471
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 475
    :cond_0
    return-void
.end method

.method compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 456
    const/4 v0, 0x4

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 457
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 459
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 458
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 461
    return-void
.end method

.method compactAppFull(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 431
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 432
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 434
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 433
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 437
    return-void
.end method

.method compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 441
    const/4 v0, 0x3

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 442
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 444
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 443
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    return-void
.end method

.method compactAppSome(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 422
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 423
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 425
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 424
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 381
    const-string v0, "CachedAppOptimizer settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_compaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_delta_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_proc_state_throttle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    .line 398
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " some, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " full, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " persistent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " BFGS compactions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Tracking last compaction stats for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " processes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " use_freezer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 411
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 412
    .local v3, "pid":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    .line 413
    .local v4, "stats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v4}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;>;"
    .end local v3    # "pid":I
    .end local v4    # "stats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    goto :goto_0

    .line 417
    :cond_0
    monitor-exit v0

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method freezeAppAsync(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 711
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 713
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    .line 714
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 713
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 717
    return-void
.end method

.method public init()V
    .locals 3

    .line 273
    nop

    .line 274
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 273
    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    .line 277
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionActions()V

    .line 278
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    .line 279
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    .line 280
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    .line 281
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    .line 282
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    .line 283
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    .line 284
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 288
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->setAppCompactProperties()V

    .line 289
    return-void

    .line 285
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .line 465
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .line 450
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method unfreezeAppLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 721
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 723
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    const-string v1, " "

    const-string v2, "ActivityManager"

    if-nez v0, :cond_1

    .line 724
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v0, :cond_0

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unfreeze for process "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (not frozen)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    return-void

    .line 732
    :cond_1
    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J

    .line 735
    .local v3, "freezeTime":J
    :try_start_0
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    .line 737
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J

    .line 738
    iput-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to unfreeze "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Any related user experience might be hanged."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-nez v0, :cond_3

    .line 745
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v0, :cond_2

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sync unfroze "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-wide v5, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J

    sub-long/2addr v5, v3

    const-wide/32 v7, 0x7fffffff

    .line 752
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 750
    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 749
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 755
    :cond_3
    return-void
.end method

.method public useCompaction()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    monitor-exit v0

    return v1

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public useFreezer()Z
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    monitor-exit v0

    return v1

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
