.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;,
        Lcom/android/server/am/ProcessList$KillHandler;,
        Lcom/android/server/am/ProcessList$MyProcessMap;,
        Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;,
        Lcom/android/server/am/ProcessList$IsolatedUidRange;
    }
.end annotation


# static fields
.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_IMPORTANCE_LEVELS:I = 0x5

.field static final CACHED_APP_LMK_FIRST_ADJ:I = 0x3b6

.field static final CACHED_APP_MAX_ADJ:I = 0x3e7

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field static final LMK_GETKILLCNT:B = 0x4t

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCPURGE:B = 0x3t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERCEPTIBLE_LOW_APP_ADJ:I = 0xfa

.field static final PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ:I = 0x32

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

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

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field static sKillThread:Lcom/android/server/ServiceThread;

.field private static sLmkdInputStream:Ljava/io/InputStream;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation
.end field

.field private static sLmkdOutputStream:Ljava/io/OutputStream;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation
.end field

.field private static sLmkdSocket:Landroid/net/LocalSocket;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation
.end field

.field private static sLmkdSocketLock:Ljava/lang/Object;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mHaveDisplaySize:Z

.field final mIsolatedProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field final mPendingStarts:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mProcStartSeqCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field mProcStateSeqCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 285
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 286
    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 316
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocketLock:Ljava/lang/Object;

    .line 987
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 1011
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 1019
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1027
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 1035
    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 1043
    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 1051
    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
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

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 291
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 297
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 303
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 308
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 340
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 347
    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 355
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 373
    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 378
    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 385
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 390
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 395
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 507
    new-instance v1, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v2, 0x182b8

    const v3, 0x1869f

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 514
    new-instance v1, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v2, 0x15f90

    const v3, 0x182b7

    const/16 v4, 0x64

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 522
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 530
    new-instance v1, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 573
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 574
    .local v1, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 575
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 576
    invoke-direct {p0, v0, v0, v0}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 577
    return-void

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 1
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 1128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1129
    return-void
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .line 905
    const/4 v0, 0x0

    .local v0, "j":I
    const/16 v1, 0xa

    .local v1, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 906
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 907
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 905
    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 910
    .end local v0    # "j":I
    .end local v1    # "fact":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 911
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

    .line 710
    sub-int v0, p3, p4

    .line 711
    .local v0, "diff":I
    if-nez v0, :cond_2

    .line 712
    if-eqz p5, :cond_0

    .line 713
    return-object p1

    .line 715
    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 716
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 718
    :cond_2
    const/16 v1, 0xa

    const-string v2, "+"

    if-ge v0, v1, :cond_4

    .line 719
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

    .line 721
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

    .line 1434
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1435
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1437
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

    .line 1439
    :cond_0
    return-void
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 3
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 1119
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    .line 1121
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    .line 1122
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1125
    :cond_0
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .line 705
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .locals 9
    .param p0, "procState"    # I
    .param p1, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .line 1135
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    .line 1136
    .local v0, "memState":I
    if-eqz p1, :cond_3

    .line 1137
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v1, :cond_0

    .line 1138
    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1139
    .local v1, "highestMemState":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1140
    .local v2, "first":Z
    :goto_1
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1141
    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 1142
    if-eqz v2, :cond_2

    .line 1143
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    .local v4, "scalingFactor":F
    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2

    .line 1145
    .end local v4    # "scalingFactor":F
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v4, v3, v0

    .line 1146
    .restart local v4    # "scalingFactor":F
    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 1148
    .end local v1    # "highestMemState":I
    :goto_2
    goto :goto_3

    .line 1149
    .end local v2    # "first":Z
    .end local v4    # "scalingFactor":F
    :cond_3
    const/4 v2, 0x1

    .line 1150
    .restart local v2    # "first":Z
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1152
    .restart local v4    # "scalingFactor":F
    :goto_3
    if-eqz p2, :cond_5

    .line 1153
    if-eqz v2, :cond_4

    .line 1154
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4

    .line 1155
    :cond_4
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4

    .line 1156
    :cond_5
    if-eqz v2, :cond_7

    .line 1157
    if-eqz p3, :cond_6

    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4

    .line 1158
    :cond_7
    if-eqz p3, :cond_8

    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    :goto_4
    nop

    .line 1159
    .local v1, "table":[J
    aget-wide v5, v1, v0

    long-to-float v3, v5

    mul-float/2addr v3, v4

    float-to-long v5, v3

    .line 1160
    .local v5, "delay":J
    const-wide/32 v7, 0x36ee80

    cmp-long v3, v5, v7

    if-lez v3, :cond_9

    .line 1161
    const-wide/32 v5, 0x36ee80

    .line 1163
    :cond_9
    add-long v7, p4, v5

    return-wide v7
.end method

.method private createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1898
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1901
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    .line 1902
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 1904
    .local v2, "appZygote":Landroid/os/AppZygote;
    if-nez v2, :cond_1

    .line 1905
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_0

    .line 1906
    const-string v3, "ActivityManager"

    const-string v4, "Creating new app zygote."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 1910
    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v5

    .line 1909
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v3

    .line 1911
    .local v3, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1914
    .local v4, "userId":I
    iget v5, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 1915
    .local v5, "firstUid":I
    iget v6, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v4, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 1916
    .local v6, "lastUid":I
    new-instance v7, Landroid/content/pm/ApplicationInfo;

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, v8}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 1923
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1924
    iput v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1925
    new-instance v8, Landroid/os/AppZygote;

    invoke-direct {v8, v7, v1, v5, v6}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;III)V

    move-object v2, v8

    .line 1926
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1927
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1928
    .local v8, "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    nop

    .end local v3    # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .end local v4    # "userId":I
    .end local v5    # "firstUid":I
    .end local v6    # "lastUid":I
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 1930
    .end local v8    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_1
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_2

    .line 1931
    const-string v3, "ActivityManager"

    const-string v4, "Reusing existing app zygote."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1934
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v8, v3

    .line 1940
    .restart local v8    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_0
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 1943
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

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .locals 6
    .param p0, "min_oom_adj"    # I
    .param p1, "max_oom_adj"    # I

    .line 1233
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1234
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1235
    .local v1, "repl":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1236
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1237
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1238
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1239
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 1240
    .local v3, "i":I
    if-eq v3, v2, :cond_0

    .line 1241
    const-string v2, "ActivityManager"

    const-string v5, "Failed to get kill count, code mismatch"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return-object v4

    .line 1244
    :cond_0
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 1246
    .end local v3    # "i":I
    :cond_1
    return-object v4
.end method

.method private getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2511
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2515
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2516
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2515
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    return-object v0

    .line 2513
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object v0
.end method

.method private handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .locals 8
    .param p1, "pending"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "startResult"    # Landroid/os/Process$ProcessStartResult;
    .param p3, "expectedStartSeq"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2138
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2139
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne v0, v1, :cond_0

    .line 2140
    iget-boolean v0, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2143
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2145
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

.method private isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "expectedStartSeq"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2114
    const/4 v0, 0x0

    .line 2115
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v1, :cond_1

    .line 2116
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2117
    :cond_0
    const-string/jumbo v1, "killedByAm=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_3

    .line 2120
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2121
    :cond_2
    const-string v1, "No entry in mProcessNames;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    :cond_3
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-nez v1, :cond_5

    .line 2124
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2125
    :cond_4
    const-string/jumbo v1, "pendingStart=false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2127
    :cond_5
    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_7

    .line 2128
    if-nez v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2129
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

    .line 2131
    :cond_7
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method static killProcessGroup(II)V
    .locals 2
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 1329
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_0

    .line 1330
    const/16 v1, 0xfa0

    .line 1331
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1330
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1333
    :cond_0
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 1336
    :goto_0
    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .locals 7
    .param p0, "setAdj"    # I
    .param p1, "compact"    # Z

    .line 725
    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    .line 726
    const/16 v5, 0x384

    const-string v1, "cch"

    const-string v2, "cch"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 728
    :cond_0
    const/16 v0, 0x320

    if-lt p0, v0, :cond_1

    .line 729
    const/4 v3, 0x0

    const/16 v5, 0x320

    const-string/jumbo v1, "svcb  "

    const-string/jumbo v2, "svcb"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 731
    :cond_1
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_2

    .line 732
    const/4 v3, 0x0

    const/16 v5, 0x2bc

    const-string/jumbo v1, "prev  "

    const-string/jumbo v2, "prev"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 734
    :cond_2
    const/16 v0, 0x258

    if-lt p0, v0, :cond_3

    .line 735
    const/4 v3, 0x0

    const/16 v5, 0x258

    const-string v1, "home  "

    const-string v2, "home"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 737
    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    .line 738
    const/4 v3, 0x0

    const/16 v5, 0x1f4

    const-string/jumbo v1, "svc   "

    const-string/jumbo v2, "svc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 740
    :cond_4
    const/16 v0, 0x190

    if-lt p0, v0, :cond_5

    .line 741
    const/4 v3, 0x0

    const/16 v5, 0x190

    const-string v1, "hvy   "

    const-string v2, "hvy"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 743
    :cond_5
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6

    .line 744
    const/4 v3, 0x0

    const/16 v5, 0x12c

    const-string v1, "bkup  "

    const-string v2, "bkup"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 746
    :cond_6
    const/16 v0, 0xfa

    if-lt p0, v0, :cond_7

    .line 747
    const/4 v3, 0x0

    const/16 v5, 0xfa

    const-string/jumbo v1, "prcl  "

    const-string/jumbo v2, "prcl"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 749
    :cond_7
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_8

    .line 750
    const/4 v3, 0x0

    const/16 v5, 0xc8

    const-string/jumbo v1, "prcp  "

    const-string/jumbo v2, "prcp"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 752
    :cond_8
    const/16 v0, 0x64

    if-lt p0, v0, :cond_9

    .line 753
    const/16 v5, 0x64

    const-string/jumbo v1, "vis"

    const-string/jumbo v2, "vis"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 755
    :cond_9
    if-ltz p0, :cond_a

    .line 756
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v1, "fore  "

    const-string v2, "fore"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 758
    :cond_a
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_b

    .line 759
    const/4 v3, 0x0

    const/16 v5, -0x2bc

    const-string/jumbo v1, "psvc  "

    const-string/jumbo v2, "psvc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 761
    :cond_b
    const/16 v0, -0x320

    if-lt p0, v0, :cond_c

    .line 762
    const/4 v3, 0x0

    const/16 v5, -0x320

    const-string/jumbo v1, "pers  "

    const-string/jumbo v2, "pers"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 764
    :cond_c
    const/16 v0, -0x384

    if-lt p0, v0, :cond_d

    .line 765
    const/4 v3, 0x0

    const/16 v5, -0x384

    const-string/jumbo v1, "sys   "

    const-string/jumbo v2, "sys"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 767
    :cond_d
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_e

    .line 768
    const/4 v3, 0x0

    const/16 v5, -0x3e8

    const-string/jumbo v1, "ntv  "

    const-string/jumbo v2, "ntv"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 771
    :cond_e
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 1
    .param p0, "curProcState"    # I

    .line 852
    const/16 v0, 0x3eb

    packed-switch p0, :pswitch_data_0

    .line 900
    const/16 v0, 0x3e6

    return v0

    .line 896
    :pswitch_0
    const/16 v0, 0x3fb

    return v0

    .line 894
    :pswitch_1
    const/16 v0, 0x3fa

    return v0

    .line 892
    :pswitch_2
    const/16 v0, 0x3f9

    return v0

    .line 890
    :pswitch_3
    const/16 v0, 0x3f8

    return v0

    .line 888
    :pswitch_4
    const/16 v0, 0x3f7

    return v0

    .line 886
    :pswitch_5
    const/16 v0, 0x3f6

    return v0

    .line 884
    :pswitch_6
    const/16 v0, 0x3f5

    return v0

    .line 878
    :pswitch_7
    const/16 v0, 0x3f4

    return v0

    .line 868
    :pswitch_8
    const/16 v0, 0x3f3

    return v0

    .line 882
    :pswitch_9
    const/16 v0, 0x3f2

    return v0

    .line 880
    :pswitch_a
    const/16 v0, 0x3f1

    return v0

    .line 876
    :pswitch_b
    const/16 v0, 0x3f0

    return v0

    .line 874
    :pswitch_c
    const/16 v0, 0x3ef

    return v0

    .line 872
    :pswitch_d
    const/16 v0, 0x3ee

    return v0

    .line 870
    :pswitch_e
    const/16 v0, 0x3ed

    return v0

    .line 866
    :pswitch_f
    const/16 v0, 0x3ec

    return v0

    .line 864
    :pswitch_10
    return v0

    .line 862
    :pswitch_11
    const/16 v0, 0x3fc

    return v0

    .line 860
    :pswitch_12
    return v0

    .line 858
    :pswitch_13
    const/16 v0, 0x3ea

    return v0

    .line 856
    :pswitch_14
    const/16 v0, 0x3e9

    return v0

    .line 854
    :pswitch_15
    const/16 v0, 0x3e8

    return v0

    .line 898
    :pswitch_16
    const/16 v0, 0x3e7

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
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

    .line 777
    packed-switch p0, :pswitch_data_0

    .line 845
    const-string v0, "??"

    .local v0, "procState":Ljava/lang/String;
    goto :goto_0

    .line 842
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string v0, "NONE"

    .line 843
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 839
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CEM "

    .line 840
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 836
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CRE "

    .line 837
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 833
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CACC"

    .line 834
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 830
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CAC "

    .line 831
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 827
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "LAST"

    .line 828
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 824
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "HOME"

    .line 825
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 821
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "HVY "

    .line 822
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 818
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "TPSL"

    .line 819
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 815
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "RCVR"

    .line 816
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 812
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "SVC "

    .line 813
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 809
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "BKUP"

    .line 810
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 806
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "TRNB"

    .line 807
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 803
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "IMPB"

    .line 804
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 800
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "IMPF"

    .line 801
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 797
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "BFGS"

    .line 798
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 794
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_10
    const-string v0, "FGS "

    .line 795
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 791
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_11
    const-string v0, "BTOP"

    .line 792
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 788
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_12
    const-string v0, "FGSL"

    .line 789
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 785
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_13
    const-string v0, "TOP "

    .line 786
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 782
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_14
    const-string v0, "PERU"

    .line 783
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 779
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_15
    const-string v0, "PER "

    .line 780
    .restart local v0    # "procState":Ljava/lang/String;
    nop

    .line 848
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    .line 1115
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    return-wide v0
.end method

.method private static openLmkdSocketLS()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation

    .line 1252
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1253
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "lmkd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1256
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    .line 1257
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    nop

    .line 1264
    const/4 v0, 0x1

    return v0

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1261
    const/4 v1, 0x0

    return v1
.end method

.method private static procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .locals 2
    .param p0, "procState"    # I
    .param p1, "memAdj"    # I
    .param p2, "currApp"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"    # I

    .line 3201
    invoke-static {p0, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v0

    .line 3203
    .local v0, "imp":I
    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    .line 3204
    iput p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_0

    .line 3206
    :cond_0
    const/4 v1, 0x0

    iput v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 3208
    :goto_0
    return v0
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .line 1111
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

.method private static readLmkdReplyLS(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation

    .line 1286
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1287
    .local v1, "len":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    .line 1288
    const/4 v0, 0x1

    return v0

    .line 1292
    :cond_0
    goto :goto_0

    .line 1290
    .end local v1    # "len":I
    :catch_0
    move-exception v1

    .line 1291
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error reading from lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1295
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1296
    return v0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    .line 1220
    if-gtz p0, :cond_0

    .line 1221
    return-void

    .line 1223
    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1224
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1225
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1226
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1227
    return-void
.end method

.method private removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1870
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 1872
    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 1871
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 1873
    .local v0, "appUidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    if-eqz v0, :cond_0

    .line 1874
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 1877
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 1878
    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v3

    .line 1877
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AppZygote;

    .line 1879
    .local v1, "appZygote":Landroid/os/AppZygote;
    if-eqz v1, :cond_2

    .line 1880
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1881
    .local v2, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1882
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1883
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1884
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v3, :cond_1

    .line 1887
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;)V

    goto :goto_0

    .line 1889
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1890
    .local v3, "msg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1891
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1895
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

    .line 1195
    if-gtz p0, :cond_0

    .line 1196
    return-void

    .line 1198
    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    .line 1199
    return-void

    .line 1201
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1202
    .local v0, "start":J
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1203
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1204
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1205
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1206
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1207
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1209
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 1210
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

    .line 1213
    :cond_2
    return-void
.end method

.method private startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .locals 27
    .param p1, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "mountExternal"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "requiredAbi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "invokeWith"    # Ljava/lang/String;
    .param p12, "startTime"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v3, p12

    .line 1951
    const-wide/16 v5, 0x40

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start proc: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1953
    const-string/jumbo v0, "startProcess: asking zygote to start proc"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1955
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v7, "seq="

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    .line 1956
    :try_start_1
    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v22, 0x0

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v8

    move-object/from16 v10, p2

    move/from16 v12, p4

    move/from16 v13, p4

    move-object v7, v14

    move-object/from16 v14, p5

    move-object v8, v15

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, v0

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v21, v8

    move-object/from16 v23, v7

    move-object/from16 v24, v9

    invoke-static/range {v10 .. v24}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    goto/16 :goto_0

    .line 1961
    .end local v0    # "startResult":Landroid/os/Process$ProcessStartResult;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1962
    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v0

    .line 1964
    .local v0, "appZygote":Landroid/os/AppZygote;
    invoke-virtual {v0}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v10

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v23, 0x0

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v25, 0x0

    new-array v9, v9, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v8

    move-object/from16 v11, p2

    move-object v5, v13

    move/from16 v13, p4

    move-object v6, v14

    move/from16 v14, p4

    move v7, v15

    move-object/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, v7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move-object/from16 v21, p10

    move-object/from16 v22, v6

    move-object/from16 v24, v5

    move-object/from16 v26, v9

    invoke-virtual/range {v10 .. v26}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v5

    move-object v0, v5

    .line 1970
    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_0

    .line 1971
    .end local v0    # "startResult":Landroid/os/Process$ProcessStartResult;
    :cond_1
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-array v14, v9, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v8

    move-object/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v13, p8

    move-object/from16 v19, v14

    move-object/from16 v14, p9

    move-object/from16 v18, v15

    move-object/from16 v15, p10

    move-object/from16 v16, v0

    move-object/from16 v17, p11

    invoke-static/range {v5 .. v19}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 1980
    .restart local v0    # "startResult":Landroid/os/Process$ProcessStartResult;
    :goto_0
    iget v5, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-static {v2, v5}, Lcom/android/server/am/OpBGFrozenInjector;->startProcessEvent(Lcom/android/server/am/ProcessRecord;I)V

    .line 1983
    const-string/jumbo v5, "startProcess: returned from zygote!"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1984
    nop

    .line 1986
    const-wide/16 v5, 0x40

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1984
    return-object v0

    .line 1986
    .end local v0    # "startResult":Landroid/os/Process$ProcessStartResult;
    :catchall_0
    move-exception v0

    const-wide/16 v5, 0x40

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V
    .locals 16
    .param p1, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "topI"    # I
    .param p3, "bottomI"    # I
    .param p4, "endIndex"    # I

    .line 2787
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v3

    if-nez v3, :cond_24

    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v3, :cond_24

    .line 2788
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_f

    .line 2794
    :cond_0
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2795
    .local v3, "uid":I
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    const-string v5, " group="

    const-string v6, " @ "

    const-string v7, "ActivityManager"

    if-lez v4, :cond_b

    .line 2796
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 2797
    .local v4, "endImportance":I
    move/from16 v8, p4

    move/from16 v9, p4

    .end local p4    # "endIndex":I
    .local v8, "i":I
    .local v9, "endIndex":I
    :goto_0
    if-lt v8, v2, :cond_a

    .line 2798
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 2799
    .local v10, "subProc":Lcom/android/server/am/ProcessRecord;
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v3, :cond_9

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v11, v12, :cond_9

    .line 2801
    if-ne v8, v9, :cond_2

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-lt v11, v4, :cond_2

    .line 2805
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Keeping in-place above "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " endImportance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 2810
    :cond_1
    add-int/lit8 v9, v9, -0x1

    .line 2811
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto/16 :goto_3

    .line 2815
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

    .line 2819
    :cond_3
    const/4 v11, 0x0

    .line 2820
    .local v11, "moved":Z
    move/from16 v12, p2

    .local v12, "pos":I
    :goto_1
    const-string v13, " from position "

    const-string v14, "Moving "

    if-le v12, v9, :cond_6

    .line 2821
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 2822
    .local v15, "posProc":Lcom/android/server/am/ProcessRecord;
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 p4, v4

    .end local v4    # "endImportance":I
    .local p4, "endImportance":I
    iget v4, v15, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-gt v1, v4, :cond_5

    .line 2824
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2825
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2826
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to above "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    :cond_4
    const/4 v11, 0x1

    .line 2831
    add-int/lit8 v9, v9, -0x1

    .line 2832
    goto :goto_2

    .line 2820
    .end local v15    # "posProc":Lcom/android/server/am/ProcessRecord;
    :cond_5
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v1, p1

    move/from16 v4, p4

    goto :goto_1

    .end local p4    # "endImportance":I
    .restart local v4    # "endImportance":I
    :cond_6
    move/from16 p4, v4

    .line 2835
    .end local v4    # "endImportance":I
    .end local v12    # "pos":I
    .restart local p4    # "endImportance":I
    :goto_2
    if-nez v11, :cond_8

    .line 2837
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2838
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    add-int/lit8 v4, v9, -0x1

    invoke-virtual {v1, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2839
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to end of group @ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    :cond_7
    add-int/lit8 v9, v9, -0x1

    .line 2844
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move v4, v1

    .end local p4    # "endImportance":I
    .local v1, "endImportance":I
    goto :goto_3

    .line 2835
    .end local v1    # "endImportance":I
    .restart local p4    # "endImportance":I
    :cond_8
    move/from16 v4, p4

    goto :goto_3

    .line 2799
    .end local v11    # "moved":Z
    .end local p4    # "endImportance":I
    .restart local v4    # "endImportance":I
    :cond_9
    move/from16 p4, v4

    .line 2797
    .end local v4    # "endImportance":I
    .end local v10    # "subProc":Lcom/android/server/am/ProcessRecord;
    .restart local p4    # "endImportance":I
    move/from16 v4, p4

    .end local p4    # "endImportance":I
    .restart local v4    # "endImportance":I
    :goto_3
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_a
    move/from16 p4, v4

    .end local v4    # "endImportance":I
    .restart local p4    # "endImportance":I
    goto :goto_4

    .line 2795
    .end local v8    # "i":I
    .end local v9    # "endIndex":I
    .local p4, "endIndex":I
    :cond_b
    move/from16 v9, p4

    .line 2853
    .end local p4    # "endIndex":I
    .restart local v9    # "endIndex":I
    :goto_4
    move v1, v9

    .line 2854
    .local v1, "i":I
    :goto_5
    if-lt v1, v2, :cond_23

    .line 2855
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2856
    .local v4, "subProc":Lcom/android/server/am/ProcessRecord;
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Looking to spread old procs, at "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_c
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, v3, :cond_22

    .line 2862
    if-ge v1, v9, :cond_1b

    .line 2863
    const/4 v8, 0x0

    .line 2864
    .local v8, "hasActivity":Z
    const/4 v10, 0x0

    .line 2865
    .local v10, "connUid":I
    const/4 v11, 0x0

    .line 2866
    .local v11, "connGroup":I
    :goto_6
    if-lt v1, v2, :cond_1b

    .line 2867
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2868
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2869
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Different app, moving to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    :cond_d
    add-int/lit8 v1, v1, -0x1

    .line 2872
    if-ge v1, v2, :cond_e

    .line 2873
    goto/16 :goto_a

    .line 2875
    :cond_e
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v4, v12

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2876
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_f

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Looking at next app at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    :cond_f
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v12

    if-nez v12, :cond_17

    iget-boolean v12, v4, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v12, :cond_10

    goto/16 :goto_8

    .line 2888
    :cond_10
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 2889
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_11

    const-string v12, "This is a client of an activity"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    :cond_11
    if-eqz v8, :cond_15

    .line 2892
    if-eqz v10, :cond_14

    iget-object v12, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v10, v12, :cond_12

    goto :goto_7

    .line 2899
    :cond_12
    if-eqz v11, :cond_13

    iget v12, v4, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eq v11, v12, :cond_1a

    .line 2902
    :cond_13
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_1b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Already found a different group: connGroup="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2895
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

    iget-object v13, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2908
    :cond_15
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_16

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This is an activity client!  uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    :cond_16
    const/4 v8, 0x1

    .line 2912
    iget-object v12, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2913
    iget v11, v4, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    goto :goto_9

    .line 2879
    :cond_17
    :goto_8
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_18

    const-string v12, "This is hosting an activity!"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_18
    if-eqz v8, :cond_19

    .line 2883
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_1b

    const-string v12, "Already found an activity, done"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2887
    :cond_19
    const/4 v8, 0x1

    .line 2916
    :cond_1a
    :goto_9
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_6

    .line 2923
    .end local v8    # "hasActivity":Z
    .end local v10    # "connUid":I
    .end local v11    # "connGroup":I
    :cond_1b
    :goto_a
    add-int/lit8 v9, v9, -0x1

    if-lt v9, v2, :cond_1d

    .line 2924
    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 2925
    .local v8, "endProc":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v10, v3, :cond_1c

    .line 2926
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v10, :cond_1d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found next group of app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2925
    .end local v8    # "endProc":Lcom/android/server/am/ProcessRecord;
    :cond_1c
    goto :goto_a

    .line 2932
    :cond_1d
    :goto_b
    if-lt v9, v2, :cond_20

    .line 2933
    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 2934
    .restart local v8    # "endProc":Lcom/android/server/am/ProcessRecord;
    :goto_c
    add-int/lit8 v9, v9, -0x1

    if-lt v9, v2, :cond_20

    .line 2935
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 2936
    .local v10, "nextEndProc":Lcom/android/server/am/ProcessRecord;
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v3, :cond_1f

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v12, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eq v11, v12, :cond_1e

    goto :goto_d

    .end local v10    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    :cond_1e
    goto :goto_c

    .line 2938
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

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    .end local v8    # "endProc":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    :cond_20
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v8, :cond_21

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bumping scan position to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :cond_21
    move v1, v9

    goto :goto_e

    .line 2949
    :cond_22
    add-int/lit8 v1, v1, -0x1

    .line 2951
    .end local v4    # "subProc":Lcom/android/server/am/ProcessRecord;
    :goto_e
    goto/16 :goto_5

    .line 2952
    :cond_23
    return-void

    .line 2791
    .end local v1    # "i":I
    .end local v3    # "uid":I
    .end local v9    # "endIndex":I
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

    .line 606
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v3, 0x15e

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43af0000    # 350.0f

    div-float/2addr v1, v2

    .line 609
    .local v1, "scaleMem":F
    const v2, 0x5dc00

    .line 610
    .local v2, "minSize":I
    const v3, 0xfa000

    .line 611
    .local v3, "maxSize":I
    mul-int v4, p1, p2

    int-to-float v4, v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 618
    .local v4, "scaleDisp":F
    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 619
    .local v5, "scale":F
    :goto_0
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 620
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 621
    :cond_2
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 623
    .local v6, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0072

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 629
    .local v7, "minfree_abs":I
    sget-object v8, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v8, v8

    const/4 v10, 0x1

    if-lez v8, :cond_3

    move v8, v10

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 631
    .local v8, "is64bit":Z
    :goto_2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v12

    const/4 v13, 0x4

    if-ge v11, v12, :cond_6

    .line 632
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v12, v12, v11

    .line 633
    .local v12, "low":I
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v14, v14, v11

    .line 634
    .local v14, "high":I
    if-eqz v8, :cond_5

    .line 636
    if-ne v11, v13, :cond_4

    mul-int/lit8 v13, v14, 0x3

    div-int/lit8 v14, v13, 0x2

    goto :goto_4

    .line 637
    :cond_4
    const/4 v15, 0x5

    if-ne v11, v15, :cond_5

    mul-int/lit8 v15, v14, 0x7

    div-int/lit8 v14, v15, 0x4

    .line 639
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

    .line 631
    .end local v12    # "low":I
    .end local v14    # "high":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 642
    .end local v11    # "i":I
    :cond_6
    if-ltz v7, :cond_7

    .line 643
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_7

    .line 644
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

    .line 643
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 649
    .end local v9    # "i":I
    :cond_7
    if-eqz v6, :cond_9

    .line 650
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_9

    .line 651
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

    .line 653
    aget v11, v12, v9

    if-gez v11, :cond_8

    .line 654
    const/4 v11, 0x0

    aput v11, v12, v9

    .line 650
    :cond_8
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x4

    goto :goto_6

    .line 662
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

    .line 671
    mul-int v9, p1, p2

    const/4 v11, 0x4

    mul-int/2addr v9, v11

    mul-int/2addr v9, v11

    div-int/lit16 v9, v9, 0x400

    .line 673
    .local v9, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e005f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 675
    .local v11, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e005e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 678
    .local v12, "reserve_abs":I
    if-ltz v12, :cond_a

    .line 679
    move v9, v12

    .line 682
    :cond_a
    if-eqz v11, :cond_b

    .line 683
    add-int/2addr v9, v11

    .line 684
    if-gez v9, :cond_b

    .line 685
    const/4 v9, 0x0

    .line 689
    :cond_b
    if-eqz p3, :cond_d

    .line 690
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v10

    const/4 v10, 0x4

    mul-int/2addr v13, v10

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 691
    .local v10, "buf":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 692
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_7
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v14, v14

    if-ge v13, v14, :cond_c

    .line 693
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v14, v13

    mul-int/lit16 v14, v14, 0x400

    div-int/lit16 v14, v14, 0x1000

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 694
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v14, v14, v13

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 692
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 697
    .end local v13    # "i":I
    :cond_c
    const/4 v13, 0x0

    invoke-static {v10, v13}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 698
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "sys.sysctl.extra_free_kbytes"

    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .end local v10    # "buf":Ljava/nio/ByteBuffer;
    :cond_d
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "repl"    # Ljava/nio/ByteBuffer;

    .line 1300
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 1302
    :try_start_0
    sget-object v3, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v3, :cond_1

    .line 1303
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocketLS()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 1305
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    goto :goto_1

    .line 1306
    :catch_0
    move-exception v2

    .line 1308
    goto :goto_1

    .line 1312
    :cond_0
    const/4 v3, 0x4

    :try_start_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1313
    .local v3, "purge_buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1314
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->writeLmkdCommandLS(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1316
    goto :goto_1

    .line 1319
    .end local v3    # "purge_buf":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-static {p0}, Lcom/android/server/am/ProcessList;->writeLmkdCommandLS(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/server/am/ProcessList;->readLmkdReplyLS(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1320
    :cond_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1301
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1323
    .end local v1    # "i":I
    :cond_4
    monitor-exit v0

    .line 1324
    const/4 v0, 0x0

    return v0

    .line 1323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static writeLmkdCommandLS(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation

    .line 1271
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    nop

    .line 1278
    const/4 v0, 0x1

    return v0

    .line 1272
    :catch_0
    move-exception v1

    .line 1273
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error writing to lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1275
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1276
    return v0
.end method


# virtual methods
.method final addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2470
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2471
    .local v0, "old":Lcom/android/server/am/ProcessRecord;
    const-string v1, "ActivityManager"

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-adding persistent process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2474
    :cond_0
    if-eqz v0, :cond_1

    .line 2475
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

    .line 2477
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 2478
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 2479
    new-instance v4, Lcom/android/server/am/UidRecord;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v4, v5}, Lcom/android/server/am/UidRecord;-><init>(I)V

    move-object v2, v4

    .line 2481
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

    .line 2483
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempWhitelist:[I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2484
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 2483
    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingTempWhitelist:Lcom/android/server/am/PendingTempWhitelists;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2485
    invoke-virtual {v1, v4}, Lcom/android/server/am/PendingTempWhitelists;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 2486
    :cond_3
    iput-boolean v3, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v3, v2, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    .line 2488
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    .line 2491
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/server/am/UidRecord;->packageName:Ljava/lang/String;

    .line 2493
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 2494
    iget v1, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v1}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    .line 2495
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 2497
    :cond_5
    iput-object v2, p1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 2500
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    .line 2501
    iget v1, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    .line 2502
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3, v4, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    .line 2503
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_6

    .line 2504
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2506
    :cond_6
    return-void
.end method

.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 592
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 595
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 596
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 597
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 598
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 601
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method clearAllDnsCacheLocked()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2703
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2704
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2705
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 2707
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2710
    goto :goto_1

    .line 2708
    :catch_0
    move-exception v2

    .line 2709
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

    .line 2703
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2713
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method collectProcessesLocked(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "start"    # I
    .param p2, "allPkgs"    # Z
    .param p3, "args"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

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

    .line 3300
    if-eqz p3, :cond_5

    array-length v0, p3

    if-le v0, p1, :cond_5

    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 3301
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    .line 3302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3303
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, -0x1

    .line 3305
    .local v1, "pid":I
    :try_start_0
    aget-object v2, p3, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 3307
    goto :goto_0

    .line 3306
    :catch_0
    move-exception v2

    .line 3308
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 3309
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3310
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v4, :cond_0

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, v1, :cond_0

    .line 3311
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3312
    :cond_0
    if-eqz p2, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    aget-object v5, p3, p1

    .line 3313
    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3314
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3315
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3316
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3308
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3319
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 3320
    const/4 v2, 0x0

    return-object v2

    .line 3322
    .end local v1    # "pid":I
    :cond_4
    goto :goto_3

    .line 3323
    .end local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3325
    .restart local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_3
    return-object v0
.end method

.method doStopUidForIdleUidsLocked()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3405
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 3406
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3407
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    .line 3408
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3409
    goto :goto_1

    .line 3411
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 3412
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v4, :cond_1

    .line 3413
    goto :goto_1

    .line 3415
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 3406
    .end local v2    # "uid":I
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3417
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3289
    const-string v0, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3290
    const-string v0, " total, non-act at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3291
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3292
    const-string v0, ", non-svc at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3293
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3294
    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3295
    return-void
.end method

.method fillInProcMemInfoLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "outInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3215
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 3216
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 3217
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isHeavyWeightProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3218
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3220
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3221
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3223
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3224
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3226
    :cond_2
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 3227
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 3228
    .local v0, "adj":I
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    .line 3229
    .local v2, "procState":I
    invoke-static {v2, v0, p2, p3}, Lcom/android/server/am/ProcessList;->procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v3

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 3231
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 3232
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 3233
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 3234
    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 3235
    return-void
.end method

.method findAppProcessLocked(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 7
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1415
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1416
    .local v0, "NP":I
    const/4 v1, 0x0

    .local v1, "ip":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1417
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1418
    .local v2, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1419
    .local v3, "NA":I
    const/4 v4, 0x0

    .local v4, "ia":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 1420
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1421
    .local v5, "p":Lcom/android/server/am/ProcessRecord;
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_0

    .line 1422
    return-object v5

    .line 1419
    .end local v5    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1416
    .end local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "NA":I
    .end local v4    # "ia":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1427
    .end local v1    # "ip":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find mystery application for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1427
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/4 v1, 0x0

    return-object v1
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .line 1180
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method final getLRURecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .line 3176
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3178
    .local v0, "threadBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3179
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3180
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 3181
    return-object v2

    .line 3178
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3184
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getLruSizeLocked()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3284
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMemLevel(I)J
    .locals 3
    .param p1, "adjustment"    # I

    .line 1167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1168
    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    .line 1167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1172
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

    .line 1402
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    .line 1403
    .local v0, "homeAppMem":J
    const/16 v2, 0x384

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    .line 1404
    .local v2, "cachedAppMem":J
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1405
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1406
    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1407
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

    .line 1408
    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 1409
    const/16 v4, 0x1f4

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 1410
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 1411
    invoke-virtual {p0, v5}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 1412
    return-void
.end method

.method final getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;
    .locals 12
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keepIfLarge"    # Z

    .line 1340
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_3

    .line 1344
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1345
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1346
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1347
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1348
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1349
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1351
    goto :goto_1

    .line 1353
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    return-object v4

    .line 1347
    .end local v3    # "procUid":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1356
    .end local v0    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v1    # "procCount":I
    .end local v2    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1373
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_6

    if-nez p3, :cond_6

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez v1, :cond_6

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v2, 0x190

    if-eq v1, v2, :cond_6

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_6

    .line 1380
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

    .line 1382
    :cond_4
    iget-wide v1, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_6

    .line 1383
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 1384
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    iget-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->reportCachedKill(Landroid/util/ArrayMap;J)V

    .line 1386
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "ipkg":I
    :goto_2
    if-ltz v1, :cond_5

    .line 1387
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v3

    .line 1388
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    const/16 v4, 0x11

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 1390
    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 1391
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1388
    invoke-static/range {v4 .. v11}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJ)I

    .line 1386
    .end local v3    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1395
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

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1398
    :cond_6
    return-object v0
.end method

.method getRunningAppProcessesLocked(ZIZII)Ljava/util/List;
    .locals 7
    .param p1, "allUsers"    # Z
    .param p2, "userId"    # I
    .param p3, "allUids"    # Z
    .param p4, "callingUid"    # I
    .param p5, "clientTargetSdk"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZII)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 3241
    const/4 v0, 0x0

    .line 3243
    .local v0, "runList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 3244
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3245
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    if-nez p1, :cond_0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p2, :cond_6

    :cond_0
    if-nez p3, :cond_1

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, p4, :cond_1

    .line 3247
    goto :goto_2

    .line 3249
    :cond_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3251
    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3253
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 3254
    .local v3, "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0, v2, v3, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 3255
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    .line 3256
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3257
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 3258
    invoke-static {v4}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v4

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_1

    .line 3260
    :cond_2
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v4, :cond_3

    .line 3261
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 3263
    .local v4, "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v5

    .line 3264
    .local v5, "pid":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 3265
    iput v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3268
    .end local v4    # "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v5    # "pid":I
    :cond_3
    :goto_1
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v4, v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_4

    .line 3269
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 3273
    :cond_4
    if-nez v0, :cond_5

    .line 3274
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 3276
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3243
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3279
    .end local v1    # "i":I
    :cond_7
    return-object v0
.end method

.method getUidProcStateLocked(I)I
    .locals 2
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3389
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 3390
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v0, :cond_0

    const/16 v1, 0x15

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3396
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    return-object v0
.end method

.method handleAllTrustStorageUpdateLocked()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2717
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2718
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2719
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 2721
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2725
    goto :goto_1

    .line 2722
    :catch_0
    move-exception v2

    .line 2723
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

    .line 2717
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2728
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2152
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-wide/from16 v11, p4

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v11, v12}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2153
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v13

    .line 2154
    .local v13, "reason":Ljava/lang/String;
    const/4 v14, 0x0

    if-eqz v13, :cond_0

    .line 2155
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

    .line 2158
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2159
    invoke-static/range {p2 .. p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2160
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v3}, Landroid/os/Process;->killProcessGroup(II)I

    .line 2161
    return v14

    .line 2163
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    .line 2164
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: done updating battery stats"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2166
    const/16 v0, 0x753e

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    .line 2167
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

    .line 2168
    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 2169
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

    .line 2166
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2173
    invoke-static/range {p1 .. p2}, Lcom/android/server/am/OpAppRecordInjector;->processStart(Lcom/android/server/am/ProcessRecord;I)V

    .line 2177
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

    .line 2181
    goto :goto_1

    .line 2179
    :catch_0
    move-exception v0

    .line 2183
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2184
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v9}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    .line 2189
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->sendApplicationStart(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    .line 2192
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: building log message"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2193
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2194
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2195
    const-string v0, "Start proc "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2197
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2198
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2200
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    invoke-static {v3, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2201
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2202
    const-string v0, " ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2203
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    :cond_3
    const-string v0, " for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2209
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    const-string v6, "ActivityManager"

    invoke-virtual {v0, v6, v4, v5}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2213
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 2214
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2215
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2216
    iget-wide v4, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: starting to update pids map"

    invoke-direct {v1, v4, v5, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2218
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4

    .line 2219
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v5, v0

    .line 2220
    .local v5, "oldApp":Lcom/android/server/am/ProcessRecord;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2222
    if-eqz v5, :cond_5

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_5

    .line 2224
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

    .line 2229
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x1

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;ZZIZ)Z

    .line 2232
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->put(Lcom/android/server/am/ProcessRecord;)V

    .line 2233
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v6

    .line 2234
    if-nez p6, :cond_7

    .line 2235
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2236
    .local v0, "msg":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2237
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v10, :cond_6

    .line 2238
    const-wide/32 v7, 0x124f80

    goto :goto_2

    :cond_6
    const-wide/16 v7, 0x2710

    .line 2237
    :goto_2
    invoke-virtual {v4, v0, v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2243
    .end local v0    # "msg":Landroid/os/Message;
    :cond_7
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2244
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v4, v2}, Lcom/android/server/am/OpBGFrozenInjector;->addProc(IILcom/android/server/am/ProcessRecord;)V

    .line 2247
    :cond_8
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2248
    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: done updating pids map"

    invoke-direct {v1, v6, v7, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2251
    const-string v0, ""

    invoke-static {v15, v2, v0}, Lcom/android/server/am/OpAppBootManagerInjector;->trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 2253
    return v15

    .line 2247
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2220
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

    .line 3188
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3189
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3190
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 3192
    return v1

    .line 3188
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3195
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 580
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 581
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 583
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "ActivityManager:kill"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 586
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 587
    new-instance v0, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 589
    :cond_0
    return-void
.end method

.method killAllBackgroundProcessesExceptLocked(II)V
    .locals 8
    .param p1, "minTargetSdk"    # I
    .param p2, "maxProcState"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2642
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2643
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 2644
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2645
    .local v3, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 2646
    .local v4, "NA":I
    const/4 v5, 0x0

    .local v5, "ia":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 2647
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2648
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

    .line 2650
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2646
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2643
    .end local v3    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "NA":I
    .end local v5    # "ia":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2655
    .end local v2    # "ip":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2656
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 2657
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string/jumbo v7, "kill all background except"

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 2656
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2659
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;)V
    .locals 5
    .param p1, "appZygote"    # Landroid/os/AppZygote;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1856
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1857
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1858
    .local v1, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1860
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1861
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 1863
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    .line 1865
    :cond_0
    return-void
.end method

.method killPackageProcessesLocked(Ljava/lang/String;IIILjava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "minOomAdj"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2294
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ProcessList;->killPackageProcessesLocked(Ljava/lang/String;IIIZZZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final killPackageProcessesLocked(Ljava/lang/String;IIIZZZZZLjava/lang/String;)Z
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "minOomAdj"    # I
    .param p5, "callerWillRestart"    # Z
    .param p6, "allowRestart"    # Z
    .param p7, "doit"    # Z
    .param p8, "evenPersistent"    # Z
    .param p9, "setRemoved"    # Z
    .param p10, "reason"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2303
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2308
    .local v4, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 2309
    .local v5, "NP":I
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_0
    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ge v6, v5, :cond_d

    .line 2310
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 2311
    .local v10, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 2312
    .local v11, "NA":I
    const/4 v12, 0x0

    .local v12, "ia":I
    :goto_1
    if-ge v12, v11, :cond_c

    .line 2313
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 2314
    .local v13, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v14

    if-eqz v14, :cond_0

    if-nez p8, :cond_0

    .line 2316
    move/from16 v15, p4

    goto/16 :goto_3

    .line 2318
    :cond_0
    iget-boolean v14, v13, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v14, :cond_2

    .line 2319
    if-eqz p7, :cond_1

    .line 2320
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v15, p4

    goto :goto_3

    .line 2319
    :cond_1
    move/from16 v15, p4

    goto :goto_3

    .line 2326
    :cond_2
    iget v14, v13, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v15, p4

    if-ge v14, v15, :cond_3

    .line 2332
    goto :goto_3

    .line 2337
    :cond_3
    if-nez v1, :cond_5

    .line 2338
    if-eq v3, v8, :cond_4

    iget v14, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v14, v3, :cond_4

    .line 2339
    goto :goto_3

    .line 2341
    :cond_4
    if-ltz v2, :cond_9

    iget v14, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-eq v14, v2, :cond_9

    .line 2342
    goto :goto_3

    .line 2348
    :cond_5
    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v14, :cond_6

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    .line 2349
    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move v14, v9

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    .line 2350
    .local v14, "isDep":Z
    :goto_2
    if-nez v14, :cond_7

    iget v7, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v7, v2, :cond_7

    .line 2351
    goto :goto_3

    .line 2353
    :cond_7
    if-eq v3, v8, :cond_8

    iget v7, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v7, v3, :cond_8

    .line 2354
    goto :goto_3

    .line 2356
    :cond_8
    iget-object v7, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    if-nez v14, :cond_9

    .line 2357
    goto :goto_3

    .line 2362
    .end local v14    # "isDep":Z
    :cond_9
    if-nez p7, :cond_a

    .line 2363
    return v9

    .line 2365
    :cond_a
    if-eqz p9, :cond_b

    .line 2366
    iput-boolean v9, v13, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 2368
    :cond_b
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2312
    .end local v13    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_c
    move/from16 v15, p4

    .line 2309
    .end local v10    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v11    # "NA":I
    .end local v12    # "ia":I
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_d
    move/from16 v15, p4

    .line 2372
    .end local v6    # "ip":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2373
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v6, :cond_e

    .line 2374
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p10

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 2373
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p10

    .line 2378
    .end local v7    # "i":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2379
    .local v7, "zygotesToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/AppZygote;>;"
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    .line 2380
    .local v14, "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    const/16 v17, 0x0

    move/from16 v9, v17

    .local v9, "i":I
    :goto_6
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v9, v8, :cond_12

    .line 2381
    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 2382
    .local v8, "appZygoteUid":I
    move-object/from16 v18, v4

    const/4 v4, -0x1

    .end local v4    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v18, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eq v3, v4, :cond_f

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq v4, v3, :cond_f

    .line 2383
    goto :goto_7

    .line 2385
    :cond_f
    if-ltz v2, :cond_10

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v4, v2, :cond_10

    .line 2386
    goto :goto_7

    .line 2388
    :cond_10
    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AppZygote;

    .line 2389
    .local v4, "appZygote":Landroid/os/AppZygote;
    if-eqz v1, :cond_11

    .line 2390
    invoke-virtual {v4}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2391
    goto :goto_7

    .line 2393
    :cond_11
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2380
    .end local v4    # "appZygote":Landroid/os/AppZygote;
    .end local v8    # "appZygoteUid":I
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p2

    move-object/from16 v4, v18

    const/4 v8, -0x1

    goto :goto_6

    .end local v18    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v4, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_12
    move-object/from16 v18, v4

    .line 2395
    .end local v4    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v9    # "i":I
    .end local v14    # "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    .restart local v18    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move/from16 v2, p2

    const/4 v8, -0x1

    const/4 v9, 0x1

    goto :goto_5

    .line 2396
    .end local v18    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v4    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_13
    move-object/from16 v18, v4

    .end local v4    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v18    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AppZygote;

    .line 2397
    .local v4, "appZygote":Landroid/os/AppZygote;
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;)V

    .line 2398
    .end local v4    # "appZygote":Landroid/os/AppZygote;
    goto :goto_8

    .line 2399
    :cond_14
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "updateOomAdj_processEnd"

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2400
    if-lez v6, :cond_15

    const/16 v16, 0x1

    goto :goto_9

    :cond_15
    const/16 v16, 0x0

    :goto_9
    return v16
.end method

.method public synthetic lambda$startProcessLocked$0$ProcessList(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "startSeq"    # J
    .param p4, "invokeWith"    # Ljava/lang/String;
    .param p5, "entryPoint"    # Ljava/lang/String;
    .param p6, "gids"    # [I
    .param p7, "runtimeFlags"    # I
    .param p8, "mountExternal"    # I
    .param p9, "requiredAbi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-wide/from16 v11, p2

    .line 1798
    const/4 v14, 0x0

    :try_start_0
    iget-object v1, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1799
    invoke-direct/range {p0 .. p3}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v0

    .line 1804
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v3, "android.content.cts"

    .line 1805
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1807
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not valid anymore, don\'t start process, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iput-boolean v14, v13, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 1810
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1812
    :cond_0
    if-nez p4, :cond_2

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1813
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v14

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 1812
    :goto_1
    invoke-virtual {v13, v2}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 1814
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v11, v12, v13}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1815
    .end local v0    # "reason":Ljava/lang/String;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1816
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    iget v5, v13, Lcom/android/server/am/ProcessRecord;->startUid:I

    iget-object v9, v13, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    iget-wide v7, v13, Lcom/android/server/am/ProcessRecord;->startTime:J
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v1, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-object/from16 v6, p6

    move-wide/from16 v16, v7

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p4

    move-wide/from16 v13, v16

    :try_start_4
    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    move-object v1, v0

    .line 1819
    .local v1, "startResult":Landroid/os/Process$ProcessStartResult;
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1820
    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    :try_start_6
    invoke-direct {v15, v3, v1, v4, v5}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    .line 1821
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1832
    .end local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto/16 :goto_5

    .line 1821
    .restart local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    :goto_2
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "startSeq":J
    .end local p4    # "invokeWith":Ljava/lang/String;
    .end local p5    # "entryPoint":Ljava/lang/String;
    .end local p6    # "gids":[I
    .end local p7    # "runtimeFlags":I
    .end local p8    # "mountExternal":I
    .end local p9    # "requiredAbi":Ljava/lang/String;
    .end local p10    # "instructionSet":Ljava/lang/String;
    throw v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1822
    .end local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "startSeq":J
    .restart local p4    # "invokeWith":Ljava/lang/String;
    .restart local p5    # "entryPoint":Ljava/lang/String;
    .restart local p6    # "gids":[I
    .restart local p7    # "runtimeFlags":I
    .restart local p8    # "mountExternal":I
    .restart local p9    # "requiredAbi":Ljava/lang/String;
    .restart local p10    # "instructionSet":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    goto :goto_4

    .line 1815
    :catchall_2
    move-exception v0

    move-wide v4, v11

    move-object v3, v13

    :goto_3
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "startSeq":J
    .end local p4    # "invokeWith":Ljava/lang/String;
    .end local p5    # "entryPoint":Ljava/lang/String;
    .end local p6    # "gids":[I
    .end local p7    # "runtimeFlags":I
    .end local p8    # "mountExternal":I
    .end local p9    # "requiredAbi":Ljava/lang/String;
    .end local p10    # "instructionSet":Ljava/lang/String;
    throw v0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .line 1822
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "startSeq":J
    .restart local p4    # "invokeWith":Ljava/lang/String;
    .restart local p5    # "entryPoint":Ljava/lang/String;
    .restart local p6    # "gids":[I
    .restart local p7    # "runtimeFlags":I
    .restart local p8    # "mountExternal":I
    .restart local p9    # "requiredAbi":Ljava/lang/String;
    .restart local p10    # "instructionSet":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1815
    :catchall_3
    move-exception v0

    goto :goto_3

    .line 1822
    :catch_2
    move-exception v0

    move-wide v4, v11

    move-object v3, v13

    :goto_4
    move-object v1, v0

    .line 1823
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1824
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure starting process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1826
    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1827
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 1828
    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1829
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v25, "start failure"

    .line 1828
    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move/from16 v24, v7

    invoke-virtual/range {v16 .. v25}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1831
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1833
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_5
    return-void

    .line 1831
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method final newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 7
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "customProcess"    # Ljava/lang/String;
    .param p3, "isolated"    # Z
    .param p4, "isolatedUid"    # I
    .param p5, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2523
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2524
    .local v0, "proc":Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2525
    .local v1, "userId":I
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2526
    .local v2, "uid":I
    const/4 v3, 0x1

    if-eqz p3, :cond_4

    .line 2527
    if-nez p4, :cond_3

    .line 2528
    invoke-direct {p0, p1, p5}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v4

    .line 2529
    .local v4, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 2530
    return-object v5

    .line 2532
    :cond_1
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result v2

    .line 2533
    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 2534
    return-object v5

    .line 2536
    .end local v4    # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    :cond_2
    goto :goto_1

    .line 2539
    :cond_3
    move v2, p4

    .line 2541
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    .line 2549
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    .line 2553
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v4}, Lcom/android/server/am/OpAppRecordInjector;->addIsolatedUid(II)V

    .line 2556
    const/16 v4, 0x2b

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v5, v2, v3}, Landroid/util/StatsLog;->write(IIII)I

    .line 2559
    :cond_4
    new-instance v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, p1, v0, v2}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    .line 2561
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

    .line 2565
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 2566
    iput v5, v4, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 2567
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 2568
    const/16 v3, -0x320

    iput v3, v4, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 2570
    :cond_5
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 2573
    const/16 v3, -0x2bc

    iput v3, v4, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 2575
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2576
    return-object v4
.end method

.method final removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2257
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2258
    .local v0, "lrui":I
    if-ltz v0, :cond_5

    .line 2259
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v1, :cond_2

    .line 2260
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_0

    .line 2261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2263
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing process that hasn\'t been killed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v1, :cond_1

    .line 2265
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2266
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    goto :goto_0

    .line 2268
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2272
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-gt v0, v1, :cond_3

    .line 2273
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2275
    :cond_3
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-gt v0, v1, :cond_4

    .line 2282
    if-lez v1, :cond_4

    .line 2283
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2287
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2289
    :cond_5
    return-void
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"    # Z
    .param p3, "allowRestart"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2406
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2407
    .local v0, "name":Ljava/lang/String;
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2408
    .local v1, "uid":I
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const-string v3, "ActivityManager"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Force removing proc "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2408
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2412
    .local v2, "old":Lcom/android/server/am/ProcessRecord;
    const/4 v4, 0x0

    if-eq v2, p1, :cond_1

    .line 2414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring remove of inactive process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    return v4

    .line 2417
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2418
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 2420
    const/4 v3, 0x0

    .line 2421
    .local v3, "needRestart":Z
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v5, :cond_2

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v5, v6, :cond_3

    :cond_2
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v5, :cond_9

    iget-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-eqz v5, :cond_9

    .line 2423
    :cond_3
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2424
    .local v5, "pid":I
    if-lez v5, :cond_5

    .line 2425
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v6, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->remove(Lcom/android/server/am/ProcessRecord;)V

    .line 2426
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x14

    invoke-virtual {v6, v7, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2430
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2431
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6, v7}, Lcom/android/server/am/OpBGFrozenInjector;->removeProc(II)V

    .line 2435
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 2436
    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v6, :cond_5

    .line 2437
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 2438
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 2441
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Lcom/android/server/am/OpAppRecordInjector;->removeIsolatedUid(I)V

    .line 2442
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OpAppRecordInjector.removeIsolatedUid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppRecord"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    :cond_5
    const/4 v6, 0x0

    .line 2447
    .local v6, "willRestart":Z
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-boolean v7, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v7, :cond_7

    .line 2448
    if-nez p2, :cond_6

    .line 2449
    const/4 v6, 0x1

    goto :goto_0

    .line 2451
    :cond_6
    const/4 v3, 0x1

    .line 2454
    :cond_7
    :goto_0
    const/4 v7, 0x1

    invoke-virtual {p1, p4, v7}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 2455
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, p1, v6, p3}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 2456
    if-eqz v6, :cond_8

    .line 2457
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2458
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v4, v9}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 2460
    .end local v5    # "pid":I
    .end local v6    # "willRestart":Z
    :cond_8
    goto :goto_1

    .line 2461
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2463
    :goto_1
    return v3
.end method

.method final removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2581
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method final removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "expecting"    # Lcom/android/server/am/ProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2587
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2591
    .local v0, "old":Lcom/android/server/am/ProcessRecord;
    if-eqz p3, :cond_0

    if-ne v0, p3, :cond_1

    .line 2592
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2594
    :cond_1
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v1, :cond_4

    .line 2595
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget v2, v1, Lcom/android/server/am/UidRecord;->numProcs:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/UidRecord;->numProcs:I

    .line 2596
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget v1, v1, Lcom/android/server/am/UidRecord;->numProcs:I

    if-nez v1, :cond_3

    .line 2598
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No more processes in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 2601
    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    .line 2602
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 2603
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v2, 0x15

    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 2605
    :cond_3
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 2607
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2608
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 2610
    if-eqz p3, :cond_5

    move-object v1, p3

    goto :goto_0

    :cond_5
    move-object v1, v0

    .line 2611
    .local v1, "record":Lcom/android/server/am/ProcessRecord;
    :goto_0
    if-eqz v1, :cond_6

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz v2, :cond_6

    .line 2612
    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2615
    :cond_6
    return-object v0
.end method

.method sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3362
    const/4 v0, 0x0

    .line 3363
    .local v0, "foundProcess":Z
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 3364
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3365
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p3, :cond_3

    .line 3367
    :cond_0
    :try_start_0
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    .local v3, "index":I
    :goto_1
    if-ltz v3, :cond_2

    if-nez v0, :cond_2

    .line 3368
    aget-object v4, p2, v3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3369
    const/4 v0, 0x1

    .line 3367
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3372
    .end local v3    # "index":I
    :cond_2
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3374
    goto :goto_2

    .line 3373
    :catch_0
    move-exception v3

    .line 3363
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3378
    .end local v1    # "i":I
    :cond_4
    if-nez v0, :cond_5

    .line 3380
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3382
    goto :goto_3

    .line 3381
    :catch_1
    move-exception v1

    .line 3384
    :cond_5
    :goto_3
    return-void
.end method

.method setAllHttpProxy()V
    .locals 7

    .line 2682
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2683
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2684
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2688
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

    .line 2690
    :try_start_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2694
    goto :goto_1

    .line 2691
    :catch_0
    move-exception v3

    .line 2692
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

    .line 2683
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2697
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2698
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 2699
    return-void

    .line 2697
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;ZZIZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .locals 17
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "intentFlags"    # I
    .param p5, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p6, "allowWhileBooting"    # Z
    .param p7, "isolated"    # Z
    .param p8, "isolatedUid"    # I
    .param p9, "keepIfLarge"    # Z
    .param p10, "abiOverride"    # Ljava/lang/String;
    .param p11, "entryPoint"    # Ljava/lang/String;
    .param p12, "entryPointArgs"    # [Ljava/lang/String;
    .param p13, "crashHandler"    # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2007
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 2009
    .local v11, "startTime":J
    const/4 v0, 0x1

    const-string v13, "/"

    const/4 v14, 0x0

    const-string v15, "ActivityManager"

    if-nez v10, :cond_4

    .line 2010
    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v5, p9

    invoke-virtual {v6, v7, v1, v5}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 2011
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v2, "startProcess: after getProcessRecord"

    invoke-direct {v6, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2013
    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_1

    .line 2016
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v2, v8}, Lcom/android/server/am/AppErrors;->isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2017
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad process: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_0
    return-object v14

    .line 2026
    :cond_1
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing bad process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_2
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v2, v8}, Lcom/android/server/am/AppErrors;->resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2029
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v2, v8}, Lcom/android/server/am/AppErrors;->isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2030
    const/16 v2, 0x7540

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2031
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v14, 0x0

    aput-object v4, v3, v14

    iget v4, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v0, v3, v4

    .line 2030
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2033
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, v8}, Lcom/android/server/am/AppErrors;->clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2034
    if-eqz v1, :cond_3

    .line 2035
    iput-boolean v14, v1, Lcom/android/server/am/ProcessRecord;->bad:Z

    .line 2050
    :cond_3
    move-object v14, v1

    goto :goto_0

    .line 2041
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_4
    move/from16 v5, p9

    const/4 v1, 0x0

    move-object v14, v1

    .line 2050
    .local v14, "app":Lcom/android/server/am/ProcessRecord;
    :goto_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startProcess: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " knownToBeDead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " thread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    if-eqz v14, :cond_5

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    if-eqz v14, :cond_6

    iget v1, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_2

    :cond_6
    const/4 v1, -0x1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2050
    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    :cond_7
    if-eqz v14, :cond_d

    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_d

    .line 2055
    if-nez v9, :cond_8

    iget-boolean v0, v14, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_b

    .line 2058
    :cond_9
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App already running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_a
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v1, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2061
    const-string/jumbo v0, "startProcess: done, added package to proc"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2062
    return-object v14

    .line 2067
    :cond_b
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App died: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_c
    const-string/jumbo v0, "startProcess: bad proc running, killing"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2069
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v1, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 2070
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v14, v1, v1}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 2071
    const-string/jumbo v0, "startProcess: done killing old proc"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2074
    :cond_d
    if-nez v14, :cond_f

    .line 2075
    const-string/jumbo v0, "startProcess: creating new process record"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2076
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2077
    .end local v14    # "app":Lcom/android/server/am/ProcessRecord;
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_e

    .line 2078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed making new process record for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isolated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const/4 v1, 0x0

    return-object v1

    .line 2082
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    .line 2083
    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    .line 2084
    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    .line 2085
    const-string/jumbo v5, "startProcess: done creating new process record"

    invoke-direct {v6, v11, v12, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v14, v0

    goto :goto_3

    .line 2088
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_f
    move-object/from16 v3, p11

    move-object/from16 v4, p12

    move-object/from16 v2, p13

    const/4 v1, 0x0

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v1, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v14, v0, v1, v2, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2089
    const-string/jumbo v0, "startProcess: added package to existing proc"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2094
    :goto_3
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v0, :cond_12

    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2095
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    if-nez p6, :cond_12

    .line 2097
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2098
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2100
    :cond_10
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System not ready, putting on hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :cond_11
    const-string/jumbo v0, "startProcess: returning with proc on hold"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2103
    return-object v14

    .line 2106
    :cond_12
    const-string/jumbo v0, "startProcess: stepping in to startProcess"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2107
    move-object/from16 v0, p5

    move-object/from16 v1, p10

    invoke-virtual {v6, v14, v0, v1}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;Ljava/lang/String;)Z

    move-result v2

    .line 2108
    .local v2, "success":Z
    const-string/jumbo v5, "startProcess: done starting proc!"

    invoke-direct {v6, v11, v12, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2109
    if-eqz v2, :cond_13

    move-object/from16 v16, v14

    goto :goto_4

    :cond_13
    const/16 v16, 0x0

    :goto_4
    return-object v16
.end method

.method final startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1992
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;Ljava/lang/String;)Z

    .line 1993
    return-void
.end method

.method startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 28
    .param p1, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "mountExternal"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "requiredAbi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "invokeWith"    # Ljava/lang/String;
    .param p12, "startTime"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1768
    move-object/from16 v13, p0

    move-object/from16 v14, p3

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 1769
    const/4 v8, 0x0

    iput-boolean v8, v14, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 1770
    iput-boolean v8, v14, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 1771
    iput-boolean v8, v14, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 1772
    iget-wide v0, v14, Lcom/android/server/am/ProcessRecord;->startSeq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string/jumbo v1, "startProcessLocked processName:"

    const-string v9, "ActivityManager"

    if-eqz v0, :cond_0

    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with non-zero startSeq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v14, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :cond_0
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eqz v0, :cond_1

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with non-zero pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_1
    iget-wide v0, v13, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, v13, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    iput-wide v0, v14, Lcom/android/server/am/ProcessRecord;->startSeq:J

    move-wide v11, v0

    .line 1781
    .local v11, "startSeq":J
    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p8

    move-wide/from16 v5, p12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;J)V

    .line 1785
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1786
    iget-object v0, v13, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ColdStartInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/am/ColdStartInjector;

    move-result-object v0

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ColdStartInjector;->checkColdStart(Ljava/lang/String;)V

    .line 1789
    :cond_2
    if-nez p11, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1790
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v15

    .line 1789
    :goto_1
    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 1791
    iget-object v0, v13, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v11, v12, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1793
    iget-object v0, v13, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v0, :cond_6

    .line 1794
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Posting procStart msg for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1794
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_5
    iget-object v0, v13, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-wide v4, v11

    move-object/from16 v6, p11

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object v15, v10

    move/from16 v10, p7

    move-wide/from16 v16, v11

    .end local v11    # "startSeq":J
    .local v16, "startSeq":J
    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1834
    const/4 v10, 0x1

    return v10

    .line 1837
    .end local v16    # "startSeq":J
    .restart local v11    # "startSeq":J
    :cond_6
    move-wide/from16 v16, v11

    move v10, v15

    .end local v11    # "startSeq":J
    .restart local v16    # "startSeq":J
    :try_start_0
    invoke-direct/range {p0 .. p13}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 1841
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

    .line 1849
    nop

    .end local v0    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_2

    .line 1843
    :catch_0
    move-exception v0

    .line 1844
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure starting process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1846
    iput-boolean v8, v14, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 1847
    iget-object v1, v13, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget v3, v14, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v27, "start failure"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v26, v3

    invoke-virtual/range {v18 .. v27}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1850
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_7

    move v8, v10

    :cond_7
    return v8
.end method

.method final startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;Ljava/lang/String;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "abiOverride"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1998
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ZZLjava/lang/String;)Z
    .locals 30
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "disableHiddenApiChecks"    # Z
    .param p4, "mountExtStorageFull"    # Z
    .param p5, "abiOverride"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1452
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p5

    const-string v1, "@"

    const-string v2, "1"

    iget-boolean v0, v13, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 1453
    return v3

    .line 1455
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1456
    .local v11, "startTime":J
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v10, 0x0

    if-lez v0, :cond_2

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v4, :cond_2

    .line 1457
    const-string/jumbo v0, "startProcess: removing from pids map"

    invoke-direct {v15, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1458
    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityManagerService$PidMap;->remove(Lcom/android/server/am/ProcessRecord;)V

    .line 1459
    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v13}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1463
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1464
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v4}, Lcom/android/server/am/OpBGFrozenInjector;->removeProc(II)V

    .line 1468
    :cond_1
    const-string/jumbo v0, "startProcess: done removing from pids map"

    invoke-direct {v15, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1469
    invoke-virtual {v13, v10}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 1470
    const-wide/16 v4, 0x0

    iput-wide v4, v13, Lcom/android/server/am/ProcessRecord;->startSeq:J

    .line 1473
    :cond_2
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const-string v8, "ActivityManager"

    if-eqz v0, :cond_3

    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcessLocked removing on hold: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_3
    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# startProcessLocked # hostingType="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", hostingNameStr="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", app="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", abiOverride="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1480
    invoke-static {v0}, Lcom/android/server/am/OpAppBootManagerInjector;->myLog(Ljava/lang/String;)V

    .line 1482
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/server/am/OpAppBootManagerInjector;->canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1483
    return v10

    .line 1487
    :cond_4
    const-string/jumbo v0, "startProcess: starting to update cpu stats"

    invoke-direct {v15, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1488
    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1489
    const-string/jumbo v0, "startProcess: done updating cpu stats"

    invoke-direct {v15, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1493
    :try_start_0
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1494
    .local v0, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_c

    .line 1497
    .end local v0    # "userId":I
    nop

    .line 1499
    :try_start_1
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    move v4, v0

    .line 1500
    .local v4, "uid":I
    const/4 v5, 0x0

    .line 1501
    .local v5, "gids":[I
    const/4 v6, 0x0

    .line 1502
    .local v6, "mountExternal":I
    iget-boolean v0, v13, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_c

    if-nez v0, :cond_9

    .line 1503
    const/4 v9, 0x0

    .line 1505
    .local v9, "permGids":[I
    :try_start_2
    const-string/jumbo v0, "startProcess: getting gids from package manager"

    invoke-direct {v15, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1506
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1507
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    iget-object v7, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v3, 0x10000000

    :try_start_3
    iget v10, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v0, v7, v3, v10}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;II)[I

    move-result-object v3

    move-object v9, v3

    .line 1509
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p4, :cond_5

    .line 1510
    const/4 v3, 0x6

    .end local v6    # "mountExternal":I
    .local v3, "mountExternal":I
    goto :goto_0

    .line 1512
    .end local v3    # "mountExternal":I
    .restart local v6    # "mountExternal":I
    :cond_5
    const-class v3, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManagerInternal;

    .line 1514
    .local v3, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    iget-object v7, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    move v6, v7

    move v3, v6

    .line 1519
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v6    # "mountExternal":I
    .local v3, "mountExternal":I
    :goto_0
    nop

    .line 1525
    :try_start_4
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    const/4 v6, 0x3

    if-eqz v0, :cond_6

    .line 1526
    new-array v0, v6, [I

    const/4 v7, 0x0

    .end local v5    # "gids":[I
    .local v0, "gids":[I
    goto :goto_1

    .line 1528
    .end local v0    # "gids":[I
    .restart local v5    # "gids":[I
    :cond_6
    array-length v0, v9

    add-int/2addr v0, v6

    new-array v0, v0, [I

    .line 1529
    .end local v5    # "gids":[I
    .restart local v0    # "gids":[I
    array-length v5, v9
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v7, 0x0

    :try_start_5
    invoke-static {v9, v7, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1531
    :goto_1
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v5

    aput v5, v0, v7
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1532
    :try_start_6
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v5

    const/4 v6, 0x1

    aput v5, v0, v6

    .line 1533
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v5

    const/4 v6, 0x2

    aput v5, v0, v6

    .line 1537
    invoke-static {v0, v13}, Lcom/android/server/am/AmInjector;->parallelGids([ILcom/android/server/am/ProcessRecord;)[I

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v0, v5

    .line 1541
    const/4 v5, 0x0

    :try_start_7
    aget v6, v0, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    const/4 v6, 0x2

    aget v10, v0, v6

    aput v10, v0, v5
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1542
    :cond_7
    const/4 v5, 0x1

    :try_start_8
    aget v6, v0, v5

    if-ne v6, v7, :cond_8

    const/4 v6, 0x2

    aget v7, v0, v6

    aput v7, v0, v5

    .line 1544
    .end local v9    # "permGids":[I
    :cond_8
    move-object v7, v0

    move v10, v3

    goto :goto_2

    .line 1747
    .end local v0    # "gids":[I
    .end local v3    # "mountExternal":I
    .end local v4    # "uid":I
    :catch_0
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v29, v8

    move-wide/from16 v22, v11

    move-object v15, v13

    goto/16 :goto_13

    :catch_1
    move-exception v0

    move/from16 v26, v7

    move-object/from16 v29, v8

    move-wide/from16 v22, v11

    move-object v15, v13

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object/from16 v29, v8

    move/from16 v26, v10

    move-wide/from16 v22, v11

    move-object v15, v13

    goto/16 :goto_13

    .line 1517
    .restart local v4    # "uid":I
    .restart local v5    # "gids":[I
    .restart local v6    # "mountExternal":I
    .restart local v9    # "permGids":[I
    :catch_3
    move-exception v0

    .line 1518
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v11    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "disableHiddenApiChecks":Z
    .end local p4    # "mountExtStorageFull":Z
    .end local p5    # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1747
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "uid":I
    .end local v5    # "gids":[I
    .end local v6    # "mountExternal":I
    .end local v9    # "permGids":[I
    .restart local v11    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "disableHiddenApiChecks":Z
    .restart local p4    # "mountExtStorageFull":Z
    .restart local p5    # "abiOverride":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v29, v8

    move-wide/from16 v22, v11

    move-object v15, v13

    const/16 v26, 0x0

    goto/16 :goto_13

    .line 1502
    .restart local v4    # "uid":I
    .restart local v5    # "gids":[I
    .restart local v6    # "mountExternal":I
    :cond_9
    move-object v7, v5

    move v10, v6

    .line 1544
    .end local v5    # "gids":[I
    .end local v6    # "mountExternal":I
    .local v7, "gids":[I
    .local v10, "mountExternal":I
    :goto_2
    :try_start_9
    iput v10, v13, Lcom/android/server/am/ProcessRecord;->mountMode:I

    .line 1545
    const-string/jumbo v0, "startProcess: building args"

    invoke-direct {v15, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1546
    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isFactoryTestProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1547
    const/4 v0, 0x0

    move v6, v0

    .end local v4    # "uid":I
    .local v0, "uid":I
    goto :goto_3

    .line 1546
    .end local v0    # "uid":I
    .restart local v4    # "uid":I
    :cond_a
    move v6, v4

    .line 1549
    .end local v4    # "uid":I
    .local v6, "uid":I
    :goto_3
    const/4 v0, 0x0

    .line 1550
    .local v0, "runtimeFlags":I
    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_b

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    .line 1551
    or-int/lit8 v0, v0, 0x1

    .line 1552
    or-int/lit16 v0, v0, 0x100

    .line 1555
    or-int/2addr v0, v4

    .line 1558
    :try_start_a
    iget-object v3, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "art_verifier_verify_debuggable"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_b

    .line 1560
    or-int/lit16 v0, v0, 0x200

    .line 1561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": ART verification disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    move v3, v0

    goto :goto_4

    .line 1558
    :cond_b
    move v3, v0

    goto :goto_4

    .line 1550
    :cond_c
    move v3, v0

    .line 1568
    .end local v0    # "runtimeFlags":I
    .local v3, "runtimeFlags":I
    :goto_4
    const/16 v0, 0xa8

    :try_start_b
    iget-object v9, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/android/server/pm/OpCompatibilityInjector;->getCompatConfigString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1571
    .local v0, "gm_config_string":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    .line 1572
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1573
    .local v9, "gm_split_string":[Ljava/lang/String;
    array-length v5, v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_b

    const-string v4, ": GPU RLIMIT_STACK_MASK, pkg="

    const/high16 v21, 0x20000

    move-wide/from16 v22, v11

    const/4 v11, 0x2

    .end local v11    # "startTime":J
    .local v22, "startTime":J
    if-ne v5, v11, :cond_f

    const/4 v5, 0x1

    :try_start_c
    aget-object v11, v9, v5

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_a

    if-eqz v5, :cond_f

    .line 1577
    const/4 v5, 0x0

    :try_start_d
    aget-object v11, v9, v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_5

    :try_start_e
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    rsub-int v5, v5, 0x200

    div-int/lit8 v5, v5, 0x20

    .line 1578
    .local v5, "size":I
    const/4 v11, 0x7

    if-le v5, v11, :cond_d

    .line 1579
    const/4 v5, 0x7

    .line 1580
    :cond_d
    if-gez v5, :cond_e

    .line 1581
    const/4 v5, 0x0

    .line 1583
    :cond_e
    or-int v3, v3, v21

    .line 1584
    const v11, -0x1c0001

    and-int/2addr v3, v11

    .line 1585
    sget v11, Lcom/android/internal/os/Zygote;->RLIMIT_SIZE_SHIFT:I

    shl-int v11, v5, v11

    or-int/2addr v3, v11

    .line 1586
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v5, 0x20

    rsub-int v4, v4, 0x200

    .line 1588
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1586
    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    nop

    .end local v5    # "size":I
    goto :goto_5

    :cond_f
    array-length v5, v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_a

    const/4 v11, 0x1

    if-ne v5, v11, :cond_11

    const/4 v5, 0x0

    :try_start_f
    aget-object v11, v9, v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5

    :try_start_10
    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1592
    or-int v3, v3, v21

    .line 1593
    const v5, -0x1c0001

    and-int/2addr v3, v5

    .line 1595
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_5

    .line 1747
    .end local v0    # "gm_config_string":Ljava/lang/String;
    .end local v3    # "runtimeFlags":I
    .end local v6    # "uid":I
    .end local v7    # "gids":[I
    .end local v9    # "gm_split_string":[Ljava/lang/String;
    .end local v10    # "mountExternal":I
    :catch_5
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v29, v8

    move-object v15, v13

    goto/16 :goto_13

    .line 1599
    .restart local v3    # "runtimeFlags":I
    .restart local v6    # "uid":I
    .restart local v7    # "gids":[I
    .restart local v10    # "mountExternal":I
    :catch_6
    move-exception v0

    goto :goto_6

    .line 1571
    .end local v22    # "startTime":J
    .restart local v0    # "gm_config_string":Ljava/lang/String;
    .restart local v11    # "startTime":J
    :cond_10
    move-wide/from16 v22, v11

    .line 1604
    .end local v0    # "gm_config_string":Ljava/lang/String;
    .end local v11    # "startTime":J
    .restart local v22    # "startTime":J
    :cond_11
    :goto_5
    goto :goto_7

    .line 1599
    .end local v22    # "startTime":J
    .restart local v11    # "startTime":J
    :catch_7
    move-exception v0

    move-wide/from16 v22, v11

    .line 1600
    .end local v11    # "startTime":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "startTime":J
    :goto_6
    :try_start_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Get Compatibility failed, ignored anyway."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_a

    .line 1602
    const v4, -0x20001

    and-int/2addr v3, v4

    .line 1603
    const v4, -0x1c0001

    and-int/2addr v3, v4

    .line 1611
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    const v4, -0xe00001

    and-int/2addr v3, v4

    .line 1612
    const/16 v0, 0x106

    :try_start_12
    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/server/pm/OpCompatibilityInjector;->getCompatConfigString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    .local v0, "kc_config_string":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    .line 1616
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1617
    .local v1, "kc_split_string":[Ljava/lang/String;
    array-length v5, v1

    const/4 v9, 0x2

    if-ne v5, v9, :cond_14

    const/4 v5, 0x1

    aget-object v9, v1, v5

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_a

    if-eqz v5, :cond_14

    .line 1618
    const/4 v5, 0x0

    :try_start_13
    aget-object v9, v1, v5
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_5

    :try_start_14
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    .line 1620
    .local v5, "adj":I
    const/4 v9, 0x7

    if-le v5, v9, :cond_12

    .line 1621
    const/4 v5, 0x7

    goto :goto_8

    .line 1622
    :cond_12
    if-gez v5, :cond_13

    .line 1623
    const/4 v5, 0x0

    .line 1625
    :cond_13
    :goto_8
    sget v9, Lcom/android/internal/os/Zygote;->LMK_KILL_PREVENT_SHIFT:I

    shl-int v9, v5, v9

    or-int/2addr v3, v9

    .line 1626
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": LMK kill prevent, pkg="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", adj="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v11, v5, 0x64

    .line 1628
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1626
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_a

    .line 1635
    .end local v0    # "kc_config_string":Ljava/lang/String;
    .end local v1    # "kc_split_string":[Ljava/lang/String;
    .end local v5    # "adj":I
    :cond_14
    goto :goto_9

    .line 1631
    :catch_8
    move-exception v0

    .line 1632
    .local v0, "e":Ljava/lang/Exception;
    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": LMK Get Compatibility failed, ignored anyway."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1634
    and-int/2addr v3, v4

    .line 1641
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_15

    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 1643
    :cond_15
    or-int/lit8 v3, v3, 0x8

    .line 1645
    :cond_16
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 1646
    const v0, 0x8000

    or-int/2addr v3, v0

    .line 1648
    :cond_17
    const-string v0, "debug.checkjni"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1649
    or-int/lit8 v3, v3, 0x2

    .line 1651
    :cond_18
    const-string v0, "debug.generate-debug-info"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 1652
    .local v12, "genDebugInfoProperty":Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1653
    :cond_19
    or-int/lit8 v3, v3, 0x20

    .line 1655
    :cond_1a
    const-string v0, "dalvik.vm.minidebuginfo"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 1656
    .local v11, "genMiniDebugInfoProperty":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1657
    :cond_1b
    or-int/lit16 v3, v3, 0x800

    .line 1659
    :cond_1c
    const-string v0, "debug.jni.logging"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1660
    or-int/lit8 v3, v3, 0x10

    .line 1662
    :cond_1d
    const-string v0, "debug.assert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1663
    or-int/lit8 v3, v3, 0x4

    .line 1665
    :cond_1e
    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1668
    or-int/lit8 v0, v3, 0x40

    .line 1669
    .end local v3    # "runtimeFlags":I
    .local v0, "runtimeFlags":I
    or-int/lit8 v0, v0, 0x20

    .line 1670
    or-int/lit16 v3, v0, 0x80

    .line 1671
    .end local v0    # "runtimeFlags":I
    .restart local v3    # "runtimeFlags":I
    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    .line 1674
    :cond_1f
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1675
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 1676
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1677
    :cond_20
    or-int/lit16 v3, v3, 0x400

    .line 1680
    :cond_21
    if-nez p3, :cond_23

    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1681
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 1682
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v1

    .line 1681
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 1683
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1684
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v0

    .line 1685
    .local v0, "policy":I
    sget v1, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v1, v0, v1

    .line 1686
    .local v1, "policyBits":I
    and-int/lit16 v2, v1, 0x3000

    if-ne v2, v1, :cond_22

    .line 1689
    or-int/2addr v3, v1

    goto :goto_a

    .line 1687
    :cond_22
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid API policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v22    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "disableHiddenApiChecks":Z
    .end local p4    # "mountExtStorageFull":Z
    .end local p5    # "abiOverride":Ljava/lang/String;
    throw v2

    .line 1692
    .end local v0    # "policy":I
    .end local v1    # "policyBits":I
    .restart local v22    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "disableHiddenApiChecks":Z
    .restart local p4    # "mountExtStorageFull":Z
    .restart local p5    # "abiOverride":Ljava/lang/String;
    :cond_23
    :goto_a
    const-string/jumbo v0, "persist.device_config.runtime_native.use_app_image_startup_cache"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1695
    .local v5, "useAppImageCache":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "false"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1696
    const/high16 v0, 0x10000

    or-int/2addr v0, v3

    move/from16 v17, v0

    .end local v3    # "runtimeFlags":I
    .local v0, "runtimeFlags":I
    goto :goto_b

    .line 1699
    .end local v0    # "runtimeFlags":I
    .restart local v3    # "runtimeFlags":I
    :cond_24
    move/from16 v17, v3

    .end local v3    # "runtimeFlags":I
    .local v17, "runtimeFlags":I
    :goto_b
    const/4 v1, 0x0

    .line 1700
    .local v1, "invokeWith":Ljava/lang/String;
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_26

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/wrap.sh"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1703
    .local v2, "wrapperFileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_a

    move-object v3, v0

    .line 1705
    .local v3, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/bin/logwrapper "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-object v1, v0

    .line 1709
    :cond_25
    :try_start_17
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1710
    move-object v0, v1

    goto :goto_c

    .line 1709
    :catchall_0
    move-exception v0

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .end local v22    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "disableHiddenApiChecks":Z
    .end local p4    # "mountExtStorageFull":Z
    .end local p5    # "abiOverride":Ljava/lang/String;
    throw v0

    .line 1700
    .end local v2    # "wrapperFileName":Ljava/lang/String;
    .end local v3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v22    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "disableHiddenApiChecks":Z
    .restart local p4    # "mountExtStorageFull":Z
    .restart local p5    # "abiOverride":Ljava/lang/String;
    :cond_26
    move-object v0, v1

    .line 1713
    .end local v1    # "invokeWith":Ljava/lang/String;
    .local v0, "invokeWith":Ljava/lang/String;
    :goto_c
    if-eqz v14, :cond_27

    move-object v1, v14

    goto :goto_d

    :cond_27
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1714
    .local v1, "requiredAbi":Ljava/lang/String;
    :goto_d
    if-nez v1, :cond_28

    .line 1715
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_a

    const/16 v16, 0x0

    :try_start_18
    aget-object v2, v2, v16

    move-object v1, v2

    move-object v4, v1

    goto :goto_e

    .line 1714
    :cond_28
    const/16 v16, 0x0

    move-object v4, v1

    .line 1718
    .end local v1    # "requiredAbi":Ljava/lang/String;
    .local v4, "requiredAbi":Ljava/lang/String;
    :goto_e
    const/4 v1, 0x0

    .line 1719
    .local v1, "instructionSet":Ljava/lang/String;
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_29

    .line 1720
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v3, v1

    goto :goto_f

    .line 1719
    :cond_29
    move-object v3, v1

    .line 1723
    .end local v1    # "instructionSet":Ljava/lang/String;
    .local v3, "instructionSet":Ljava/lang/String;
    :goto_f
    iput-object v7, v13, Lcom/android/server/am/ProcessRecord;->gids:[I

    .line 1724
    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    .line 1725
    iput-object v3, v13, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    .line 1728
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1729
    const-string v1, "SELinux tag not defined"

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    .end local v3    # "instructionSet":Ljava/lang/String;
    .local v18, "instructionSet":Ljava/lang/String;
    const-string v3, "SELinux tag not defined for "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 1728
    .end local v18    # "instructionSet":Ljava/lang/String;
    .restart local v3    # "instructionSet":Ljava/lang/String;
    :cond_2a
    move-object/from16 v18, v3

    .line 1733
    .end local v3    # "instructionSet":Ljava/lang/String;
    .restart local v18    # "instructionSet":Ljava/lang/String;
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, ""

    goto :goto_11

    :cond_2b
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1737
    .local v9, "seInfo":Ljava/lang/String;
    const-string v1, "android.app.ActivityThread"

    move-object/from16 v19, v1

    .line 1741
    .local v19, "entryPoint":Ljava/lang/String;
    const-string/jumbo v1, "start process"

    invoke-static {v6, v1}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 1744
    const-string v3, "android.app.ActivityThread"
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v20, v4

    .end local v4    # "requiredAbi":Ljava/lang/String;
    .local v20, "requiredAbi":Ljava/lang/String;
    move-object/from16 v4, p1

    move-object/from16 v21, v5

    .end local v5    # "useAppImageCache":Ljava/lang/String;
    .local v21, "useAppImageCache":Ljava/lang/String;
    move v5, v6

    move/from16 v24, v6

    .end local v6    # "uid":I
    .local v24, "uid":I
    move-object v6, v7

    move-object/from16 v25, v7

    .end local v7    # "gids":[I
    .local v25, "gids":[I
    move/from16 v7, v17

    move-object v15, v8

    move v8, v10

    move/from16 v26, v16

    move/from16 v16, v10

    .end local v10    # "mountExternal":I
    .local v16, "mountExternal":I
    move-object/from16 v10, v20

    move-object/from16 v27, v11

    .end local v11    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .local v27, "genMiniDebugInfoProperty":Ljava/lang/String;
    move-object/from16 v11, v18

    move-object/from16 v28, v12

    .end local v12    # "genDebugInfoProperty":Ljava/lang/String;
    .local v28, "genDebugInfoProperty":Ljava/lang/String;
    move-object v12, v0

    move-object/from16 v29, v15

    move-object v15, v13

    move-wide/from16 v13, v22

    :try_start_19
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    return v1

    .line 1747
    .end local v0    # "invokeWith":Ljava/lang/String;
    .end local v9    # "seInfo":Ljava/lang/String;
    .end local v16    # "mountExternal":I
    .end local v17    # "runtimeFlags":I
    .end local v18    # "instructionSet":Ljava/lang/String;
    .end local v19    # "entryPoint":Ljava/lang/String;
    .end local v20    # "requiredAbi":Ljava/lang/String;
    .end local v21    # "useAppImageCache":Ljava/lang/String;
    .end local v24    # "uid":I
    .end local v25    # "gids":[I
    .end local v27    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v28    # "genDebugInfoProperty":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object/from16 v29, v8

    move-object v15, v13

    move/from16 v26, v16

    goto :goto_13

    :catch_a
    move-exception v0

    move-object/from16 v29, v8

    move-object v15, v13

    const/16 v26, 0x0

    goto :goto_13

    .end local v22    # "startTime":J
    .local v11, "startTime":J
    :catch_b
    move-exception v0

    move-object/from16 v29, v8

    move-wide/from16 v22, v11

    move-object v15, v13

    const/16 v26, 0x0

    goto :goto_12

    :catch_c
    move-exception v0

    move-object/from16 v29, v8

    move/from16 v26, v10

    move-wide/from16 v22, v11

    move-object v15, v13

    .end local v11    # "startTime":J
    .restart local v22    # "startTime":J
    :goto_12
    goto :goto_13

    .line 1495
    .end local v22    # "startTime":J
    .restart local v11    # "startTime":J
    :catch_d
    move-exception v0

    move-object/from16 v29, v8

    move/from16 v26, v10

    move-wide/from16 v22, v11

    move-object v15, v13

    .line 1496
    .end local v11    # "startTime":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v22    # "startTime":J
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v22    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "disableHiddenApiChecks":Z
    .end local p4    # "mountExtStorageFull":Z
    .end local p5    # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_e

    .line 1747
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v22    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "disableHiddenApiChecks":Z
    .restart local p4    # "mountExtStorageFull":Z
    .restart local p5    # "abiOverride":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 1748
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure starting process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1756
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v11, "start failure"

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1758
    return v26
.end method

.method updateAllTimePrefsLocked(I)V
    .locals 5
    .param p1, "timePref"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2667
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2668
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2669
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 2671
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2675
    goto :goto_1

    .line 2672
    :catch_0
    move-exception v2

    .line 2673
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

    .line 2667
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2678
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method updateApplicationInfoLocked(Ljava/util/List;IZ)V
    .locals 9
    .param p2, "userId"    # I
    .param p3, "updateFrameworkRes"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 3331
    .local p1, "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 3332
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3333
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_0

    .line 3334
    goto :goto_3

    .line 3337
    :cond_0
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v3, p2, :cond_1

    .line 3338
    goto :goto_3

    .line 3341
    :cond_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    .line 3342
    .local v3, "packageCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 3343
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v5

    .line 3344
    .local v5, "packageName":Ljava/lang/String;
    if-nez p3, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3346
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/16 v7, 0x400

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 3347
    invoke-interface {v6, v5, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 3348
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_3

    .line 3349
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v7, v6}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3354
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_3
    goto :goto_2

    .line 3351
    :catch_0
    move-exception v6

    .line 3352
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

    .line 3342
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3331
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "packageCount":I
    .end local v4    # "j":I
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3358
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method updateCoreSettingsLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "settings"    # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2621
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2622
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2624
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 2625
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2629
    :cond_0
    goto :goto_1

    .line 2627
    :catch_0
    move-exception v2

    .line 2621
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2631
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2733
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    .line 2735
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2737
    return p4

    .line 2740
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2741
    .local v0, "lrui":I
    const-string v1, "ActivityManager"

    if-gez v0, :cond_1

    .line 2742
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

    .line 2744
    return p4

    .line 2747
    :cond_1
    if-lt v0, p4, :cond_2

    .line 2750
    return p4

    .line 2753
    :cond_2
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v0, v2, :cond_3

    if-ge p4, v2, :cond_3

    .line 2755
    return p4

    .line 2758
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2759
    if-lez p4, :cond_4

    .line 2760
    add-int/lit8 p4, p4, -0x1

    .line 2762
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

    .line 2764
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2765
    iput p5, p1, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    .line 2766
    return p4
.end method

.method final updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .locals 23
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityChange"    # Z
    .param p3, "client"    # Lcom/android/server/am/ProcessRecord;

    .line 2956
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

    .line 2958
    .local v13, "hasActivity":Z
    const/4 v14, 0x0

    .line 2959
    .local v14, "hasService":Z
    if-nez p2, :cond_2

    if-eqz v13, :cond_2

    .line 2964
    return-void

    .line 2967
    :cond_2
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    add-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 2968
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2969
    .local v7, "now":J
    iput-wide v7, v10, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    .line 2973
    const-string v0, "ActivityManager"

    if-eqz v13, :cond_5

    .line 2974
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2975
    .local v2, "N":I
    if-lez v2, :cond_4

    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_4

    .line 2976
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

    .line 2977
    :cond_3
    return-void

    .line 2979
    .end local v2    # "N":I
    :cond_4
    goto :goto_2

    .line 2980
    :cond_5
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v2, :cond_7

    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v2, v12

    .line 2981
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_7

    .line 2982
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

    .line 2983
    :cond_6
    return-void

    .line 2987
    :cond_7
    :goto_2
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v15

    .line 2989
    .local v15, "lrui":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_9

    if-ltz v15, :cond_9

    .line 2992
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

    .line 2993
    :cond_8
    return-void

    .line 3030
    :cond_9
    if-ltz v15, :cond_c

    .line 3031
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v15, v2, :cond_a

    .line 3032
    sub-int/2addr v2, v12

    iput v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3034
    :cond_a
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v15, v2, :cond_b

    .line 3035
    sub-int/2addr v2, v12

    iput v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3045
    :cond_b
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3059
    :cond_c
    const/4 v2, -0x1

    .line 3060
    .local v2, "nextActivityIndex":I
    if-eqz v13, :cond_15

    .line 3061
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3062
    .local v1, "N":I
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3063
    .local v3, "nextIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-nez v4, :cond_13

    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v4, :cond_13

    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_13

    .line 3067
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

    .line 3071
    :cond_d
    add-int/lit8 v0, v1, -0x1

    .line 3072
    .local v0, "pos":I
    :goto_3
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le v0, v4, :cond_f

    .line 3073
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 3074
    .local v4, "posproc":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_e

    .line 3078
    goto :goto_4

    .line 3080
    :cond_e
    nop

    .end local v4    # "posproc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v0, v0, -0x1

    .line 3081
    goto :goto_3

    .line 3082
    :cond_f
    :goto_4
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3083
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ne v0, v4, :cond_10

    .line 3084
    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3086
    :cond_10
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ne v0, v4, :cond_11

    .line 3090
    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3094
    :cond_11
    add-int/lit8 v4, v0, -0x1

    .line 3095
    .local v4, "endIndex":I
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v4, v5, :cond_12

    .line 3096
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3098
    :cond_12
    move v2, v4

    .line 3099
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-direct {v9, v10, v0, v5, v4}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V

    .line 3100
    .end local v0    # "pos":I
    .end local v4    # "endIndex":I
    goto :goto_5

    .line 3102
    :cond_13
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding to top of LRU activity list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    :cond_14
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3104
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v12

    move v2, v0

    .line 3106
    .end local v1    # "N":I
    :goto_5
    move v0, v3

    goto :goto_6

    .line 3114
    .end local v3    # "nextIndex":I
    :cond_15
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3115
    .local v3, "index":I
    if-eqz v11, :cond_18

    .line 3118
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    .line 3119
    .local v4, "clientIndex":I
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_16

    if-gez v4, :cond_16

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

    .line 3121
    :cond_16
    if-gt v4, v15, :cond_17

    .line 3124
    move v4, v15

    .line 3126
    :cond_17
    if-ltz v4, :cond_18

    if-le v3, v4, :cond_18

    .line 3127
    move v3, v4

    .line 3130
    .end local v4    # "clientIndex":I
    :cond_18
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_19

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

    .line 3131
    :cond_19
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3132
    add-int/lit8 v0, v3, -0x1

    .line 3133
    .local v0, "nextIndex":I
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3134
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3135
    if-le v3, v12, :cond_1a

    .line 3136
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v4, v12

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v9, v10, v4, v1, v5}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V

    .line 3140
    .end local v3    # "index":I
    :cond_1a
    :goto_6
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    iput v1, v10, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    .line 3144
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v12

    move/from16 v16, v0

    move v6, v1

    move/from16 v17, v2

    .end local v0    # "nextIndex":I
    .end local v2    # "nextActivityIndex":I
    .local v6, "j":I
    .local v16, "nextIndex":I
    .local v17, "nextActivityIndex":I
    :goto_7
    if-ltz v6, :cond_1f

    .line 3145
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 3146
    .local v5, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_1e

    iget-boolean v0, v5, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_1e

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_1e

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1e

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_1e

    iget v0, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v1, 0x40000130    # 2.0000725f

    and-int/2addr v0, v1

    if-nez v0, :cond_1e

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3150
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 3151
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3152
    if-ltz v17, :cond_1b

    .line 3153
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v18, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v7

    move/from16 v19, v4

    move/from16 v4, v17

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

    move-result v17

    goto :goto_8

    .line 3152
    .end local v19    # "j":I
    .end local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    :cond_1b
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

    .line 3159
    .end local v19    # "j":I
    .end local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    :cond_1c
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

    move/from16 v4, v16

    move-object v7, v8

    move-object/from16 v18, v8

    .end local v8    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v18, "cr":Lcom/android/server/am/ConnectionRecord;
    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v16

    goto :goto_8

    .line 3150
    .end local v18    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v19    # "j":I
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    :cond_1d
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

    .line 3146
    .end local v18    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v19    # "j":I
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    :cond_1e
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .line 3144
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
    :cond_1f
    move/from16 v19, v6

    move-wide/from16 v21, v7

    .line 3166
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
    if-ltz v12, :cond_21

    .line 3167
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    iget-object v8, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 3168
    .local v8, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_20

    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_20

    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3169
    iget-object v1, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "provider reference"

    move-object/from16 v0, p0

    move-wide/from16 v2, v21

    move/from16 v4, v16

    move-object v7, v8

    move-object/from16 v18, v8

    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v18, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v16

    goto :goto_a

    .line 3168
    .end local v18    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_20
    move-object/from16 v18, v8

    .line 3166
    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_a
    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    .line 3173
    .end local v12    # "j":I
    :cond_21
    return-void
.end method
