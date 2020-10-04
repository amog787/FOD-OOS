.class public final Lcom/android/server/am/AppCompactor;
.super Ljava/lang/Object;
.source "AppCompactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppCompactor$MemCompactionHandler;,
        Lcom/android/server/am/AppCompactor$LastCompactionStats;,
        Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_COMPACT_ACTION_2:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:J = 0x1f40L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB:J = 0x2ee0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_COMPACT_THROTTLE_1:J = 0x1388L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_COMPACT_THROTTLE_2:J = 0x2710L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_COMPACT_THROTTLE_3:J = 0x1f4L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_COMPACT_THROTTLE_4:J = 0x2710L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_COMPACT_THROTTLE_5:J = 0x927c0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_COMPACT_THROTTLE_6:J = 0x927c0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_STATSD_SAMPLE_RATE:F = 0.1f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_ACTION_1:Ljava/lang/String; = "compact_action_1"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_ACTION_2:Ljava/lang/String; = "compact_action_2"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_delta_rss_throttle_kb"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_FULL_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_rss_throttle_kb"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String; = "compact_proc_state_throttle"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_STATSD_SAMPLE_RATE:Ljava/lang/String; = "compact_statsd_sample_rate"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_THROTTLE_1:Ljava/lang/String; = "compact_throttle_1"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_THROTTLE_2:Ljava/lang/String; = "compact_throttle_2"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_THROTTLE_3:Ljava/lang/String; = "compact_throttle_3"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_THROTTLE_4:Ljava/lang/String; = "compact_throttle_4"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_THROTTLE_5:Ljava/lang/String; = "compact_throttle_5"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COMPACT_THROTTLE_6:Ljava/lang/String; = "compact_throttle_6"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_USE_COMPACTION:Ljava/lang/String; = "use_compaction"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mBfgsCompactionCount:I

.field volatile mCompactActionFull:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field volatile mCompactActionSome:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field volatile mCompactThrottleBFGS:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field volatile mCompactThrottleFullFull:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field volatile mCompactThrottleFullSome:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field volatile mCompactThrottlePersistent:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field volatile mCompactThrottleSomeFull:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field volatile mCompactThrottleSomeSome:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mCompactionHandler:Landroid/os/Handler;

.field final mCompactionThread:Lcom/android/server/ServiceThread;

.field volatile mFullAnonRssThrottleKb:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mFullCompactionCount:I

.field volatile mFullDeltaRssThrottleKb:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenoypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLastCompactionStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/AppCompactor$LastCompactionStats;",
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenoypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private mSomeCompactionCount:I

.field volatile mStatsdSampleRate:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTestCallback:Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;

.field private volatile mUseCompaction:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppCompactor;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 101
    nop

    .line 102
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppCompactor;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppCompactor;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Lcom/android/server/am/AppCompactor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppCompactor$1;-><init>(Lcom/android/server/am/AppCompactor;)V

    iput-object v0, p0, Lcom/android/server/am/AppCompactor;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppCompactor;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 166
    nop

    .line 168
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppCompactor;->mCompactActionSome:Ljava/lang/String;

    .line 169
    nop

    .line 171
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/am/AppCompactor;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppCompactor;->mCompactActionFull:Ljava/lang/String;

    .line 172
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeSome:J

    .line 174
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeFull:J

    .line 176
    const-wide/16 v3, 0x1f4

    iput-wide v3, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullSome:J

    .line 178
    iput-wide v1, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullFull:J

    .line 180
    const-wide/32 v1, 0x927c0

    iput-wide v1, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

    .line 182
    iput-wide v1, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J

    .line 184
    sget-object v1, Lcom/android/server/am/AppCompactor;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 185
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/AppCompactor;->mUseCompaction:Z

    .line 186
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppCompactor;->mRandom:Ljava/util/Random;

    .line 187
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/android/server/am/AppCompactor;->mStatsdSampleRate:F

    .line 189
    const-wide/16 v1, 0x2ee0

    iput-wide v1, p0, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    .line 192
    const-wide/16 v1, 0x1f40

    iput-wide v1, p0, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    .line 204
    new-instance v1, Lcom/android/server/am/AppCompactor$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppCompactor$2;-><init>(Lcom/android/server/am/AppCompactor;)V

    iput-object v1, p0, Lcom/android/server/am/AppCompactor;->mLastCompactionStats:Ljava/util/Map;

    .line 218
    iput-object p1, p0, Lcom/android/server/am/AppCompactor;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 219
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "CompactionThread"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/am/AppCompactor;->mCompactionThread:Lcom/android/server/ServiceThread;

    .line 221
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppCompactor;->mProcStateThrottle:Ljava/util/Set;

    .line 222
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;)V
    .locals 0
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "callback"    # Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/am/AppCompactor;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 227
    iput-object p2, p0, Lcom/android/server/am/AppCompactor;->mTestCallback:Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppCompactor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mPhenotypeFlagLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppCompactor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateUseCompaction()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/AppCompactor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/AppCompactor;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mLastCompactionStats:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1308(Lcom/android/server/am/AppCompactor;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    iget v0, p0, Lcom/android/server/am/AppCompactor;->mSomeCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/AppCompactor;->mSomeCompactionCount:I

    return v0
.end method

.method static synthetic access$1408(Lcom/android/server/am/AppCompactor;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    iget v0, p0, Lcom/android/server/am/AppCompactor;->mFullCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/AppCompactor;->mFullCompactionCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/android/server/am/AppCompactor;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    iget v0, p0, Lcom/android/server/am/AppCompactor;->mPersistentCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/AppCompactor;->mPersistentCompactionCount:I

    return v0
.end method

.method static synthetic access$1608(Lcom/android/server/am/AppCompactor;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    iget v0, p0, Lcom/android/server/am/AppCompactor;->mBfgsCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/AppCompactor;->mBfgsCompactionCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/AppCompactor;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/AppCompactor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->compactSystem()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/AppCompactor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateCompactionActions()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/AppCompactor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateCompactionThrottles()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/AppCompactor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateStatsdSampleRate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/AppCompactor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateFullRssThrottle()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/AppCompactor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateFullDeltaRssThrottle()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/AppCompactor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateProcStateThrottle()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppCompactor;

    .line 54
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mTestCallback:Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;

    return-object v0
.end method

.method static compactActionIntToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 496
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    const-string v1, ""

    if-eq p0, v0, :cond_0

    .line 506
    return-object v1

    .line 498
    :cond_0
    return-object v1

    .line 504
    :cond_1
    const-string v0, "all"

    return-object v0

    .line 502
    :cond_2
    const-string v0, "anon"

    return-object v0

    .line 500
    :cond_3
    const-string v0, "file"

    return-object v0
.end method

.method private native compactSystem()V
.end method

.method private parseProcStateThrottle(Ljava/lang/String;)Z
    .locals 7
    .param p1, "procStateThrottleString"    # Ljava/lang/String;

    .line 480
    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "procStates":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/AppCompactor;->mProcStateThrottle:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 482
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 484
    .local v4, "procState":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/AppCompactor;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    nop

    .line 482
    .end local v4    # "procState":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 485
    .restart local v4    # "procState":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 486
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

    .line 488
    return v2

    .line 491
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "procState":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private updateCompactionActions()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .line 373
    const-string v0, "activity_manager"

    const-string v1, "compact_action_1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 376
    .local v1, "compactAction1":I
    const-string v2, "compact_action_2"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 379
    .local v0, "compactAction2":I
    invoke-static {v1}, Lcom/android/server/am/AppCompactor;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/AppCompactor;->mCompactActionSome:Ljava/lang/String;

    .line 380
    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/AppCompactor;->mCompactActionFull:Ljava/lang/String;

    .line 381
    return-void
.end method

.method private updateCompactionThrottles()V
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "useThrottleDefaults":Z
    nop

    .line 387
    const-string v1, "activity_manager"

    const-string v2, "compact_throttle_1"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "throttleSomeSomeFlag":Ljava/lang/String;
    nop

    .line 390
    const-string v3, "compact_throttle_2"

    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "throttleSomeFullFlag":Ljava/lang/String;
    nop

    .line 393
    const-string v4, "compact_throttle_3"

    invoke-static {v1, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "throttleFullSomeFlag":Ljava/lang/String;
    nop

    .line 396
    const-string v5, "compact_throttle_4"

    invoke-static {v1, v5}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "throttleFullFullFlag":Ljava/lang/String;
    nop

    .line 399
    const-string v6, "compact_throttle_5"

    invoke-static {v1, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 401
    .local v6, "throttleBFGSFlag":Ljava/lang/String;
    nop

    .line 402
    const-string v7, "compact_throttle_6"

    invoke-static {v1, v7}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "throttlePersistentFlag":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 406
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 407
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 408
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 409
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeSome:J

    .line 415
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeFull:J

    .line 416
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullSome:J

    .line 417
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullFull:J

    .line 418
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

    .line 419
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    goto :goto_1

    .line 420
    :catch_0
    move-exception v7

    .line 421
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    goto :goto_1

    .line 411
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 425
    :goto_1
    if-eqz v0, :cond_2

    .line 426
    const-wide/16 v7, 0x1388

    iput-wide v7, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeSome:J

    .line 427
    const-wide/16 v7, 0x2710

    iput-wide v7, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeFull:J

    .line 428
    const-wide/16 v9, 0x1f4

    iput-wide v9, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullSome:J

    .line 429
    iput-wide v7, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullFull:J

    .line 430
    const-wide/32 v7, 0x927c0

    iput-wide v7, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

    .line 431
    iput-wide v7, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J

    .line 433
    :cond_2
    return-void
.end method

.method private updateFullDeltaRssThrottle()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .line 455
    const-wide/16 v0, 0x1f40

    const-string v2, "activity_manager"

    const-string v3, "compact_full_delta_rss_throttle_kb"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    .line 458
    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 459
    iput-wide v0, p0, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    .line 461
    :cond_0
    return-void
.end method

.method private updateFullRssThrottle()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .line 444
    const-wide/16 v0, 0x2ee0

    const-string v2, "activity_manager"

    const-string v3, "compact_full_rss_throttle_kb"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    .line 448
    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 449
    iput-wide v0, p0, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    .line 451
    :cond_0
    return-void
.end method

.method private updateProcStateThrottle()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .line 465
    sget-object v0, Lcom/android/server/am/AppCompactor;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    const-string v1, "activity_manager"

    const-string v2, "compact_proc_state_throttle"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "procStateThrottleString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/am/AppCompactor;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
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

    .line 471
    sget-object v1, Lcom/android/server/am/AppCompactor;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/AppCompactor;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse default app compact proc state throttle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/AppCompactor;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    return-void
.end method

.method private updateStatsdSampleRate()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .line 437
    const-string v0, "activity_manager"

    const-string v1, "compact_statsd_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppCompactor;->mStatsdSampleRate:F

    .line 439
    iget v0, p0, Lcom/android/server/am/AppCompactor;->mStatsdSampleRate:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppCompactor;->mStatsdSampleRate:F

    .line 440
    return-void
.end method

.method private updateUseCompaction()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/android/server/am/AppCompactor;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 364
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 363
    const-string v1, "activity_manager"

    const-string/jumbo v2, "use_compaction"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppCompactor;->mUseCompaction:Z

    .line 365
    iget-boolean v0, p0, Lcom/android/server/am/AppCompactor;->mUseCompaction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mCompactionThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mCompactionThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 367
    new-instance v0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppCompactor$MemCompactionHandler;-><init>(Lcom/android/server/am/AppCompactor;Lcom/android/server/am/AppCompactor$1;)V

    iput-object v0, p0, Lcom/android/server/am/AppCompactor;->mCompactionHandler:Landroid/os/Handler;

    .line 369
    :cond_0
    return-void
.end method


# virtual methods
.method compactAllSystem()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 349
    iget-boolean v0, p0, Lcom/android/server/am/AppCompactor;->mUseCompaction:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mCompactionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    :cond_0
    return-void
.end method

.method compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 334
    const/4 v0, 0x4

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 335
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mCompactionHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 337
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    return-void
.end method

.method compactAppFull(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 309
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 310
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mCompactionHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 312
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    return-void
.end method

.method compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 319
    const/4 v0, 0x3

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 320
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mCompactionHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 322
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    return-void
.end method

.method compactAppSome(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 300
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 301
    iget-object v1, p0, Lcom/android/server/am/AppCompactor;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v1, p0, Lcom/android/server/am/AppCompactor;->mCompactionHandler:Landroid/os/Handler;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 303
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 302
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 261
    const-string v0, "AppCompactor settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_compaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/AppCompactor;->mUseCompaction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/AppCompactor;->mCompactActionSome:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/AppCompactor;->mCompactActionFull:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/AppCompactor;->mStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_delta_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_proc_state_throttle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/AppCompactor;->mProcStateThrottle:Ljava/util/Set;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    .line 278
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/AppCompactor;->mSomeCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " some, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/AppCompactor;->mFullCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " full, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/AppCompactor;->mPersistentCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " persistent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/AppCompactor;->mBfgsCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " BFGS compactions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Tracking last compaction stats for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/AppCompactor;->mLastCompactionStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " processes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/server/am/AppCompactor;->mLastCompactionStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 289
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/AppCompactor$LastCompactionStats;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 290
    .local v3, "pid":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppCompactor$LastCompactionStats;

    .line 291
    .local v4, "stats":Lcom/android/server/am/AppCompactor$LastCompactionStats;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v4}, Lcom/android/server/am/AppCompactor$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/AppCompactor$LastCompactionStats;>;"
    .end local v3    # "pid":I
    .end local v4    # "stats":Lcom/android/server/am/AppCompactor$LastCompactionStats;
    goto :goto_0

    .line 295
    :cond_0
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 3

    .line 235
    nop

    .line 236
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppCompactor;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 235
    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateUseCompaction()V

    .line 239
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateCompactionActions()V

    .line 240
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateCompactionThrottles()V

    .line 241
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateStatsdSampleRate()V

    .line 242
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateFullRssThrottle()V

    .line 243
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateFullDeltaRssThrottle()V

    .line 244
    invoke-direct {p0}, Lcom/android/server/am/AppCompactor;->updateProcStateThrottle()V

    .line 245
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mCompactionThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 248
    return-void

    .line 245
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 343
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 328
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J

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

.method public useCompaction()Z
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/server/am/AppCompactor;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppCompactor;->mUseCompaction:Z

    monitor-exit v0

    return v1

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
