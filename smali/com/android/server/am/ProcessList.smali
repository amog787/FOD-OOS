.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;,
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;,
        Lcom/android/server/am/ProcessList$KillHandler;,
        Lcom/android/server/am/ProcessList$MyProcessMap;,
        Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;,
        Lcom/android/server/am/ProcessList$IsolatedUidRange;
    }
.end annotation


# static fields
.field static final ANDROID_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.zygote.app_data_isolation"

.field static final ANDROID_FUSE_ENABLED:Ljava/lang/String; = "persist.sys.fuse"

.field static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field private static final APP_DATA_DIRECTORY_ISOLATION:J = 0x89450c5L

.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_IMPORTANCE_LEVELS:I = 0x5

.field static final CACHED_APP_LMK_FIRST_ADJ:I = 0x3b6

.field static final CACHED_APP_MAX_ADJ:I = 0x3e7

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field private static final GWP_ASAN:J = 0x8159f9eL

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field private static final LMKD_RECONNECT_DELAY_MS:J = 0x3e8L

.field static final LMK_ASYNC_EVENT_KILL:I = 0x0

.field static final LMK_GETKILLCNT:B = 0x4t

.field static final LMK_PROCKILL:B = 0x6t

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCPURGE:B = 0x3t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_SUBSCRIBE:B = 0x5t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field private static final MAX_ZYGOTE_UNSOLICITED_MESSAGE_SIZE:I = 0x10

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field private static final NATIVE_HEAP_POINTER_TAGGING:J = 0x81774caL

.field static final NETWORK_STATE_BLOCK:I = 0x1

.field static final NETWORK_STATE_NO_CHANGE:I = 0x0

.field static final NETWORK_STATE_UNBLOCK:I = 0x2

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERCEPTIBLE_LOW_APP_ADJ:I = 0xfa

.field static final PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ:I = 0x32

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field private static final PROC_KILL_TIMEOUT:I = 0x7d0

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field private static final PROPERTY_USE_APP_IMAGE_STARTUP_CACHE:Ljava/lang/String; = "persist.device_config.runtime_native.use_app_image_startup_cache"

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field private static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field private static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x2

.field static final SCHED_GROUP_RESTRICTED:I = 0x1

.field public static final SCHED_GROUP_TOP_APP:I = 0x3

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x3e9

.field private static final UNSOL_ZYGOTE_MSG_SOCKET_PATH:Ljava/lang/String; = "/data/system/unsolzygotesocket"

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field static volatile mOmmKillEnabled:Z

.field public static mPerfServiceStartHint:Landroid/util/BoostFramework;

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field static sKillThread:Lcom/android/server/ServiceThread;

.field private static sLmkdConnection:Lcom/android/server/am/LmkdConnection;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field private mAppDataIsolationEnabled:Z

.field private mAppDataIsolationWhitelistedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

.field final mAppZygoteProcesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/AppZygote;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAppZygotes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/os/AppZygote;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedRestoreLevel:J

.field mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

.field private mHaveDisplaySize:Z

.field mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

.field final mIsolatedProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOomLevelsUpdateTime:J

.field mLruProcessActivityStart:I

.field mLruProcessServiceStart:I

.field final mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLruSeq:I

.field private final mOomAdj:[I

.field private final mOomAdj_H2:[I

.field private mOomLevelsSet:Z

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mOomMinFree_O2:[I

.field final mPendingStarts:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field private mProcStartSeqCounter:J

.field mProcStateSeqCounter:J

.field final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

.field final mRemovedProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mStringBuilder:Ljava/lang/StringBuilder;

.field private mSystemPropertiesChangedCallback:Ljava/lang/Runnable;

.field private mSystemServerSocketForZygote:Landroid/net/LocalSocket;

.field private final mTotalMemMb:J

.field private mVoldAppDataIsolationEnabled:Z

.field private final mZygoteSigChldMessage:[I

.field private final mZygoteUnsolicitedMessage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 389
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 390
    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 442
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/ProcessList;->mOmmKillEnabled:Z

    .line 445
    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 559
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    .line 1316
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 1339
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 1347
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1355
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 1363
    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 1371
    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 1379
    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_2
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_3
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_5
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_6
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 6

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 395
    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 407
    new-array v3, v1, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj_H2:[I

    .line 414
    new-array v3, v1, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 420
    new-array v3, v1, [I

    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 425
    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 429
    new-array v1, v1, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree_O2:[I

    .line 443
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mLastOomLevelsUpdateTime:J

    .line 447
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 449
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 451
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 468
    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 475
    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 483
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 495
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 501
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 506
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 513
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 518
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 523
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {v1}, Lcom/android/server/am/AppExitInfoTracker;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 529
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 532
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 549
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    .line 554
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    .line 668
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v1, 0x182b8

    const v2, 0x1869f

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 675
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v1, 0x15f90

    const v2, 0x182b7

    const/16 v4, 0x64

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 691
    new-instance v0, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 760
    new-instance v0, Lcom/android/server/am/ProcessList$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mSystemPropertiesChangedCallback:Ljava/lang/Runnable;

    .line 748
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 749
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 750
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v4, 0x100000

    div-long/2addr v1, v4

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 751
    invoke-direct {p0, v3, v3, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 754
    invoke-static {}, Lcom/android/server/am/OpORMServiceInjector;->getOMMKillEnable()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/ProcessList;->mOmmKillEnabled:Z

    .line 756
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x321
        0x3b6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x190
        0x321
    .end array-data

    :array_2
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_3
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data

    :array_4
    .array-data 4
        0x4800
        0x5a00
        0x6c00
        0xc838
        0x24b18
        0x30fc0
    .end array-data
.end method

.method public static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 1
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 1456
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1457
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/am/LmkdConnection;
    .locals 1

    .line 166
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ProcessList;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessList;

    .line 166
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mLastOomLevelsUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ProcessList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ProcessList;

    .line 166
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mSystemPropertiesChangedCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ProcessList;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ProcessList;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .line 1234
    const/4 v0, 0x0

    .local v0, "j":I
    const/16 v1, 0xa

    .local v1, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 1235
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 1236
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 1239
    .end local v0    # "j":I
    .end local v1    # "fact":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1240
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "compactPrefix"    # Ljava/lang/String;
    .param p2, "space"    # Ljava/lang/String;
    .param p3, "val"    # I
    .param p4, "base"    # I
    .param p5, "compact"    # Z

    .line 1044
    sub-int v0, p3, p4

    .line 1045
    .local v0, "diff":I
    if-nez v0, :cond_2

    .line 1046
    if-eqz p5, :cond_0

    .line 1047
    return-object p1

    .line 1049
    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 1050
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1052
    :cond_2
    const/16 v1, 0xa

    const-string v2, "+"

    if-ge v0, v1, :cond_4

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "+ "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1055
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkSlow(JLjava/lang/String;)V
    .locals 6
    .param p1, "startTime"    # J
    .param p3, "where"    # Ljava/lang/String;

    .line 1726
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1727
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_0
    return-void
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 3
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 1447
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    .line 1449
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    .line 1450
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1451
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1453
    :cond_0
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .line 1039
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method private computeGidsForProcess(II[I)[I
    .locals 9
    .param p1, "mountExternal"    # I
    .param p2, "uid"    # I
    .param p3, "permGids"    # [I

    .line 1734
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    const/4 v2, 0x5

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1736
    .local v0, "gidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    .line 1737
    .local v1, "sharedAppGid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v3

    .line 1738
    .local v3, "cacheAppGid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v4

    .line 1742
    .local v4, "userGid":I
    array-length v5, p3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget v7, p3, v6

    .line 1743
    .local v7, "permGid":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    .end local v7    # "permGid":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1745
    :cond_0
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 1746
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1748
    :cond_1
    if-eq v3, v5, :cond_2

    .line 1749
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    :cond_2
    if-eq v4, v5, :cond_3

    .line 1752
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1754
    :cond_3
    const/16 v5, 0x8

    const/4 v6, 0x7

    const/16 v7, 0x437

    if-eq p1, v5, :cond_4

    if-ne p1, v6, :cond_5

    .line 1761
    :cond_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v8, 0x3f7

    invoke-static {v5, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    const/16 v5, 0x436

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    :cond_5
    if-ne p1, v2, :cond_6

    .line 1771
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    :cond_6
    if-ne p1, v6, :cond_7

    .line 1777
    const/16 v2, 0x3ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1781
    .local v2, "gidArray":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_8

    .line 1782
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v5

    .line 1781
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1784
    .end local v5    # "i":I
    :cond_8
    return-object v2
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .locals 9
    .param p0, "procState"    # I
    .param p1, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .line 1463
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    .line 1464
    .local v0, "memState":I
    if-eqz p1, :cond_3

    .line 1465
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v1, :cond_0

    .line 1466
    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1467
    .local v1, "highestMemState":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1468
    .local v2, "first":Z
    :goto_1
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1469
    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 1470
    if-eqz v2, :cond_2

    .line 1471
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    .local v4, "scalingFactor":F
    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2

    .line 1473
    .end local v4    # "scalingFactor":F
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v4, v3, v0

    .line 1474
    .restart local v4    # "scalingFactor":F
    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 1476
    .end local v1    # "highestMemState":I
    :goto_2
    goto :goto_3

    .line 1477
    .end local v2    # "first":Z
    .end local v4    # "scalingFactor":F
    :cond_3
    const/4 v2, 0x1

    .line 1478
    .restart local v2    # "first":Z
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1480
    .restart local v4    # "scalingFactor":F
    :goto_3
    if-eqz p2, :cond_5

    .line 1481
    if-eqz v2, :cond_4

    .line 1482
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4

    .line 1483
    :cond_4
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4

    .line 1484
    :cond_5
    if-eqz v2, :cond_7

    .line 1485
    if-eqz p3, :cond_6

    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4

    .line 1486
    :cond_7
    if-eqz p3, :cond_8

    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    :goto_4
    nop

    .line 1487
    .local v1, "table":[J
    aget-wide v5, v1, v0

    long-to-float v3, v5

    mul-float/2addr v3, v4

    float-to-long v5, v3

    .line 1488
    .local v5, "delay":J
    const-wide/32 v7, 0x36ee80

    cmp-long v3, v5, v7

    if-lez v3, :cond_9

    .line 1489
    const-wide/32 v5, 0x36ee80

    .line 1491
    :cond_9
    add-long v7, p4, v5

    return-wide v7
.end method

.method private createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2318
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2321
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    .line 2322
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 2324
    .local v2, "appZygote":Landroid/os/AppZygote;
    if-nez v2, :cond_1

    .line 2325
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_0

    .line 2326
    const-string v3, "ActivityManager"

    const-string v4, "Creating new app zygote."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 2330
    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v5

    .line 2329
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v3

    .line 2331
    .local v3, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2334
    .local v4, "userId":I
    iget v5, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 2335
    .local v5, "firstUid":I
    iget v6, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v4, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 2336
    .local v6, "lastUid":I
    new-instance v7, Landroid/content/pm/ApplicationInfo;

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, v8}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2343
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2344
    iput v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2345
    new-instance v8, Landroid/os/AppZygote;

    invoke-direct {v8, v7, v1, v5, v6}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;III)V

    move-object v2, v8

    .line 2346
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2347
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2348
    .local v8, "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    nop

    .end local v3    # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .end local v4    # "userId":I
    .end local v5    # "firstUid":I
    .end local v6    # "lastUid":I
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 2350
    .end local v8    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_1
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_2

    .line 2351
    const-string v3, "ActivityManager"

    const-string v4, "Reusing existing app zygote."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2354
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v8, v3

    .line 2360
    .restart local v8    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_0
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2362
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2363
    .end local v1    # "uid":I
    .end local v2    # "appZygote":Landroid/os/AppZygote;
    .end local v8    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private createSystemServerSocketForZygote()Landroid/net/LocalSocket;
    .locals 5

    .line 4126
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/unsolzygotesocket"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4127
    .local v0, "socketFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4128
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4131
    :cond_0
    const/4 v2, 0x0

    .line 4133
    .local v2, "serverSocket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/net/LocalSocket;-><init>(I)V

    move-object v2, v3

    .line 4134
    new-instance v3, Landroid/net/LocalSocketAddress;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v1, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 4136
    const/16 v3, 0x1b6

    invoke-static {v1, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4145
    goto :goto_1

    .line 4137
    :catch_0
    move-exception v1

    .line 4138
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 4140
    :try_start_1
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4142
    goto :goto_0

    .line 4141
    :catch_1
    move-exception v3

    .line 4143
    :goto_0
    const/4 v2, 0x0

    .line 4146
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v2
.end method

.method private decideGwpAsanLevel(Lcom/android/server/am/ProcessRecord;)I
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1816
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    const/4 v1, -0x1

    const/high16 v2, 0x400000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-eq v0, v1, :cond_1

    .line 1818
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-ne v0, v3, :cond_0

    .line 1819
    goto :goto_0

    .line 1820
    :cond_0
    move v2, v4

    .line 1818
    :goto_0
    return v2

    .line 1823
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1824
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1825
    goto :goto_1

    .line 1826
    :cond_2
    move v2, v4

    .line 1824
    :goto_1
    return v2

    .line 1830
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v5, 0x8159f9e

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1831
    return v2

    .line 1833
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 1836
    return v4

    .line 1841
    :cond_5
    return v4
.end method

.method private decideTaggingLevel(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1807
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList;->shouldEnableTaggedPointers(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    const/high16 v0, 0x80000

    return v0

    .line 1811
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .locals 4
    .param p0, "min_oom_adj"    # I
    .param p1, "max_oom_adj"    # I

    .line 1561
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1562
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1563
    .local v1, "repl":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1564
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1565
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1567
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1568
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1569
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1570
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 1572
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;

    .line 3097
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3101
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3102
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 3101
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    return-object v0

    .line 3099
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object v0
.end method

.method private getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;
    .locals 12
    .param p1, "pmInt"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManagerInternal;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 2368
    new-instance v0, Landroid/util/ArrayMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2369
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2370
    .local v1, "userId":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 2371
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 2372
    .local v5, "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string v6, "ActivityManager"

    if-nez v5, :cond_0

    .line 2373
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    goto :goto_1

    .line 2376
    :cond_0
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v7

    .line 2377
    .local v7, "volumeUuid":Ljava/lang/String;
    invoke-virtual {p1, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getCeDataInode(Ljava/lang/String;I)J

    move-result-wide v8

    .line 2378
    .local v8, "inode":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_1

    .line 2379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inode == 0 (b/152760674)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    const/4 v2, 0x0

    return-object v2

    .line 2382
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2370
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local v8    # "inode":J
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2385
    :cond_2
    return-object v0
.end method

.method private handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 19
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "gids"    # [I
    .param p4, "runtimeFlags"    # I
    .param p5, "zygotePolicyFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "requiredAbi"    # Ljava/lang/String;
    .param p8, "instructionSet"    # Ljava/lang/String;
    .param p9, "invokeWith"    # Ljava/lang/String;
    .param p10, "startSeq"    # J

    .line 2223
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p10

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->mPrecedence:Lcom/android/server/am/ProcessRecord;

    .line 2224
    .local v11, "precedence":Lcom/android/server/am/ProcessRecord;
    if-eqz v11, :cond_2

    .line 2225
    iget v1, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2226
    .local v1, "pid":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2227
    .local v2, "now":J
    const-wide/16 v4, 0x7d0

    add-long/2addr v4, v2

    .line 2229
    .local v4, "end":J
    const/16 v0, 0x7d0

    :try_start_0
    invoke-static {v1, v0}, Landroid/os/Process;->waitForProcessDeath(II)V

    .line 2231
    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2232
    :try_start_1
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mPrecedence:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 2233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v6

    .line 2234
    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 2236
    sub-long v6, v4, v2

    :try_start_2
    invoke-virtual {v11, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2238
    goto :goto_0

    .line 2237
    :catch_0
    move-exception v0

    .line 2241
    :cond_0
    :goto_0
    :try_start_3
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mPrecedence:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    .line 2243
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has died, but its cleanup isn\'t done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :cond_1
    monitor-exit v11

    .line 2250
    goto :goto_1

    .line 2245
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "pid":I
    .end local v2    # "now":J
    .end local v4    # "end":J
    .end local v11    # "precedence":Lcom/android/server/am/ProcessRecord;
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "entryPoint":Ljava/lang/String;
    .end local p3    # "gids":[I
    .end local p4    # "runtimeFlags":I
    .end local p5    # "zygotePolicyFlags":I
    .end local p6    # "mountExternal":I
    .end local p7    # "requiredAbi":Ljava/lang/String;
    .end local p8    # "instructionSet":Ljava/lang/String;
    .end local p9    # "invokeWith":Ljava/lang/String;
    .end local p10    # "startSeq":J
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2246
    .restart local v1    # "pid":I
    .restart local v2    # "now":J
    .restart local v4    # "end":J
    .restart local v11    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "entryPoint":Ljava/lang/String;
    .restart local p3    # "gids":[I
    .restart local p4    # "runtimeFlags":I
    .restart local p5    # "zygotePolicyFlags":I
    .restart local p6    # "mountExternal":I
    .restart local p7    # "requiredAbi":Ljava/lang/String;
    .restart local p8    # "instructionSet":Ljava/lang/String;
    .restart local p9    # "invokeWith":Ljava/lang/String;
    .restart local p10    # "startSeq":J
    :catch_1
    move-exception v0

    .line 2248
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " refused to die, but we need to launch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pid":I
    .end local v2    # "now":J
    .end local v4    # "end":J
    :cond_2
    :goto_1
    :try_start_5
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    iget v5, v15, Lcom/android/server/am/ProcessRecord;->startUid:I

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    iget-wide v8, v15, Lcom/android/server/am/ProcessRecord;->startTime:J
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v16, v8

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v18, v11

    .end local v11    # "precedence":Lcom/android/server/am/ProcessRecord;
    .local v18, "precedence":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-wide/from16 v14, v16

    :try_start_6
    invoke-direct/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v1, v0

    .line 2258
    .local v1, "startResult":Landroid/os/Process$ProcessStartResult;
    move-object/from16 v2, p0

    :try_start_7
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2259
    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    :try_start_9
    invoke-direct {v2, v4, v1, v5, v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    .line 2260
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    .line 2271
    .end local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_5

    .line 2260
    .restart local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    :goto_2
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v18    # "precedence":Lcom/android/server/am/ProcessRecord;
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "entryPoint":Ljava/lang/String;
    .end local p3    # "gids":[I
    .end local p4    # "runtimeFlags":I
    .end local p5    # "zygotePolicyFlags":I
    .end local p6    # "mountExternal":I
    .end local p7    # "requiredAbi":Ljava/lang/String;
    .end local p8    # "instructionSet":Ljava/lang/String;
    .end local p9    # "invokeWith":Ljava/lang/String;
    .end local p10    # "startSeq":J
    throw v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 2261
    .end local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    .restart local v18    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "entryPoint":Ljava/lang/String;
    .restart local p3    # "gids":[I
    .restart local p4    # "runtimeFlags":I
    .restart local p5    # "zygotePolicyFlags":I
    .restart local p6    # "mountExternal":I
    .restart local p7    # "requiredAbi":Ljava/lang/String;
    .restart local p8    # "instructionSet":Ljava/lang/String;
    .restart local p9    # "invokeWith":Ljava/lang/String;
    .restart local p10    # "startSeq":J
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    goto :goto_4

    .end local v18    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "precedence":Lcom/android/server/am/ProcessRecord;
    :catch_5
    move-exception v0

    move-object/from16 v18, v11

    move-wide v5, v12

    move-object v2, v14

    move-object v4, v15

    .end local v11    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "precedence":Lcom/android/server/am/ProcessRecord;
    :goto_4
    move-object v1, v0

    .line 2262
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2263
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure starting process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2265
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2266
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2267
    iget-object v7, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2268
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v16, "start failure"

    .line 2267
    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2270
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2272
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_5
    return-void

    .line 2270
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_3
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .locals 8
    .param p1, "pending"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "startResult"    # Landroid/os/Process$ProcessStartResult;
    .param p3, "expectedStartSeq"    # J

    .line 2711
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2712
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne v0, v1, :cond_0

    .line 2713
    iget-boolean v0, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2716
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2718
    :cond_1
    iget v3, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    move-result v0

    return v0
.end method

.method private handleZygoteMessages(Ljava/io/FileDescriptor;I)I
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 4153
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 4154
    .local v0, "eventFd":I
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 4159
    .local v1, "len":I
    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    array-length v3, v3

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    invoke-static {v5, v1, v6}, Lcom/android/internal/os/Zygote;->nativeParseSigChld([BI[I)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 4161
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget v4, v5, v4

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/AppExitInfoTracker;->handleZygoteSigChld(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4168
    .end local v1    # "len":I
    :cond_0
    goto :goto_0

    .line 4166
    :catch_0
    move-exception v1

    .line 4167
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in reading unsolicited zygote message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method private isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "expectedStartSeq"    # J

    .line 2674
    const/4 v0, 0x0

    .line 2675
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v1, :cond_1

    .line 2676
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2677
    :cond_0
    const-string/jumbo v1, "killedByAm=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2679
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_3

    .line 2680
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2681
    :cond_2
    const-string v1, "No entry in mProcessNames;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2683
    :cond_3
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-nez v1, :cond_5

    .line 2684
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2685
    :cond_4
    const-string/jumbo v1, "pendingStart=false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2687
    :cond_5
    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_7

    .line 2688
    if-nez v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2689
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    :cond_7
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2695
    :catch_0
    move-exception v1

    .line 2696
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v2, :cond_9

    .line 2697
    if-nez v0, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 2698
    :cond_8
    const-string v2, "Package is frozen;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2701
    :cond_9
    throw v1

    .line 2693
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 2703
    :goto_0
    nop

    .line 2704
    :goto_1
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method static killProcessGroup(II)V
    .locals 2
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 1619
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_0

    .line 1620
    const/16 v1, 0xfa0

    .line 1621
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1620
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1623
    :cond_0
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 1626
    :goto_0
    return-void
.end method

.method public static synthetic lambda$hjUwwFAIhoht4KRKnKeUve_Kcto(Lcom/android/server/am/ProcessList;Ljava/io/FileDescriptor;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessList;->handleZygoteMessages(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .locals 7
    .param p0, "setAdj"    # I
    .param p1, "compact"    # Z

    .line 1059
    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    .line 1060
    const/16 v5, 0x384

    const-string v1, "cch"

    const-string v2, "cch"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1062
    :cond_0
    const/16 v0, 0x320

    if-lt p0, v0, :cond_1

    .line 1063
    const/4 v3, 0x0

    const/16 v5, 0x320

    const-string/jumbo v1, "svcb  "

    const-string/jumbo v2, "svcb"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1065
    :cond_1
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_2

    .line 1066
    const/4 v3, 0x0

    const/16 v5, 0x2bc

    const-string/jumbo v1, "prev  "

    const-string/jumbo v2, "prev"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1068
    :cond_2
    const/16 v0, 0x258

    if-lt p0, v0, :cond_3

    .line 1069
    const/4 v3, 0x0

    const/16 v5, 0x258

    const-string v1, "home  "

    const-string v2, "home"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1071
    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    .line 1072
    const/4 v3, 0x0

    const/16 v5, 0x1f4

    const-string/jumbo v1, "svc   "

    const-string/jumbo v2, "svc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1074
    :cond_4
    const/16 v0, 0x190

    if-lt p0, v0, :cond_5

    .line 1075
    const/4 v3, 0x0

    const/16 v5, 0x190

    const-string v1, "hvy   "

    const-string v2, "hvy"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1077
    :cond_5
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6

    .line 1078
    const/4 v3, 0x0

    const/16 v5, 0x12c

    const-string v1, "bkup  "

    const-string v2, "bkup"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1080
    :cond_6
    const/16 v0, 0xfa

    if-lt p0, v0, :cond_7

    .line 1081
    const/4 v3, 0x0

    const/16 v5, 0xfa

    const-string/jumbo v1, "prcl  "

    const-string/jumbo v2, "prcl"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1083
    :cond_7
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_8

    .line 1084
    const/4 v3, 0x0

    const/16 v5, 0xc8

    const-string/jumbo v1, "prcp  "

    const-string/jumbo v2, "prcp"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1086
    :cond_8
    const/16 v0, 0x64

    if-lt p0, v0, :cond_9

    .line 1087
    const/16 v5, 0x64

    const-string/jumbo v1, "vis"

    const-string/jumbo v2, "vis"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1089
    :cond_9
    if-ltz p0, :cond_a

    .line 1090
    const/4 v5, 0x0

    const-string v1, "fg "

    const-string v2, "fg "

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1092
    :cond_a
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_b

    .line 1093
    const/4 v3, 0x0

    const/16 v5, -0x2bc

    const-string/jumbo v1, "psvc  "

    const-string/jumbo v2, "psvc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1095
    :cond_b
    const/16 v0, -0x320

    if-lt p0, v0, :cond_c

    .line 1096
    const/4 v3, 0x0

    const/16 v5, -0x320

    const-string/jumbo v1, "pers  "

    const-string/jumbo v2, "pers"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1098
    :cond_c
    const/16 v0, -0x384

    if-lt p0, v0, :cond_d

    .line 1099
    const/4 v3, 0x0

    const/16 v5, -0x384

    const-string/jumbo v1, "sys   "

    const-string/jumbo v2, "sys"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1101
    :cond_d
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_e

    .line 1102
    const/4 v3, 0x0

    const/16 v5, -0x3e8

    const-string/jumbo v1, "ntv  "

    const-string/jumbo v2, "ntv"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1105
    :cond_e
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 1
    .param p0, "curProcState"    # I

    .line 1183
    packed-switch p0, :pswitch_data_0

    .line 1229
    const/16 v0, 0x3e6

    return v0

    .line 1225
    :pswitch_0
    const/16 v0, 0x3fb

    return v0

    .line 1223
    :pswitch_1
    const/16 v0, 0x3fa

    return v0

    .line 1221
    :pswitch_2
    const/16 v0, 0x3f9

    return v0

    .line 1219
    :pswitch_3
    const/16 v0, 0x3f8

    return v0

    .line 1217
    :pswitch_4
    const/16 v0, 0x3f7

    return v0

    .line 1215
    :pswitch_5
    const/16 v0, 0x3f6

    return v0

    .line 1213
    :pswitch_6
    const/16 v0, 0x3f5

    return v0

    .line 1207
    :pswitch_7
    const/16 v0, 0x3f4

    return v0

    .line 1197
    :pswitch_8
    const/16 v0, 0x3f3

    return v0

    .line 1211
    :pswitch_9
    const/16 v0, 0x3f2

    return v0

    .line 1209
    :pswitch_a
    const/16 v0, 0x3f1

    return v0

    .line 1205
    :pswitch_b
    const/16 v0, 0x3f0

    return v0

    .line 1203
    :pswitch_c
    const/16 v0, 0x3ef

    return v0

    .line 1201
    :pswitch_d
    const/16 v0, 0x3ee

    return v0

    .line 1199
    :pswitch_e
    const/16 v0, 0x3ed

    return v0

    .line 1195
    :pswitch_f
    const/16 v0, 0x3ec

    return v0

    .line 1193
    :pswitch_10
    const/16 v0, 0x3eb

    return v0

    .line 1191
    :pswitch_11
    const/16 v0, 0x3fc

    return v0

    .line 1189
    :pswitch_12
    const/16 v0, 0x3ea

    return v0

    .line 1187
    :pswitch_13
    const/16 v0, 0x3e9

    return v0

    .line 1185
    :pswitch_14
    const/16 v0, 0x3e8

    return v0

    .line 1227
    :pswitch_15
    const/16 v0, 0x3e7

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .line 1111
    packed-switch p0, :pswitch_data_0

    .line 1176
    const-string v0, "??"

    .local v0, "procState":Ljava/lang/String;
    goto :goto_0

    .line 1173
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string v0, "NONE"

    .line 1174
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1170
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CEM "

    .line 1171
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1167
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CRE "

    .line 1168
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1164
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CACC"

    .line 1165
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1161
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CAC "

    .line 1162
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1158
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "LAST"

    .line 1159
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1155
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "HOME"

    .line 1156
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1152
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "HVY "

    .line 1153
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1149
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "TPSL"

    .line 1150
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1146
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "RCVR"

    .line 1147
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1143
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "SVC "

    .line 1144
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1140
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "BKUP"

    .line 1141
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1137
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "TRNB"

    .line 1138
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1134
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "IMPB"

    .line 1135
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1131
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "IMPF"

    .line 1132
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1128
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "BFGS"

    .line 1129
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1125
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_10
    const-string v0, "FGS "

    .line 1126
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1122
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_11
    const-string v0, "BTOP"

    .line 1123
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1119
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_12
    const-string v0, "TOP "

    .line 1120
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1116
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_13
    const-string v0, "PERU"

    .line 1117
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 1113
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_14
    const-string v0, "PER "

    .line 1114
    .restart local v0    # "procState":Ljava/lang/String;
    nop

    .line 1179
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    .line 1443
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    return-wide v0
.end method

.method private needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "storageManagerInternal"    # Landroid/os/storage/StorageManagerInternal;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2390
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2391
    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManagerInternal;->isExternalStorageService(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->mountMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->mountMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->mountMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2390
    :goto_0
    return v0
.end method

.method private static procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .locals 2
    .param p0, "procState"    # I
    .param p1, "memAdj"    # I
    .param p2, "currApp"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"    # I

    .line 3786
    invoke-static {p0, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v0

    .line 3788
    .local v0, "imp":I
    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    .line 3789
    iput p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_0

    .line 3791
    :cond_0
    const/4 v1, 0x0

    iput v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 3793
    :goto_0
    return v0
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .line 1439
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v0, p0

    aget v0, v0, p1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    .line 1548
    if-gtz p0, :cond_0

    .line 1549
    return-void

    .line 1551
    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1552
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1553
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1554
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1555
    return-void
.end method

.method private removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2290
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 2292
    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2291
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 2293
    .local v0, "appUidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    if-eqz v0, :cond_0

    .line 2294
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 2297
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 2298
    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v3

    .line 2297
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AppZygote;

    .line 2299
    .local v1, "appZygote":Landroid/os/AppZygote;
    if-eqz v1, :cond_2

    .line 2300
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2301
    .local v2, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2302
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 2303
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2304
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v3, :cond_1

    .line 2307
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_0

    .line 2309
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2310
    .local v3, "msg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2311
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2315
    .end local v2    # "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void
.end method

.method public static setOomAdj(III)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .line 1523
    if-gtz p0, :cond_0

    .line 1524
    return-void

    .line 1526
    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    .line 1527
    return-void

    .line 1529
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1530
    .local v0, "start":J
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1531
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1532
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1533
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1534
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1535
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1537
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 1538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SLOW OOM ADJ: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v3, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_2
    return-void
.end method

.method private shouldEnableTaggedPointers(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1789
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1790
    return v1

    .line 1794
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->allowsNativeHeapPointerTagging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1795
    return v1

    .line 1799
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v2, 0x81774ca

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1800
    return v1

    .line 1803
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .locals 39
    .param p1, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "zygotePolicyFlags"    # I
    .param p8, "mountExternal"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "requiredAbi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "startTime"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v15, p4

    move-wide/from16 v13, p13

    .line 2404
    const-wide/16 v11, 0x40

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start proc: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2406
    const-string/jumbo v0, "startProcess: asking zygote to start proc"

    invoke-direct {v1, v13, v14, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2407
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v0

    .line 2408
    .local v0, "isTopApp":Z
    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 2412
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 2417
    :cond_0
    const/4 v3, 0x0

    .line 2418
    .local v3, "bindMountAppStorageDirs":Z
    iget-boolean v4, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2419
    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v6, 0x89450c5

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2420
    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v10

    goto :goto_0

    :cond_2
    move v4, v5

    .line 2424
    .local v4, "bindMountAppsData":Z
    :goto_0
    iget-object v6, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    move-object v9, v6

    .line 2425
    .local v9, "pmInt":Landroid/content/pm/PackageManagerInternal;
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v9, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    .line 2427
    .local v8, "sharedPackages":[Ljava/lang/String;
    array-length v6, v8

    if-nez v6, :cond_3

    .line 2428
    new-array v6, v10, [Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v5

    goto :goto_1

    :cond_3
    move-object v6, v8

    :goto_1
    move-object v7, v6

    .line 2430
    .local v7, "targetPackagesList":[Ljava/lang/String;
    invoke-direct {v1, v9, v7, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2431
    .local v6, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-nez v6, :cond_4

    .line 2434
    const/4 v4, 0x0

    .line 2439
    :cond_4
    :try_start_1
    new-instance v11, Landroid/util/ArraySet;

    iget-object v12, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationWhitelistedApps:Ljava/util/ArrayList;

    invoke-direct {v11, v12}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v12, v11

    .line 2440
    .local v12, "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v11, v7

    move v10, v5

    :goto_2
    if-ge v10, v11, :cond_5

    aget-object v19, v7, v10

    move-object/from16 v20, v19

    .line 2441
    .local v20, "pkg":Ljava/lang/String;
    move-object/from16 v5, v20

    .end local v20    # "pkg":Ljava/lang/String;
    .local v5, "pkg":Ljava/lang/String;
    invoke-interface {v12, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2440
    nop

    .end local v5    # "pkg":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto :goto_2

    .line 2444
    :cond_5
    const/4 v5, 0x0

    new-array v10, v5, [Ljava/lang/String;

    .line 2445
    invoke-interface {v12, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 2444
    invoke-direct {v1, v9, v5, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v5

    .line 2446
    .local v5, "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-nez v5, :cond_6

    .line 2449
    const/4 v4, 0x0

    move/from16 v26, v4

    goto :goto_3

    .line 2446
    :cond_6
    move/from16 v26, v4

    .line 2452
    .end local v4    # "bindMountAppsData":Z
    .local v26, "bindMountAppsData":Z
    :goto_3
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move v11, v4

    .line 2453
    .local v11, "userId":I
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManagerInternal;

    move-object v10, v4

    .line 2455
    .local v10, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-direct {v1, v10, v2}, Lcom/android/server/am/ProcessList;->needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2456
    const/4 v3, 0x1

    .line 2457
    if-eqz v6, :cond_8

    .line 2458
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move/from16 v20, v3

    .end local v3    # "bindMountAppStorageDirs":Z
    .local v20, "bindMountAppStorageDirs":Z
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11, v4, v3}, Landroid/os/storage/StorageManagerInternal;->prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v27, v20

    goto :goto_5

    .line 2457
    .end local v20    # "bindMountAppStorageDirs":Z
    .restart local v3    # "bindMountAppStorageDirs":Z
    :cond_8
    move/from16 v20, v3

    .line 2462
    .end local v3    # "bindMountAppStorageDirs":Z
    .restart local v20    # "bindMountAppStorageDirs":Z
    :goto_4
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->bindMountPending:Z

    .line 2463
    const/4 v3, 0x0

    move/from16 v27, v3

    .end local v20    # "bindMountAppStorageDirs":Z
    .restart local v3    # "bindMountAppStorageDirs":Z
    goto :goto_5

    .line 2455
    :cond_9
    move/from16 v27, v3

    .line 2469
    .end local v3    # "bindMountAppStorageDirs":Z
    .local v27, "bindMountAppStorageDirs":Z
    :goto_5
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v3, :cond_a

    .line 2470
    const/4 v6, 0x0

    .line 2471
    const/4 v5, 0x0

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    goto :goto_6

    .line 2469
    :cond_a
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    .line 2475
    .end local v5    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v6    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v28, "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v29, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string/jumbo v4, "seq="

    if-eqz v3, :cond_b

    .line 2476
    :try_start_2
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v21, v3

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    move-object/from16 v22, v10

    move-object/from16 v18, v15

    const/4 v10, 0x1

    .end local v10    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .local v22, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    new-array v15, v10, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v3

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v15, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v21

    move-object/from16 v21, v24

    move-object/from16 v3, p2

    move-object v4, v5

    move/from16 v5, p4

    move v10, v6

    move/from16 v6, p4

    move-object/from16 v30, v7

    .end local v7    # "targetPackagesList":[Ljava/lang/String;
    .local v30, "targetPackagesList":[Ljava/lang/String;
    move-object/from16 v7, p5

    move-object/from16 v31, v8

    .end local v8    # "sharedPackages":[Ljava/lang/String;
    .local v31, "sharedPackages":[Ljava/lang/String;
    move/from16 v8, p6

    move-object/from16 v32, v9

    .end local v9    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .local v32, "pmInt":Landroid/content/pm/PackageManagerInternal;
    move/from16 v9, p8

    move-object/from16 v33, v22

    .end local v22    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .local v33, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    move/from16 v34, v11

    const-wide/16 v35, 0x40

    .end local v11    # "userId":I
    .local v34, "userId":I
    move-object/from16 v11, p9

    move-object/from16 v37, v12

    .end local v12    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v37, "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, v19

    move-object/from16 v17, v18

    move-object/from16 v18, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    :try_start_3
    invoke-static/range {v3 .. v18}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    const/4 v1, 0x1

    .local v3, "startResult":Landroid/os/Process$ProcessStartResult;
    goto/16 :goto_7

    .line 2533
    .end local v0    # "isTopApp":Z
    .end local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v26    # "bindMountAppsData":Z
    .end local v27    # "bindMountAppStorageDirs":Z
    .end local v28    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v29    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v30    # "targetPackagesList":[Ljava/lang/String;
    .end local v31    # "sharedPackages":[Ljava/lang/String;
    .end local v32    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v33    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v34    # "userId":I
    .end local v37    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    const-wide/16 v35, 0x40

    goto/16 :goto_8

    .line 2481
    .restart local v0    # "isTopApp":Z
    .restart local v7    # "targetPackagesList":[Ljava/lang/String;
    .restart local v8    # "sharedPackages":[Ljava/lang/String;
    .restart local v9    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v10    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v11    # "userId":I
    .restart local v12    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26    # "bindMountAppsData":Z
    .restart local v27    # "bindMountAppStorageDirs":Z
    .restart local v28    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v29    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_b
    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v37, v12

    const-wide/16 v35, 0x40

    .end local v7    # "targetPackagesList":[Ljava/lang/String;
    .end local v8    # "sharedPackages":[Ljava/lang/String;
    .end local v9    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v10    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v11    # "userId":I
    .end local v12    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v30    # "targetPackagesList":[Ljava/lang/String;
    .restart local v31    # "sharedPackages":[Ljava/lang/String;
    .restart local v32    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v33    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v34    # "userId":I
    .restart local v37    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_c

    .line 2482
    :try_start_4
    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v3

    move-object/from16 v38, v3

    .line 2485
    .local v38, "appZygote":Landroid/os/AppZygote;
    invoke-virtual/range {v38 .. v38}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v18, 0x0

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v12, 0x1

    new-array v10, v12, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v10, v6

    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v25, v10

    move/from16 v10, p8

    move v1, v12

    move-object/from16 v12, p9

    move-object/from16 v20, v13

    move-object/from16 v13, p10

    move-object/from16 v17, v14

    move-object/from16 v14, p11

    move/from16 v19, v0

    move-object/from16 v21, v29

    move-object/from16 v22, v28

    invoke-virtual/range {v3 .. v25}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    .line 2493
    .end local v38    # "appZygote":Landroid/os/AppZygote;
    .restart local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_7

    .line 2494
    .end local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    :cond_c
    const/4 v1, 0x1

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    new-array v12, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v12, v4

    move-object/from16 v3, p2

    move-object v4, v5

    move/from16 v5, p4

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v24, v12

    move-object/from16 v12, p10

    move-object/from16 v19, v13

    move-object/from16 v13, p11

    move-object/from16 v16, v15

    move-object/from16 v15, p12

    move/from16 v17, p7

    move/from16 v18, v0

    move-object/from16 v20, v29

    move-object/from16 v21, v28

    move/from16 v22, v26

    move/from16 v23, v27

    invoke-static/range {v3 .. v24}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    .line 2505
    .restart local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    :goto_7
    iget v4, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-static {v2, v4}, Lcom/android/server/am/OpBGFrozenInjector;->startProcessEvent(Lcom/android/server/am/ProcessRecord;I)V

    .line 2510
    sget-object v4, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    if-eqz v4, :cond_e

    .line 2511
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2512
    if-eqz v3, :cond_e

    .line 2513
    sget-boolean v4, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v4, :cond_d

    .line 2514
    iget v4, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    iget v5, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    const-string v6, "1"

    invoke-static {v4, v5, v6}, Lcom/oneplus/uifirst/UIFirstUtils;->setUxThread(IILjava/lang/String;)V

    .line 2516
    :cond_d
    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessRecord;->setHasTopUi(Z)V

    .line 2517
    sget-object v1, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    const/16 v4, 0x1081

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    const/16 v7, 0x65

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2530
    :cond_e
    const-string/jumbo v1, "startProcess: returned from zygote!"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v4, p0

    move-wide/from16 v5, p13

    :try_start_5
    invoke-direct {v4, v5, v6, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2531
    nop

    .line 2533
    invoke-static/range {v35 .. v36}, Landroid/os/Trace;->traceEnd(J)V

    .line 2531
    return-object v3

    .line 2533
    .end local v0    # "isTopApp":Z
    .end local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v26    # "bindMountAppsData":Z
    .end local v27    # "bindMountAppStorageDirs":Z
    .end local v28    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v29    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v30    # "targetPackagesList":[Ljava/lang/String;
    .end local v31    # "sharedPackages":[Ljava/lang/String;
    .end local v32    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v33    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v34    # "userId":I
    .end local v37    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v4, p0

    move-wide/from16 v5, p13

    goto :goto_9

    :catchall_3
    move-exception v0

    :goto_8
    move-wide/from16 v5, p13

    move-object v4, v1

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v4, v1

    move-wide v5, v13

    const-wide/16 v35, 0x40

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v4, v1

    move-wide/from16 v35, v11

    move-wide v5, v13

    :goto_9
    invoke-static/range {v35 .. v36}, Landroid/os/Trace;->traceEnd(J)V

    .line 2534
    throw v0
.end method

.method private updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V
    .locals 16
    .param p1, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "topI"    # I
    .param p3, "bottomI"    # I
    .param p4, "endIndex"    # I

    .line 3378
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v3

    if-nez v3, :cond_24

    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v3, :cond_24

    .line 3379
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_f

    .line 3385
    :cond_0
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3386
    .local v3, "uid":I
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    const-string v5, " group="

    const-string v6, " @ "

    const-string v7, "ActivityManager"

    if-lez v4, :cond_b

    .line 3387
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 3388
    .local v4, "endImportance":I
    move/from16 v8, p4

    move v9, v8

    move v8, v4

    move/from16 v4, p4

    .end local p4    # "endIndex":I
    .local v4, "endIndex":I
    .local v8, "endImportance":I
    .local v9, "i":I
    :goto_0
    if-lt v9, v2, :cond_a

    .line 3389
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 3390
    .local v10, "subProc":Lcom/android/server/am/ProcessRecord;
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v3, :cond_9

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v11, v12, :cond_9

    .line 3392
    if-ne v9, v4, :cond_2

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-lt v11, v8, :cond_2

    .line 3396
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Keeping in-place above "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " endImportance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " importance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 3402
    iget v8, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto/16 :goto_3

    .line 3406
    :cond_2
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pulling up "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to position in group with importance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    :cond_3
    const/4 v11, 0x0

    .line 3411
    .local v11, "moved":Z
    move/from16 v12, p2

    .local v12, "pos":I
    :goto_1
    const-string v13, " from position "

    const-string v14, "Moving "

    if-le v12, v4, :cond_6

    .line 3412
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 3413
    .local v15, "posProc":Lcom/android/server/am/ProcessRecord;
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 p4, v8

    .end local v8    # "endImportance":I
    .local p4, "endImportance":I
    iget v8, v15, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-gt v1, v8, :cond_5

    .line 3415
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3416
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3417
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to above "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    :cond_4
    const/4 v11, 0x1

    .line 3422
    add-int/lit8 v4, v4, -0x1

    .line 3423
    goto :goto_2

    .line 3411
    .end local v15    # "posProc":Lcom/android/server/am/ProcessRecord;
    :cond_5
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v1, p1

    move/from16 v8, p4

    goto :goto_1

    .end local p4    # "endImportance":I
    .restart local v8    # "endImportance":I
    :cond_6
    move/from16 p4, v8

    .line 3426
    .end local v8    # "endImportance":I
    .end local v12    # "pos":I
    .restart local p4    # "endImportance":I
    :goto_2
    if-nez v11, :cond_8

    .line 3428
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3429
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3430
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to end of group @ "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 3435
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move v8, v1

    .end local p4    # "endImportance":I
    .local v1, "endImportance":I
    goto :goto_3

    .line 3426
    .end local v1    # "endImportance":I
    .restart local p4    # "endImportance":I
    :cond_8
    move/from16 v8, p4

    goto :goto_3

    .line 3390
    .end local v11    # "moved":Z
    .end local p4    # "endImportance":I
    .restart local v8    # "endImportance":I
    :cond_9
    move/from16 p4, v8

    .line 3388
    .end local v8    # "endImportance":I
    .end local v10    # "subProc":Lcom/android/server/am/ProcessRecord;
    .restart local p4    # "endImportance":I
    move/from16 v8, p4

    .end local p4    # "endImportance":I
    .restart local v8    # "endImportance":I
    :goto_3
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_a
    move/from16 p4, v8

    .end local v8    # "endImportance":I
    .restart local p4    # "endImportance":I
    goto :goto_4

    .line 3386
    .end local v4    # "endIndex":I
    .end local v9    # "i":I
    .local p4, "endIndex":I
    :cond_b
    move/from16 v4, p4

    .line 3444
    .end local p4    # "endIndex":I
    .restart local v4    # "endIndex":I
    :goto_4
    move v1, v4

    .line 3445
    .local v1, "i":I
    :goto_5
    if-lt v1, v2, :cond_23

    .line 3446
    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 3447
    .local v8, "subProc":Lcom/android/server/am/ProcessRecord;
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Looking to spread old procs, at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    :cond_c
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v9, v3, :cond_22

    .line 3453
    if-ge v1, v4, :cond_1b

    .line 3454
    const/4 v9, 0x0

    .line 3455
    .local v9, "hasActivity":Z
    const/4 v10, 0x0

    .line 3456
    .local v10, "connUid":I
    const/4 v11, 0x0

    .line 3457
    .local v11, "connGroup":I
    :goto_6
    if-lt v1, v2, :cond_1b

    .line 3458
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3459
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3460
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Different app, moving to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    :cond_d
    add-int/lit8 v1, v1, -0x1

    .line 3463
    if-ge v1, v2, :cond_e

    .line 3464
    goto/16 :goto_a

    .line 3466
    :cond_e
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 3467
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_f

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Looking at next app at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    :cond_f
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v12

    if-nez v12, :cond_17

    iget-boolean v12, v8, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v12, :cond_10

    goto/16 :goto_8

    .line 3479
    :cond_10
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 3480
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_11

    const-string v12, "This is a client of an activity"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    :cond_11
    if-eqz v9, :cond_15

    .line 3483
    if-eqz v10, :cond_14

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v10, v12, :cond_12

    goto :goto_7

    .line 3490
    :cond_12
    if-eqz v11, :cond_13

    iget v12, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eq v11, v12, :cond_1a

    .line 3493
    :cond_13
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_1b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Already found a different group: connGroup="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3486
    :cond_14
    :goto_7
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_1b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Already found a different activity: connUid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3499
    :cond_15
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_16

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This is an activity client!  uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    :cond_16
    const/4 v9, 0x1

    .line 3503
    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3504
    iget v11, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    goto :goto_9

    .line 3470
    :cond_17
    :goto_8
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_18

    const-string v12, "This is hosting an activity!"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    :cond_18
    if-eqz v9, :cond_19

    .line 3474
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_1b

    const-string v12, "Already found an activity, done"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3478
    :cond_19
    const/4 v9, 0x1

    .line 3507
    :cond_1a
    :goto_9
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_6

    .line 3514
    .end local v9    # "hasActivity":Z
    .end local v10    # "connUid":I
    .end local v11    # "connGroup":I
    :cond_1b
    :goto_a
    add-int/lit8 v4, v4, -0x1

    if-lt v4, v2, :cond_1d

    .line 3515
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 3516
    .local v9, "endProc":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v10, v3, :cond_1c

    .line 3517
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v10, :cond_1d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found next group of app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3516
    .end local v9    # "endProc":Lcom/android/server/am/ProcessRecord;
    :cond_1c
    goto :goto_a

    .line 3523
    :cond_1d
    :goto_b
    if-lt v4, v2, :cond_20

    .line 3524
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 3525
    .restart local v9    # "endProc":Lcom/android/server/am/ProcessRecord;
    :goto_c
    add-int/lit8 v4, v4, -0x1

    if-lt v4, v2, :cond_20

    .line 3526
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 3527
    .local v10, "nextEndProc":Lcom/android/server/am/ProcessRecord;
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v3, :cond_1f

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v12, v9, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eq v11, v12, :cond_1e

    goto :goto_d

    .end local v10    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    :cond_1e
    goto :goto_c

    .line 3529
    .restart local v10    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    :cond_1f
    :goto_d
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_20

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found next group or app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    .end local v9    # "endProc":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    :cond_20
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v9, :cond_21

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bumping scan position to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3538
    :cond_21
    move v1, v4

    goto :goto_e

    .line 3540
    :cond_22
    add-int/lit8 v1, v1, -0x1

    .line 3542
    .end local v8    # "subProc":Lcom/android/server/am/ProcessRecord;
    :goto_e
    goto/16 :goto_5

    .line 3543
    :cond_23
    return-void

    .line 3382
    .end local v1    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "endIndex":I
    .restart local p4    # "endIndex":I
    :cond_24
    :goto_f
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 16
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .line 917
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/ProcessList;->mLastOomLevelsUpdateTime:J

    .line 919
    iget-wide v1, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v3, 0x15e

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43af0000    # 350.0f

    div-float/2addr v1, v2

    .line 922
    .local v1, "scaleMem":F
    const v2, 0x5dc00

    .line 923
    .local v2, "minSize":I
    const v3, 0xfa000

    .line 924
    .local v3, "maxSize":I
    mul-int v4, p1, p2

    int-to-float v4, v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 931
    .local v4, "scaleDisp":F
    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 932
    .local v5, "scale":F
    :goto_0
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 933
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 934
    :cond_2
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0079

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 936
    .local v6, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0078

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 942
    .local v7, "minfree_abs":I
    sget-object v8, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v8, v8

    const/4 v10, 0x1

    if-lez v8, :cond_3

    move v8, v10

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 944
    .local v8, "is64bit":Z
    :goto_2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v12

    const/4 v13, 0x4

    if-ge v11, v12, :cond_6

    .line 945
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v12, v12, v11

    .line 946
    .local v12, "low":I
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v14, v14, v11

    .line 947
    .local v14, "high":I
    if-eqz v8, :cond_5

    .line 949
    if-ne v11, v13, :cond_4

    mul-int/lit8 v13, v14, 0x3

    div-int/lit8 v14, v13, 0x2

    goto :goto_4

    .line 950
    :cond_4
    const/4 v15, 0x5

    if-ne v11, v15, :cond_5

    mul-int/lit8 v15, v14, 0x7

    div-int/lit8 v14, v15, 0x4

    .line 952
    :cond_5
    :goto_4
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v15, v12

    sub-int v9, v14, v12

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v15, v9

    float-to-int v9, v15

    aput v9, v13, v11

    .line 944
    .end local v12    # "low":I
    .end local v14    # "high":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 955
    .end local v11    # "i":I
    :cond_6
    if-ltz v7, :cond_7

    .line 956
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_7

    .line 957
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v14, v7

    aget v15, v12, v9

    int-to-float v15, v15

    mul-float/2addr v14, v15

    array-length v11, v11

    sub-int/2addr v11, v10

    aget v11, v12, v11

    int-to-float v11, v11

    div-float/2addr v14, v11

    float-to-int v11, v14

    aput v11, v12, v9

    .line 956
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 962
    .end local v9    # "i":I
    :cond_7
    if-eqz v6, :cond_9

    .line 963
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_9

    .line 964
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v12, v9

    int-to-float v15, v6

    aget v13, v12, v9

    int-to-float v13, v13

    mul-float/2addr v15, v13

    array-length v11, v11

    sub-int/2addr v11, v10

    aget v11, v12, v11

    int-to-float v11, v11

    div-float/2addr v15, v11

    float-to-int v11, v15

    add-int/2addr v14, v11

    aput v14, v12, v9

    .line 966
    aget v11, v12, v9

    if-gez v11, :cond_8

    .line 967
    const/4 v11, 0x0

    aput v11, v12, v9

    .line 963
    :cond_8
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x4

    goto :goto_6

    .line 975
    .end local v9    # "i":I
    :cond_9
    const/16 v9, 0x3e7

    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    const-wide/16 v13, 0x3

    div-long/2addr v11, v13

    iput-wide v11, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 984
    mul-int v9, p1, p2

    const/4 v11, 0x4

    mul-int/2addr v9, v11

    mul-int/2addr v9, v11

    div-int/lit16 v9, v9, 0x400

    .line 986
    .local v9, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0065

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 988
    .local v11, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e0064

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 991
    .local v12, "reserve_abs":I
    if-ltz v12, :cond_a

    .line 992
    move v9, v12

    .line 995
    :cond_a
    if-eqz v11, :cond_b

    .line 996
    add-int/2addr v9, v11

    .line 997
    if-gez v9, :cond_b

    .line 998
    const/4 v9, 0x0

    .line 1002
    :cond_b
    if-eqz p3, :cond_e

    .line 1003
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v10

    const/4 v14, 0x4

    mul-int/2addr v13, v14

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1004
    .local v13, "buf":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1007
    invoke-static {}, Lcom/android/server/am/OpORMServiceInjector;->getOMMKillEnable()Z

    move-result v14

    .line 1009
    .local v14, "isOMMKillEnabled":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v10, v10

    if-ge v15, v10, :cond_d

    .line 1016
    if-eqz v14, :cond_c

    .line 1017
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v10, v10, v15

    mul-int/lit16 v10, v10, 0x400

    div-int/lit16 v10, v10, 0x1000

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1018
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomAdj_H2:[I

    aget v10, v10, v15

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_8

    .line 1020
    :cond_c
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomMinFree_O2:[I

    aget v10, v10, v15

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1021
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v10, v10, v15

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1009
    :goto_8
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x1

    goto :goto_7

    .line 1028
    .end local v15    # "i":I
    :cond_d
    sput-boolean v14, Lcom/android/server/am/ProcessList;->mOmmKillEnabled:Z

    .line 1030
    const/4 v10, 0x0

    invoke-static {v13, v10}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1031
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v15, "sys.sysctl.extra_free_kbytes"

    invoke-static {v15, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 1036
    .end local v13    # "buf":Ljava/nio/ByteBuffer;
    .end local v14    # "isOMMKillEnabled":Z
    :cond_e
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "repl"    # Ljava/nio/ByteBuffer;

    .line 1603
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0}, Lcom/android/server/am/LmkdConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1605
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v1, 0xfa1

    .line 1606
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1605
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1609
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/LmkdConnection;->waitForConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    const/4 v0, 0x0

    return v0

    .line 1614
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/LmkdConnection;->exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 3054
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 3055
    .local v0, "old":Lcom/android/server/am/ProcessRecord;
    const-string v1, "ActivityManager"

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-adding persistent process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3058
    :cond_0
    if-eqz v0, :cond_1

    .line 3059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already have existing proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " when adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 3062
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 3063
    new-instance v4, Lcom/android/server/am/UidRecord;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v4, v5}, Lcom/android/server/am/UidRecord;-><init>(I)V

    move-object v2, v4

    .line 3065
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating new process uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempWhitelist:[I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3068
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 3067
    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingTempWhitelist:Lcom/android/server/am/PendingTempWhitelists;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3069
    invoke-virtual {v1, v4}, Lcom/android/server/am/PendingTempWhitelists;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 3070
    :cond_3
    iput-boolean v3, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v3, v2, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    .line 3072
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    .line 3075
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/server/am/UidRecord;->packageName:Ljava/lang/String;

    .line 3077
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 3078
    iget v1, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v1}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    .line 3079
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    iget v6, v2, Lcom/android/server/am/UidRecord;->curCapability:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 3082
    :cond_5
    iput-object v2, p1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 3083
    iget-object v1, v2, Lcom/android/server/am/UidRecord;->procRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3086
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    .line 3087
    iget v1, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    .line 3088
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3, v4, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    .line 3089
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_6

    .line 3090
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3092
    :cond_6
    return-void
.end method

.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 876
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 879
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 880
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 881
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 882
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 885
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method clearAllDnsCacheLocked()V
    .locals 5

    .line 3294
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3295
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3296
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 3298
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3301
    goto :goto_1

    .line 3299
    :catch_0
    move-exception v2

    .line 3300
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clear dns cache for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3304
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method collectProcessesLocked(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "start"    # I
    .param p2, "allPkgs"    # Z
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 3885
    if-eqz p3, :cond_5

    array-length v0, p3

    if-le v0, p1, :cond_5

    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 3886
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    .line 3887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3888
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, -0x1

    .line 3890
    .local v1, "pid":I
    :try_start_0
    aget-object v2, p3, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 3892
    goto :goto_0

    .line 3891
    :catch_0
    move-exception v2

    .line 3893
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 3894
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3895
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v4, :cond_0

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, v1, :cond_0

    .line 3896
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3897
    :cond_0
    if-eqz p2, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    aget-object v5, p3, p1

    .line 3898
    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3899
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3900
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3901
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3893
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3904
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 3905
    const/4 v2, 0x0

    return-object v2

    .line 3907
    .end local v1    # "pid":I
    :cond_4
    goto :goto_3

    .line 3908
    .end local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3910
    .restart local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_3
    return-object v0
.end method

.method doStopUidForIdleUidsLocked()V
    .locals 6

    .line 3995
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 3996
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3997
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    .line 3998
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3999
    goto :goto_1

    .line 4001
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 4002
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v4, :cond_1

    .line 4003
    goto :goto_1

    .line 4005
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 3996
    .end local v2    # "uid":I
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4007
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3874
    const-string v0, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3875
    const-string v0, " total, non-act at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3876
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3877
    const-string v0, ", non-svc at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3878
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3879
    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3880
    return-void
.end method

.method fillInProcMemInfoLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "outInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"    # I

    .line 3800
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 3801
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 3802
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isHeavyWeightProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3803
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3805
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3806
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3808
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3809
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3811
    :cond_2
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 3812
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 3813
    .local v0, "adj":I
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    .line 3814
    .local v2, "procState":I
    invoke-static {v2, v0, p2, p3}, Lcom/android/server/am/ProcessList;->procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v3

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 3816
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 3817
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 3818
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 3819
    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 3820
    return-void
.end method

.method findAppProcessLocked(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 7
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1707
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1708
    .local v0, "NP":I
    const/4 v1, 0x0

    .local v1, "ip":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1709
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1710
    .local v2, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1711
    .local v3, "NA":I
    const/4 v4, 0x0

    .local v4, "ia":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 1712
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1713
    .local v5, "p":Lcom/android/server/am/ProcessRecord;
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_0

    .line 1714
    return-object v5

    .line 1711
    .end local v5    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1708
    .end local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "NA":I
    .end local v4    # "ia":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1719
    .end local v1    # "ip":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find mystery application for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1719
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const/4 v1, 0x0

    return-object v1
.end method

.method getBlockStateForUid(Lcom/android/server/am/UidRecord;)I
    .locals 4
    .param p1, "uidRec"    # Lcom/android/server/am/UidRecord;

    .line 4021
    nop

    .line 4022
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4023
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 4025
    .local v0, "isAllowed":Z
    :goto_1
    iget v3, p1, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p1, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 4026
    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    .line 4030
    .local v3, "wasAllowed":Z
    :goto_3
    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    .line 4031
    return v2

    .line 4035
    :cond_4
    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 4036
    const/4 v1, 0x2

    return v1

    .line 4038
    :cond_5
    return v1
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .line 1508
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method final getLRURecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .locals 5
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .line 3758
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3759
    return-object v0

    .line 3761
    :cond_0
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3763
    .local v1, "threadBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3764
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3765
    .local v3, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 3766
    return-object v3

    .line 3763
    .end local v3    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3769
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method getLruSizeLocked()I
    .locals 1

    .line 3869
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMemLevel(I)J
    .locals 3
    .param p1, "adjustment"    # I

    .line 1495
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1496
    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 1497
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    .line 1495
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1500
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method

.method getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 10
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    .line 1694
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    .line 1695
    .local v0, "homeAppMem":J
    const/16 v2, 0x384

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    .line 1696
    .local v2, "cachedAppMem":J
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1697
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1698
    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1699
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v6, v0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iput-boolean v4, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1700
    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 1701
    const/16 v4, 0x1f4

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 1702
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 1703
    invoke-virtual {p0, v5}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 1704
    return-void
.end method

.method final getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;
    .locals 12
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keepIfLarge"    # Z

    .line 1630
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_3

    .line 1634
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1635
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1636
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1637
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1638
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1639
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1641
    goto :goto_1

    .line 1643
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    return-object v4

    .line 1637
    .end local v3    # "procUid":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1646
    .end local v0    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v1    # "procCount":I
    .end local v2    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1666
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_6

    if-nez p3, :cond_6

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez v1, :cond_6

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_6

    .line 1669
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "May not keep "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": pss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_4
    iget-wide v1, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_6

    .line 1672
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 1673
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    iget-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->reportCachedKill(Landroid/util/ArrayMap;J)V

    .line 1675
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "ipkg":I
    :goto_2
    if-ltz v1, :cond_5

    .line 1676
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v3

    .line 1677
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    const/16 v4, 0x11

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 1679
    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 1680
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1677
    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 1675
    .end local v3    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1684
    .end local v1    # "ipkg":I
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "k from cached"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1690
    :cond_6
    return-object v0
.end method

.method getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 892
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 893
    .local v0, "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 894
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 895
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 896
    .local v3, "record":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p1, :cond_2

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->bindMountPending:Z

    if-nez v4, :cond_0

    .line 897
    goto :goto_1

    .line 899
    :cond_0
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 902
    .local v4, "pid":I
    if-eqz v4, :cond_1

    .line 906
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 903
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Pending process is not started yet,retry later"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "userId":I
    throw v5

    .line 894
    .end local v3    # "record":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "pid":I
    .restart local v0    # "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "userId":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 908
    .end local v2    # "i":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 909
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method getRunningAppProcessesLocked(ZIZII)Ljava/util/List;
    .locals 7
    .param p1, "allUsers"    # Z
    .param p2, "userId"    # I
    .param p3, "allUids"    # Z
    .param p4, "callingUid"    # I
    .param p5, "clientTargetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZII)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 3826
    const/4 v0, 0x0

    .line 3828
    .local v0, "runList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 3829
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3830
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    if-nez p1, :cond_0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p2, :cond_6

    :cond_0
    if-nez p3, :cond_1

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, p4, :cond_1

    .line 3832
    goto :goto_2

    .line 3834
    :cond_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3836
    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3838
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 3839
    .local v3, "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0, v2, v3, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 3840
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    .line 3841
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3842
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 3843
    invoke-static {v4}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v4

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_1

    .line 3845
    :cond_2
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v4, :cond_3

    .line 3846
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 3848
    .local v4, "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v5

    .line 3849
    .local v5, "pid":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 3850
    iput v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3853
    .end local v4    # "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v5    # "pid":I
    :cond_3
    :goto_1
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v4, v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_4

    .line 3854
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 3858
    :cond_4
    if-nez v0, :cond_5

    .line 3859
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 3861
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3828
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3864
    .end local v1    # "i":I
    :cond_7
    return-object v0
.end method

.method getUidProcStateLocked(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 3979
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 3980
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v0, :cond_0

    const/16 v1, 0x14

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    :goto_0
    return v1
.end method

.method getUidRecordLocked(I)Lcom/android/server/am/UidRecord;
    .locals 1
    .param p1, "uid"    # I

    .line 3986
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    return-object v0
.end method

.method handleAllTrustStorageUpdateLocked()V
    .locals 5

    .line 3308
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3309
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3310
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 3312
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3316
    goto :goto_1

    .line 3313
    :catch_0
    move-exception v2

    .line 3314
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle trust storage update for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3319
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .locals 22
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I
    .param p3, "usingWrapper"    # Z
    .param p4, "expectedStartSeq"    # J
    .param p6, "procAttached"    # Z

    .line 2725
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-wide/from16 v11, p4

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v11, v12}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2726
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v13

    .line 2727
    .local v13, "reason":Ljava/lang/String;
    const/4 v14, 0x0

    if-eqz v13, :cond_0

    .line 2728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " start not valid, killing pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2732
    invoke-static/range {p2 .. p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2733
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v3}, Landroid/os/Process;->killProcessGroup(II)I

    .line 2734
    const/16 v0, 0xd

    invoke-virtual {v1, v2, v0, v0, v13}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 2736
    return v14

    .line 2738
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    .line 2739
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: done updating battery stats"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2741
    const/16 v0, 0x753e

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    .line 2742
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x1

    aput-object v4, v3, v15

    const/4 v4, 0x2

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 2743
    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 2744
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, ""

    :goto_0
    aput-object v5, v3, v4

    .line 2741
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2748
    invoke-static/range {p1 .. p2}, Lcom/android/server/am/OpAppRecordInjector;->processStart(Lcom/android/server/am/ProcessRecord;I)V

    .line 2752
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move/from16 v8, p2

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2756
    goto :goto_1

    .line 2754
    :catch_0
    move-exception v0

    .line 2758
    :goto_1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v9}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    .line 2762
    new-array v0, v15, [I

    const/16 v3, 0x49

    aput v3, v0, v14

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v15, [I

    const/16 v3, 0xb7

    aput v3, v0, v14

    .line 2763
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v0, :cond_3

    .line 2765
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->sendApplicationStart(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    .line 2769
    :cond_3
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: building log message"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2770
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2771
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2772
    const-string v0, "Start proc "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2773
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2774
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2775
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2777
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    invoke-static {v3, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2778
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2779
    const-string v0, " ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2783
    :cond_4
    const-string v0, " for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2786
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2787
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    const-string v6, "ActivityManager"

    invoke-virtual {v0, v6, v4, v5}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2790
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 2791
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2792
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2793
    iget-wide v4, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: starting to update pids map"

    invoke-direct {v1, v4, v5, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2795
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4

    .line 2796
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v5, v0

    .line 2797
    .local v5, "oldApp":Lcom/android/server/am/ProcessRecord;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2799
    if-eqz v5, :cond_6

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_6

    .line 2801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleProcessStartedLocked process:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startSeq:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " pid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " belongs to another existing app:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startSeq:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ActivityManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x1

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;ZZIZ)Z

    .line 2809
    :cond_6
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2810
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v6

    .line 2811
    if-nez p6, :cond_8

    .line 2812
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2813
    .local v0, "msg":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2814
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v10, :cond_7

    .line 2815
    const-wide/32 v7, 0x124f80

    goto :goto_2

    :cond_7
    const-wide/16 v7, 0x2710

    .line 2814
    :goto_2
    invoke-virtual {v4, v0, v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2820
    .end local v0    # "msg":Landroid/os/Message;
    :cond_8
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2821
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v4, v2}, Lcom/android/server/am/OpBGFrozenInjector;->addProc(IILcom/android/server/am/ProcessRecord;)V

    .line 2824
    :cond_9
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2825
    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: done updating pids map"

    invoke-direct {v1, v6, v7, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2826
    return v15

    .line 2824
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2797
    .end local v5    # "oldApp":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method haveBackgroundProcessLocked()Z
    .locals 5

    .line 3773
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3774
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3775
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 3777
    return v1

    .line 3773
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3780
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method incrementProcStateSeqAndNotifyAppsLocked(Lcom/android/server/am/ActiveUids;)V
    .locals 10
    .param p1, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 4049
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerService;->mWaitForNetworkTimeoutMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 4050
    return-void

    .line 4053
    :cond_0
    const/4 v0, 0x0

    .line 4054
    .local v0, "blockingUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_a

    .line 4055
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 4057
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    iget v5, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$Injector;->isNetworkRestrictedForUid(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4058
    goto :goto_2

    .line 4060
    :cond_1
    iget v4, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    if-nez v4, :cond_2

    .line 4061
    goto :goto_2

    .line 4064
    :cond_2
    iget v4, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 4065
    goto :goto_2

    .line 4067
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getBlockStateForUid(Lcom/android/server/am/UidRecord;)I

    move-result v4

    .line 4070
    .local v4, "blockState":I
    if-nez v4, :cond_4

    .line 4071
    goto :goto_2

    .line 4073
    :cond_4
    iget-object v5, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4074
    :try_start_0
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    iput-wide v6, v3, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    .line 4075
    if-ne v4, v2, :cond_6

    .line 4076
    if-nez v0, :cond_5

    .line 4077
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 4079
    :cond_5
    iget v6, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4081
    :cond_6
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v6, :cond_7

    .line 4082
    const-string v6, "ActivityManager_Network"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uid going to background, notifying all blocking threads for uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    :cond_7
    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->waitingForNetwork:Z

    if-eqz v6, :cond_8

    .line 4086
    iget-object v6, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 4089
    :cond_8
    :goto_1
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4054
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v4    # "blockState":I
    :cond_9
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4093
    .end local v1    # "i":I
    :cond_a
    if-nez v0, :cond_b

    .line 4094
    return-void

    .line 4097
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_10

    .line 4098
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4099
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 4100
    goto :goto_4

    .line 4102
    :cond_c
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v3, :cond_f

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_f

    .line 4103
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getUidRecordLocked(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 4105
    .restart local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    :try_start_1
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v4, :cond_d

    .line 4106
    const-string v4, "ActivityManager_Network"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Informing app thread that it needs to block: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    :cond_d
    if-eqz v3, :cond_e

    .line 4110
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-wide v5, v3, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-interface {v4, v5, v6}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4113
    :cond_e
    goto :goto_4

    .line 4112
    :catch_0
    move-exception v4

    .line 4097
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_f
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 4116
    .end local v1    # "i":I
    :cond_10
    return-void
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p3, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;

    .line 788
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 789
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 790
    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 793
    nop

    .line 794
    const-string/jumbo v0, "persist.zygote.app_data_isolation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 795
    const-string/jumbo v0, "persist.sys.fuse"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 796
    .local v0, "fuseEnabled":Z
    const-string/jumbo v3, "persist.sys.vold_app_data_isolation_enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 798
    .local v3, "voldAppDataIsolationEnabled":Z
    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    .line 799
    const-string v4, "ActivityManager"

    const-string v5, "Fuse is not enabled while vold app data isolation is enabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 802
    new-instance v2, Ljava/util/ArrayList;

    .line 803
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/SystemConfig;->getAppDataIsolationWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationWhitelistedApps:Ljava/util/ArrayList;

    .line 805
    sget-object v2, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez v2, :cond_3

    .line 806
    new-instance v2, Lcom/android/server/ServiceThread;

    const/16 v4, 0xa

    const-string v5, "ActivityManager:kill"

    invoke-direct {v2, v5, v4, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 808
    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->start()V

    .line 809
    new-instance v2, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v4, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object v2, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 810
    new-instance v2, Lcom/android/server/am/LmkdConnection;

    sget-object v4, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/ProcessList$2;

    invoke-direct {v5, p0}, Lcom/android/server/am/ProcessList$2;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {v2, v4, v5}, Lcom/android/server/am/LmkdConnection;-><init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V

    sput-object v2, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 856
    invoke-direct {p0}, Lcom/android/server/am/ProcessList;->createSystemServerSocketForZygote()Landroid/net/LocalSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 857
    if-eqz v2, :cond_2

    .line 858
    sget-object v2, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$KillHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 859
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/-$$Lambda$ProcessList$hjUwwFAIhoht4KRKnKeUve_Kcto;

    invoke-direct {v5, p0}, Lcom/android/server/am/-$$Lambda$ProcessList$hjUwwFAIhoht4KRKnKeUve_Kcto;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 858
    invoke-virtual {v2, v4, v1, v5}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 862
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 863
    new-instance v1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    sget-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 867
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mSystemPropertiesChangedCallback:Ljava/lang/Runnable;

    invoke-static {v1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 869
    return-void
.end method

.method killAllBackgroundProcessesExceptLocked(II)V
    .locals 12
    .param p1, "minTargetSdk"    # I
    .param p2, "maxProcState"    # I

    .line 3231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3232
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3233
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 3234
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3235
    .local v3, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 3236
    .local v4, "NA":I
    const/4 v5, 0x0

    .local v5, "ia":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 3237
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 3238
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-nez v7, :cond_1

    if-ltz p1, :cond_0

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v7, p1, :cond_2

    :cond_0
    if-ltz p2, :cond_1

    iget v7, v6, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-le v7, p2, :cond_2

    .line 3240
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3236
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3233
    .end local v3    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "NA":I
    .end local v5    # "ia":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3245
    .end local v2    # "ip":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3246
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 3247
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xd

    const/16 v10, 0xa

    const-string/jumbo v11, "kill all background except"

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 3246
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3250
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V
    .locals 5
    .param p1, "appZygote"    # Landroid/os/AppZygote;
    .param p2, "force"    # Z

    .line 2276
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2277
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2278
    .local v1, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2280
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 2281
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2282
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2283
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    .line 2285
    :cond_1
    return-void
.end method

.method killAppZygotesLocked(Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "force"    # Z

    .line 2870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2871
    .local v0, "zygotesToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/AppZygote;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 2872
    .local v2, "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2873
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2874
    .local v4, "appZygoteUid":I
    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p3, :cond_0

    .line 2875
    goto :goto_2

    .line 2877
    :cond_0
    if-ltz p2, :cond_1

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 2878
    goto :goto_2

    .line 2880
    :cond_1
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AppZygote;

    .line 2881
    .local v5, "appZygote":Landroid/os/AppZygote;
    if-eqz p1, :cond_2

    .line 2882
    invoke-virtual {v5}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2883
    goto :goto_2

    .line 2885
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2872
    .end local v4    # "appZygoteUid":I
    .end local v5    # "appZygote":Landroid/os/AppZygote;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2887
    .end local v2    # "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    .end local v3    # "i":I
    :cond_3
    goto :goto_0

    .line 2888
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 2889
    .local v2, "appZygote":Landroid/os/AppZygote;
    invoke-virtual {p0, v2, p4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 2890
    .end local v2    # "appZygote":Landroid/os/AppZygote;
    goto :goto_3

    .line 2891
    :cond_5
    return-void
.end method

.method killPackageProcessesLocked(Ljava/lang/String;IIIIILjava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "minOomAdj"    # I
    .param p5, "reasonCode"    # I
    .param p6, "subReason"    # I
    .param p7, "reason"    # Ljava/lang/String;

    .line 2860
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/ProcessList;->killPackageProcessesLocked(Ljava/lang/String;IIIZZZZZIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final killPackageProcessesLocked(Ljava/lang/String;IIIZZZZZIILjava/lang/String;)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "minOomAdj"    # I
    .param p5, "callerWillRestart"    # Z
    .param p6, "allowRestart"    # Z
    .param p7, "doit"    # Z
    .param p8, "evenPersistent"    # Z
    .param p9, "setRemoved"    # Z
    .param p10, "reasonCode"    # I
    .param p11, "subReason"    # I
    .param p12, "reason"    # Ljava/lang/String;

    .line 2898
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 2903
    .local v11, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 2904
    .local v12, "NP":I
    const/4 v0, 0x0

    .local v0, "ip":I
    :goto_0
    const/4 v14, 0x1

    if-ge v0, v12, :cond_d

    .line 2905
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2906
    .local v1, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2907
    .local v2, "NA":I
    const/4 v3, 0x0

    .local v3, "ia":I
    :goto_1
    if-ge v3, v2, :cond_c

    .line 2908
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2909
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p8, :cond_0

    .line 2911
    move/from16 v15, p4

    goto/16 :goto_3

    .line 2913
    :cond_0
    iget-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v5, :cond_2

    .line 2914
    if-eqz p7, :cond_1

    .line 2915
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v15, p4

    goto :goto_3

    .line 2914
    :cond_1
    move/from16 v15, p4

    goto :goto_3

    .line 2921
    :cond_2
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v15, p4

    if-ge v5, v15, :cond_3

    .line 2927
    goto :goto_3

    .line 2932
    :cond_3
    const/4 v5, -0x1

    if-nez v8, :cond_5

    .line 2933
    if-eq v10, v5, :cond_4

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, v10, :cond_4

    .line 2934
    goto :goto_3

    .line 2936
    :cond_4
    if-ltz v9, :cond_9

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, v9, :cond_9

    .line 2937
    goto :goto_3

    .line 2943
    :cond_5
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    .line 2944
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v14

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 2945
    .local v6, "isDep":Z
    :goto_2
    if-nez v6, :cond_7

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v13, v9, :cond_7

    .line 2946
    goto :goto_3

    .line 2948
    :cond_7
    if-eq v10, v5, :cond_8

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, v10, :cond_8

    .line 2949
    goto :goto_3

    .line 2951
    :cond_8
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    if-nez v6, :cond_9

    .line 2952
    goto :goto_3

    .line 2957
    .end local v6    # "isDep":Z
    :cond_9
    if-nez p7, :cond_a

    .line 2958
    return v14

    .line 2960
    :cond_a
    if-eqz p9, :cond_b

    .line 2961
    iput-boolean v14, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 2963
    :cond_b
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2907
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_c
    move/from16 v15, p4

    .line 2904
    .end local v1    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2    # "NA":I
    .end local v3    # "ia":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    move/from16 v15, p4

    .line 2967
    .end local v0    # "ip":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2968
    .local v13, "N":I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_4
    if-ge v6, v13, :cond_e

    .line 2969
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p10

    move/from16 v5, p11

    move/from16 v16, v6

    .end local v6    # "i":I
    .local v16, "i":I
    move-object/from16 v6, p12

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 2968
    add-int/lit8 v6, v16, 0x1

    .end local v16    # "i":I
    .restart local v6    # "i":I
    goto :goto_4

    :cond_e
    move/from16 v16, v6

    .line 2972
    .end local v6    # "i":I
    const/4 v0, 0x0

    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/android/server/am/ProcessList;->killAppZygotesLocked(Ljava/lang/String;IIZ)V

    .line 2973
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_processEnd"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2974
    if-lez v13, :cond_f

    goto :goto_5

    :cond_f
    move v14, v0

    :goto_5
    return v14
.end method

.method killProcessesWhenImperceptible([ILjava/lang/String;I)V
    .locals 5
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "requester"    # I

    .line 4212
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4213
    return-void

    .line 4216
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 4219
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4220
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 4221
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4222
    if-eqz v3, :cond_1

    .line 4223
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4218
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4221
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "pids":[I
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "requester":I
    :try_start_4
    throw v3

    .line 4226
    .end local v1    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "pids":[I
    .restart local p2    # "reason":Ljava/lang/String;
    .restart local p3    # "requester":I
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4227
    return-void

    .line 4226
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$startProcessLocked$0$ProcessList(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "gids"    # [I
    .param p4, "runtimeFlags"    # I
    .param p5, "zygotePolicyFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "requiredAbi"    # Ljava/lang/String;
    .param p8, "instructionSet"    # Ljava/lang/String;
    .param p9, "invokeWith"    # Ljava/lang/String;
    .param p10, "startSeq"    # J

    .line 2189
    invoke-direct/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method final newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 7
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "customProcess"    # Ljava/lang/String;
    .param p3, "isolated"    # Z
    .param p4, "isolatedUid"    # I
    .param p5, "hostingRecord"    # Lcom/android/server/am/HostingRecord;

    .line 3109
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3110
    .local v0, "proc":Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3111
    .local v1, "userId":I
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3112
    .local v2, "uid":I
    const/4 v3, 0x1

    if-eqz p3, :cond_4

    .line 3113
    if-nez p4, :cond_3

    .line 3114
    invoke-direct {p0, p1, p5}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v4

    .line 3115
    .local v4, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 3116
    return-object v5

    .line 3118
    :cond_1
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result v2

    .line 3119
    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 3120
    return-object v5

    .line 3122
    .end local v4    # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    :cond_2
    goto :goto_1

    .line 3125
    :cond_3
    move v2, p4

    .line 3127
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v4, v4, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->addIsolatedUid(II)V

    .line 3128
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    .line 3136
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    .line 3140
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v4}, Lcom/android/server/am/OpAppRecordInjector;->addIsolatedUid(II)V

    .line 3143
    const/16 v4, 0x2b

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 3146
    :cond_4
    new-instance v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, p1, v0, v2}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    .line 3148
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v5, :cond_5

    if-nez v1, :cond_5

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v6, 0x9

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_5

    .line 3152
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 3153
    iput v5, v4, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 3154
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 3155
    const/16 v3, -0x320

    iput v3, v4, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 3157
    :cond_5
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 3160
    const/16 v3, -0x2bc

    iput v3, v4, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 3162
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3163
    return-object v4
.end method

.method noteAppKill(IIIILjava/lang/String;)V
    .locals 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "subReason"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .line 4200
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 4201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is being killed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sub-reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4205
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(IIIILjava/lang/String;)V

    .line 4206
    return-void
.end method

.method noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # I
    .param p3, "subReason"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .line 4191
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 4192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is being killed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sub-reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4195
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 4196
    return-void
.end method

.method noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4178
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 4179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died, saving the exit info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    :cond_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->processDied(Ljava/lang/String;I)V

    .line 4183
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V

    .line 4184
    return-void
.end method

.method public onLmkdConnect(Ljava/io/OutputStream;)Z
    .locals 5
    .param p1, "ostream"    # Ljava/io/OutputStream;

    .line 1578
    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1579
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1580
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1581
    iget-boolean v3, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1583
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    mul-int/2addr v3, v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v0

    .line 1584
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1586
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v3, v3, v0

    mul-int/lit16 v3, v3, 0x400

    div-int/lit16 v3, v3, 0x1000

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1587
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1589
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1592
    :cond_1
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1593
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1594
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1595
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    nop

    .line 1599
    return v4

    .line 1596
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "ex":Ljava/io/IOException;
    return v1
.end method

.method onSystemReady()V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppExitInfoTracker;->onSystemReady()V

    .line 873
    return-void
.end method

.method final removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2830
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2831
    .local v0, "lrui":I
    if-ltz v0, :cond_5

    .line 2832
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v1, :cond_2

    .line 2833
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_0

    .line 2834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2836
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing process that hasn\'t been killed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v1, :cond_1

    .line 2838
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2839
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 2840
    const/16 v1, 0xd

    const/16 v2, 0x10

    const-string v3, "hasn\'t been killed"

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    goto :goto_0

    .line 2843
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2847
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v0, v1, :cond_3

    .line 2848
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2850
    :cond_3
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v0, v1, :cond_4

    .line 2851
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2853
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2855
    :cond_5
    return-void
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z
    .locals 19
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"    # Z
    .param p3, "allowRestart"    # Z
    .param p4, "reasonCode"    # I
    .param p5, "subReason"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .line 2987
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2988
    .local v2, "name":Ljava/lang/String;
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2989
    .local v3, "uid":I
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const-string v5, "ActivityManager"

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force removing proc "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2990
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2989
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_0
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2993
    .local v4, "old":Lcom/android/server/am/ProcessRecord;
    const/4 v6, 0x0

    if-eq v4, v1, :cond_1

    .line 2995
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring remove of inactive process: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    return v6

    .line 2998
    :cond_1
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2999
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 3001
    const/4 v5, 0x0

    .line 3002
    .local v5, "needRestart":Z
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v7, :cond_2

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v7, v8, :cond_3

    :cond_2
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v7, :cond_9

    iget-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-eqz v7, :cond_9

    .line 3004
    :cond_3
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3005
    .local v7, "pid":I
    if-lez v7, :cond_5

    .line 3006
    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v1}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3007
    iput-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->bindMountPending:Z

    .line 3008
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x14

    invoke-virtual {v6, v8, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3012
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3013
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6, v8}, Lcom/android/server/am/OpBGFrozenInjector;->removeProc(II)V

    .line 3017
    :cond_4
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 3018
    iget-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v6, :cond_5

    .line 3019
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 3020
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 3023
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Lcom/android/server/am/OpAppRecordInjector;->removeIsolatedUid(I)V

    .line 3024
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OpAppRecordInjector.removeIsolatedUid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "AppRecord"

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    :cond_5
    const/4 v6, 0x0

    .line 3029
    .local v6, "willRestart":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-boolean v8, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v8, :cond_7

    .line 3030
    if-nez p2, :cond_6

    .line 3031
    const/4 v6, 0x1

    goto :goto_0

    .line 3033
    :cond_6
    const/4 v5, 0x1

    .line 3036
    :cond_7
    :goto_0
    const/4 v8, 0x1

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual {v1, v11, v9, v10, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 3037
    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v12, p3

    invoke-virtual {v8, v1, v6, v12}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 3038
    if-eqz v6, :cond_8

    .line 3039
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3040
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3043
    .end local v6    # "willRestart":Z
    .end local v7    # "pid":I
    :cond_8
    goto :goto_1

    .line 3002
    :cond_9
    move/from16 v12, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    .line 3044
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3047
    :goto_1
    return v5
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"    # Z
    .param p3, "allowRestart"    # Z
    .param p4, "reasonCode"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 2980
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method final removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "expecting"    # Lcom/android/server/am/ProcessRecord;

    .line 3174
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3178
    .local v0, "old":Lcom/android/server/am/ProcessRecord;
    if-eqz p3, :cond_0

    if-ne v0, p3, :cond_1

    .line 3179
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3181
    :cond_1
    if-eqz p3, :cond_2

    move-object v1, p3

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 3182
    .local v1, "record":Lcom/android/server/am/ProcessRecord;
    :goto_0
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v2, :cond_5

    .line 3183
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 3184
    .local v2, "uidRecord":Lcom/android/server/am/UidRecord;
    iget v3, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    .line 3185
    iget-object v3, v2, Lcom/android/server/am/UidRecord;->procRecords:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3186
    iget v3, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    if-nez v3, :cond_4

    .line 3188
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No more processes in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 3191
    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    .line 3192
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 3193
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 3196
    :cond_4
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 3198
    .end local v2    # "uidRecord":Lcom/android/server/am/UidRecord;
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3199
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {v2, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 3201
    if-eqz v1, :cond_6

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz v2, :cond_6

    .line 3202
    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3205
    :cond_6
    return-object v0
.end method

.method sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3952
    const/4 v0, 0x0

    .line 3953
    .local v0, "foundProcess":Z
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 3954
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3955
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p3, :cond_3

    .line 3957
    :cond_0
    :try_start_0
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    .local v3, "index":I
    :goto_1
    if-ltz v3, :cond_2

    if-nez v0, :cond_2

    .line 3958
    aget-object v4, p2, v3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3959
    const/4 v0, 0x1

    .line 3957
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3962
    .end local v3    # "index":I
    :cond_2
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3964
    goto :goto_2

    .line 3963
    :catch_0
    move-exception v3

    .line 3953
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3968
    .end local v1    # "i":I
    :cond_4
    if-nez v0, :cond_5

    .line 3970
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3972
    goto :goto_3

    .line 3971
    :catch_1
    move-exception v1

    .line 3974
    :cond_5
    :goto_3
    return-void
.end method

.method setAllHttpProxy()V
    .locals 7

    .line 3273
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3274
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3275
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3279
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 3281
    :try_start_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3285
    goto :goto_1

    .line 3282
    :catch_0
    move-exception v3

    .line 3283
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update http proxy for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3288
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3289
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 3290
    return-void

    .line 3288
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .locals 17
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "intentFlags"    # I
    .param p5, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p6, "zygotePolicyFlags"    # I
    .param p7, "allowWhileBooting"    # Z
    .param p8, "isolated"    # Z
    .param p9, "isolatedUid"    # I
    .param p10, "keepIfLarge"    # Z
    .param p11, "abiOverride"    # Ljava/lang/String;
    .param p12, "entryPoint"    # Ljava/lang/String;
    .param p13, "entryPointArgs"    # [Ljava/lang/String;
    .param p14, "crashHandler"    # Ljava/lang/Runnable;

    .line 2556
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 2558
    .local v11, "startTime":J
    const-string v13, "/"

    const/4 v14, 0x0

    const-string v15, "ActivityManager"

    if-nez v10, :cond_3

    .line 2559
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v5, p10

    invoke-virtual {v6, v7, v0, v5}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2560
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v1, "startProcess: after getProcessRecord"

    invoke-direct {v6, v11, v12, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2562
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_1

    .line 2565
    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v1, v8}, Lcom/android/server/am/AppErrors;->isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2566
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    :cond_0
    return-object v14

    .line 2575
    :cond_1
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing bad process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    :cond_2
    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v1, v8}, Lcom/android/server/am/AppErrors;->resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2578
    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v1, v8}, Lcom/android/server/am/AppErrors;->isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2579
    const/16 v1, 0x7540

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2580
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v14, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v3

    const/4 v3, 0x2

    iget-object v14, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v14, v2, v3

    .line 2579
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2582
    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v1, v8}, Lcom/android/server/am/AppErrors;->clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2583
    if-eqz v0, :cond_4

    .line 2584
    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->bad:Z

    goto :goto_0

    .line 2590
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_3
    move/from16 v5, p10

    const/4 v0, 0x0

    .line 2599
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_4
    :goto_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startProcess: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " knownToBeDead="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2602
    if-eqz v0, :cond_6

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_2

    :cond_6
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2599
    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    :cond_7
    const/4 v1, 0x0

    .line 2604
    .local v1, "precedence":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_d

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v2, :cond_d

    .line 2605
    if-nez v9, :cond_8

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_b

    .line 2608
    :cond_9
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already running: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_a
    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v3, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v13, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v2, v3, v4, v13}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2611
    const-string/jumbo v2, "startProcess: done, added package to proc"

    invoke-direct {v6, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2612
    return-object v0

    .line 2617
    :cond_b
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    :cond_c
    const-string/jumbo v2, "startProcess: bad proc running, killing"

    invoke-direct {v6, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2619
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 2620
    const-string/jumbo v2, "startProcess: done killing old proc"

    invoke-direct {v6, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is attached to a previous process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    move-object v1, v0

    .line 2626
    const/4 v0, 0x0

    move-object v14, v0

    move-object v4, v1

    goto :goto_3

    .line 2629
    :cond_d
    move-object v14, v0

    move-object v4, v1

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "precedence":Lcom/android/server/am/ProcessRecord;
    .local v4, "precedence":Lcom/android/server/am/ProcessRecord;
    .local v14, "app":Lcom/android/server/am/ProcessRecord;
    :goto_3
    if-nez v14, :cond_10

    .line 2630
    const-string/jumbo v0, "startProcess: creating new process record"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2631
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p8

    move-object v9, v4

    .end local v4    # "precedence":Lcom/android/server/am/ProcessRecord;
    .local v9, "precedence":Lcom/android/server/am/ProcessRecord;
    move/from16 v4, p9

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    .line 2632
    if-nez v14, :cond_e

    .line 2633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed making new process record for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isolated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    const/4 v0, 0x0

    return-object v0

    .line 2637
    :cond_e
    const/4 v0, 0x0

    move-object/from16 v1, p14

    iput-object v1, v14, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    .line 2638
    move-object/from16 v2, p12

    iput-object v2, v14, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    .line 2639
    move-object/from16 v3, p13

    iput-object v3, v14, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    .line 2640
    if-eqz v9, :cond_f

    .line 2641
    iput-object v9, v14, Lcom/android/server/am/ProcessRecord;->mPrecedence:Lcom/android/server/am/ProcessRecord;

    .line 2642
    iput-object v14, v9, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 2644
    :cond_f
    const-string/jumbo v4, "startProcess: done creating new process record"

    invoke-direct {v6, v11, v12, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    goto :goto_4

    .line 2647
    .end local v9    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "precedence":Lcom/android/server/am/ProcessRecord;
    :cond_10
    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v1, p14

    move-object v9, v4

    const/4 v0, 0x0

    .end local v4    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "precedence":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v0, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v14, v4, v0, v1, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2648
    const-string/jumbo v0, "startProcess: added package to existing proc"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2653
    :goto_4
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v0, :cond_13

    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2654
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_13

    if-nez p7, :cond_13

    .line 2656
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2657
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2659
    :cond_11
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System not ready, putting on hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    :cond_12
    const-string/jumbo v0, "startProcess: returning with proc on hold"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2662
    return-object v14

    .line 2665
    :cond_13
    const-string/jumbo v0, "startProcess: stepping in to startProcess"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2666
    nop

    .line 2667
    move-object/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v4, p11

    invoke-virtual {v6, v14, v0, v1, v4}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    move-result v5

    .line 2668
    .local v5, "success":Z
    const-string/jumbo v13, "startProcess: done starting proc!"

    invoke-direct {v6, v11, v12, v13}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2669
    if-eqz v5, :cond_14

    move-object/from16 v16, v14

    goto :goto_5

    :cond_14
    const/16 v16, 0x0

    :goto_5
    return-object v16
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I

    .line 2539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    .line 2540
    return-void
.end method

.method startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 29
    .param p1, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "zygotePolicyFlags"    # I
    .param p8, "mountExternal"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "requiredAbi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "startTime"    # J

    .line 2156
    move-object/from16 v14, p0

    move-object/from16 v15, p3

    const/4 v12, 0x1

    iput-boolean v12, v15, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2157
    const/4 v8, 0x0

    iput-boolean v8, v15, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 2158
    iput-boolean v8, v15, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 2159
    iput-boolean v8, v15, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 2160
    iget-wide v0, v15, Lcom/android/server/am/ProcessRecord;->startSeq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string/jumbo v1, "startProcessLocked processName:"

    const-string v9, "ActivityManager"

    if-eqz v0, :cond_0

    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with non-zero startSeq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_0
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eqz v0, :cond_1

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with non-zero pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :cond_1
    const/4 v0, 0x0

    iput-object v0, v15, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    .line 2169
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_2

    .line 2170
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/compat/PlatformCompat;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    iput-object v0, v15, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    .line 2172
    :cond_2
    iget-wide v0, v14, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, v14, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    iput-wide v0, v15, Lcom/android/server/am/ProcessRecord;->startSeq:J

    move-wide v10, v0

    .line 2173
    .local v10, "startSeq":J
    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p9

    move-wide/from16 v5, p13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;J)V

    .line 2177
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2178
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ColdStartInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/am/ColdStartInjector;

    move-result-object v0

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ColdStartInjector;->checkColdStart(Ljava/lang/String;)V

    .line 2182
    :cond_3
    if-nez p12, :cond_5

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2183
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v8

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v12

    .line 2182
    :goto_1
    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2184
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v10, v11, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2186
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v0, :cond_7

    .line 2187
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Posting procStart msg for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2187
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_6
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    move-wide/from16 v16, v10

    .end local v10    # "startSeq":J
    .local v16, "startSeq":J
    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v18, v12

    move-object v14, v13

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2192
    return v18

    .line 2195
    .end local v16    # "startSeq":J
    .restart local v10    # "startSeq":J
    :cond_7
    move-wide/from16 v16, v10

    move/from16 v18, v12

    .end local v10    # "startSeq":J
    .restart local v16    # "startSeq":J
    :try_start_0
    invoke-direct/range {p0 .. p14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 2199
    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2207
    move-object/from16 v1, p0

    .end local v0    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_2

    .line 2201
    :catch_0
    move-exception v0

    .line 2202
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure starting process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2204
    iput-boolean v8, v15, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2205
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v28, "start failure"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v27, v4

    invoke-virtual/range {v19 .. v28}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2208
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_8

    move/from16 v12, v18

    goto :goto_3

    :cond_8
    move v12, v8

    :goto_3
    return v12
.end method

.method final startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I
    .param p4, "abiOverride"    # Ljava/lang/String;

    .line 2545
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZZLjava/lang/String;)Z
    .locals 30
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I
    .param p4, "disableHiddenApiChecks"    # Z
    .param p5, "disableTestApiChecks"    # Z
    .param p6, "mountExtStorageFull"    # Z
    .param p7, "abiOverride"    # Ljava/lang/String;

    .line 1851
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const-string v1, ""

    const-string v2, "1"

    iget-boolean v0, v15, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 1852
    return v3

    .line 1854
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1855
    .local v12, "startTime":J
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v11, 0x0

    if-lez v0, :cond_2

    iget v0, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v4, :cond_2

    .line 1856
    const-string/jumbo v0, "startProcess: removing from pids map"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1857
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1858
    iput-boolean v11, v15, Lcom/android/server/am/ProcessRecord;->bindMountPending:Z

    .line 1859
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1863
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1864
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v4}, Lcom/android/server/am/OpBGFrozenInjector;->removeProc(II)V

    .line 1868
    :cond_1
    const-string/jumbo v0, "startProcess: done removing from pids map"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1869
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 1870
    const-wide/16 v4, 0x0

    iput-wide v4, v15, Lcom/android/server/am/ProcessRecord;->startSeq:J

    .line 1873
    :cond_2
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const-string v9, "ActivityManager"

    if-eqz v0, :cond_3

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcessLocked removing on hold: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_3
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1880
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/server/am/OpStartAppControlInjector;->canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1881
    return v11

    .line 1885
    :cond_4
    const-string/jumbo v0, "startProcess: starting to update cpu stats"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1886
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1887
    const-string/jumbo v0, "startProcess: done updating cpu stats"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1891
    :try_start_0
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1892
    .local v0, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_9

    .line 1895
    .end local v0    # "userId":I
    nop

    .line 1897
    :try_start_1
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    move v4, v0

    .line 1898
    .local v4, "uid":I
    const/4 v5, 0x0

    .line 1899
    .local v5, "gids":[I
    const/4 v6, 0x0

    .line 1900
    .local v6, "mountExternal":I
    iget-boolean v0, v15, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9

    if-nez v0, :cond_8

    .line 1901
    const/4 v7, 0x0

    .line 1903
    .local v7, "permGids":[I
    :try_start_2
    const-string/jumbo v0, "startProcess: getting gids from package manager"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1904
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1905
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const/high16 v10, 0x10000000

    :try_start_3
    iget v11, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v0, v8, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;II)[I

    move-result-object v8

    move-object v7, v8

    .line 1907
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz p6, :cond_5

    .line 1908
    const/4 v6, 0x6

    goto :goto_0

    .line 1910
    :cond_5
    const-class v8, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManagerInternal;

    .line 1912
    .local v8, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v4, v10}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v10
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move v6, v10

    .line 1917
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v8    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :goto_0
    nop

    .line 1922
    :try_start_4
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v0, :cond_7

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v0, v0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v0, :cond_7

    .line 1923
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v0, v0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_7

    .line 1924
    iget-object v8, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v10, v10, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 1925
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget v11, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1924
    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManagerInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v8

    .line 1926
    .local v8, "denyGids":[I
    if-eqz v8, :cond_6

    .line 1927
    array-length v10, v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_6

    aget v17, v8, v11

    move/from16 v18, v17

    .line 1928
    .local v18, "gid":I
    move/from16 v3, v18

    .end local v18    # "gid":I
    .local v3, "gid":I
    invoke-static {v7, v3}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v18

    move-object/from16 v7, v18

    .line 1927
    .end local v3    # "gid":I
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    goto :goto_2

    .line 1923
    .end local v8    # "denyGids":[I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x1

    goto :goto_1

    .line 1933
    .end local v0    # "i":I
    :cond_7
    invoke-direct {v14, v6, v4, v7}, Lcom/android/server/am/ProcessList;->computeGidsForProcess(II[I)[I

    move-result-object v0

    .line 1937
    .end local v5    # "gids":[I
    .local v0, "gids":[I
    invoke-static {v0, v15}, Lcom/android/server/am/AmInjector;->parallelGids([ILcom/android/server/am/ProcessRecord;)[I

    move-result-object v3

    move-object v5, v3

    move-object v11, v5

    move v8, v6

    .end local v0    # "gids":[I
    .restart local v5    # "gids":[I
    goto :goto_4

    .line 2136
    .end local v4    # "uid":I
    .end local v5    # "gids":[I
    .end local v6    # "mountExternal":I
    .end local v7    # "permGids":[I
    :catch_0
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v27, v11

    :goto_3
    move-wide/from16 v28, v12

    goto/16 :goto_15

    .line 1915
    .restart local v4    # "uid":I
    .restart local v5    # "gids":[I
    .restart local v6    # "mountExternal":I
    .restart local v7    # "permGids":[I
    :catch_1
    move-exception v0

    .line 1916
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v12    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "mountExtStorageFull":Z
    .end local p7    # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2136
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "uid":I
    .end local v5    # "gids":[I
    .end local v6    # "mountExternal":I
    .end local v7    # "permGids":[I
    .restart local v12    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "mountExtStorageFull":Z
    .restart local p7    # "abiOverride":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v26, v9

    move-wide/from16 v28, v12

    const/16 v27, 0x0

    goto/16 :goto_15

    .line 1900
    .restart local v4    # "uid":I
    .restart local v5    # "gids":[I
    .restart local v6    # "mountExternal":I
    :cond_8
    move-object v11, v5

    move v8, v6

    .line 1940
    .end local v5    # "gids":[I
    .end local v6    # "mountExternal":I
    .local v8, "mountExternal":I
    .local v11, "gids":[I
    :goto_4
    :try_start_5
    iput v8, v15, Lcom/android/server/am/ProcessRecord;->mountMode:I

    .line 1941
    const-string/jumbo v0, "startProcess: building args"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1942
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isFactoryTestProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1943
    const/4 v4, 0x0

    move v7, v4

    goto :goto_5

    .line 1942
    :cond_9
    move v7, v4

    .line 1945
    .end local v4    # "uid":I
    .local v7, "uid":I
    :goto_5
    const/4 v0, 0x0

    .line 1946
    .local v0, "runtimeFlags":I
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_8

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    .line 1947
    or-int/lit8 v0, v0, 0x1

    .line 1948
    or-int/lit16 v0, v0, 0x100

    .line 1951
    or-int/2addr v0, v4

    .line 1954
    :try_start_6
    iget-object v3, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "art_verifier_verify_debuggable"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a

    .line 1956
    or-int/lit16 v0, v0, 0x200

    .line 1957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": ART verification disabled"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    move v3, v0

    goto :goto_6

    .line 1954
    :cond_a
    move v3, v0

    goto :goto_6

    .line 1946
    :cond_b
    move v3, v0

    .line 1964
    .end local v0    # "runtimeFlags":I
    .local v3, "runtimeFlags":I
    :goto_6
    const v6, -0x800001

    const/high16 v10, 0x800000

    :try_start_7
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0xa8

    invoke-static {v5, v0}, Lcom/android/server/pm/OpCompatibilityInjector;->getCompatConfigString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1967
    .local v0, "gm_config_string":Ljava/lang/String;
    const-string v4, "#disabled_to_all"

    invoke-static {v5, v4}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v4

    .line 1970
    .local v4, "disabled_to_all":Z
    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 1971
    and-int/2addr v3, v6

    .line 1972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": disable GPU RLIMIT_STACK_MASK, pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1975
    :cond_c
    or-int/2addr v3, v10

    .line 1978
    :goto_7
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1979
    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1980
    .local v5, "gm_split_string":[Ljava/lang/String;
    array-length v6, v5

    const/4 v10, 0x2

    if-ne v6, v10, :cond_f

    const/4 v6, 0x1

    aget-object v6, v5, v6

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz v6, :cond_f

    .line 1984
    const/4 v6, 0x0

    :try_start_8
    aget-object v10, v5, v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    rsub-int v6, v6, 0x200

    div-int/lit8 v6, v6, 0x40

    .line 1985
    .local v6, "size":I
    const/4 v10, 0x7

    if-le v6, v10, :cond_d

    .line 1986
    const/4 v6, 0x7

    .line 1987
    :cond_d
    if-gez v6, :cond_e

    .line 1988
    const/4 v6, 0x0

    .line 1990
    :cond_e
    const/high16 v10, 0x800000

    or-int/2addr v3, v10

    .line 1991
    const v10, -0x7000001

    and-int/2addr v3, v10

    .line 1992
    sget v10, Lcom/android/internal/os/Zygote;->RLIMIT_SIZE_SHIFT:I

    shl-int v10, v6, v10

    or-int/2addr v3, v10

    .line 1993
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    .end local v0    # "gm_config_string":Ljava/lang/String;
    .local v17, "gm_config_string":Ljava/lang/String;
    const-string v0, ": GPU RLIMIT_STACK_MASK, pkg="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v6, 0x20

    rsub-int v0, v0, 0x200

    .line 1995
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1993
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_8

    .line 2136
    .end local v3    # "runtimeFlags":I
    .end local v4    # "disabled_to_all":Z
    .end local v5    # "gm_split_string":[Ljava/lang/String;
    .end local v6    # "size":I
    .end local v7    # "uid":I
    .end local v8    # "mountExternal":I
    .end local v11    # "gids":[I
    .end local v17    # "gm_config_string":Ljava/lang/String;
    :catch_3
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v26, v9

    goto/16 :goto_3

    .line 1980
    .restart local v0    # "gm_config_string":Ljava/lang/String;
    .restart local v3    # "runtimeFlags":I
    .restart local v4    # "disabled_to_all":Z
    .restart local v5    # "gm_split_string":[Ljava/lang/String;
    .restart local v7    # "uid":I
    .restart local v8    # "mountExternal":I
    .restart local v11    # "gids":[I
    :cond_f
    move-object/from16 v17, v0

    .end local v0    # "gm_config_string":Ljava/lang/String;
    .restart local v17    # "gm_config_string":Ljava/lang/String;
    goto :goto_8

    .line 1978
    .end local v5    # "gm_split_string":[Ljava/lang/String;
    .end local v17    # "gm_config_string":Ljava/lang/String;
    .restart local v0    # "gm_config_string":Ljava/lang/String;
    :cond_10
    move-object/from16 v17, v0

    .line 2003
    .end local v0    # "gm_config_string":Ljava/lang/String;
    .end local v4    # "disabled_to_all":Z
    :goto_8
    goto :goto_9

    .line 1998
    :catch_4
    move-exception v0

    .line 1999
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Get Compatibility failed, ignored anyway."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2001
    const v4, -0x800001

    and-int/2addr v3, v4

    .line 2002
    const v4, -0x7000001

    and-int/2addr v3, v4

    .line 2008
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_8

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_11

    :try_start_b
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    if-eqz v0, :cond_12

    .line 2009
    :cond_11
    or-int/lit8 v3, v3, 0x8

    .line 2011
    :cond_12
    :try_start_c
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v4, 0x800000

    and-int/2addr v0, v4

    if-eqz v0, :cond_13

    .line 2012
    const v0, 0x8000

    or-int/2addr v3, v0

    .line 2014
    :cond_13
    const-string v0, "debug.checkjni"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2015
    or-int/lit8 v3, v3, 0x2

    .line 2017
    :cond_14
    const-string v0, "debug.generate-debug-info"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 2018
    .local v6, "genDebugInfoProperty":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_8

    const-string/jumbo v4, "true"

    if-nez v0, :cond_15

    :try_start_d
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    if-eqz v0, :cond_16

    .line 2019
    :cond_15
    or-int/lit8 v3, v3, 0x20

    .line 2021
    :cond_16
    :try_start_e
    const-string v0, "dalvik.vm.minidebuginfo"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 2022
    .local v5, "genMiniDebugInfoProperty":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_8

    if-nez v0, :cond_17

    :try_start_f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    if-eqz v0, :cond_18

    .line 2023
    :cond_17
    or-int/lit16 v3, v3, 0x800

    .line 2025
    :cond_18
    :try_start_10
    const-string v0, "debug.jni.logging"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2026
    or-int/lit8 v3, v3, 0x10

    .line 2028
    :cond_19
    const-string v0, "debug.assert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2029
    or-int/lit8 v3, v3, 0x4

    .line 2031
    :cond_1a
    const-string v0, "debug.ignoreappsignalhandler"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2032
    const/high16 v0, 0x20000

    or-int/2addr v3, v0

    .line 2034
    :cond_1b
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_8

    if-eqz v0, :cond_1c

    :try_start_11
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2035
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2037
    or-int/lit8 v0, v3, 0x40

    .line 2038
    .end local v3    # "runtimeFlags":I
    .local v0, "runtimeFlags":I
    or-int/lit8 v0, v0, 0x20

    .line 2039
    or-int/lit16 v3, v0, 0x80

    .line 2040
    .end local v0    # "runtimeFlags":I
    .restart local v3    # "runtimeFlags":I
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2

    .line 2043
    :cond_1c
    :try_start_12
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_8

    if-nez v0, :cond_1d

    :try_start_13
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2044
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 2045
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2046
    :cond_1d
    or-int/lit16 v3, v3, 0x400

    .line 2049
    :cond_1e
    if-nez p4, :cond_20

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2050
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 2051
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v2

    .line 2050
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 2052
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2053
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v0

    .line 2054
    .local v0, "policy":I
    sget v2, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v2, v0, v2

    .line 2055
    .local v2, "policyBits":I
    and-int/lit16 v4, v2, 0x3000

    if-ne v4, v2, :cond_1f

    .line 2058
    or-int/2addr v3, v2

    .line 2060
    if-eqz p5, :cond_20

    .line 2061
    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    goto :goto_a

    .line 2056
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid API policy: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v12    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "mountExtStorageFull":Z
    .end local p7    # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_2

    .line 2065
    .end local v0    # "policy":I
    .end local v2    # "policyBits":I
    .restart local v12    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "mountExtStorageFull":Z
    .restart local p7    # "abiOverride":Ljava/lang/String;
    :cond_20
    :goto_a
    :try_start_14
    const-string/jumbo v0, "persist.device_config.runtime_native.use_app_image_startup_cache"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 2068
    .local v4, "useAppImageCache":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_8

    if-nez v0, :cond_21

    :try_start_15
    const-string v0, "false"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_2

    if-nez v0, :cond_21

    .line 2069
    const/high16 v0, 0x10000

    or-int/2addr v3, v0

    .line 2072
    :cond_21
    :try_start_16
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->decideGwpAsanLevel(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    or-int v2, v3, v0

    .line 2074
    .end local v3    # "runtimeFlags":I
    .local v2, "runtimeFlags":I
    const/4 v3, 0x0

    .line 2075
    .local v3, "invokeWith":Ljava/lang/String;
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_8

    const/4 v10, 0x2

    and-int/2addr v0, v10

    if-eqz v0, :cond_23

    .line 2077
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/wrap.sh"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 2078
    .local v10, "wrapperFileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_2

    move-object/from16 v17, v0

    .line 2080
    .local v17, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v1

    const-string v1, "/system/bin/logwrapper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-object v3, v0

    goto :goto_b

    .line 2080
    :cond_22
    move-object/from16 v18, v1

    .line 2084
    :goto_b
    :try_start_19
    invoke-static/range {v17 .. v17}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2085
    move-object v0, v3

    goto :goto_c

    .line 2084
    :catchall_0
    move-exception v0

    invoke-static/range {v17 .. v17}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2085
    nop

    .end local v12    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "mountExtStorageFull":Z
    .end local p7    # "abiOverride":Ljava/lang/String;
    throw v0
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_2

    .line 2075
    .end local v10    # "wrapperFileName":Ljava/lang/String;
    .end local v17    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v12    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "mountExtStorageFull":Z
    .restart local p7    # "abiOverride":Ljava/lang/String;
    :cond_23
    move-object/from16 v18, v1

    move-object v0, v3

    .line 2088
    .end local v3    # "invokeWith":Ljava/lang/String;
    .local v0, "invokeWith":Ljava/lang/String;
    :goto_c
    if-eqz p7, :cond_24

    move-object/from16 v1, p7

    goto :goto_d

    :cond_24
    :try_start_1a
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_8

    .line 2089
    .local v1, "requiredAbi":Ljava/lang/String;
    :goto_d
    if-nez v1, :cond_25

    .line 2090
    :try_start_1b
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_6

    const/16 v16, 0x0

    :try_start_1c
    aget-object v3, v3, v16
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_5

    move-object v1, v3

    goto :goto_f

    .line 2136
    .end local v0    # "invokeWith":Ljava/lang/String;
    .end local v1    # "requiredAbi":Ljava/lang/String;
    .end local v2    # "runtimeFlags":I
    .end local v4    # "useAppImageCache":Ljava/lang/String;
    .end local v5    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v6    # "genDebugInfoProperty":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "mountExternal":I
    .end local v11    # "gids":[I
    :catch_5
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    const/16 v16, 0x0

    :goto_e
    move-object/from16 v26, v9

    move-wide/from16 v28, v12

    move/from16 v27, v16

    goto/16 :goto_15

    .line 2089
    .restart local v0    # "invokeWith":Ljava/lang/String;
    .restart local v1    # "requiredAbi":Ljava/lang/String;
    .restart local v2    # "runtimeFlags":I
    .restart local v4    # "useAppImageCache":Ljava/lang/String;
    .restart local v5    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .restart local v6    # "genDebugInfoProperty":Ljava/lang/String;
    .restart local v7    # "uid":I
    .restart local v8    # "mountExternal":I
    .restart local v11    # "gids":[I
    :cond_25
    const/16 v16, 0x0

    move-object v3, v1

    .line 2093
    .end local v1    # "requiredAbi":Ljava/lang/String;
    .local v3, "requiredAbi":Ljava/lang/String;
    :goto_f
    const/4 v1, 0x0

    .line 2094
    .local v1, "instructionSet":Ljava/lang/String;
    :try_start_1d
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_7

    if-eqz v10, :cond_26

    .line 2095
    :try_start_1e
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v10}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_5

    move-object v1, v10

    .line 2098
    :cond_26
    :try_start_1f
    iput-object v11, v15, Lcom/android/server/am/ProcessRecord;->gids:[I

    .line 2099
    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    .line 2100
    iput-object v1, v15, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_7

    .line 2112
    if-eqz v1, :cond_28

    :try_start_20
    const-string v10, "arm64"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_5

    if-eqz v10, :cond_27

    goto :goto_10

    :cond_27
    move/from16 v17, v2

    goto :goto_11

    .line 2113
    :cond_28
    :goto_10
    :try_start_21
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->decideTaggingLevel(Lcom/android/server/am/ProcessRecord;)I

    move-result v10

    or-int/2addr v2, v10

    move/from16 v17, v2

    .line 2117
    .end local v2    # "runtimeFlags":I
    .local v17, "runtimeFlags":I
    :goto_11
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_7

    if-eqz v2, :cond_29

    .line 2118
    :try_start_22
    const-string v2, "SELinux tag not defined"

    new-instance v10, Ljava/lang/IllegalStateException;

    move-object/from16 v19, v1

    .end local v1    # "instructionSet":Ljava/lang/String;
    .local v19, "instructionSet":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    .end local v3    # "requiredAbi":Ljava/lang/String;
    .local v20, "requiredAbi":Ljava/lang/String;
    const-string v3, "SELinux tag not defined for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v2, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_5

    goto :goto_12

    .line 2117
    .end local v19    # "instructionSet":Ljava/lang/String;
    .end local v20    # "requiredAbi":Ljava/lang/String;
    .restart local v1    # "instructionSet":Ljava/lang/String;
    .restart local v3    # "requiredAbi":Ljava/lang/String;
    :cond_29
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    .line 2122
    .end local v1    # "instructionSet":Ljava/lang/String;
    .end local v3    # "requiredAbi":Ljava/lang/String;
    .restart local v19    # "instructionSet":Ljava/lang/String;
    .restart local v20    # "requiredAbi":Ljava/lang/String;
    :goto_12
    :try_start_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v2, v18

    goto :goto_13

    :cond_2a
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2126
    .local v10, "seInfo":Ljava/lang/String;
    const-string v1, "android.app.ActivityThread"

    move-object/from16 v18, v1

    .line 2130
    .local v18, "entryPoint":Ljava/lang/String;
    const-string/jumbo v1, "start process"

    invoke-static {v7, v1}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 2133
    const-string v3, "android.app.ActivityThread"
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v21, v4

    .end local v4    # "useAppImageCache":Ljava/lang/String;
    .local v21, "useAppImageCache":Ljava/lang/String;
    move-object/from16 v4, p1

    move-object/from16 v22, v5

    .end local v5    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .local v22, "genMiniDebugInfoProperty":Ljava/lang/String;
    move v5, v7

    move-object/from16 v23, v6

    .end local v6    # "genDebugInfoProperty":Ljava/lang/String;
    .local v23, "genDebugInfoProperty":Ljava/lang/String;
    move-object v6, v11

    move/from16 v24, v7

    .end local v7    # "uid":I
    .local v24, "uid":I
    move/from16 v7, v17

    move/from16 v25, v8

    .end local v8    # "mountExternal":I
    .local v25, "mountExternal":I
    move/from16 v8, p3

    move-object/from16 v26, v9

    move/from16 v9, v25

    move/from16 v27, v16

    move-object/from16 v16, v11

    .end local v11    # "gids":[I
    .local v16, "gids":[I
    move-object/from16 v11, v20

    move-wide/from16 v28, v12

    .end local v12    # "startTime":J
    .local v28, "startTime":J
    move-object/from16 v12, v19

    move-object v13, v0

    move-wide/from16 v14, v28

    :try_start_24
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    return v1

    .line 2136
    .end local v0    # "invokeWith":Ljava/lang/String;
    .end local v10    # "seInfo":Ljava/lang/String;
    .end local v16    # "gids":[I
    .end local v17    # "runtimeFlags":I
    .end local v18    # "entryPoint":Ljava/lang/String;
    .end local v19    # "instructionSet":Ljava/lang/String;
    .end local v20    # "requiredAbi":Ljava/lang/String;
    .end local v21    # "useAppImageCache":Ljava/lang/String;
    .end local v22    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v23    # "genDebugInfoProperty":Ljava/lang/String;
    .end local v24    # "uid":I
    .end local v25    # "mountExternal":I
    .end local v28    # "startTime":J
    .restart local v12    # "startTime":J
    :catch_7
    move-exception v0

    move-object/from16 v26, v9

    move-wide/from16 v28, v12

    move/from16 v27, v16

    goto :goto_14

    :catch_8
    move-exception v0

    move-object/from16 v26, v9

    move-wide/from16 v28, v12

    const/16 v27, 0x0

    goto :goto_14

    :catch_9
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v27, v11

    move-wide/from16 v28, v12

    .end local v12    # "startTime":J
    .restart local v28    # "startTime":J
    :goto_14
    goto :goto_15

    .line 1893
    .end local v28    # "startTime":J
    .restart local v12    # "startTime":J
    :catch_a
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v27, v11

    move-wide/from16 v28, v12

    .line 1894
    .end local v12    # "startTime":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v28    # "startTime":J
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v28    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "mountExtStorageFull":Z
    .end local p7    # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_b

    .line 2136
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v28    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "mountExtStorageFull":Z
    .restart local p7    # "abiOverride":Ljava/lang/String;
    :catch_b
    move-exception v0

    .line 2137
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure starting process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v26

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2145
    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v12, "start failure"

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2147
    return v27
.end method

.method updateAllTimePrefsLocked(I)V
    .locals 5
    .param p1, "timePref"    # I

    .line 3258
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3259
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3260
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 3262
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3266
    goto :goto_1

    .line 3263
    :catch_0
    move-exception v2

    .line 3264
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update preferences for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3269
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method updateApplicationInfoLocked(Ljava/util/List;IZ)V
    .locals 9
    .param p2, "userId"    # I
    .param p3, "updateFrameworkRes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 3916
    .local p1, "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 3917
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3918
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_0

    .line 3919
    goto :goto_3

    .line 3922
    :cond_0
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v3, p2, :cond_1

    .line 3923
    goto :goto_3

    .line 3926
    :cond_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    .line 3927
    .local v3, "packageCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 3928
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v5

    .line 3929
    .local v5, "packageName":Ljava/lang/String;
    if-nez p3, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3930
    goto :goto_2

    .line 3933
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/16 v7, 0x400

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 3934
    invoke-interface {v6, v5, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 3935
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_3

    .line 3936
    goto :goto_2

    .line 3938
    :cond_3
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v7, v6}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 3939
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3940
    iput-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3945
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_4
    goto :goto_2

    .line 3942
    :catch_0
    move-exception v6

    .line 3943
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object v2, v7, v1

    const-string v8, "Failed to update %s ApplicationInfo for %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3916
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "packageCount":I
    .end local v4    # "j":I
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3948
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method updateCoreSettingsLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "settings"    # Landroid/os/Bundle;

    .line 3211
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3212
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3214
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 3215
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3219
    :cond_0
    goto :goto_1

    .line 3217
    :catch_0
    move-exception v2

    .line 3211
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3221
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J
    .param p4, "index"    # I
    .param p5, "lruSeq"    # I
    .param p6, "what"    # Ljava/lang/String;
    .param p7, "obj"    # Ljava/lang/Object;
    .param p8, "srcApp"    # Lcom/android/server/am/ProcessRecord;

    .line 3324
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    .line 3326
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3328
    return p4

    .line 3331
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3332
    .local v0, "lrui":I
    const-string v1, "ActivityManager"

    if-gez v0, :cond_1

    .line 3333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding dependent process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not on LRU list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    return p4

    .line 3338
    :cond_1
    if-lt v0, p4, :cond_2

    .line 3341
    return p4

    .line 3344
    :cond_2
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v0, v2, :cond_3

    if-ge p4, v2, :cond_3

    .line 3346
    return p4

    .line 3349
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3350
    if-lez p4, :cond_4

    .line 3351
    add-int/lit8 p4, p4, -0x1

    .line 3353
    :cond_4
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving dep from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in LRU list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3356
    iput p5, p1, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    .line 3357
    return p4
.end method

.method final updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .locals 23
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityChange"    # Z
    .param p3, "client"    # Lcom/android/server/am/ProcessRecord;

    .line 3547
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v12

    :goto_1
    move v13, v0

    .line 3549
    .local v13, "hasActivity":Z
    const/4 v14, 0x0

    .line 3550
    .local v14, "hasService":Z
    if-nez p2, :cond_2

    if-eqz v13, :cond_2

    .line 3555
    return-void

    .line 3558
    :cond_2
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    add-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 3559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 3560
    .local v7, "now":J
    iput-wide v7, v10, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    .line 3564
    const-string v0, "ActivityManager"

    if-eqz v13, :cond_5

    .line 3565
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3566
    .local v2, "N":I
    if-lez v2, :cond_4

    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_4

    .line 3567
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not moving, already top activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    :cond_3
    return-void

    .line 3570
    .end local v2    # "N":I
    :cond_4
    goto :goto_2

    .line 3571
    :cond_5
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v2, :cond_7

    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v2, v12

    .line 3572
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_7

    .line 3573
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not moving, already top other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    :cond_6
    return-void

    .line 3578
    :cond_7
    :goto_2
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v15

    .line 3580
    .local v15, "lrui":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_9

    if-ltz v15, :cond_9

    .line 3583
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not moving, persistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    :cond_8
    return-void

    .line 3621
    :cond_9
    if-ltz v15, :cond_c

    .line 3622
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v15, v2, :cond_a

    .line 3623
    sub-int/2addr v2, v12

    iput v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3625
    :cond_a
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v15, v2, :cond_b

    .line 3626
    sub-int/2addr v2, v12

    iput v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3636
    :cond_b
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3650
    :cond_c
    const/4 v2, -0x1

    .line 3651
    .local v2, "nextActivityIndex":I
    if-eqz v13, :cond_13

    .line 3652
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3653
    .local v1, "N":I
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3654
    .local v3, "nextIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-nez v4, :cond_11

    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v4, :cond_11

    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_11

    .line 3658
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding to second-top of LRU activity list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " group="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " importance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    :cond_d
    add-int/lit8 v0, v1, -0x1

    .line 3663
    .local v0, "pos":I
    :goto_3
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le v0, v4, :cond_f

    .line 3664
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 3665
    .local v4, "posproc":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_e

    .line 3669
    goto :goto_4

    .line 3671
    :cond_e
    nop

    .end local v4    # "posproc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v0, v0, -0x1

    .line 3672
    goto :goto_3

    .line 3673
    :cond_f
    :goto_4
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3676
    add-int/lit8 v4, v0, -0x1

    .line 3677
    .local v4, "endIndex":I
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v4, v5, :cond_10

    .line 3678
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3680
    :cond_10
    move v2, v4

    .line 3681
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-direct {v9, v10, v0, v5, v4}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V

    .line 3682
    .end local v0    # "pos":I
    .end local v4    # "endIndex":I
    goto :goto_5

    .line 3684
    :cond_11
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding to top of LRU activity list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :cond_12
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3686
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v12

    move v2, v0

    .line 3688
    .end local v1    # "N":I
    :goto_5
    goto :goto_6

    .line 3696
    .end local v3    # "nextIndex":I
    :cond_13
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3697
    .local v3, "index":I
    if-eqz v11, :cond_16

    .line 3700
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    .line 3701
    .local v4, "clientIndex":I
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_14

    if-gez v4, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " when updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    :cond_14
    if-gt v4, v15, :cond_15

    .line 3706
    move v4, v15

    .line 3708
    :cond_15
    if-ltz v4, :cond_16

    if-le v3, v4, :cond_16

    .line 3709
    move v3, v4

    .line 3712
    .end local v4    # "clientIndex":I
    :cond_16
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of LRU list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    :cond_17
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3714
    add-int/lit8 v0, v3, -0x1

    .line 3715
    .local v0, "nextIndex":I
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3716
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3717
    if-le v3, v12, :cond_18

    .line 3718
    sub-int/2addr v4, v12

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v9, v10, v4, v1, v5}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V

    .line 3722
    .end local v3    # "index":I
    :cond_18
    move v3, v0

    .end local v0    # "nextIndex":I
    .local v3, "nextIndex":I
    :goto_6
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    iput v0, v10, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    .line 3726
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v12

    move v6, v0

    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "nextActivityIndex":I
    .end local v3    # "nextIndex":I
    .local v6, "j":I
    .local v16, "nextActivityIndex":I
    .local v17, "nextIndex":I
    :goto_7
    if-ltz v6, :cond_1d

    .line 3727
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 3728
    .local v5, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_1c

    iget-boolean v0, v5, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_1c

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_1c

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1c

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_1c

    iget v0, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v1, 0x40000130    # 2.0000725f

    and-int/2addr v0, v1

    if-nez v0, :cond_1c

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3732
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3733
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3734
    if-ltz v16, :cond_19

    .line 3735
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v18, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v7

    move/from16 v19, v4

    move/from16 v4, v16

    move-object/from16 v20, v5

    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v20, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v5, v19

    move/from16 v19, v6

    .end local v6    # "j":I
    .local v19, "j":I
    move-object/from16 v6, v18

    move-wide/from16 v21, v7

    .end local v7    # "now":J
    .local v21, "now":J
    move-object/from16 v7, v20

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v16, v0

    .end local v16    # "nextActivityIndex":I
    .local v0, "nextActivityIndex":I
    goto :goto_8

    .line 3734
    .end local v0    # "nextActivityIndex":I
    .end local v19    # "j":I
    .end local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    .restart local v16    # "nextActivityIndex":I
    :cond_19
    move-object/from16 v20, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6    # "j":I
    .end local v7    # "now":J
    .restart local v19    # "j":I
    .restart local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v21    # "now":J
    goto :goto_8

    .line 3741
    .end local v19    # "j":I
    .end local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    :cond_1a
    move-object/from16 v20, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6    # "j":I
    .end local v7    # "now":J
    .restart local v19    # "j":I
    .restart local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v21    # "now":J
    move-object/from16 v8, v20

    .end local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v8, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "service connection"

    move-object/from16 v0, p0

    move-wide/from16 v2, v21

    move/from16 v4, v17

    move-object v7, v8

    move-object/from16 v18, v8

    .end local v8    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v18, "cr":Lcom/android/server/am/ConnectionRecord;
    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v17, v0

    .end local v17    # "nextIndex":I
    .local v0, "nextIndex":I
    goto :goto_8

    .line 3732
    .end local v0    # "nextIndex":I
    .end local v18    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v19    # "j":I
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    .restart local v17    # "nextIndex":I
    :cond_1b
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6    # "j":I
    .end local v7    # "now":J
    .restart local v18    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v19    # "j":I
    .restart local v21    # "now":J
    goto :goto_8

    .line 3728
    .end local v18    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v19    # "j":I
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    :cond_1c
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .line 3726
    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6    # "j":I
    .end local v7    # "now":J
    .restart local v19    # "j":I
    .restart local v21    # "now":J
    :goto_8
    add-int/lit8 v6, v19, -0x1

    move-wide/from16 v7, v21

    .end local v19    # "j":I
    .restart local v6    # "j":I
    goto/16 :goto_7

    .end local v21    # "now":J
    .restart local v7    # "now":J
    :cond_1d
    move/from16 v19, v6

    move-wide/from16 v21, v7

    .line 3748
    .end local v6    # "j":I
    .end local v7    # "now":J
    .restart local v21    # "now":J
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v12

    move v12, v0

    .local v12, "j":I
    :goto_9
    if-ltz v12, :cond_1f

    .line 3749
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    iget-object v8, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 3750
    .local v8, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1e

    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_1e

    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3751
    iget-object v1, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "provider reference"

    move-object/from16 v0, p0

    move-wide/from16 v2, v21

    move/from16 v4, v17

    move-object v7, v8

    move-object/from16 v18, v8

    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v18, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v17, v0

    .end local v17    # "nextIndex":I
    .restart local v0    # "nextIndex":I
    goto :goto_a

    .line 3750
    .end local v0    # "nextIndex":I
    .end local v18    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "nextIndex":I
    :cond_1e
    move-object/from16 v18, v8

    .line 3748
    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_a
    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    .line 3755
    .end local v12    # "j":I
    :cond_1f
    return-void
.end method
