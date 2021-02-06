.class public Lcom/android/server/appop/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/AppOpsService$NoteOpTrace;,
        Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;,
        Lcom/android/server/appop/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/appop/AppOpsService$Shell;,
        Lcom/android/server/appop/AppOpsService$ChangeRec;,
        Lcom/android/server/appop/AppOpsService$NotedCallback;,
        Lcom/android/server/appop/AppOpsService$StartedCallback;,
        Lcom/android/server/appop/AppOpsService$ActiveCallback;,
        Lcom/android/server/appop/AppOpsService$ModeCallback;,
        Lcom/android/server/appop/AppOpsService$Op;,
        Lcom/android/server/appop/AppOpsService$AttributedOp;,
        Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;,
        Lcom/android/server/appop/AppOpsService$Ops;,
        Lcom/android/server/appop/AppOpsService$UidState;,
        Lcom/android/server/appop/AppOpsService$Constants;,
        Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;,
        Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x2

.field static final DEBUG:Z = false

.field private static final DEBUG_FGS_ALLOW_WHILE_IN_USE:I = 0x0

.field private static final DEBUG_FGS_ENFORCE_TYPE:I = 0x1

.field private static final MAX_UNFORWARDED_OPS:I = 0xa

.field private static final MAX_UNUSED_POOLED_OBJECTS:I = 0x3

.field private static final NO_VERSION:I = -0x1

.field private static final OPS_RESTRICTED_ON_SUSPEND:[I

.field private static final PROCESS_STATE_TO_UID_STATE:[I

.field private static final RARELY_USED_PACKAGES_INITIALIZATION_DELAY_MILLIS:I = 0x493e0

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final UID_ANY:I = -0x2

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field private mAcceptableLeftDistance:I

.field final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$ActiveCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

.field private final mAsyncOpWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/app/IAppOpsAsyncNotedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

.field private mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

.field private mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

.field final mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field final mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field volatile mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

.field private final mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

.field mLastRealtime:J

.field private mMessagesCollectedCount:F

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoteOpCallerStacktraces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$NoteOpTrace;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoteOpCallerStacktracesFile:Ljava/io/File;

.field final mNotedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$NotedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private final mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfileOwners:Landroid/util/SparseIntArray;

.field private mRarelyUsedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSampledAppOpCode:I

.field private mSampledPackage:Ljava/lang/String;

.field private mSamplingStrategy:I

.field final mStartedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$StartedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSwitchedOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;>;"
        }
    .end annotation
.end field

.field mWriteNoteOpsScheduled:Z

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    .line 249
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-void

    :array_0
    .array-data 4
        0x64
        0x64
        0xc8
        0x1f4
        0x190
        0x1f4
        0x258
        0x258
        0x258
        0x258
        0x258
        0x258
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
    .end array-data

    :array_1
    .array-data 4
        0x1c
        0x1b
        0x1a
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 4
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 1504
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 206
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    .line 270
    new-instance v0, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    .line 274
    new-instance v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    .line 278
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$1;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 288
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 300
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    .line 308
    new-instance v0, Lcom/android/server/appop/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 333
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 337
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {v0, p0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 344
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 355
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 360
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    .line 364
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 376
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 1264
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1265
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1266
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 1267
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 1268
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 1269
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 1270
    new-instance v2, Lcom/android/server/appop/AudioRestrictionManager;

    invoke-direct {v2}, Lcom/android/server/appop/AudioRestrictionManager;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 1540
    new-instance v2, Lcom/android/server/appop/AppOpsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 1505
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1507
    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1508
    new-instance v0, Landroid/util/AtomicFile;

    const-string v2, "appops"

    invoke-direct {v0, p1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 1514
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    .line 1516
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 1517
    new-instance v0, Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$Constants;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 1520
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/appop/OpAppOpsService;->shouldUpdateXml(Landroid/util/AtomicFile;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    invoke-static {p1, v1}, Lcom/android/server/appop/OpAppOpsService;->updateXml(Ljava/io/File;I)V

    .line 1525
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 1527
    const/4 v0, 0x0

    .local v0, "switchedCode":I
    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 1528
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 1529
    .local v1, "switchCode":I
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 1530
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 1529
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1527
    .end local v1    # "switchCode":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1532
    .end local v0    # "switchedCode":I
    :cond_1
    return-void
.end method

.method static synthetic access$1100()[I
    .locals 1

    .line 199
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/ArraySet;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/appop/AppOpsService;Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 199
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .line 199
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 199
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 199
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1900(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 199
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 199
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 199
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/appop/AppOpsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/appop/AppOpsService;Landroid/util/SparseArray;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/SparseArray;
    .param p2, "x2"    # Z

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/appop/AppOpsService;IIILcom/android/internal/app/IAppOpsCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 199
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 199
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 199
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$AttributedOp;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 199
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->onClientDeath(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/appop/AppOpsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 199
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .locals 5
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .line 2605
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local p4, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez p4, :cond_0

    .line 2606
    return-object p0

    .line 2608
    :cond_0
    if-nez p0, :cond_1

    .line 2609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p0, v0

    .line 2611
    :cond_1
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 2612
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2613
    invoke-virtual {p4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2614
    .local v2, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2615
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    invoke-static {v3, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2616
    .local v4, "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    if-eq v4, v3, :cond_2

    .line 2617
    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2612
    .end local v2    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v4    # "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2620
    .end local v1    # "i":I
    :cond_3
    return-object p0
.end method

.method private static addChange(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;"
        }
    .end annotation

    .line 2582
    .local p0, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    const/4 v0, 0x0

    .line 2583
    .local v0, "duplicate":Z
    if-nez p0, :cond_0

    .line 2584
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v1

    goto :goto_1

    .line 2586
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2587
    .local v1, "reportCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2588
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2589
    .local v3, "report":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget v4, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    if-ne v4, p1, :cond_1

    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2590
    const/4 v0, 0x1

    .line 2591
    goto :goto_1

    .line 2587
    .end local v3    # "report":Lcom/android/server/appop/AppOpsService$ChangeRec;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2595
    .end local v1    # "reportCount":I
    .end local v2    # "j":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 2596
    new-instance v1, Lcom/android/server/appop/AppOpsService$ChangeRec;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/appop/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2599
    :cond_3
    return-object p0
.end method

.method private checkAudioOperationImpl(IIILjava/lang/String;)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2974
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AudioRestrictionManager;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 2976
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 2977
    return v0

    .line 2979
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private checkOperationImpl(IILjava/lang/String;Z)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "raw"    # Z

    .line 2910
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2911
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2912
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2913
    const/4 v1, 0x1

    return v1

    .line 2915
    :cond_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationUnchecked(IILjava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method private checkOperationInternal(IILjava/lang/String;Z)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "raw"    # Z

    .line 2898
    monitor-enter p0

    .line 2899
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2900
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2901
    if-nez v0, :cond_0

    .line 2902
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Z)I

    move-result v1

    return v1

    .line 2904
    :cond_0
    new-instance v6, Lcom/android/server/appop/-$$Lambda$AppOpsService$gQy7GOuCV6GbjQtdNhNG6xld8I4;

    invoke-direct {v6, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$gQy7GOuCV6GbjQtdNhNG6xld8I4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;ZLcom/android/internal/util/function/QuadFunction;)I

    move-result v1

    return v1

    .line 2900
    .end local v0    # "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private checkOperationUnchecked(IILjava/lang/String;Z)I
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "raw"    # Z

    .line 2932
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2936
    .local v0, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    nop

    .line 2938
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2939
    return v2

    .line 2941
    :cond_0
    monitor-enter p0

    .line 2942
    :try_start_1
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2943
    monitor-exit p0

    return v2

    .line 2945
    :cond_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move p1, v1

    .line 2946
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v1

    move-object v8, v1

    .line 2947
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v8, :cond_3

    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_3

    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2948
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 2949
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2950
    .local v1, "rawMode":I
    if-eqz p4, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v8, p1, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v2

    :goto_0
    monitor-exit p0

    return v2

    .line 2952
    .end local v1    # "rawMode":I
    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    .line 2953
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v1, :cond_4

    .line 2954
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    monitor-exit p0

    return v2

    .line 2956
    :cond_4
    if-eqz p4, :cond_5

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v2

    :goto_1
    monitor-exit p0

    return v2

    .line 2957
    .end local v1    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2933
    .end local v0    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    :catch_0
    move-exception v0

    .line 2934
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v2, "checkOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2935
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    return v1
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .line 6173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6174
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 6177
    return-void

    .line 6175
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 19
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opCode"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 3340
    move-object/from16 v7, p0

    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3344
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3346
    .local v16, "token":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3347
    move/from16 v6, p1

    move-object/from16 v5, p2

    :try_start_1
    invoke-direct {v7, v5, v6}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v0

    .line 3349
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    move-object v4, v1

    .line 3350
    .local v4, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    new-instance v1, Landroid/app/AsyncNotedAppOp;

    .line 3351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object v8, v1

    move/from16 v9, p3

    move v10, v15

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {v8 .. v14}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    move-object v14, v1

    .line 3352
    .local v14, "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    const/4 v13, 0x1

    new-array v1, v13, [Z

    const/4 v12, 0x0

    aput-boolean v12, v1, v12

    move-object/from16 v18, v1

    .line 3354
    .local v18, "wasNoteForwarded":[Z
    and-int/lit8 v1, p5, 0x9

    if-eqz v1, :cond_0

    if-eqz p7, :cond_0

    .line 3356
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v11, v4

    .end local v4    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .local v11, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3354
    .end local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v4    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    :cond_0
    move-object v11, v4

    .line 3360
    .end local v4    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    :goto_0
    if-eqz v11, :cond_1

    .line 3361
    new-instance v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;

    move-object v8, v1

    move-object v9, v14

    move-object/from16 v10, v18

    move-object v2, v11

    .end local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .local v2, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    move/from16 v11, p3

    move v3, v12

    move-object/from16 v12, p2

    move v4, v13

    move/from16 v13, p1

    move-object v5, v14

    .end local v14    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .local v5, "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    move-object/from16 v14, p4

    invoke-direct/range {v8 .. v14}, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;-><init>(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 3360
    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .end local v5    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .restart local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v14    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    :cond_1
    move-object v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    .line 3373
    .end local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .end local v14    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .restart local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v5    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    :goto_1
    aget-boolean v1, v18, v3

    if-nez v1, :cond_3

    .line 3374
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3375
    .local v1, "unforwardedOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AsyncNotedAppOp;>;"
    if-nez v1, :cond_2

    .line 3376
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 3377
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3380
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3381
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0xa

    if-le v4, v6, :cond_3

    .line 3382
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3385
    .end local v0    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "unforwardedOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AsyncNotedAppOp;>;"
    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .end local v5    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .end local v18    # "wasNoteForwarded":[Z
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3387
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3388
    nop

    .line 3389
    return-void

    .line 3385
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v15    # "callingUid":I
    .end local v16    # "token":J
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "opCode":I
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "flags":I
    .end local p6    # "message":Ljava/lang/String;
    .end local p7    # "shouldCollectMessage":Z
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3387
    .restart local v15    # "callingUid":I
    .restart local v16    # "token":J
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "opCode":I
    .restart local p4    # "attributionTag":Ljava/lang/String;
    .restart local p5    # "flags":I
    .restart local p6    # "message":Ljava/lang/String;
    .restart local p7    # "shouldCollectMessage":Z
    :catchall_1
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3388
    throw v0
.end method

.method private collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "pkgOps"    # Lcom/android/server/appop/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 1939
    const/4 v0, 0x0

    .line 1940
    .local v0, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1941
    .local v1, "elapsedNow":J
    if-nez p2, :cond_1

    .line 1942
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 1943
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1944
    invoke-virtual {p1, v3}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 1945
    .local v4, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-static {v4, v1, v2}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1943
    .end local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "j":I
    :cond_0
    goto :goto_2

    .line 1948
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_4

    .line 1949
    aget v4, p2, v3

    invoke-virtual {p1, v4}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 1950
    .restart local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v4, :cond_3

    .line 1951
    if-nez v0, :cond_2

    .line 1952
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 1954
    :cond_2
    invoke-static {v4, v1, v2}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1948
    .end local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1958
    .end local v3    # "j":I
    :cond_4
    :goto_2
    return-object v0
.end method

.method private collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 1964
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1965
    return-object v1

    .line 1968
    :cond_0
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 1969
    .local v0, "opModeCount":I
    if-nez v0, :cond_1

    .line 1970
    return-object v1

    .line 1972
    :cond_1
    const/4 v1, 0x0

    .line 1973
    .local v1, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_3

    .line 1974
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 1975
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1976
    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 1977
    .local v3, "code":I
    new-instance v4, Landroid/app/AppOpsManager$OpEntry;

    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1975
    .end local v3    # "code":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 1980
    :cond_3
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_6

    .line 1981
    aget v3, p2, v2

    .line 1982
    .restart local v3    # "code":I
    iget-object v4, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_5

    .line 1983
    if-nez v1, :cond_4

    .line 1984
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 1986
    :cond_4
    new-instance v4, Landroid/app/AppOpsManager$OpEntry;

    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 1987
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    .line 1986
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    .end local v3    # "code":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1991
    .end local v2    # "j":I
    :cond_6
    :goto_2
    return-object v1
.end method

.method private commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .locals 20
    .param p1, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;

    .line 3814
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    if-eqz v0, :cond_d

    .line 3815
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "fgi":I
    :goto_0
    if-ltz v9, :cond_d

    .line 3816
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3817
    goto/16 :goto_6

    .line 3819
    :cond_0
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 3822
    .local v10, "code":I
    invoke-static {v10}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    int-to-long v11, v0

    .line 3823
    .local v11, "firstUnrestrictedUidState":J
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    int-to-long v0, v0

    cmp-long v0, v0, v11

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    move v0, v8

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move v13, v0

    .line 3824
    .local v13, "resolvedLastFg":Z
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    int-to-long v2, v0

    cmp-long v0, v2, v11

    if-gtz v0, :cond_2

    move v1, v8

    :cond_2
    move v14, v1

    .line 3825
    .local v14, "resolvedNowFg":Z
    if-ne v13, v14, :cond_3

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    iget-boolean v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    if-ne v0, v1, :cond_3

    .line 3828
    goto/16 :goto_6

    .line 3831
    :cond_3
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v15, 0x4

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3832
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3833
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v15, :cond_4

    .line 3834
    iget-object v15, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$1CB62TNmPVdrHvls01D5LKYSp4w;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$1CB62TNmPVdrHvls01D5LKYSp4w;

    .line 3836
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    .line 3834
    move-object/from16 v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 3837
    :cond_4
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    .line 3838
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/ArraySet;

    .line 3839
    .local v5, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v5, :cond_b

    .line 3840
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v4, v0

    .local v4, "cbi":I
    :goto_2
    if-ltz v4, :cond_a

    .line 3841
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 3842
    .local v3, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    iget v0, v3, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_9

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 3843
    invoke-virtual {v3, v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3844
    move/from16 v17, v4

    move-object v8, v5

    goto/16 :goto_5

    .line 3846
    :cond_5
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v2, v0

    .local v2, "pkgi":I
    :goto_3
    if-ltz v2, :cond_8

    .line 3847
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v0, v10}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/appop/AppOpsService$Op;

    .line 3848
    .local v16, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v16, :cond_6

    .line 3849
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    goto :goto_4

    .line 3851
    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    if-ne v0, v15, :cond_7

    .line 3852
    iget-object v1, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 3854
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v8, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v15, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 3855
    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3852
    move-object v6, v1

    move-object/from16 v1, p0

    move/from16 v18, v2

    .end local v2    # "pkgi":I
    .local v18, "pkgi":I
    move-object v2, v3

    move-object/from16 v19, v3

    .end local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .local v19, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    move-object/from16 v3, v17

    move/from16 v17, v4

    .end local v4    # "cbi":I
    .local v17, "cbi":I
    move-object v4, v8

    move-object v8, v5

    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v8, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    move-object v5, v15

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 3851
    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17    # "cbi":I
    .end local v18    # "pkgi":I
    .end local v19    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v2    # "pkgi":I
    .restart local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v4    # "cbi":I
    .restart local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_7
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    .line 3846
    .end local v2    # "pkgi":I
    .end local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v4    # "cbi":I
    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v16    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17    # "cbi":I
    .restart local v18    # "pkgi":I
    .restart local v19    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :goto_4
    add-int/lit8 v2, v18, -0x1

    const/4 v15, 0x4

    move-object/from16 v6, p0

    move-object v5, v8

    move/from16 v4, v17

    move-object/from16 v3, v19

    const/4 v8, 0x1

    .end local v18    # "pkgi":I
    .restart local v2    # "pkgi":I
    goto :goto_3

    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17    # "cbi":I
    .end local v19    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v4    # "cbi":I
    .restart local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_8
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    .end local v2    # "pkgi":I
    .end local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v4    # "cbi":I
    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17    # "cbi":I
    .restart local v18    # "pkgi":I
    .restart local v19    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    goto :goto_5

    .line 3842
    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17    # "cbi":I
    .end local v18    # "pkgi":I
    .end local v19    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v4    # "cbi":I
    .restart local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_9
    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    .line 3840
    .end local v3    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v4    # "cbi":I
    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17    # "cbi":I
    :goto_5
    add-int/lit8 v4, v17, -0x1

    const/4 v15, 0x4

    move-object/from16 v6, p0

    move-object v5, v8

    const/4 v8, 0x1

    .end local v17    # "cbi":I
    .restart local v4    # "cbi":I
    goto/16 :goto_2

    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_a
    move/from16 v17, v4

    move-object v8, v5

    .end local v4    # "cbi":I
    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17    # "cbi":I
    goto :goto_6

    .line 3839
    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17    # "cbi":I
    .restart local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_b
    move-object v8, v5

    .line 3815
    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v10    # "code":I
    .end local v11    # "firstUnrestrictedUidState":J
    .end local v13    # "resolvedLastFg":Z
    .end local v14    # "resolvedNowFg":Z
    :cond_c
    :goto_6
    add-int/lit8 v9, v9, -0x1

    const/4 v8, 0x1

    move-object/from16 v6, p0

    goto/16 :goto_0

    .line 3863
    .end local v9    # "fgi":I
    :cond_d
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    iput v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 3864
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    iput v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    .line 3865
    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    iput-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    .line 3866
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 3867
    return-void
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 4744
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4745
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4746
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4747
    const-string v0, "  start [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4749
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4750
    const-string v0, "  stop [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4752
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4753
    const-string v0, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4754
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4755
    const-string v0, "  get [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4757
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4758
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4759
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4760
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4761
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4762
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4763
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4764
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4765
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4766
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4767
    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4768
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4769
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4770
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4771
    const-string v0, "              not specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4772
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5042
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5043
    const-string v0, "  -h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5044
    const-string v0, "    Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5045
    const-string v0, "  --op [OP]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5046
    const-string v0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5047
    const-string v0, "  --mode [MODE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5048
    const-string v0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5049
    const-string v0, "  --package [PACKAGE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5050
    const-string v0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5051
    const-string v0, "  --attributionTag [attributionTag]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5052
    const-string v0, "    Limit output to data associated with the given attribution tag."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5053
    const-string v0, "  --watchers"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5054
    const-string v0, "    Only output the watcher sections."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5055
    return-void
.end method

.method private dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .locals 33
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "nowElapsed"    # J
    .param p4, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "now"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p9, "date"    # Ljava/util/Date;
    .param p10, "prefix"    # Ljava/lang/String;

    .line 5078
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    invoke-virtual/range {p4 .. p5}, Lcom/android/server/appop/AppOpsService$Op;->createSingleAttributionEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    .line 5079
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 5081
    .local v4, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v5

    .line 5083
    .local v5, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 5084
    .local v6, "keyCount":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_0
    if-ge v7, v6, :cond_6

    .line 5085
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 5087
    .local v8, "key":J
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v10

    .line 5088
    .local v10, "uidState":I
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v11

    .line 5090
    .local v11, "flags":I
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v12

    .line 5091
    .local v12, "accessTime":J
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v14

    .line 5092
    .local v14, "rejectTime":J
    move-object/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "keyCount":I
    .local v16, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v17, "keyCount":I
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v5

    .line 5093
    .local v5, "accessDuration":J
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v18

    .line 5095
    .local v18, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    const/16 v19, 0x0

    .line 5096
    .local v19, "proxyPkg":Ljava/lang/String;
    const/16 v20, 0x0

    .line 5097
    .local v20, "proxyAttributionTag":Ljava/lang/String;
    const/16 v21, -0x1

    .line 5098
    .local v21, "proxyUid":I
    if-eqz v18, :cond_0

    .line 5099
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 5100
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v20

    .line 5101
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v21

    move-object/from16 v22, v4

    move-object/from16 v4, v19

    move/from16 v19, v10

    move-object/from16 v10, v20

    move/from16 v20, v11

    move/from16 v11, v21

    goto :goto_1

    .line 5098
    :cond_0
    move-object/from16 v22, v4

    move-object/from16 v4, v19

    move/from16 v19, v10

    move-object/from16 v10, v20

    move/from16 v20, v11

    move/from16 v11, v21

    .line 5104
    .end local v21    # "proxyUid":I
    .local v4, "proxyPkg":Ljava/lang/String;
    .local v10, "proxyAttributionTag":Ljava/lang/String;
    .local v11, "proxyUid":I
    .local v19, "uidState":I
    .local v20, "flags":I
    .local v22, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    :goto_1
    const-wide/16 v23, 0x0

    cmp-long v21, v12, v23

    const-string v1, "]"

    move/from16 v25, v7

    .end local v7    # "k":I
    .local v25, "k":I
    const-string v7, ", attributionTag="

    move-wide/from16 v26, v14

    .end local v14    # "rejectTime":J
    .local v26, "rejectTime":J
    const-string v14, ", pkg="

    const-string/jumbo v15, "uid="

    move-object/from16 v28, v1

    const-string v1, " proxy["

    move-object/from16 v29, v10

    .end local v10    # "proxyAttributionTag":Ljava/lang/String;
    .local v29, "proxyAttributionTag":Ljava/lang/String;
    const-string v10, ")"

    move-object/from16 v30, v7

    const-string v7, " ("

    if-lez v21, :cond_3

    .line 5105
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5106
    const-string v3, "Access: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5107
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5108
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5109
    invoke-virtual {v2, v12, v13}, Ljava/util/Date;->setTime(J)V

    .line 5110
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5111
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5112
    sub-long v2, v12, p6

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5113
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5114
    cmp-long v2, v5, v23

    if-lez v2, :cond_1

    .line 5115
    const-string v2, " duration="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5116
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5118
    :cond_1
    if-ltz v11, :cond_2

    .line 5119
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5120
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5121
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 5122
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5123
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5124
    move-object/from16 v2, v30

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5125
    move-object/from16 v3, v29

    .end local v29    # "proxyAttributionTag":Ljava/lang/String;
    .local v3, "proxyAttributionTag":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5126
    move-wide/from16 v29, v5

    move-object/from16 v5, v28

    .end local v5    # "accessDuration":J
    .local v29, "accessDuration":J
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 5118
    .end local v3    # "proxyAttributionTag":Ljava/lang/String;
    .restart local v5    # "accessDuration":J
    .local v29, "proxyAttributionTag":Ljava/lang/String;
    :cond_2
    move-object/from16 v3, v29

    move-object/from16 v2, v30

    move-wide/from16 v29, v5

    move-object/from16 v5, v28

    .line 5128
    .end local v5    # "accessDuration":J
    .restart local v3    # "proxyAttributionTag":Ljava/lang/String;
    .local v29, "accessDuration":J
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .line 5104
    .end local v3    # "proxyAttributionTag":Ljava/lang/String;
    .restart local v5    # "accessDuration":J
    .local v29, "proxyAttributionTag":Ljava/lang/String;
    :cond_3
    move-object/from16 v3, v29

    move-object/from16 v2, v30

    move-wide/from16 v29, v5

    move-object/from16 v5, v28

    .line 5131
    .end local v5    # "accessDuration":J
    .restart local v3    # "proxyAttributionTag":Ljava/lang/String;
    .local v29, "accessDuration":J
    :goto_3
    cmp-long v6, v26, v23

    if-lez v6, :cond_5

    .line 5132
    move-object/from16 v6, p10

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5133
    move-wide/from16 v23, v12

    .end local v12    # "accessTime":J
    .local v23, "accessTime":J
    const-string v12, "Reject: "

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5134
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5135
    move-object/from16 v12, p9

    move-wide/from16 v31, v8

    move-wide/from16 v8, v26

    move-wide/from16 v26, v31

    .local v8, "rejectTime":J
    .local v26, "key":J
    invoke-virtual {v12, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 5136
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5137
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5138
    sub-long v12, v8, p6

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5139
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5140
    if-ltz v11, :cond_4

    .line 5141
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5142
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5143
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 5144
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5145
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5146
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5147
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5148
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5150
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_4

    .line 5131
    .end local v23    # "accessTime":J
    .local v8, "key":J
    .restart local v12    # "accessTime":J
    .local v26, "rejectTime":J
    :cond_5
    move-object/from16 v6, p10

    move-wide/from16 v23, v12

    move-wide/from16 v31, v8

    move-wide/from16 v8, v26

    move-wide/from16 v26, v31

    .line 5084
    .end local v3    # "proxyAttributionTag":Ljava/lang/String;
    .end local v4    # "proxyPkg":Ljava/lang/String;
    .end local v8    # "key":J
    .end local v11    # "proxyUid":I
    .end local v12    # "accessTime":J
    .end local v18    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .end local v19    # "uidState":I
    .end local v20    # "flags":I
    .end local v26    # "rejectTime":J
    .end local v29    # "accessDuration":J
    :goto_4
    add-int/lit8 v7, v25, 0x1

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    move-object v3, v6

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v4, v22

    .end local v25    # "k":I
    .restart local v7    # "k":I
    goto/16 :goto_0

    .end local v16    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v17    # "keyCount":I
    .end local v22    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .local v4, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .local v5, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v6    # "keyCount":I
    :cond_6
    move-object/from16 v22, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v25, v7

    move-object v6, v3

    .line 5154
    .end local v4    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v5    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "keyCount":I
    .end local v7    # "k":I
    .restart local v16    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v17    # "keyCount":I
    .restart local v22    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    move-object/from16 v1, p4

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 5155
    .local v2, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5156
    const-wide v4, 0x7fffffffffffffffL

    .line 5157
    .local v4, "earliestElapsedTime":J
    const-wide/16 v7, 0x0

    .line 5158
    .local v7, "maxNumStarts":J
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$1700(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 5159
    .local v9, "numInProgressEvents":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-ge v10, v9, :cond_7

    .line 5160
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$1700(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 5162
    .local v11, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 5163
    iget v12, v11, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    int-to-long v12, v12

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 5159
    .end local v11    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 5166
    .end local v10    # "i":I
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Running start at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5167
    sub-long v10, p2, v4

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5168
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5170
    const-wide/16 v10, 0x1

    cmp-long v10, v7, v10

    if-lez v10, :cond_8

    .line 5171
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "startNesting="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5172
    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 5175
    .end local v4    # "earliestElapsedTime":J
    .end local v7    # "maxNumStarts":J
    .end local v9    # "numInProgressEvents":I
    :cond_8
    return-void
.end method

.method private dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterAttributionTag"    # Ljava/lang/String;
    .param p3, "filter"    # I
    .param p4, "nowElapsed"    # J
    .param p6, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p7, "now"    # J
    .param p9, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p10, "date"    # Ljava/util/Date;
    .param p11, "prefix"    # Ljava/lang/String;

    .line 5060
    move-object/from16 v11, p1

    move-object/from16 v12, p6

    move-object/from16 v13, p11

    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 5061
    .local v14, "numAttributions":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_2

    .line 5062
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 5063
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 5062
    move-object/from16 v10, p2

    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5064
    goto :goto_1

    .line 5062
    :cond_0
    move-object/from16 v10, p2

    .line 5067
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5068
    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    .line 5070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5061
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 5072
    .end local v15    # "i":I
    :cond_2
    return-void
.end method

.method private enforceManageAppOpsModes(III)V
    .locals 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "targetUid"    # I

    .line 2194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2195
    return-void

    .line 2197
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2198
    .local v0, "callingUser":I
    monitor-enter p0

    .line 2199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 2200
    if-ltz p3, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2203
    monitor-exit p0

    return-void

    .line 2206
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2207
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2208
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2207
    const-string v5, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2209
    return-void

    .line 2206
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJJI)V"
        }
    .end annotation

    .line 2061
    .local p4, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v0, p5, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2062
    if-eq p1, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_2

    .line 2064
    :cond_1
    if-ne p1, v1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2067
    :goto_2
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_3

    .line 2068
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2070
    :cond_3
    if-nez p2, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2073
    :goto_4
    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_6

    .line 2074
    if-nez p3, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2077
    :cond_6
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_7

    .line 2078
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2080
    :cond_7
    if-nez p4, :cond_8

    move v0, v3

    goto :goto_6

    :cond_8
    move v0, v2

    :goto_6
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2083
    :goto_7
    const/16 v0, 0xf

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 2086
    invoke-static {p6, p7}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 2087
    cmp-long v0, p8, p6

    if-lez v0, :cond_9

    move v2, v3

    :cond_9
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2088
    const/16 v0, 0x1f

    invoke-static {p10, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 2089
    return-void
.end method

.method private evalAllForegroundOpsLocked()V
    .locals 3

    .line 2765
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidi":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2766
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2767
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_0

    .line 2768
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2765
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2771
    .end local v0    # "uidi":I
    :cond_1
    return-void
.end method

.method private getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3401
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getBypassforPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/app/AppOpsManager$RestrictionBypass;
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3893
    new-instance v0, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 3894
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    .line 3893
    const-string v4, "android.permission.EXEMPT_FROM_AUDIO_RECORD_RESTRICTIONS"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZ)V

    return-object v0
.end method

.method private static getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;
    .locals 1
    .param p0, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p1, "elapsedNow"    # J

    .line 1995
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Op;->createEntryLocked()Landroid/app/AppOpsManager$OpEntry;

    move-result-object v0

    return-object v0
.end method

.method private getOpLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "bypass"    # Landroid/app/AppOpsManager$RestrictionBypass;
    .param p6, "edit"    # Z

    .line 4056
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 4057
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 4058
    const/4 v1, 0x0

    return-object v1

    .line 4060
    :cond_0
    invoke-direct {p0, v0, p1, p2, p6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;
    .locals 8
    .param p1, "ops"    # Lcom/android/server/appop/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "edit"    # Z

    .line 4064
    invoke-virtual {p1, p2}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    .line 4065
    .local v0, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v0, :cond_1

    .line 4066
    if-nez p4, :cond_0

    .line 4067
    const/4 v1, 0x0

    return-object v1

    .line 4069
    :cond_0
    new-instance v1, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v4, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object v2, v1

    move-object v3, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    move-object v0, v1

    .line 4070
    invoke-virtual {p1, p2, v0}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 4072
    :cond_1
    if-eqz p4, :cond_2

    .line 4073
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 4075
    :cond_2
    return-object v0
.end method

.method private getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "bypass"    # Landroid/app/AppOpsManager$RestrictionBypass;
    .param p5, "edit"    # Z

    .line 3992
    invoke-direct {p0, p1, p5}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 3993
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3994
    return-object v1

    .line 3997
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    .line 3998
    if-nez p5, :cond_1

    .line 3999
    return-object v1

    .line 4001
    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 4004
    :cond_2
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4005
    .local v2, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v2, :cond_4

    .line 4006
    if-nez p5, :cond_3

    .line 4007
    return-object v1

    .line 4009
    :cond_3
    new-instance v1, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v1, p2, v0}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    move-object v2, v1

    .line 4010
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4013
    :cond_4
    if-eqz p5, :cond_6

    .line 4014
    if-eqz p4, :cond_5

    .line 4015
    iput-object p4, v2, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 4018
    :cond_5
    if-eqz p3, :cond_6

    .line 4019
    iget-object v1, v2, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4023
    :cond_6
    return-object v2
.end method

.method private getPackageListAndResample()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6044
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageNamesForSampling()Ljava/util/List;

    move-result-object v0

    .line 6045
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 6046
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->resamplePackageAndAppOpLocked(Ljava/util/List;)V

    .line 6047
    monitor-exit p0

    .line 6048
    return-object v0

    .line 6047
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPackageNamesForSampling()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6127
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 6129
    .local v1, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v2

    .line 6130
    .local v2, "packages":Lcom/android/server/pm/PackageList;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6131
    .local v4, "packageName":Ljava/lang/String;
    const/16 v5, 0x1000

    .line 6132
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 6131
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 6133
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v5}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6134
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6136
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 6137
    :cond_1
    return-object v0
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I

    .line 6216
    const/4 v0, 0x0

    .line 6220
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6222
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 6225
    goto :goto_0

    .line 6223
    :catch_0
    move-exception v1

    .line 6227
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 6228
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 6230
    :cond_1
    return-object v0
.end method

.method private getRuntimeAppOpsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6116
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 6117
    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsService;->shouldCollectNotes(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6118
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6121
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .line 3780
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 3781
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_1

    .line 3782
    if-nez p2, :cond_0

    .line 3783
    const/4 v1, 0x0

    return-object v1

    .line 3785
    :cond_0
    new-instance v1, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    move-object v0, v1

    .line 3786
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3788
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 3790
    :goto_0
    return-object v0
.end method

.method private initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6073
    .local p1, "candidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 6074
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getRuntimeAppOpsList()Ljava/util/List;

    move-result-object v1

    .line 6075
    .local v1, "runtimeAppOpsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 6077
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v5, 0x7

    invoke-virtual {v3, v5, v6, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 6078
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 6079
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v2

    .line 6080
    .local v2, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/appop/AppOpsService$9;

    invoke-direct {v4, p0, p1}, Lcom/android/server/appop/AppOpsService$9;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 6111
    return-void
.end method

.method private isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 4079
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4080
    const/4 v0, 0x0

    return v0

    .line 4082
    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4083
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appBypass"    # Landroid/app/AppOpsManager$RestrictionBypass;

    .line 4088
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4089
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 4091
    .local v1, "restrictionSetCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_4

    .line 4094
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 4095
    .local v4, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v4, p2, p3, v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4096
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v5

    .line 4097
    .local v5, "opBypass":Landroid/app/AppOpsManager$RestrictionBypass;
    if-eqz v5, :cond_2

    .line 4099
    monitor-enter p0

    .line 4100
    :try_start_0
    iget-boolean v6, v5, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz v6, :cond_0

    if-eqz p4, :cond_0

    iget-boolean v6, p4, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz v6, :cond_0

    .line 4101
    monitor-exit p0

    return v3

    .line 4103
    :cond_0
    iget-boolean v6, v5, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz v6, :cond_1

    if-eqz p4, :cond_1

    iget-boolean v6, p4, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz v6, :cond_1

    .line 4105
    monitor-exit p0

    return v3

    .line 4107
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4109
    :cond_2
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 4091
    .end local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .end local v5    # "opBypass":Landroid/app/AppOpsManager$RestrictionBypass;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4112
    .end local v2    # "i":I
    :cond_4
    return v3
.end method

.method private isSamplingTarget(Landroid/content/pm/PackageInfo;)Z
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 6142
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6143
    return v0

    .line 6145
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 6146
    .local v1, "requestedPermissions":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 6147
    return v0

    .line 6149
    :cond_1
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 6152
    .local v4, "permission":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6155
    .local v5, "permissionInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 6156
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 6157
    return v7

    .line 6153
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v5

    .line 6154
    .local v5, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 6149
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6160
    :cond_3
    return v0
.end method

.method public static synthetic lambda$1CB62TNmPVdrHvls01D5LKYSp4w(Lcom/android/server/appop/AppOpsService;IIZLcom/android/internal/app/IAppOpsCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public static synthetic lambda$7TpfX4NXXUoI4jqIGxhEk65lHLs(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$AfBLuTvVESlqN91IyRX84hMV5nE(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$CVMS-lLMRyZYA1tmqvyuOloKBu0(Lcom/android/server/appop/AppOpsService;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updatePendingState(JI)V

    return-void
.end method

.method public static synthetic lambda$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$GUeKjlbzT65s86vaxy5gvOajuhw(Lcom/android/server/appop/AppOpsService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method public static synthetic lambda$NDUi03ZZuuR42-RDEIQ0UELKycc(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$collectAsyncNotedOp$2(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 3
    .param p0, "asyncNotedOp"    # Landroid/app/AsyncNotedAppOp;
    .param p1, "wasNoteForwarded"    # [Z
    .param p2, "opCode"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "cb"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 3363
    :try_start_0
    invoke-interface {p6, p0}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;->opNoted(Landroid/app/AsyncNotedAppOp;)V

    .line 3364
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3369
    goto :goto_0

    .line 3365
    :catch_0
    move-exception v0

    .line 3366
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not forward noteOp of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOps"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3370
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$collectNoteOpCallsForValidation$3(Lcom/android/server/appop/AppOpsService;)V
    .locals 0
    .param p0, "that"    # Lcom/android/server/appop/AppOpsService;

    .line 6557
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->writeNoteOps()V

    .line 6558
    return-void
.end method

.method private static synthetic lambda$collectNoteOpCallsForValidation$4(Lcom/android/server/appop/AppOpsService;)V
    .locals 1
    .param p0, "that"    # Lcom/android/server/appop/AppOpsService;

    .line 6556
    new-instance v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$IcRpnjSl3QKeLKuAUwu4sWn4PL4;

    invoke-direct {v0, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$IcRpnjSl3QKeLKuAUwu4sWn4PL4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 6559
    return-void
.end method

.method public static synthetic lambda$gQy7GOuCV6GbjQtdNhNG6xld8I4(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Z)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getHistoricalOps$1(Landroid/os/RemoteCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/os/RemoteCallback;

    .line 2104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$m04KE9D7Jmkj_GEr7pcdIY29xtA(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$mfUWTdGevxEoIUv1cEPEFG0qAaI(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$p0ZLmKR_KoZGKlw2X3zSLMlh_MU(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private noteOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I
    .locals 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 3079
    move-object v12, p0

    move/from16 v13, p2

    invoke-direct {p0, v13}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3080
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3081
    invoke-static/range {p2 .. p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3082
    .local v14, "resolvedPackageName":Ljava/lang/String;
    if-nez v14, :cond_0

    .line 3083
    const/4 v0, 0x1

    return v0

    .line 3085
    :cond_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v14

    move-object/from16 v4, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)I
    .locals 21
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "proxyUid"    # I
    .param p6, "proxyPackageName"    # Ljava/lang/String;
    .param p7, "proxyAttributionTag"    # Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "shouldCollectAsyncNotedOp"    # Z
    .param p10, "message"    # Ljava/lang/String;
    .param p11, "shouldCollectMessage"    # Z

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p8

    .line 3097
    const/4 v7, 0x2

    :try_start_0
    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v0

    .line 3101
    .local v15, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    nop

    .line 3103
    monitor-enter p0

    .line 3104
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v15

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 3106
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3107
    invoke-direct {v9, v10, v11, v12, v1}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 3111
    monitor-exit p0

    return v7

    .line 3113
    :cond_0
    invoke-direct {v9, v0, v10, v11, v1}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v2

    move-object v8, v2

    .line 3114
    .local v8, "op":Lcom/android/server/appop/AppOpsService$Op;
    invoke-direct {v9, v11, v10, v12, v15}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3115
    invoke-direct {v9, v10, v11, v12, v1}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 3117
    monitor-exit p0

    return v1

    .line 3119
    :cond_1
    invoke-static {v8, v8, v13}, Lcom/android/server/appop/AppOpsService$Op;->access$1000(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v2

    move-object v7, v2

    .line 3120
    .local v7, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-virtual {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 3121
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Noting op not finished: uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " startTime of in progress event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$1700(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3121
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    move v5, v2

    .line 3127
    .local v5, "switchCode":I
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    move-object v4, v2

    .line 3130
    .local v4, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 3131
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v4, v10, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v1

    .line 3132
    .local v1, "uidMode":I
    if-eqz v1, :cond_3

    .line 3136
    iget v2, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v7, v2, v14}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V

    .line 3137
    invoke-direct {v9, v10, v11, v12, v1}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 3138
    monitor-exit p0

    return v1

    .line 3140
    .end local v1    # "uidMode":I
    :cond_3
    goto :goto_1

    .line 3141
    :cond_4
    if-eq v5, v10, :cond_5

    invoke-direct {v9, v0, v5, v11, v1}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    goto :goto_0

    .line 3142
    :cond_5
    move-object v1, v8

    :goto_0
    nop

    .line 3143
    .local v1, "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v2

    .line 3144
    .local v2, "mode":I
    if-eqz v2, :cond_6

    .line 3148
    iget v3, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v7, v3, v14}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V

    .line 3149
    invoke-direct {v9, v10, v11, v12, v2}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 3150
    monitor-exit p0

    return v2

    .line 3159
    .end local v1    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v2    # "mode":I
    :cond_6
    :goto_1
    invoke-direct {v9, v10, v11, v12, v6}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 3160
    iget v3, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v1, v7

    move/from16 v2, p5

    move/from16 v16, v3

    move-object/from16 v3, p6

    move-object/from16 v17, v4

    .end local v4    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v17, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move-object/from16 v4, p7

    move/from16 v18, v5

    .end local v5    # "switchCode":I
    .local v18, "switchCode":I
    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(ILjava/lang/String;Ljava/lang/String;II)V

    .line 3163
    if-eqz p9, :cond_7

    .line 3164
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p8

    move-object/from16 v19, v7

    .end local v7    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .local v19, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    move-object/from16 v7, p10

    move-object/from16 v20, v8

    .end local v8    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v20, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v8, p11

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    goto :goto_2

    .line 3163
    .end local v19    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v7    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v8    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_7
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    .line 3168
    .end local v7    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v8    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v19    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :goto_2
    monitor-exit p0

    return v16

    .line 3169
    .end local v0    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v17    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v18    # "switchCode":I
    .end local v19    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3098
    .end local v15    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 3099
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string/jumbo v2, "noteOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3100
    return v7
.end method

.method private notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .locals 6
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ActiveCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 3620
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3622
    .local v0, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 3623
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3624
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3626
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_start_1
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3629
    goto :goto_1

    .line 3627
    :catch_0
    move-exception v5

    .line 3623
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3632
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3633
    nop

    .line 3634
    return-void

    .line 3632
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3633
    throw v2
.end method

.method private notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 2
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2543
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2544
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2545
    .local v1, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    .line 2543
    .end local v1    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2547
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/server/appop/AppOpsService$ModeCallback;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2551
    const/4 v0, -0x2

    if-eq p3, v0, :cond_0

    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v1, :cond_0

    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-eq v1, p3, :cond_0

    .line 2552
    return-void

    .line 2557
    :cond_0
    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 2558
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .local v0, "switchedCodes":[I
    goto :goto_0

    .line 2559
    .end local v0    # "switchedCodes":[I
    :cond_1
    iget v0, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 2560
    new-array v0, v3, [I

    aput p2, v0, v2

    .restart local v0    # "switchedCodes":[I
    goto :goto_0

    .line 2562
    .end local v0    # "switchedCodes":[I
    :cond_2
    new-array v0, v3, [I

    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    aput v1, v0, v2

    .line 2565
    .restart local v0    # "switchedCodes":[I
    :goto_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    .line 2569
    .local v3, "switchedCode":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2571
    .local v4, "identity":J
    :try_start_0
    iget-object v6, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v6, v3, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2575
    :catchall_0
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2576
    throw v1

    .line 2572
    :catch_0
    move-exception v6

    .line 2575
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2576
    nop

    .line 2565
    .end local v3    # "switchedCode":I
    .end local v4    # "identity":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2578
    :cond_3
    return-void
.end method

.method private notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V
    .locals 17
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "onlyForeground"    # Z
    .param p4, "callbackToIgnore"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2290
    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 2291
    .local v8, "uidPackageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2293
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 2294
    :try_start_0
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move/from16 v9, p1

    :try_start_1
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2295
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v0, :cond_2

    .line 2296
    :try_start_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2297
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2298
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2299
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz p3, :cond_0

    iget v5, v4, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 2300
    goto :goto_1

    .line 2303
    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2304
    .local v5, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v5, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2305
    if-nez v1, :cond_1

    .line 2306
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v6

    .line 2308
    :cond_1
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2297
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v5    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2338
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v8

    goto/16 :goto_a

    .line 2312
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_2
    :try_start_3
    array-length v2, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v3, 0x0

    move-object v10, v1

    .end local v1    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v10, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_2
    if-ge v3, v2, :cond_8

    :try_start_4
    aget-object v1, v8, v3

    .line 2313
    .local v1, "uidPackageName":Ljava/lang/String;
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v0, v4

    .line 2314
    if-eqz v0, :cond_7

    .line 2315
    if-nez v10, :cond_3

    .line 2316
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v4, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_3

    .line 2315
    .end local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_3
    move-object v4, v10

    .line 2318
    .end local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 2319
    .local v5, "callbackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_6

    .line 2320
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2321
    .local v10, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz p3, :cond_4

    iget v11, v10, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_4

    .line 2322
    goto :goto_5

    .line 2325
    :cond_4
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 2326
    .local v11, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v11, :cond_5

    .line 2327
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v12

    .line 2328
    invoke-virtual {v4, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    :cond_5
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2319
    .end local v10    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v11    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    move-object v10, v4

    goto :goto_6

    .line 2338
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v1    # "uidPackageName":Ljava/lang/String;
    .end local v5    # "callbackCount":I
    .end local v6    # "i":I
    :catchall_1
    move-exception v0

    move-object v1, v4

    move-object/from16 v16, v8

    goto/16 :goto_a

    .line 2312
    .end local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v10, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2338
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v16, v8

    move-object v1, v10

    goto/16 :goto_a

    .line 2335
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_8
    if-eqz v10, :cond_9

    if-eqz p4, :cond_9

    .line 2336
    :try_start_6
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2338
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_9
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2340
    if-nez v10, :cond_a

    .line 2341
    return-void

    .line 2344
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 2345
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2346
    .local v11, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/ArraySet;

    .line 2347
    .local v12, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v12, :cond_b

    .line 2348
    iget-object v13, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 2350
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x0

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 2348
    move-object/from16 v2, p0

    move-object v3, v11

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v16, v8

    goto :goto_9

    .line 2353
    :cond_b
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 2354
    .local v13, "reportedPackageCount":I
    const/4 v1, 0x0

    move v14, v1

    .local v14, "j":I
    :goto_8
    if-ge v14, v13, :cond_c

    .line 2355
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 2356
    .local v15, "reportedPackageName":Ljava/lang/String;
    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 2358
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2356
    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v16, v8

    move-object v8, v6

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .local v16, "uidPackageNames":[Ljava/lang/String;
    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2354
    .end local v15    # "reportedPackageName":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v16

    goto :goto_8

    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :cond_c
    move-object/from16 v16, v8

    .line 2344
    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .end local v11    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v12    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "reportedPackageCount":I
    .end local v14    # "j":I
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    :goto_9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v16

    goto :goto_7

    .line 2362
    .end local v0    # "i":I
    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :cond_d
    return-void

    .line 2338
    :catchall_3
    move-exception v0

    move-object/from16 v16, v8

    move-object v1, v10

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    goto :goto_a

    .end local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v8

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    goto :goto_a

    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v9, p1

    move-object/from16 v16, v8

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    :goto_a
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_a
.end method

.method private notifyOpChangedSync(IILjava/lang/String;I)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 2458
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    .line 2459
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 2460
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    if-eqz v0, :cond_0

    .line 2461
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;I)V

    .line 2463
    :cond_0
    return-void
.end method

.method private notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;I)V
    .locals 6
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$NotedCallback;",
            ">;II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3711
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3713
    .local v0, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 3714
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3715
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3717
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_start_1
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsNotedCallback;->opNoted(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3720
    goto :goto_1

    .line 3718
    :catch_0
    move-exception v5

    .line 3714
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3723
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3724
    nop

    .line 3725
    return-void

    .line 3723
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3724
    throw v2
.end method

.method private notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;I)V
    .locals 6
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$StartedCallback;",
            ">;II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3666
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3668
    .local v0, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 3669
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3670
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3672
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_start_1
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsStartedCallback;->opStarted(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3675
    goto :goto_1

    .line 3673
    :catch_0
    move-exception v5

    .line 3669
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3678
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3679
    nop

    .line 3680
    return-void

    .line 3678
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3679
    throw v2
.end method

.method private notifyWatchersOfChange(II)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 5813
    monitor-enter p0

    .line 5814
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 5815
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v0, :cond_0

    .line 5816
    monitor-exit p0

    return-void

    .line 5818
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v0, v1

    .line 5819
    .local v0, "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5821
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 5822
    return-void

    .line 5819
    .end local v0    # "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static onClientDeath(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "attributedOp"    # Lcom/android/server/appop/AppOpsService$AttributedOp;
    .param p1, "clientId"    # Landroid/os/IBinder;

    .line 1477
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onClientDeath(Landroid/os/IBinder;)V

    .line 1478
    return-void
.end method

.method static onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I
    .locals 21
    .param p0, "shell"    # Lcom/android/server/appop/AppOpsService$Shell;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4775
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 4776
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4778
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 4779
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 4781
    .local v4, "err":Ljava/io/PrintWriter;
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "read-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "set"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_1

    :sswitch_5
    const-string v0, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "query-op"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "write-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 5033
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_12

    .line 5019
    :pswitch_0
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 5020
    .local v0, "res":I
    if-gez v0, :cond_2

    .line 5021
    return v0

    .line 5024
    :cond_2
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 5025
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 5030
    return v7

    .line 5028
    :cond_3
    return v5

    .line 5004
    .end local v0    # "res":I
    :pswitch_1
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 5005
    .restart local v0    # "res":I
    if-gez v0, :cond_4

    .line 5006
    return v0

    .line 5009
    :cond_4
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 5010
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-string v16, "appops start shell command"

    const/16 v17, 0x1

    invoke-interface/range {v8 .. v17}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)I

    .line 5016
    return v7

    .line 5014
    :cond_5
    return v5

    .line 4992
    .end local v0    # "res":I
    :pswitch_2
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 4993
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 4992
    invoke-direct {v0, v6, v8, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 4994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4996
    .local v8, "token":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 4997
    const-string v0, "Last settings read."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4999
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5000
    nop

    .line 5001
    return v7

    .line 4999
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5000
    nop

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "err":Ljava/io/PrintWriter;
    .end local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v0

    .line 4977
    .end local v8    # "token":J
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :pswitch_3
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 4978
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 4977
    invoke-direct {v0, v6, v8, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 4979
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4981
    .restart local v8    # "token":J
    :try_start_3
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4982
    :try_start_4
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v10, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4983
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4984
    :try_start_5
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 4985
    const-string v0, "Current settings written."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4987
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 4988
    nop

    .line 4989
    return v7

    .line 4983
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "err":Ljava/io/PrintWriter;
    .end local v8    # "token":J
    .end local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1    # "cmd":Ljava/lang/String;
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4987
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local v8    # "token":J
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4988
    nop

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "err":Ljava/io/PrintWriter;
    .end local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v0

    .line 4941
    .end local v8    # "token":J
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x0

    .line 4942
    .local v0, "packageName":Ljava/lang/String;
    const/4 v6, -0x2

    .line 4943
    .local v6, "userId":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "argument":Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 4944
    const-string v8, "--user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4945
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 4946
    .local v8, "userStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    move v6, v10

    .line 4947
    .end local v8    # "userStr":Ljava/lang/String;
    goto :goto_2

    .line 4948
    :cond_6
    if-nez v0, :cond_7

    .line 4949
    move-object v0, v9

    goto :goto_2

    .line 4951
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unsupported argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4952
    return v5

    .line 4957
    .end local v9    # "argument":Ljava/lang/String;
    :cond_8
    const/4 v8, -0x2

    if-ne v6, v8, :cond_9

    .line 4958
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    move v6, v8

    .line 4961
    :cond_9
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v8, v6, v0}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 4962
    const-string v8, "Reset all modes for: "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4963
    if-ne v6, v5, :cond_a

    .line 4964
    const-string v8, "all users"

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 4966
    :cond_a
    const-string/jumbo v8, "user "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4968
    :goto_3
    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4969
    if-nez v0, :cond_b

    .line 4970
    const-string v8, "all packages"

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 4972
    :cond_b
    const-string/jumbo v8, "package "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4974
    :goto_4
    return v7

    .line 4913
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    :pswitch_5
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v0

    .line 4914
    .local v0, "res":I
    if-gez v0, :cond_c

    .line 4915
    return v0

    .line 4917
    :cond_c
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v6, v6, [I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v9, v6, v7

    invoke-interface {v8, v6}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 4919
    .local v6, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_d

    goto :goto_8

    .line 4923
    :cond_d
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 4924
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 4925
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v10, 0x0

    .line 4926
    .local v10, "hasMatch":Z
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 4927
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    .line 4928
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 4929
    .local v13, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    iget v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-ne v14, v15, :cond_e

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    iget v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-ne v14, v15, :cond_e

    .line 4930
    const/4 v10, 0x1

    .line 4931
    goto :goto_7

    .line 4927
    .end local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 4934
    .end local v12    # "j":I
    :cond_f
    :goto_7
    if-eqz v10, :cond_10

    .line 4935
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4923
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "hasMatch":Z
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 4938
    .end local v8    # "i":I
    :cond_11
    return v7

    .line 4920
    :cond_12
    :goto_8
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4921
    return v7

    .line 4815
    .end local v0    # "res":I
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_6
    invoke-virtual {v1, v7, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 4816
    .restart local v0    # "res":I
    if-gez v0, :cond_13

    .line 4817
    return v0

    .line 4820
    :cond_13
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4821
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v9, :cond_18

    .line 4823
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 4825
    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_14

    new-array v12, v6, [I

    iget v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v13, v12, v7

    goto :goto_9

    :cond_14
    move-object v12, v10

    .line 4823
    :goto_9
    invoke-interface {v9, v11, v12}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v9

    .line 4826
    .local v9, "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v9, :cond_15

    .line 4827
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4829
    :cond_15
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 4831
    iget v14, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v14, v5, :cond_16

    new-array v10, v6, [I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v6, v10, v7

    .line 4829
    :cond_16
    invoke-interface {v11, v12, v13, v10}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v6

    .line 4832
    .end local v9    # "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v6, "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_17

    .line 4833
    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4835
    .end local v6    # "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_17
    goto :goto_a

    .line 4836
    :cond_18
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 4838
    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_19

    new-array v10, v6, [I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v6, v10, v7

    .line 4836
    :cond_19
    invoke-interface {v9, v11, v10}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v6

    move-object v8, v6

    .line 4840
    :goto_a
    if-eqz v8, :cond_28

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1a

    move-object/from16 v20, v8

    goto/16 :goto_10

    .line 4848
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 4849
    .local v9, "now":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_27

    .line 4850
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .line 4851
    .local v11, "packageOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1b

    .line 4852
    const-string v12, "Uid mode: "

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4854
    :cond_1b
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v12

    .line 4855
    .local v12, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_26

    .line 4856
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$OpEntry;

    .line 4857
    .local v14, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4858
    const-string v15, ": "

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4859
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4860
    iget-object v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-wide/16 v16, -0x1

    const/16 v5, 0x1f

    if-nez v15, :cond_20

    .line 4861
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v18

    cmp-long v15, v18, v16

    if-eqz v15, :cond_1c

    .line 4862
    const-string v15, "; time="

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4863
    nop

    .line 4864
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v18

    move-object/from16 v20, v8

    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v20, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    sub-long v7, v9, v18

    .line 4863
    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4865
    const-string v7, " ago"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d

    .line 4861
    .end local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_1c
    move-object/from16 v20, v8

    .line 4867
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_d
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_1d

    .line 4868
    const-string v7, "; rejectTime="

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4869
    nop

    .line 4870
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v7

    sub-long v7, v9, v7

    .line 4869
    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4871
    const-string v7, " ago"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4873
    :cond_1d
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 4874
    const-string v5, " (running)"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v8, v6

    goto/16 :goto_f

    .line 4875
    :cond_1e
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_1f

    .line 4876
    const-string v7, "; duration="

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4877
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move v8, v6

    goto/16 :goto_f

    .line 4875
    :cond_1f
    move v8, v6

    goto/16 :goto_f

    .line 4880
    .end local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_20
    move-object/from16 v20, v8

    .line 4881
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4882
    .local v7, "attributionEnt":Landroid/app/AppOpsManager$AttributedOpEntry;
    if-eqz v7, :cond_24

    .line 4883
    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v18

    cmp-long v8, v18, v16

    if-eqz v8, :cond_21

    .line 4884
    const-string v8, "; time="

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4885
    nop

    .line 4886
    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v18

    move v8, v6

    .end local v6    # "i":I
    .local v8, "i":I
    sub-long v5, v9, v18

    .line 4885
    invoke-static {v5, v6, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4888
    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e

    .line 4883
    .end local v8    # "i":I
    .restart local v6    # "i":I
    :cond_21
    move v8, v6

    .line 4890
    .end local v6    # "i":I
    .restart local v8    # "i":I
    :goto_e
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v18

    cmp-long v5, v18, v16

    if-eqz v5, :cond_22

    .line 4891
    const-string v5, "; rejectTime="

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4892
    nop

    .line 4893
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v18

    sub-long v5, v9, v18

    .line 4892
    invoke-static {v5, v6, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4895
    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4897
    :cond_22
    invoke-virtual {v7}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 4898
    const-string v5, " (running)"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    .line 4899
    :cond_23
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v18

    cmp-long v5, v18, v16

    if-eqz v5, :cond_25

    .line 4901
    const-string v5, "; duration="

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4902
    nop

    .line 4903
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v5

    .line 4902
    invoke-static {v5, v6, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_f

    .line 4882
    .end local v8    # "i":I
    .restart local v6    # "i":I
    :cond_24
    move v8, v6

    .line 4907
    .end local v6    # "i":I
    .end local v7    # "attributionEnt":Landroid/app/AppOpsManager$AttributedOpEntry;
    .restart local v8    # "i":I
    :cond_25
    :goto_f
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 4855
    .end local v14    # "ent":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v13, v13, 0x1

    move v6, v8

    move-object/from16 v8, v20

    const/4 v5, -0x1

    const/4 v7, 0x0

    goto/16 :goto_c

    .end local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "i":I
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_26
    move-object/from16 v20, v8

    move v8, v6

    .line 4849
    .end local v6    # "i":I
    .end local v11    # "packageOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v12    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v13    # "j":I
    .local v8, "i":I
    .restart local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    add-int/lit8 v6, v8, 0x1

    move-object/from16 v8, v20

    const/4 v5, -0x1

    const/4 v7, 0x0

    .end local v8    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_b

    .line 4910
    .end local v6    # "i":I
    .end local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_27
    const/4 v5, 0x0

    return v5

    .line 4840
    .end local v9    # "now":J
    :cond_28
    move-object/from16 v20, v8

    .line 4841
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_10
    const-string v5, "No operations."

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4842
    iget v5, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_29

    iget v5, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    const/16 v6, 0x64

    if-ge v5, v6, :cond_29

    .line 4843
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 4844
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    .line 4843
    invoke-static {v6}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4846
    :cond_29
    const/4 v5, 0x0

    return v5

    .line 4783
    .end local v0    # "res":I
    .end local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_7
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    move v5, v0

    .line 4784
    .local v5, "res":I
    if-gez v5, :cond_2a

    .line 4785
    return v5

    .line 4787
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 4788
    .local v6, "modeStr":Ljava/lang/String;
    if-nez v6, :cond_2b

    .line 4789
    const-string v0, "Error: Mode not specified."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4790
    const/4 v7, -0x1

    return v7

    .line 4793
    :cond_2b
    invoke-static {v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    move v7, v0

    .line 4794
    .local v7, "mode":I
    if-gez v7, :cond_2c

    .line 4795
    const/4 v8, -0x1

    return v8

    .line 4798
    :cond_2c
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-nez v0, :cond_2d

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 4799
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8, v9, v10, v7}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_11

    .line 4801
    :cond_2d
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v0, :cond_2e

    .line 4803
    :try_start_a
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 4804
    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 4805
    .local v0, "uid":I
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-interface {v8, v9, v0, v7}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 4808
    .end local v0    # "uid":I
    goto :goto_11

    .line 4806
    :catch_0
    move-exception v0

    .line 4807
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, -0x1

    return v8

    .line 4810
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2e
    :try_start_b
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v0, v8, v9, v7}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    .line 4812
    :goto_11
    const/4 v0, 0x0

    return v0

    .line 5033
    .end local v5    # "res":I
    .end local v6    # "modeStr":Ljava/lang/String;
    .end local v7    # "mode":I
    :goto_12
    return v0

    .line 5035
    :catch_1
    move-exception v0

    .line 5036
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5038
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v5, -0x1

    return v5

    :sswitch_data_0
    .sparse-switch
        -0x658cadaf -> :sswitch_7
        -0x458a76fa -> :sswitch_6
        0x18f56 -> :sswitch_5
        0x1bc62 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x6761d4f -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7c514e7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V
    .locals 7
    .param p1, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2170
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 2172
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2173
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 2174
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v0, :cond_1

    .line 2175
    iget v1, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Ops;->remove(I)V

    .line 2176
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2177
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 2178
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2179
    .local v2, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-eqz v2, :cond_1

    .line 2180
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2182
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2184
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2185
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2191
    .end local v0    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_1
    return-void
.end method

.method private readAttributionOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V
    .locals 26
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p3, "attribution"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4315
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v1, v1, v2}, Lcom/android/server/appop/AppOpsService$Op;->access$1000(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v13

    .line 4317
    .local v13, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    const-string/jumbo v3, "n"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 4318
    .local v14, "key":J
    invoke-static {v14, v15}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v12

    .line 4319
    .local v12, "uidState":I
    invoke-static {v14, v15}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v11

    .line 4321
    .local v11, "opFlags":I
    const-string/jumbo v3, "t"

    const-wide/16 v9, 0x0

    invoke-static {v0, v3, v9, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 4322
    .local v16, "accessTime":J
    const-string/jumbo v3, "r"

    invoke-static {v0, v3, v9, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 4323
    .local v6, "rejectTime":J
    const-string v3, "d"

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    .line 4324
    .local v18, "accessDuration":J
    const-string/jumbo v3, "pp"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4325
    .local v20, "proxyPkg":Ljava/lang/String;
    const-string/jumbo v3, "pu"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    .line 4326
    .local v21, "proxyUid":I
    const-string/jumbo v3, "pc"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4328
    .local v22, "proxyAttributionTag":Ljava/lang/String;
    cmp-long v3, v16, v9

    if-lez v3, :cond_0

    .line 4329
    move-object v3, v13

    move-wide/from16 v4, v16

    move-wide v0, v6

    .end local v6    # "rejectTime":J
    .local v0, "rejectTime":J
    move-wide/from16 v6, v18

    move/from16 v8, v21

    move-wide/from16 v23, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v22

    move/from16 v25, v11

    .end local v11    # "opFlags":I
    .local v25, "opFlags":I
    move v11, v12

    move v2, v12

    .end local v12    # "uidState":I
    .local v2, "uidState":I
    move/from16 v12, v25

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 4328
    .end local v0    # "rejectTime":J
    .end local v2    # "uidState":I
    .end local v25    # "opFlags":I
    .restart local v6    # "rejectTime":J
    .restart local v11    # "opFlags":I
    .restart local v12    # "uidState":I
    :cond_0
    move-wide v0, v6

    move-wide/from16 v23, v9

    move/from16 v25, v11

    move v2, v12

    .line 4332
    .end local v6    # "rejectTime":J
    .end local v11    # "opFlags":I
    .end local v12    # "uidState":I
    .restart local v0    # "rejectTime":J
    .restart local v2    # "uidState":I
    .restart local v25    # "opFlags":I
    :goto_0
    cmp-long v3, v0, v23

    if-lez v3, :cond_1

    .line 4333
    move/from16 v3, v25

    .end local v25    # "opFlags":I
    .local v3, "opFlags":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(JII)V

    goto :goto_1

    .line 4332
    .end local v3    # "opFlags":I
    .restart local v25    # "opFlags":I
    :cond_1
    move/from16 v3, v25

    .line 4335
    .end local v25    # "opFlags":I
    .restart local v3    # "opFlags":I
    :goto_1
    return-void
.end method

.method private readNoteOpCallerStackTraces()V
    .locals 4

    .line 1487
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1489
    return-void

    .line 1492
    :cond_0
    new-instance v0, Ljava/util/Scanner;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    .local v0, "read":Ljava/util/Scanner;
    :try_start_1
    const-string v1, "\\},"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 1494
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1495
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 1496
    .local v1, "jsonOps":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->fromJson(Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1497
    nop

    .end local v1    # "jsonOps":Ljava/lang/String;
    goto :goto_0

    .line 1498
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1501
    .end local v0    # "read":Ljava/util/Scanner;
    goto :goto_2

    .line 1492
    .restart local v0    # "read":Ljava/util/Scanner;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1499
    .end local v0    # "read":Ljava/util/Scanner;
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppOps"

    const-string v2, "Cannot parse traces noteOps"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1502
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private readOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4340
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4341
    .local v0, "opCode":I
    new-instance v7, Lcom/android/server/appop/AppOpsService$Op;

    iget v6, p2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 4343
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 4344
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    .line 4343
    const-string/jumbo v3, "m"

    invoke-static {p1, v3, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 4345
    .local v2, "mode":I
    invoke-static {v1, v2}, Lcom/android/server/appop/AppOpsService$Op;->access$302(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 4347
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4349
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 4350
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 4351
    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 4352
    goto :goto_0

    .line 4354
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4355
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "st"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4356
    const-string v6, "id"

    invoke-static {p1, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v1, v6}, Lcom/android/server/appop/AppOpsService;->readAttributionOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V

    goto :goto_1

    .line 4358
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <op>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4359
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4358
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4362
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 4364
    :cond_4
    iget-object v4, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_5

    .line 4365
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 4367
    :cond_5
    iget-object v4, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4368
    .local v4, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v4, :cond_6

    .line 4369
    new-instance v6, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v6, p3, p2}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    move-object v4, v6

    .line 4370
    iget-object v6, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, p3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4372
    :cond_6
    iget v6, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v4, v6, v1}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 4373
    return-void
.end method

.method private readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4270
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4271
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 4273
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 4274
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 4275
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 4276
    goto :goto_0

    .line 4279
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4280
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4281
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_1

    .line 4283
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <pkg>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4284
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4283
    const-string v5, "AppOps"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4287
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 4288
    :cond_4
    return-void
.end method

.method private readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4292
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4293
    .local v0, "uid":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    .line 4294
    .local v2, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4296
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    if-eq v4, v1, :cond_4

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 4297
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 4298
    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 4299
    goto :goto_0

    .line 4301
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4302
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "op"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4303
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/appop/AppOpsService;->readOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V

    goto :goto_1

    .line 4305
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <pkg>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4306
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4305
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4309
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 4310
    :cond_4
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 4311
    return-void
.end method

.method private readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4246
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4247
    .local v2, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4249
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 4250
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 4251
    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 4252
    goto :goto_0

    .line 4255
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4256
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "op"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4257
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4258
    .local v6, "code":I
    const-string/jumbo v7, "m"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4259
    .local v7, "mode":I
    invoke-virtual {p0, v6, v2, v7}, Lcom/android/server/appop/AppOpsService;->setUidMode(III)V

    .line 4260
    .end local v6    # "code":I
    .end local v7    # "mode":I
    goto :goto_1

    .line 4261
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <uid-ops>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4262
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4261
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4265
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 4266
    :cond_4
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 6164
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6165
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 6166
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 6167
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 6164
    .end local v1    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6170
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opCode"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 5971
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 5972
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5973
    return-void

    .line 5975
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 5977
    return-void
.end method

.method private reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opCode"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 5986
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/16 v1, 0x64

    invoke-static {p3, v0, v1}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    move-result v0

    .line 5989
    .local v0, "newLeftDistance":I
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    if-ge v1, v0, :cond_0

    .line 5990
    return-void

    .line 5993
    :cond_0
    if-le v1, v0, :cond_1

    .line 5994
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 5995
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 5998
    :cond_1
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 5999
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v1

    iget v3, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 6000
    new-instance v1, Landroid/app/RuntimeAppOpAccessMessage;

    iget v8, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    move-object v2, v1

    move v3, p1

    move v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Landroid/app/RuntimeAppOpAccessMessage;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 6003
    :cond_2
    return-void
.end method

.method private resampleAppOpForPackageLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6062
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 6063
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    .line 6064
    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 6065
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    .line 6066
    return-void
.end method

.method private resamplePackageAndAppOpLocked(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6053
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6054
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 6055
    nop

    .line 6056
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    .line 6055
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;)V

    .line 6058
    :cond_0
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6180
    if-nez p0, :cond_0

    .line 6181
    const-string/jumbo v0, "root"

    return-object v0

    .line 6182
    :cond_0
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    .line 6183
    const-string v0, "com.android.shell"

    return-object v0

    .line 6184
    :cond_1
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_2

    .line 6185
    const-string/jumbo v0, "media"

    return-object v0

    .line 6186
    :cond_2
    const/16 v0, 0x411

    if-ne p0, v0, :cond_3

    .line 6187
    const-string v0, "audioserver"

    return-object v0

    .line 6188
    :cond_3
    const/16 v0, 0x417

    if-ne p0, v0, :cond_4

    .line 6189
    const-string v0, "cameraserver"

    return-object v0

    .line 6190
    :cond_4
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_5

    if-nez p1, :cond_5

    .line 6191
    const-string v0, "android"

    return-object v0

    .line 6193
    :cond_5
    return-object p1
.end method

.method private static resolveUid(Ljava/lang/String;)I
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .line 6197
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 6198
    return v0

    .line 6200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_4
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    .line 6212
    return v0

    .line 6210
    :cond_2
    const/16 v0, 0x417

    return v0

    .line 6208
    :cond_3
    const/16 v0, 0x411

    return v0

    .line 6206
    :cond_4
    const/16 v0, 0x3f5

    return v0

    .line 6204
    :cond_5
    const/16 v0, 0x7d0

    return v0

    .line 6202
    :cond_6
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1dbbd58 -> :sswitch_4
        0x3580e2 -> :sswitch_3
        0x62f6fe4 -> :sswitch_2
        0x6855e30 -> :sswitch_1
        0x50251299 -> :sswitch_0
    .end sparse-switch
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    .line 4034
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    .line 4035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 4036
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 4037
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4038
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4040
    :cond_0
    return-void
.end method

.method private scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 3592
    const/4 v0, 0x0

    .line 3593
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3594
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 3595
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3596
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    .line 3597
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    if-eqz v4, :cond_2

    .line 3598
    iget v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v5, :cond_0

    iget v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_0

    .line 3599
    goto :goto_1

    .line 3601
    :cond_0
    if-nez v0, :cond_1

    .line 3602
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 3604
    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3594
    .end local v3    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3607
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 3608
    return-void

    .line 3610
    :cond_4
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ;

    .line 3612
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 3610
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3613
    return-void
.end method

.method private scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "result"    # I

    .line 3684
    const/4 v0, 0x0

    .line 3685
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3686
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 3687
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3688
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 3689
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    if-eqz v4, :cond_2

    .line 3690
    iget v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-ltz v5, :cond_0

    iget v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_0

    .line 3691
    goto :goto_1

    .line 3693
    :cond_0
    if-nez v0, :cond_1

    .line 3694
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 3696
    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3686
    .end local v3    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3699
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 3700
    return-void

    .line 3702
    :cond_4
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$AfBLuTvVESlqN91IyRX84hMV5nE;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$AfBLuTvVESlqN91IyRX84hMV5nE;

    .line 3704
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3702
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3705
    return-void
.end method

.method private scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "result"    # I

    .line 3637
    const/4 v0, 0x0

    .line 3638
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3639
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 3640
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3642
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$StartedCallback;

    .line 3643
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    if-eqz v4, :cond_2

    .line 3644
    iget v5, v4, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    if-ltz v5, :cond_0

    iget v5, v4, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_0

    .line 3645
    goto :goto_1

    .line 3648
    :cond_0
    if-nez v0, :cond_1

    .line 3649
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 3651
    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3639
    .end local v3    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3655
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 3656
    return-void

    .line 3659
    :cond_4
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$7TpfX4NXXUoI4jqIGxhEk65lHLs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$7TpfX4NXXUoI4jqIGxhEk65lHLs;

    .line 3661
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3659
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3662
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .line 4027
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 4028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 4029
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4031
    :cond_0
    return-void
.end method

.method private setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 16
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "permissionPolicyCallback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2480
    move-object/from16 v13, p0

    move/from16 v14, p2

    move-object/from16 v15, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v13, v0, v1, v14}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2483
    invoke-static/range {p1 .. p4}, Lcom/android/server/wm/OpScreenCompatInjector;->resetModeIfNeed(IILjava/lang/String;I)I

    move-result v12

    .line 2485
    .end local p4    # "mode":I
    .local v12, "mode":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2486
    const/4 v8, 0x0

    .line 2487
    .local v8, "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v11

    .line 2491
    .end local p1    # "code":I
    .local v11, "code":I
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {v13, v14, v15, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2495
    .local v6, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    nop

    .line 2497
    monitor-enter p0

    .line 2498
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {v13, v14, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 2499
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move v2, v11

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2500
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v1, :cond_7

    .line 2501
    :try_start_2
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    if-eq v2, v12, :cond_7

    .line 2502
    invoke-static {v1, v12}, Lcom/android/server/appop/AppOpsService$Op;->access$302(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 2503
    if-eqz v0, :cond_0

    .line 2504
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2506
    :cond_0
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2507
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v2, :cond_2

    .line 2508
    if-nez v8, :cond_1

    .line 2509
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v3

    .line 2511
    :cond_1
    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2513
    :cond_2
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move-object v2, v3

    .line 2514
    if-eqz v2, :cond_4

    .line 2515
    if-nez v8, :cond_3

    .line 2516
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v3

    .line 2518
    :cond_3
    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2520
    :cond_4
    if-eqz v8, :cond_5

    if-eqz p5, :cond_5

    .line 2521
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p5 .. p5}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2523
    :cond_5
    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-ne v12, v3, :cond_6

    .line 2526
    invoke-direct {v13, v1, v14, v15}, Lcom/android/server/appop/AppOpsService;->pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    .line 2528
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v8

    goto :goto_0

    .line 2531
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_0
    move-exception v0

    move v3, v11

    move v2, v12

    goto :goto_2

    :cond_7
    move-object v1, v8

    .end local v8    # "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v1, "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2532
    if-eqz v1, :cond_8

    .line 2533
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v7, Lcom/android/server/appop/-$$Lambda$AppOpsService$NDUi03ZZuuR42-RDEIQ0UELKycc;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$NDUi03ZZuuR42-RDEIQ0UELKycc;

    .line 2535
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2533
    move-object/from16 v8, p0

    move-object v9, v1

    move v3, v11

    .end local v11    # "code":I
    .local v3, "code":I
    move-object v11, v2

    move v2, v12

    .end local v12    # "mode":I
    .local v2, "mode":I
    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2532
    .end local v2    # "mode":I
    .end local v3    # "code":I
    .restart local v11    # "code":I
    .restart local v12    # "mode":I
    :cond_8
    move v3, v11

    move v2, v12

    .line 2538
    .end local v11    # "code":I
    .end local v12    # "mode":I
    .restart local v2    # "mode":I
    .restart local v3    # "code":I
    :goto_1
    invoke-direct {v13, v3, v14, v15, v2}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 2539
    return-void

    .line 2531
    .end local v2    # "mode":I
    .end local v3    # "code":I
    .restart local v11    # "code":I
    .restart local v12    # "mode":I
    :catchall_1
    move-exception v0

    move v3, v11

    move v2, v12

    move-object v8, v1

    .end local v11    # "code":I
    .end local v12    # "mode":I
    .restart local v2    # "mode":I
    .restart local v3    # "code":I
    goto :goto_2

    .end local v1    # "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v2    # "mode":I
    .end local v3    # "code":I
    .restart local v8    # "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v11    # "code":I
    .restart local v12    # "mode":I
    :catchall_2
    move-exception v0

    move v3, v11

    move v2, v12

    .end local v11    # "code":I
    .end local v12    # "mode":I
    .restart local v2    # "mode":I
    .restart local v3    # "code":I
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 2492
    .end local v2    # "mode":I
    .end local v3    # "code":I
    .end local v6    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .restart local v11    # "code":I
    .restart local v12    # "mode":I
    :catch_0
    move-exception v0

    move v3, v11

    move v2, v12

    move-object v1, v0

    .end local v11    # "code":I
    .end local v12    # "mode":I
    .restart local v2    # "mode":I
    .restart local v3    # "code":I
    move-object v0, v1

    .line 2493
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v4, "Cannot setMode"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2494
    return-void
.end method

.method private setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .param p4, "permissionPolicyCallback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2227
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 2228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " := "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2228
    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2234
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2235
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 2237
    if-nez p4, :cond_1

    .line 2238
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/appop/AppOpsService;->updatePermissionRevokedCompat(III)V

    .line 2241
    :cond_1
    monitor-enter p0

    .line 2242
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 2244
    .local v0, "defaultMode":I
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    .line 2245
    .local v2, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 2246
    if-ne p3, v0, :cond_2

    .line 2247
    monitor-exit p0

    return-void

    .line 2249
    :cond_2
    new-instance v4, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v4, p0, p2}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    move-object v2, v4

    .line 2250
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2251
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2252
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2253
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    .line 2254
    :cond_3
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v4, :cond_4

    .line 2255
    if-eq p3, v0, :cond_8

    .line 2256
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2257
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2258
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    .line 2261
    :cond_4
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_5

    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne v4, p3, :cond_5

    .line 2262
    monitor-exit p0

    return-void

    .line 2264
    :cond_5
    if-ne p3, v0, :cond_6

    .line 2265
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2266
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_7

    .line 2267
    iput-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 2270
    :cond_6
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2272
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 2274
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2275
    .end local v0    # "defaultMode":I
    .end local v2    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2277
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V

    .line 2278
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 2279
    return-void

    .line 2275
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 5787
    monitor-enter p0

    .line 5788
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5790
    .local v0, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    if-nez v0, :cond_0

    .line 5792
    :try_start_1
    new-instance v1, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    invoke-direct {v1, p0, p3}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 5795
    nop

    .line 5796
    :try_start_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5793
    :catch_0
    move-exception v1

    .line 5794
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit p0

    return-void

    .line 5799
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5800
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 5801
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5800
    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5804
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5805
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5806
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->destroy()V

    .line 5808
    .end local v0    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_2
    monitor-exit p0

    .line 5809
    return-void

    .line 5808
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6028
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    .line 6029
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 6030
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 6031
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 6033
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6034
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6035
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 6036
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 6037
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;)V

    .line 6040
    :cond_1
    :goto_0
    return-void
.end method

.method private updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .locals 6
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 3870
    .local p1, "uidPackageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    monitor-enter p0

    .line 3871
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3872
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3873
    .local v2, "uid":I
    invoke-direct {p0, v2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v3

    .line 3874
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    if-eq v4, p2, :cond_0

    .line 3875
    iput-boolean p2, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    .line 3876
    iget-boolean v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    iget-boolean v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    if-eq v4, v5, :cond_0

    .line 3877
    invoke-direct {p0, v3}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 3871
    .end local v2    # "uid":I
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3881
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 3882
    return-void

    .line 3881
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updatePendingState(JI)V
    .locals 2
    .param p1, "currentTime"    # J
    .param p3, "uid"    # I

    .line 1850
    monitor-enter p0

    .line 1851
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 1852
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 1853
    monitor-exit p0

    .line 1854
    return-void

    .line 1853
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .locals 4
    .param p1, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;

    .line 3799
    if-eqz p1, :cond_1

    .line 3800
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3801
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 3802
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    goto :goto_0

    .line 3804
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 3805
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 3806
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 3811
    :cond_1
    :goto_0
    return-void
.end method

.method private updatePermissionRevokedCompat(III)V
    .locals 32
    .param p1, "uid"    # I
    .param p2, "switchCode"    # I
    .param p3, "mode"    # I

    .line 2365
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2366
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v11, :cond_0

    .line 2369
    return-void

    .line 2372
    :cond_0
    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 2373
    .local v12, "packageNames":[Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2374
    return-void

    .line 2376
    :cond_1
    const/4 v13, 0x0

    aget-object v14, v12, v13

    .line 2378
    .local v14, "packageName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [I

    .line 2379
    .local v15, "ops":[I
    array-length v10, v15

    move v9, v13

    :goto_0
    if-ge v9, v10, :cond_f

    aget v16, v15, v9

    .line 2380
    .local v16, "code":I
    invoke-static/range {v16 .. v16}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v8

    .line 2381
    .local v8, "permissionName":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 2382
    move/from16 v21, v9

    move/from16 v27, v10

    move-object/from16 v22, v12

    move-object/from16 v31, v15

    goto/16 :goto_b

    .line 2385
    :cond_2
    invoke-virtual {v11, v8, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2387
    move/from16 v21, v9

    move/from16 v27, v10

    move-object/from16 v22, v12

    move-object/from16 v31, v15

    goto/16 :goto_b

    .line 2392
    :cond_3
    :try_start_0
    invoke-virtual {v11, v8, v13}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 2396
    .local v7, "permissionInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 2398
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2399
    move/from16 v21, v9

    move/from16 v27, v10

    move-object/from16 v22, v12

    move-object/from16 v31, v15

    goto/16 :goto_b

    .line 2402
    :cond_4
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    .line 2404
    .local v6, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v5, 0x17

    const/16 v17, 0x1

    if-lt v0, v5, :cond_5

    move/from16 v0, v17

    goto :goto_1

    :cond_5
    move v0, v13

    :goto_1
    move/from16 v18, v0

    .line 2407
    .local v18, "supportsRuntimePermissions":Z
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v19

    .line 2409
    .local v19, "user":Landroid/os/UserHandle;
    iget-object v0, v7, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    const/16 v20, 0x8

    const-string v5, ", permission="

    const-string v13, ", mode="

    move-object/from16 v21, v8

    .end local v8    # "permissionName":Ljava/lang/String;
    .local v21, "permissionName":Ljava/lang/String;
    const-string v8, ", switchCode="

    const-string/jumbo v1, "setUidMode() called with a mode inconsistent with runtime permission state, this is discouraged and you should revoke the runtime permission instead: uid="

    move-object/from16 v22, v12

    .end local v12    # "packageNames":[Ljava/lang/String;
    .local v22, "packageNames":[Ljava/lang/String;
    const-string v12, "AppOps"

    if-eqz v0, :cond_b

    .line 2410
    iget-object v0, v7, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v11, v0, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 2412
    if-eqz v4, :cond_6

    move/from16 v0, v17

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    move/from16 v23, v0

    .line 2414
    .local v23, "isBackgroundRevokedCompat":Z
    if-eqz v23, :cond_7

    if-eqz v18, :cond_7

    .line 2415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v5

    iget-object v5, v7, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2414
    :cond_7
    move-object/from16 v24, v5

    .line 2422
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v25

    .line 2424
    .local v25, "identity":J
    :try_start_1
    iget-object v0, v7, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v27, 0x8

    .line 2426
    if-eqz v23, :cond_8

    .line 2427
    move/from16 v28, v20

    goto :goto_4

    :cond_8
    const/16 v28, 0x0

    .line 2424
    :goto_4
    move-object/from16 v29, v24

    move-object v5, v11

    move-object/from16 v24, v6

    .end local v6    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .local v24, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    move-object v6, v0

    move-object/from16 v30, v7

    .end local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v30, "permissionInfo":Landroid/content/pm/PermissionInfo;
    move-object v7, v14

    move-object v0, v8

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    .end local v21    # "permissionName":Ljava/lang/String;
    .local v15, "permissionName":Ljava/lang/String;
    .local v31, "ops":[I
    move/from16 v8, v27

    move/from16 v21, v9

    move/from16 v9, v28

    move/from16 v27, v10

    move-object/from16 v10, v19

    :try_start_2
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2429
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2430
    goto :goto_6

    .line 2429
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v31    # "ops":[I
    .restart local v6    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v15, "ops":[I
    .restart local v21    # "permissionName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v24, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    .end local v6    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v21    # "permissionName":Ljava/lang/String;
    .local v15, "permissionName":Ljava/lang/String;
    .restart local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v31    # "ops":[I
    :goto_5
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2430
    throw v0

    .line 2410
    .end local v23    # "isBackgroundRevokedCompat":Z
    .end local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v25    # "identity":J
    .end local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v31    # "ops":[I
    .restart local v6    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v15, "ops":[I
    .restart local v21    # "permissionName":Ljava/lang/String;
    :cond_9
    move-object/from16 v29, v5

    move-object/from16 v24, v6

    move-object/from16 v30, v7

    move-object v0, v8

    move/from16 v27, v10

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    move/from16 v21, v9

    .line 2433
    .end local v6    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v21    # "permissionName":Ljava/lang/String;
    .local v15, "permissionName":Ljava/lang/String;
    .restart local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v31    # "ops":[I
    :goto_6
    if-eqz v4, :cond_a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    goto :goto_7

    :cond_a
    const/16 v17, 0x0

    :goto_7
    move/from16 v5, v17

    .local v5, "isRevokedCompat":Z
    goto :goto_9

    .line 2436
    .end local v5    # "isRevokedCompat":Z
    .end local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v31    # "ops":[I
    .restart local v6    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v15, "ops":[I
    .restart local v21    # "permissionName":Ljava/lang/String;
    :cond_b
    move-object/from16 v29, v5

    move-object/from16 v24, v6

    move-object/from16 v30, v7

    move-object v0, v8

    move/from16 v27, v10

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    move/from16 v21, v9

    .end local v6    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v7    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v21    # "permissionName":Ljava/lang/String;
    .local v15, "permissionName":Ljava/lang/String;
    .restart local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v31    # "ops":[I
    if-eqz v4, :cond_c

    goto :goto_8

    :cond_c
    const/16 v17, 0x0

    :goto_8
    move/from16 v5, v17

    .line 2439
    .local v17, "isRevokedCompat":Z
    :goto_9
    if-eqz v17, :cond_d

    if-eqz v18, :cond_d

    .line 2440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2448
    .local v12, "identity":J
    const/16 v8, 0x8

    .line 2449
    if-eqz v17, :cond_e

    .line 2450
    move/from16 v9, v20

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    .line 2448
    :goto_a
    move-object v5, v11

    move-object v6, v15

    move-object v7, v14

    move-object/from16 v10, v19

    :try_start_3
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2452
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2453
    goto :goto_b

    .line 2452
    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2453
    throw v1

    .line 2393
    .end local v17    # "isRevokedCompat":Z
    .end local v18    # "supportsRuntimePermissions":Z
    .end local v19    # "user":Landroid/os/UserHandle;
    .end local v22    # "packageNames":[Ljava/lang/String;
    .end local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v31    # "ops":[I
    .restart local v8    # "permissionName":Ljava/lang/String;
    .local v12, "packageNames":[Ljava/lang/String;
    .local v15, "ops":[I
    :catch_0
    move-exception v0

    move/from16 v21, v9

    move/from16 v27, v10

    move-object/from16 v22, v12

    move-object/from16 v31, v15

    move-object v15, v8

    move-object v1, v0

    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v12    # "packageNames":[Ljava/lang/String;
    .local v15, "permissionName":Ljava/lang/String;
    .restart local v22    # "packageNames":[Ljava/lang/String;
    .restart local v31    # "ops":[I
    move-object v0, v1

    .line 2394
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2395
    nop

    .line 2379
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "permissionName":Ljava/lang/String;
    .end local v16    # "code":I
    :goto_b
    add-int/lit8 v9, v21, 0x1

    move-object/from16 v1, p0

    move-object/from16 v12, v22

    move/from16 v10, v27

    move-object/from16 v15, v31

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2455
    .end local v22    # "packageNames":[Ljava/lang/String;
    .end local v31    # "ops":[I
    .restart local v12    # "packageNames":[Ljava/lang/String;
    .local v15, "ops":[I
    :cond_f
    return-void
.end method

.method private upgradeLocked(I)V
    .locals 3
    .param p1, "oldVersion"    # I

    .line 4230
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 4231
    return-void

    .line 4233
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading app-ops xml from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4236
    :cond_1
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    .line 4241
    :goto_0
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 4242
    return-void
.end method

.method private upgradeRunAnyInBackgroundLocked()V
    .locals 16

    .line 4194
    move-object/from16 v6, p0

    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 4195
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    .line 4196
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v8, :cond_0

    .line 4197
    goto/16 :goto_2

    .line 4199
    :cond_0
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v9, 0x46

    const/16 v10, 0x3f

    if-eqz v0, :cond_1

    .line 4200
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 4201
    .local v0, "idx":I
    if-ltz v0, :cond_1

    .line 4202
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4203
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 4202
    invoke-virtual {v1, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4206
    .end local v0    # "idx":I
    :cond_1
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_2

    .line 4207
    goto :goto_2

    .line 4209
    :cond_2
    const/4 v0, 0x0

    .line 4210
    .local v0, "changed":Z
    const/4 v1, 0x0

    move v11, v0

    move v12, v1

    .end local v0    # "changed":Z
    .local v11, "changed":Z
    .local v12, "j":I
    :goto_1
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v12, v0, :cond_4

    .line 4211
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4212
    .local v13, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v13, :cond_3

    .line 4213
    invoke-virtual {v13, v10}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/appop/AppOpsService$Op;

    .line 4214
    .local v14, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v14, :cond_3

    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    iget v1, v14, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 4215
    new-instance v15, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v2, v14, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v3, v14, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    const/16 v4, 0x46

    iget v5, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 4217
    .local v0, "copy":Lcom/android/server/appop/AppOpsService$Op;
    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/appop/AppOpsService$Op;->access$302(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 4218
    invoke-virtual {v13, v9, v0}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 4219
    const/4 v1, 0x1

    move v11, v1

    .line 4210
    .end local v0    # "copy":Lcom/android/server/appop/AppOpsService$Op;
    .end local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 4223
    .end local v12    # "j":I
    :cond_4
    if-eqz v11, :cond_5

    .line 4224
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 4194
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v11    # "changed":Z
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 4227
    .end local v7    # "i":I
    :cond_6
    return-void
.end method

.method private verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;
    .locals 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 3910
    if-nez p1, :cond_0

    .line 3912
    const/4 v0, 0x0

    return-object v0

    .line 3916
    :cond_0
    monitor-enter p0

    .line 3917
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 3918
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    .line 3919
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 3921
    .local v1, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    if-eqz v2, :cond_2

    .line 3923
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    monitor-exit p0

    return-object v2

    .line 3926
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3928
    const/4 v0, 0x0

    .line 3929
    .local v0, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3932
    .local v1, "ident":J
    :try_start_1
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 3934
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v4, 0x0

    .line 3936
    .local v4, "isAttributionTagValid":Z
    if-eqz v3, :cond_6

    .line 3937
    if-nez p3, :cond_3

    .line 3938
    const/4 v4, 0x1

    goto :goto_1

    .line 3940
    :cond_3
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3941
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 3942
    .local v5, "numAttributions":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_5

    .line 3943
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/parsing/component/ParsedAttribution;

    iget-object v7, v7, Landroid/content/pm/parsing/component/ParsedAttribution;->tag:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3944
    const/4 v4, 0x1

    .line 3942
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3950
    .end local v5    # "numAttributions":I
    .end local v6    # "i":I
    :cond_5
    :goto_1
    nop

    .line 3951
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 3950
    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 3952
    .local v5, "pkgUid":I
    invoke-direct {p0, v3}, Lcom/android/server/appop/AppOpsService;->getBypassforPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v6

    move-object v0, v6

    goto :goto_2

    .line 3955
    .end local v5    # "pkgUid":I
    :cond_6
    const/4 v4, 0x1

    .line 3957
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v5

    .line 3958
    .restart local v5    # "pkgUid":I
    if-ltz v5, :cond_7

    .line 3959
    sget-object v6, Landroid/app/AppOpsManager$RestrictionBypass;->UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;

    move-object v0, v6

    .line 3962
    :cond_7
    :goto_2
    if-ne v5, p1, :cond_9

    .line 3967
    if-nez v4, :cond_8

    .line 3969
    const-string v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attributionTag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " not declared in manifest of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3973
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "isAttributionTagValid":Z
    .end local v5    # "pkgUid":I
    :cond_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3974
    nop

    .line 3976
    return-object v0

    .line 3963
    .restart local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v4    # "isAttributionTagValid":Z
    .restart local v5    # "pkgUid":I
    :cond_9
    :try_start_2
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Specified package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " under uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " but it is really "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3973
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "isAttributionTagValid":Z
    .end local v5    # "pkgUid":I
    .restart local v0    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3974
    throw v3

    .line 3926
    .end local v0    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .end local v1    # "ident":J
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    .line 3767
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 3768
    return-void

    .line 3772
    :cond_0
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    const/16 v0, 0x3f3

    if-ge p1, v0, :cond_1

    .line 3773
    return-void

    .line 3776
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 3756
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3757
    return-void

    .line 3759
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3760
    return-void

    .line 3762
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 3763
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 3762
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 3764
    return-void
.end method

.method private writeNoteOps()V
    .locals 5

    .line 6432
    monitor-enter p0

    .line 6433
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteNoteOpsScheduled:Z

    .line 6434
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6435
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    monitor-enter v0

    .line 6436
    :try_start_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 6437
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 6438
    .local v2, "numTraces":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 6440
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->asJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 6443
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6438
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6445
    .end local v2    # "numTraces":I
    .end local v3    # "i":I
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 6447
    .end local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 6436
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 6448
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_2
    move-exception v1

    goto :goto_3

    .line 6445
    :catch_0
    move-exception v1

    .line 6446
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    const-string v2, "AppOps"

    const-string v3, "Failed to load opsValidation file for FileWriter"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6448
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit v0

    .line 6449
    return-void

    .line 6448
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 6434
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 3
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 5885
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "addHistoricalOps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5888
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/HistoricalRegistry;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 5889
    return-void
.end method

.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2963
    monitor-enter p0

    .line 2964
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2965
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2966
    if-nez v0, :cond_0

    .line 2967
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result v1

    return v1

    .line 2969
    :cond_0
    new-instance v6, Lcom/android/server/appop/-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI;

    invoke-direct {v6, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result v1

    return v1

    .line 2965
    .end local v0    # "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2893
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->checkOperationInternal(IILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public checkOperationRaw(IILjava/lang/String;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2888
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->checkOperationInternal(IILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3013
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3015
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3017
    const/4 v0, 0x0

    return v0

    .line 3018
    :catch_0
    move-exception v0

    .line 3019
    .local v0, "ignored":Ljava/lang/SecurityException;
    const/4 v1, 0x2

    return v1
.end method

.method public clearHistory()V
    .locals 3

    .line 5901
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "clearHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5904
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory()V

    .line 5905
    return-void
.end method

.method public collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p1, "stackTrace"    # Ljava/lang/String;
    .param p2, "op"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "version"    # J

    .line 6540
    return-void
.end method

.method public collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .locals 5

    .line 6009
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 6010
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 6009
    const-string v3, "android.permission.GET_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 6012
    monitor-enter p0

    .line 6013
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 6014
    .local v0, "result":Landroid/app/RuntimeAppOpAccessMessage;
    iput-object v4, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 6015
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6016
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/-$$Lambda$AppOpsService$m04KE9D7Jmkj_GEr7pcdIY29xtA;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$m04KE9D7Jmkj_GEr7pcdIY29xtA;

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6019
    return-object v0

    .line 6015
    .end local v0    # "result":Landroid/app/RuntimeAppOpAccessMessage;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 41
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5179
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    iget-object v0, v13, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "AppOps"

    invoke-static {v0, v1, v14}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5181
    :cond_0
    const/4 v0, -0x1

    .line 5182
    .local v0, "dumpOp":I
    const/4 v1, 0x0

    .line 5183
    .local v1, "dumpPackage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 5184
    .local v2, "dumpAttributionTag":Ljava/lang/String;
    const/4 v3, -0x1

    .line 5185
    .local v3, "dumpUid":I
    const/4 v4, -0x1

    .line 5186
    .local v4, "dumpMode":I
    const/4 v5, 0x0

    .line 5188
    .local v5, "dumpWatchers":Z
    const/16 v16, 0x0

    .line 5189
    .local v16, "dumpHistory":Z
    const/4 v6, 0x0

    .line 5191
    .local v6, "dumpFilter":I
    const/4 v12, 0x0

    const/4 v7, 0x1

    if-eqz v15, :cond_10

    .line 5192
    const/4 v8, 0x0

    move-object/from16 v39, v1

    move v1, v0

    move-object/from16 v0, v39

    .local v0, "dumpPackage":Ljava/lang/String;
    .local v1, "dumpOp":I
    .local v8, "i":I
    :goto_0
    array-length v9, v15

    if-ge v8, v9, :cond_f

    .line 5193
    aget-object v9, v15, v8

    .line 5194
    .local v9, "arg":Ljava/lang/String;
    const-string v10, "-h"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5195
    invoke-direct {v13, v14}, Lcom/android/server/appop/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 5196
    return-void

    .line 5197
    :cond_1
    const-string v10, "-a"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_2

    .line 5199
    :cond_2
    const-string v10, "--op"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5200
    add-int/lit8 v8, v8, 0x1

    .line 5201
    array-length v10, v15

    if-lt v8, v10, :cond_3

    .line 5202
    const-string v7, "No argument for --op option"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5203
    return-void

    .line 5205
    :cond_3
    aget-object v10, v15, v8

    invoke-static {v10, v14}, Lcom/android/server/appop/AppOpsService$Shell;->access$2000(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    .line 5206
    or-int/lit8 v6, v6, 0x8

    .line 5207
    if-gez v1, :cond_c

    .line 5208
    return-void

    .line 5210
    :cond_4
    const-string v10, "--package"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 5211
    add-int/lit8 v8, v8, 0x1

    .line 5212
    array-length v10, v15

    if-lt v8, v10, :cond_5

    .line 5213
    const-string v7, "No argument for --package option"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5214
    return-void

    .line 5216
    :cond_5
    aget-object v10, v15, v8

    .line 5217
    .end local v0    # "dumpPackage":Ljava/lang/String;
    .local v10, "dumpPackage":Ljava/lang/String;
    or-int/lit8 v6, v6, 0x2

    .line 5219
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v11, 0xc02000

    invoke-interface {v0, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 5223
    goto :goto_1

    .line 5222
    :catch_0
    move-exception v0

    .line 5224
    :goto_1
    if-gez v3, :cond_6

    .line 5225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5226
    return-void

    .line 5228
    :cond_6
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5229
    .end local v3    # "dumpUid":I
    .local v0, "dumpUid":I
    or-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v0

    move-object v0, v10

    .end local v6    # "dumpFilter":I
    .local v3, "dumpFilter":I
    goto :goto_2

    .line 5230
    .end local v10    # "dumpPackage":Ljava/lang/String;
    .local v0, "dumpPackage":Ljava/lang/String;
    .local v3, "dumpUid":I
    .restart local v6    # "dumpFilter":I
    :cond_7
    const-string v10, "--attributionTag"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 5231
    add-int/lit8 v8, v8, 0x1

    .line 5232
    array-length v10, v15

    if-lt v8, v10, :cond_8

    .line 5233
    const-string v7, "No argument for --attributionTag option"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5234
    return-void

    .line 5236
    :cond_8
    aget-object v2, v15, v8

    .line 5237
    or-int/lit8 v6, v6, 0x4

    goto :goto_2

    .line 5238
    :cond_9
    const-string v10, "--mode"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 5239
    add-int/lit8 v8, v8, 0x1

    .line 5240
    array-length v10, v15

    if-lt v8, v10, :cond_a

    .line 5241
    const-string v7, "No argument for --mode option"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5242
    return-void

    .line 5244
    :cond_a
    aget-object v10, v15, v8

    invoke-static {v10, v14}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v4

    .line 5245
    if-gez v4, :cond_c

    .line 5246
    return-void

    .line 5248
    :cond_b
    const-string v10, "--watchers"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 5249
    const/4 v5, 0x1

    .line 5192
    .end local v9    # "arg":Ljava/lang/String;
    :cond_c
    :goto_2
    add-int/2addr v8, v7

    goto/16 :goto_0

    .line 5250
    .restart local v9    # "arg":Ljava/lang/String;
    :cond_d
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_e

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x2d

    if-ne v7, v10, :cond_e

    .line 5251
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown option: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5252
    return-void

    .line 5254
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown command: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5255
    return-void

    .line 5192
    .end local v9    # "arg":Ljava/lang/String;
    :cond_f
    move-object/from16 v17, v2

    move/from16 v18, v5

    move/from16 v19, v6

    move-object v6, v0

    move v5, v1

    move/from16 v39, v4

    move v4, v3

    move/from16 v3, v39

    goto :goto_3

    .line 5191
    .end local v8    # "i":I
    .local v0, "dumpOp":I
    .local v1, "dumpPackage":Ljava/lang/String;
    :cond_10
    move-object/from16 v17, v2

    move/from16 v18, v5

    move/from16 v19, v6

    move v5, v0

    move-object v6, v1

    move/from16 v39, v4

    move v4, v3

    move/from16 v3, v39

    .line 5260
    .end local v0    # "dumpOp":I
    .end local v1    # "dumpPackage":Ljava/lang/String;
    .end local v2    # "dumpAttributionTag":Ljava/lang/String;
    .local v3, "dumpMode":I
    .local v4, "dumpUid":I
    .local v5, "dumpOp":I
    .local v6, "dumpPackage":Ljava/lang/String;
    .local v17, "dumpAttributionTag":Ljava/lang/String;
    .local v18, "dumpWatchers":Z
    .local v19, "dumpFilter":I
    :goto_3
    monitor-enter p0

    .line 5261
    :try_start_1
    const-string v0, "Current AppOps Service state:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 5262
    if-nez v16, :cond_11

    if-nez v18, :cond_11

    .line 5263
    :try_start_2
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-virtual {v0, v14}, Lcom/android/server/appop/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 5731
    :catchall_0
    move-exception v0

    move/from16 v35, v3

    move/from16 v28, v4

    move v15, v5

    move-object v9, v6

    goto/16 :goto_53

    .line 5265
    :cond_11
    :goto_4
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5267
    .local v8, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5268
    .local v0, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-wide/from16 v20, v10

    .line 5269
    .local v20, "nowUptime":J
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v10, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5270
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 5271
    .local v11, "date":Ljava/util/Date;
    const/4 v2, 0x0

    .line 5272
    .local v2, "needSep":Z
    if-nez v19, :cond_13

    if-gez v3, :cond_13

    :try_start_4
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v7, :cond_13

    if-nez v18, :cond_13

    if-nez v16, :cond_13

    .line 5274
    const-string v7, "  Profile owners:"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5275
    const/4 v7, 0x0

    .local v7, "poi":I
    :goto_5
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_12

    .line 5276
    const-string v12, "    User #"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5277
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 5278
    const-string v12, ": "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5279
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v14, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5280
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5275
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x0

    goto :goto_5

    .line 5282
    .end local v7    # "poi":I
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5284
    :cond_13
    :try_start_5
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-lez v7, :cond_1a

    if-nez v16, :cond_1a

    .line 5285
    const/4 v7, 0x0

    .line 5286
    .local v7, "printedHeader":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    move/from16 v24, v2

    .end local v2    # "needSep":Z
    .local v24, "needSep":Z
    :try_start_6
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_19

    .line 5287
    if-ltz v5, :cond_14

    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eq v5, v2, :cond_14

    .line 5288
    move-wide/from16 v26, v8

    move/from16 v2, v24

    goto/16 :goto_a

    .line 5290
    :cond_14
    const/4 v2, 0x0

    .line 5291
    .local v2, "printedOpHeader":Z
    move/from16 v25, v2

    .end local v2    # "printedOpHeader":Z
    .local v25, "printedOpHeader":Z
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 5292
    .local v2, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/16 v26, 0x0

    move/from16 v15, v26

    .local v15, "j":I
    :goto_7
    move-wide/from16 v26, v8

    .end local v8    # "now":J
    .local v26, "now":J
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v15, v8, :cond_18

    .line 5293
    invoke-virtual {v2, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 5294
    .local v8, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v6, :cond_15

    iget v9, v8, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 5295
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    if-eq v4, v9, :cond_15

    .line 5296
    move-object/from16 v28, v2

    goto :goto_9

    .line 5298
    :cond_15
    const/4 v9, 0x1

    .line 5299
    .end local v24    # "needSep":Z
    .local v9, "needSep":Z
    if-nez v7, :cond_16

    .line 5300
    move-object/from16 v28, v2

    .end local v2    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v28, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const-string v2, "  Op mode watchers:"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5301
    const/4 v7, 0x1

    goto :goto_8

    .line 5299
    .end local v28    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v2    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_16
    move-object/from16 v28, v2

    .line 5303
    .end local v2    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v28    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :goto_8
    if-nez v25, :cond_17

    .line 5304
    const-string v2, "    Op "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5305
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5306
    const-string v2, ":"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5307
    const/16 v25, 0x1

    .line 5309
    :cond_17
    const-string v2, "      #"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5310
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v24, v9

    .line 5292
    .end local v8    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v9    # "needSep":Z
    .restart local v24    # "needSep":Z
    :goto_9
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v8, v26

    move-object/from16 v2, v28

    goto :goto_7

    .end local v28    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v2    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_18
    move-object/from16 v28, v2

    .end local v2    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v28    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    move/from16 v2, v24

    .line 5286
    .end local v15    # "j":I
    .end local v24    # "needSep":Z
    .end local v25    # "printedOpHeader":Z
    .end local v28    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v2, "needSep":Z
    :goto_a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v15, p3

    move-wide/from16 v8, v26

    goto/16 :goto_6

    .end local v2    # "needSep":Z
    .end local v26    # "now":J
    .local v8, "now":J
    .restart local v24    # "needSep":Z
    :cond_19
    move-wide/from16 v26, v8

    .end local v8    # "now":J
    .restart local v26    # "now":J
    move/from16 v2, v24

    goto :goto_b

    .line 5284
    .end local v7    # "printedHeader":Z
    .end local v12    # "i":I
    .end local v24    # "needSep":Z
    .end local v26    # "now":J
    .restart local v2    # "needSep":Z
    .restart local v8    # "now":J
    :cond_1a
    move-wide/from16 v26, v8

    .line 5314
    .end local v8    # "now":J
    .restart local v26    # "now":J
    :goto_b
    :try_start_7
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-lez v7, :cond_1e

    if-gez v5, :cond_1e

    if-nez v16, :cond_1e

    .line 5315
    const/4 v7, 0x0

    .line 5316
    .restart local v7    # "printedHeader":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c
    :try_start_8
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_1e

    .line 5317
    if-eqz v6, :cond_1b

    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 5318
    goto :goto_e

    .line 5320
    :cond_1b
    const/4 v2, 0x1

    .line 5321
    if-nez v7, :cond_1c

    .line 5322
    const-string v9, "  Package mode watchers:"

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5323
    const/4 v7, 0x1

    .line 5325
    :cond_1c
    const-string v9, "    Pkg "

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5326
    const-string v9, ":"

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5327
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 5328
    .local v9, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_d
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v15

    if-ge v12, v15, :cond_1d

    .line 5329
    const-string v15, "      #"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5330
    invoke-virtual {v9, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 5328
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 5316
    .end local v9    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v12    # "j":I
    :cond_1d
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 5334
    .end local v7    # "printedHeader":Z
    .end local v8    # "i":I
    :cond_1e
    :try_start_9
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-lez v7, :cond_21

    if-gez v5, :cond_21

    if-nez v16, :cond_21

    .line 5335
    const/4 v7, 0x0

    .line 5336
    .restart local v7    # "printedHeader":Z
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_f
    :try_start_a
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_21

    .line 5337
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 5338
    .local v9, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v6, :cond_1f

    iget v12, v9, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 5339
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v4, v12, :cond_1f

    .line 5340
    goto :goto_10

    .line 5342
    :cond_1f
    const/4 v2, 0x1

    .line 5343
    if-nez v7, :cond_20

    .line 5344
    const-string v12, "  All op mode watchers:"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5345
    const/4 v7, 0x1

    .line 5347
    :cond_20
    const-string v12, "    "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5348
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5349
    const-string v12, ": "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 5336
    .end local v9    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 5352
    .end local v7    # "printedHeader":Z
    .end local v8    # "i":I
    :cond_21
    :try_start_b
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-lez v7, :cond_2a

    if-gez v3, :cond_2a

    .line 5353
    const/4 v2, 0x1

    .line 5354
    const/4 v7, 0x0

    .line 5355
    .restart local v7    # "printedHeader":Z
    const/4 v12, 0x0

    .local v12, "watcherNum":I
    :goto_11
    :try_start_c
    iget-object v15, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v12, v15, :cond_29

    .line 5356
    iget-object v15, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 5357
    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 5358
    .local v15, "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v24

    if-gtz v24, :cond_22

    .line 5359
    goto :goto_12

    .line 5361
    :cond_22
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    move-object/from16 v8, v25

    .line 5362
    .local v8, "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    if-ltz v5, :cond_23

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v25

    if-gez v25, :cond_23

    .line 5363
    goto :goto_12

    .line 5365
    :cond_23
    if-eqz v6, :cond_24

    iget v9, v8, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 5366
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    if-eq v4, v9, :cond_24

    .line 5367
    nop

    .line 5355
    .end local v8    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v15    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :goto_12
    move/from16 v29, v2

    goto :goto_15

    .line 5369
    .restart local v8    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .restart local v15    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :cond_24
    if-nez v7, :cond_25

    .line 5370
    const-string v9, "  All op active watchers:"

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5371
    const/4 v7, 0x1

    .line 5373
    :cond_25
    const-string v9, "    "

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5374
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 5375
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 5374
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5376
    const-string v9, " ->"

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5377
    const-string v9, "        ["

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5378
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 5379
    .local v9, "opCount":I
    const/16 v28, 0x0

    move/from16 v29, v2

    move/from16 v2, v28

    .local v2, "opNum":I
    .local v29, "needSep":Z
    :goto_13
    if-ge v2, v9, :cond_28

    .line 5380
    if-lez v2, :cond_26

    .line 5381
    move/from16 v28, v7

    const/16 v7, 0x20

    .end local v7    # "printedHeader":Z
    .local v28, "printedHeader":Z
    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_14

    .line 5380
    .end local v28    # "printedHeader":Z
    .restart local v7    # "printedHeader":Z
    :cond_26
    move/from16 v28, v7

    .line 5383
    .end local v7    # "printedHeader":Z
    .restart local v28    # "printedHeader":Z
    :goto_14
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5384
    add-int/lit8 v7, v9, -0x1

    if-ge v2, v7, :cond_27

    .line 5385
    const/16 v7, 0x2c

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 5379
    :cond_27
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v28

    goto :goto_13

    .end local v28    # "printedHeader":Z
    .restart local v7    # "printedHeader":Z
    :cond_28
    move/from16 v28, v7

    .line 5388
    .end local v2    # "opNum":I
    .end local v7    # "printedHeader":Z
    .restart local v28    # "printedHeader":Z
    const-string v2, "]"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5389
    const-string v2, "        "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5390
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move/from16 v7, v28

    .line 5355
    .end local v8    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v9    # "opCount":I
    .end local v15    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v28    # "printedHeader":Z
    .restart local v7    # "printedHeader":Z
    :goto_15
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v29

    goto/16 :goto_11

    .end local v29    # "needSep":Z
    .local v2, "needSep":Z
    :cond_29
    move/from16 v29, v2

    .line 5393
    .end local v7    # "printedHeader":Z
    .end local v12    # "watcherNum":I
    :cond_2a
    :try_start_d
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-lez v7, :cond_34

    if-gez v3, :cond_34

    .line 5394
    const/4 v2, 0x1

    .line 5395
    const/4 v7, 0x0

    .line 5397
    .restart local v7    # "printedHeader":Z
    :try_start_e
    iget-object v8, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 5398
    .local v8, "watchersSize":I
    const/4 v9, 0x0

    .local v9, "watcherNum":I
    :goto_16
    if-ge v9, v8, :cond_33

    .line 5399
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 5400
    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 5401
    .local v12, "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-gtz v15, :cond_2b

    .line 5402
    move/from16 v28, v2

    goto :goto_17

    .line 5405
    :cond_2b
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/appop/AppOpsService$StartedCallback;

    move-object/from16 v15, v28

    .line 5406
    .local v15, "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    if-ltz v5, :cond_2c

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v28

    if-gez v28, :cond_2c

    .line 5407
    move/from16 v28, v2

    goto :goto_17

    .line 5410
    :cond_2c
    if-eqz v6, :cond_2d

    move/from16 v28, v2

    .end local v2    # "needSep":Z
    .local v28, "needSep":Z
    iget v2, v15, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    .line 5411
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eq v4, v2, :cond_2e

    .line 5412
    nop

    .line 5398
    .end local v12    # "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v15    # "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    .end local v28    # "needSep":Z
    .restart local v2    # "needSep":Z
    :goto_17
    move/from16 v29, v8

    .end local v2    # "needSep":Z
    .restart local v28    # "needSep":Z
    goto :goto_1a

    .line 5410
    .end local v28    # "needSep":Z
    .restart local v2    # "needSep":Z
    .restart local v12    # "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .restart local v15    # "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :cond_2d
    move/from16 v28, v2

    .line 5415
    .end local v2    # "needSep":Z
    .restart local v28    # "needSep":Z
    :cond_2e
    if-nez v7, :cond_2f

    .line 5416
    const-string v2, "  All op started watchers:"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5417
    const/4 v7, 0x1

    .line 5420
    :cond_2f
    const-string v2, "    "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5421
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 5422
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 5421
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5423
    const-string v2, " ->"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5425
    const-string v2, "        ["

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5426
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 5427
    .local v2, "opCount":I
    const/16 v29, 0x0

    move/from16 v30, v7

    move/from16 v7, v29

    .local v7, "opNum":I
    .local v30, "printedHeader":Z
    :goto_18
    if-ge v7, v2, :cond_32

    .line 5428
    if-lez v7, :cond_30

    .line 5429
    move/from16 v29, v8

    const/16 v8, 0x20

    .end local v8    # "watchersSize":I
    .local v29, "watchersSize":I
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_19

    .line 5428
    .end local v29    # "watchersSize":I
    .restart local v8    # "watchersSize":I
    :cond_30
    move/from16 v29, v8

    .line 5432
    .end local v8    # "watchersSize":I
    .restart local v29    # "watchersSize":I
    :goto_19
    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5433
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_31

    .line 5434
    const/16 v8, 0x2c

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 5427
    :cond_31
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v29

    goto :goto_18

    .end local v29    # "watchersSize":I
    .restart local v8    # "watchersSize":I
    :cond_32
    move/from16 v29, v8

    .line 5437
    .end local v7    # "opNum":I
    .end local v8    # "watchersSize":I
    .restart local v29    # "watchersSize":I
    const-string v7, "]"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5439
    const-string v7, "        "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5440
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move/from16 v7, v30

    .line 5398
    .end local v2    # "opCount":I
    .end local v12    # "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v15    # "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    .end local v30    # "printedHeader":Z
    .local v7, "printedHeader":Z
    :goto_1a
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v28

    move/from16 v8, v29

    goto/16 :goto_16

    .end local v28    # "needSep":Z
    .end local v29    # "watchersSize":I
    .local v2, "needSep":Z
    .restart local v8    # "watchersSize":I
    :cond_33
    move/from16 v28, v2

    move/from16 v29, v8

    .line 5443
    .end local v7    # "printedHeader":Z
    .end local v8    # "watchersSize":I
    .end local v9    # "watcherNum":I
    :cond_34
    :try_start_f
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-lez v7, :cond_3d

    if-gez v3, :cond_3d

    .line 5444
    const/4 v2, 0x1

    .line 5445
    const/4 v7, 0x0

    .line 5446
    .restart local v7    # "printedHeader":Z
    const/4 v8, 0x0

    .local v8, "watcherNum":I
    :goto_1b
    :try_start_10
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_3c

    .line 5447
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 5448
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 5449
    .local v9, "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-gtz v12, :cond_35

    .line 5450
    goto :goto_1c

    .line 5452
    :cond_35
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 5453
    .local v15, "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    if-ltz v5, :cond_36

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v23

    if-gez v23, :cond_36

    .line 5454
    goto :goto_1c

    .line 5456
    :cond_36
    if-eqz v6, :cond_37

    iget v12, v15, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 5457
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v4, v12, :cond_37

    .line 5458
    nop

    .line 5446
    .end local v9    # "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v15    # "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_1c
    move/from16 v29, v2

    move/from16 v28, v7

    const/16 v7, 0x2c

    goto/16 :goto_20

    .line 5460
    .restart local v9    # "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .restart local v15    # "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :cond_37
    if-nez v7, :cond_38

    .line 5461
    const-string v12, "  All op noted watchers:"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5462
    const/4 v7, 0x1

    .line 5464
    :cond_38
    const-string v12, "    "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5465
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 5466
    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 5465
    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5467
    const-string v12, " ->"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5468
    const-string v12, "        ["

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5469
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 5470
    .local v12, "opCount":I
    const/16 v28, 0x0

    move/from16 v29, v2

    move/from16 v2, v28

    .local v2, "opNum":I
    .local v29, "needSep":Z
    :goto_1d
    if-ge v2, v12, :cond_3b

    .line 5471
    if-lez v2, :cond_39

    .line 5472
    move/from16 v28, v7

    const/16 v7, 0x20

    .end local v7    # "printedHeader":Z
    .local v28, "printedHeader":Z
    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1e

    .line 5471
    .end local v28    # "printedHeader":Z
    .restart local v7    # "printedHeader":Z
    :cond_39
    move/from16 v28, v7

    const/16 v7, 0x20

    .line 5474
    .end local v7    # "printedHeader":Z
    .restart local v28    # "printedHeader":Z
    :goto_1e
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5475
    add-int/lit8 v7, v12, -0x1

    if-ge v2, v7, :cond_3a

    .line 5476
    const/16 v7, 0x2c

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1f

    .line 5475
    :cond_3a
    const/16 v7, 0x2c

    .line 5470
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v28

    goto :goto_1d

    .end local v28    # "printedHeader":Z
    .restart local v7    # "printedHeader":Z
    :cond_3b
    move/from16 v28, v7

    const/16 v7, 0x2c

    .line 5479
    .end local v2    # "opNum":I
    .end local v7    # "printedHeader":Z
    .restart local v28    # "printedHeader":Z
    const-string v2, "]"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5480
    const-string v2, "        "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5481
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 5446
    .end local v9    # "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v12    # "opCount":I
    .end local v15    # "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_20
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v28

    move/from16 v2, v29

    goto/16 :goto_1b

    .end local v28    # "printedHeader":Z
    .end local v29    # "needSep":Z
    .local v2, "needSep":Z
    .restart local v7    # "printedHeader":Z
    :cond_3c
    move/from16 v29, v2

    .line 5484
    .end local v7    # "printedHeader":Z
    .end local v8    # "watcherNum":I
    :cond_3d
    :try_start_11
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v7}, Lcom/android/server/appop/AudioRestrictionManager;->hasActiveRestrictions()Z

    move-result v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    if-eqz v7, :cond_3e

    if-gez v5, :cond_3e

    if-eqz v6, :cond_3e

    if-gez v3, :cond_3e

    if-nez v18, :cond_3e

    if-nez v18, :cond_3e

    .line 5486
    :try_start_12
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v7, v14}, Lcom/android/server/appop/AudioRestrictionManager;->dump(Ljava/io/PrintWriter;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 5488
    :cond_3e
    if-eqz v2, :cond_3f

    .line 5489
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 5491
    :cond_3f
    const/4 v7, 0x0

    move v15, v7

    .local v15, "i":I
    :goto_21
    :try_start_13
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    if-ge v15, v7, :cond_6f

    .line 5492
    :try_start_14
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$UidState;

    move-object v8, v7

    .line 5493
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v7, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object v9, v7

    .line 5494
    .local v9, "opModes":Landroid/util/SparseIntArray;
    iget-object v7, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-object v12, v7

    .line 5496
    .local v12, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v18, :cond_6e

    if-eqz v16, :cond_40

    .line 5497
    move-wide/from16 v33, v0

    move/from16 v30, v2

    move/from16 v35, v3

    move/from16 v28, v4

    move-object v14, v6

    move/from16 v32, v15

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    move v15, v5

    goto/16 :goto_3e

    .line 5499
    :cond_40
    if-gez v5, :cond_42

    if-nez v6, :cond_42

    if-ltz v3, :cond_41

    goto :goto_22

    :cond_41
    move/from16 v30, v2

    move/from16 v28, v4

    move/from16 v32, v15

    goto/16 :goto_2f

    .line 5500
    :cond_42
    :goto_22
    if-ltz v5, :cond_44

    :try_start_15
    iget-object v7, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v7, :cond_43

    iget-object v7, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 5501
    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_43

    goto :goto_23

    :cond_43
    const/4 v7, 0x0

    goto :goto_24

    :cond_44
    :goto_23
    const/4 v7, 0x1

    .line 5502
    .local v7, "hasOp":Z
    :goto_24
    if-eqz v6, :cond_46

    move/from16 v24, v7

    .end local v7    # "hasOp":Z
    .local v24, "hasOp":Z
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-ne v4, v7, :cond_45

    goto :goto_25

    :cond_45
    const/4 v7, 0x0

    goto :goto_26

    .end local v24    # "hasOp":Z
    .restart local v7    # "hasOp":Z
    :cond_46
    move/from16 v24, v7

    .end local v7    # "hasOp":Z
    .restart local v24    # "hasOp":Z
    :goto_25
    const/4 v7, 0x1

    .line 5503
    .local v7, "hasPackage":Z
    :goto_26
    if-gez v3, :cond_47

    const/16 v25, 0x1

    goto :goto_27

    :cond_47
    const/16 v25, 0x0

    .line 5504
    .local v25, "hasMode":Z
    :goto_27
    if-nez v25, :cond_4a

    if-eqz v9, :cond_4a

    .line 5505
    const/16 v28, 0x0

    move/from16 v39, v28

    move/from16 v28, v4

    move/from16 v4, v39

    .local v4, "opi":I
    .local v28, "dumpUid":I
    :goto_28
    if-nez v25, :cond_49

    move/from16 v29, v7

    .end local v7    # "hasPackage":Z
    .local v29, "hasPackage":Z
    :try_start_16
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_4b

    .line 5506
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ne v7, v3, :cond_48

    .line 5507
    const/16 v25, 0x1

    .line 5505
    :cond_48
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v29

    goto :goto_28

    .end local v29    # "hasPackage":Z
    .restart local v7    # "hasPackage":Z
    :cond_49
    move/from16 v29, v7

    .end local v7    # "hasPackage":Z
    .restart local v29    # "hasPackage":Z
    goto :goto_29

    .line 5504
    .end local v28    # "dumpUid":I
    .end local v29    # "hasPackage":Z
    .local v4, "dumpUid":I
    .restart local v7    # "hasPackage":Z
    :cond_4a
    move/from16 v28, v4

    move/from16 v29, v7

    .line 5511
    .end local v4    # "dumpUid":I
    .end local v7    # "hasPackage":Z
    .restart local v28    # "dumpUid":I
    .restart local v29    # "hasPackage":Z
    :cond_4b
    :goto_29
    if-eqz v12, :cond_55

    .line 5512
    const/4 v4, 0x0

    move/from16 v7, v24

    .line 5513
    .end local v24    # "hasOp":Z
    .local v4, "pkgi":I
    .local v7, "hasOp":Z
    :goto_2a
    if-eqz v7, :cond_4d

    if-eqz v29, :cond_4d

    if-nez v25, :cond_4c

    goto :goto_2b

    :cond_4c
    move/from16 v30, v2

    move/from16 v32, v15

    goto/16 :goto_2e

    :cond_4d
    :goto_2b
    move/from16 v30, v2

    .end local v2    # "needSep":Z
    .local v30, "needSep":Z
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v4, v2, :cond_54

    .line 5515
    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 5516
    .local v2, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v7, :cond_4e

    if-eqz v2, :cond_4e

    invoke-virtual {v2, v5}, Lcom/android/server/appop/AppOpsService$Ops;->indexOfKey(I)I

    move-result v24

    if-ltz v24, :cond_4e

    .line 5517
    const/4 v7, 0x1

    .line 5519
    :cond_4e
    if-nez v25, :cond_51

    .line 5520
    const/16 v24, 0x0

    move/from16 v31, v7

    move/from16 v7, v24

    .local v7, "opi":I
    .local v31, "hasOp":Z
    :goto_2c
    if-nez v25, :cond_50

    move/from16 v32, v15

    .end local v15    # "i":I
    .local v32, "i":I
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v15

    if-ge v7, v15, :cond_52

    .line 5521
    invoke-virtual {v2, v7}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$Op;

    invoke-static {v15}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v15

    if-ne v15, v3, :cond_4f

    .line 5522
    const/16 v25, 0x1

    .line 5520
    :cond_4f
    add-int/lit8 v7, v7, 0x1

    move/from16 v15, v32

    goto :goto_2c

    .end local v32    # "i":I
    .restart local v15    # "i":I
    :cond_50
    move/from16 v32, v15

    .end local v15    # "i":I
    .restart local v32    # "i":I
    goto :goto_2d

    .line 5519
    .end local v31    # "hasOp":Z
    .end local v32    # "i":I
    .local v7, "hasOp":Z
    .restart local v15    # "i":I
    :cond_51
    move/from16 v31, v7

    move/from16 v32, v15

    .line 5526
    .end local v7    # "hasOp":Z
    .end local v15    # "i":I
    .restart local v31    # "hasOp":Z
    .restart local v32    # "i":I
    :cond_52
    :goto_2d
    if-nez v29, :cond_53

    iget-object v7, v2, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v7, :cond_53

    .line 5527
    const/16 v29, 0x1

    .line 5514
    .end local v2    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_53
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v30

    move/from16 v7, v31

    move/from16 v15, v32

    goto :goto_2a

    .line 5513
    .end local v31    # "hasOp":Z
    .end local v32    # "i":I
    .restart local v7    # "hasOp":Z
    .restart local v15    # "i":I
    :cond_54
    move/from16 v32, v15

    .end local v15    # "i":I
    .restart local v32    # "i":I
    goto :goto_2e

    .line 5731
    .end local v0    # "nowElapsed":J
    .end local v4    # "pkgi":I
    .end local v7    # "hasOp":Z
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v20    # "nowUptime":J
    .end local v25    # "hasMode":Z
    .end local v26    # "now":J
    .end local v29    # "hasPackage":Z
    .end local v30    # "needSep":Z
    .end local v32    # "i":I
    :catchall_1
    move-exception v0

    move/from16 v35, v3

    move v15, v5

    move-object v9, v6

    goto/16 :goto_53

    .line 5511
    .restart local v0    # "nowElapsed":J
    .local v2, "needSep":Z
    .restart local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v15    # "i":I
    .restart local v20    # "nowUptime":J
    .restart local v24    # "hasOp":Z
    .restart local v25    # "hasMode":Z
    .restart local v26    # "now":J
    .restart local v29    # "hasPackage":Z
    :cond_55
    move/from16 v30, v2

    move/from16 v32, v15

    .end local v2    # "needSep":Z
    .end local v15    # "i":I
    .restart local v30    # "needSep":Z
    .restart local v32    # "i":I
    move/from16 v7, v24

    .line 5531
    .end local v24    # "hasOp":Z
    .restart local v7    # "hasOp":Z
    :goto_2e
    :try_start_17
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    if-eqz v2, :cond_56

    if-nez v7, :cond_56

    .line 5532
    :try_start_18
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-lez v2, :cond_56

    .line 5533
    const/4 v7, 0x1

    .line 5536
    :cond_56
    if-eqz v7, :cond_6d

    if-eqz v29, :cond_6d

    if-nez v25, :cond_57

    .line 5537
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move v15, v5

    move-object v14, v6

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    goto/16 :goto_3e

    .line 5541
    .end local v7    # "hasOp":Z
    .end local v25    # "hasMode":Z
    .end local v29    # "hasPackage":Z
    :cond_57
    :goto_2f
    :try_start_19
    const-string v2, "  Uid "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v14, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v2, ":"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5542
    const-string v2, "    state="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5543
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-static {v2}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5544
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    if-eq v2, v4, :cond_58

    .line 5545
    :try_start_1a
    const-string v2, "    pendingState="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5546
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    invoke-static {v2}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 5548
    :cond_58
    :try_start_1b
    const-string v2, "    capability="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5549
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    invoke-static {v14, v2}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 5550
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5551
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    iget v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    if-eq v2, v4, :cond_59

    .line 5552
    :try_start_1c
    const-string v2, "    pendingCapability="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5553
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    invoke-static {v14, v2}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 5554
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 5556
    :cond_59
    :try_start_1d
    const-string v2, "    appWidgetVisible="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5557
    iget-boolean v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 5558
    iget-boolean v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    iget-boolean v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    if-eq v2, v4, :cond_5a

    .line 5559
    :try_start_1e
    const-string v2, "    pendingAppWidgetVisible="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5560
    iget-boolean v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 5562
    :cond_5a
    move-object v15, v10

    move-object/from16 v24, v11

    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .local v15, "sdf":Ljava/text/SimpleDateFormat;
    .local v24, "date":Ljava/util/Date;
    :try_start_1f
    iget-wide v10, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    const-wide/16 v33, 0x0

    cmp-long v2, v10, v33

    if-eqz v2, :cond_5b

    .line 5563
    :try_start_20
    const-string v2, "    pendingStateCommitTime="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5564
    iget-wide v10, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    invoke-static {v10, v11, v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5565
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 5567
    :cond_5b
    :try_start_21
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    if-eqz v2, :cond_60

    if-ltz v3, :cond_5c

    const/4 v2, 0x4

    if-ne v3, v2, :cond_60

    .line 5569
    :cond_5c
    :try_start_22
    const-string v2, "    foregroundOps:"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5570
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_30
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_5f

    .line 5571
    if-ltz v5, :cond_5d

    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    if-eq v5, v4, :cond_5d

    .line 5572
    goto :goto_32

    .line 5574
    :cond_5d
    const-string v4, "      "

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5575
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5576
    const-string v4, ": "

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5577
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_5e

    const-string v4, "WATCHER"

    goto :goto_31

    :cond_5e
    const-string v4, "SILENT"

    :goto_31
    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5570
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 5579
    .end local v2    # "j":I
    :cond_5f
    const-string v2, "    hasForegroundWatchers="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5580
    iget-boolean v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 5582
    :cond_60
    const/16 v25, 0x1

    .line 5584
    .end local v30    # "needSep":Z
    .local v25, "needSep":Z
    if-eqz v9, :cond_63

    .line 5585
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 5586
    .local v2, "opModeCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_33
    if-ge v4, v2, :cond_63

    .line 5587
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 5588
    .local v7, "code":I
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 5589
    .local v10, "mode":I
    if-ltz v5, :cond_61

    if-eq v5, v7, :cond_61

    .line 5590
    goto :goto_34

    .line 5592
    :cond_61
    if-ltz v3, :cond_62

    if-eq v3, v10, :cond_62

    .line 5593
    goto :goto_34

    .line 5595
    :cond_62
    const-string v11, "      "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5596
    const-string v11, ": mode="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 5586
    .end local v7    # "code":I
    .end local v10    # "mode":I
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 5600
    .end local v2    # "opModeCount":I
    .end local v4    # "j":I
    :cond_63
    if-nez v12, :cond_64

    .line 5601
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move-object v14, v6

    move-object v10, v15

    move-object/from16 v11, v24

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    move v15, v5

    goto/16 :goto_3d

    .line 5604
    :cond_64
    const/4 v2, 0x0

    move v10, v2

    .local v10, "pkgi":I
    :goto_35
    :try_start_23
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v10, v2, :cond_6c

    .line 5605
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    move-object v11, v2

    .line 5606
    .local v11, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v6, :cond_65

    :try_start_24
    iget-object v2, v11, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    if-nez v2, :cond_65

    .line 5607
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move-object v14, v6

    move-object v0, v8

    move-object/from16 v38, v12

    move-object/from16 v11, v24

    const/16 v23, 0x0

    move-object/from16 v24, v9

    move-wide/from16 v8, v26

    move/from16 v26, v10

    move-object v10, v15

    move v15, v5

    goto/16 :goto_3c

    .line 5609
    :cond_65
    const/4 v2, 0x0

    .line 5610
    .local v2, "printedPackage":Z
    const/4 v4, 0x0

    move v7, v4

    .local v7, "j":I
    :goto_36
    :try_start_25
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v4

    if-ge v7, v4, :cond_6b

    .line 5611
    invoke-virtual {v11, v7}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 5612
    .local v4, "op":Lcom/android/server/appop/AppOpsService$Op;
    move-wide/from16 v33, v0

    .end local v0    # "nowElapsed":J
    .local v33, "nowElapsed":J
    iget v0, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    .line 5613
    .local v0, "opCode":I
    if-ltz v5, :cond_66

    if-eq v5, v0, :cond_66

    .line 5614
    goto :goto_37

    .line 5616
    :cond_66
    if-ltz v3, :cond_67

    :try_start_26
    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    if-eq v3, v1, :cond_67

    .line 5617
    nop

    .line 5610
    .end local v0    # "opCode":I
    .end local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :goto_37
    move/from16 v35, v3

    move-object v14, v6

    move/from16 v22, v7

    move-object v0, v8

    move-object/from16 v38, v12

    const/16 v23, 0x0

    move-object/from16 v39, v15

    move v15, v5

    move-object/from16 v40, v24

    move-object/from16 v24, v9

    move-wide/from16 v8, v26

    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v10, v39

    move-object/from16 v11, v40

    goto/16 :goto_3b

    .line 5619
    .restart local v0    # "opCode":I
    .restart local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_67
    if-nez v2, :cond_68

    .line 5620
    const-string v1, "    Package "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 5621
    const/4 v2, 0x1

    move/from16 v29, v2

    goto :goto_38

    .line 5619
    :cond_68
    move/from16 v29, v2

    .line 5623
    .end local v2    # "printedPackage":Z
    .local v29, "printedPackage":Z
    :goto_38
    :try_start_27
    const-string v1, "      "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5624
    const-string v1, " ("

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5625
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    move v2, v1

    .line 5626
    .local v2, "switchOp":I
    if-eq v2, v0, :cond_6a

    .line 5627
    :try_start_28
    const-string v1, " / switch "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5628
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5629
    invoke-virtual {v11, v2}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    .line 5630
    .local v1, "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v1, :cond_69

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v30

    goto :goto_39

    .line 5631
    :cond_69
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v30

    :goto_39
    nop

    .line 5632
    .local v30, "mode":I
    move/from16 v31, v0

    .end local v0    # "opCode":I
    .local v31, "opCode":I
    const-string v0, "="

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    goto :goto_3a

    .line 5626
    .end local v1    # "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    .end local v30    # "mode":I
    .end local v31    # "opCode":I
    .restart local v0    # "opCode":I
    :cond_6a
    move/from16 v31, v0

    .line 5634
    .end local v0    # "opCode":I
    .restart local v31    # "opCode":I
    :goto_3a
    :try_start_29
    const-string v0, "): "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5635
    const-string v0, "        "
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    move-object/from16 v1, p0

    move/from16 v30, v2

    .end local v2    # "switchOp":I
    .local v30, "switchOp":I
    move-object/from16 v2, p2

    move/from16 v35, v3

    .end local v3    # "dumpMode":I
    .local v35, "dumpMode":I
    move-object/from16 v3, v17

    move-object/from16 v36, v4

    .end local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v36, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v4, v19

    move-object v14, v6

    move-object/from16 v37, v15

    move v15, v5

    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .local v14, "dumpPackage":Ljava/lang/String;
    .local v15, "dumpOp":I
    .local v37, "sdf":Ljava/text/SimpleDateFormat;
    move-wide/from16 v5, v33

    move/from16 v22, v7

    .end local v7    # "j":I
    .local v22, "j":I
    move-object/from16 v7, v36

    move-object/from16 v38, v12

    const/16 v23, 0x0

    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v38, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    move-object v12, v0

    move-object v0, v8

    move-object/from16 v39, v24

    move-object/from16 v24, v9

    move-wide/from16 v8, v26

    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v11, v39

    move-object/from16 v10, v37

    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v37    # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v8, "now":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .local v11, "date":Ljava/util/Date;
    .local v24, "opModes":Landroid/util/SparseIntArray;
    .local v26, "pkgi":I
    .local v27, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :try_start_2a
    invoke-direct/range {v1 .. v12}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    move/from16 v2, v29

    .line 5610
    .end local v29    # "printedPackage":Z
    .end local v30    # "switchOp":I
    .end local v31    # "opCode":I
    .end local v36    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v2, "printedPackage":Z
    :goto_3b
    add-int/lit8 v7, v22, 0x1

    move-object v6, v14

    move v5, v15

    move/from16 v3, v35

    move-object/from16 v12, v38

    move-object/from16 v14, p2

    move-object v15, v10

    move/from16 v10, v26

    move-wide/from16 v39, v8

    move-object v8, v0

    move-object/from16 v9, v24

    move-wide/from16 v0, v33

    move-object/from16 v24, v11

    move-object/from16 v11, v27

    move-wide/from16 v26, v39

    .end local v22    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_36

    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v27    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v33    # "nowElapsed":J
    .end local v35    # "dumpMode":I
    .end local v38    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v0, "nowElapsed":J
    .restart local v3    # "dumpMode":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .local v10, "pkgi":I
    .local v11, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v15, "sdf":Ljava/text/SimpleDateFormat;
    .local v24, "date":Ljava/util/Date;
    .local v26, "now":J
    :cond_6b
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move-object v14, v6

    move/from16 v22, v7

    move-object v0, v8

    move-object/from16 v38, v12

    const/16 v23, 0x0

    move-object/from16 v39, v15

    move v15, v5

    move-object/from16 v40, v24

    move-object/from16 v24, v9

    move-wide/from16 v8, v26

    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .line 5604
    .end local v2    # "printedPackage":Z
    .end local v3    # "dumpMode":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v8, "now":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .local v11, "date":Ljava/util/Date;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .local v15, "dumpOp":I
    .local v24, "opModes":Landroid/util/SparseIntArray;
    .local v26, "pkgi":I
    .restart local v33    # "nowElapsed":J
    .restart local v35    # "dumpMode":I
    .restart local v38    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :goto_3c
    add-int/lit8 v1, v26, 0x1

    move-wide/from16 v26, v8

    move-object v6, v14

    move v5, v15

    move-object/from16 v9, v24

    move/from16 v3, v35

    move-object/from16 v12, v38

    move-object/from16 v14, p2

    move-object v8, v0

    move-object v15, v10

    move-object/from16 v24, v11

    move v10, v1

    move-wide/from16 v0, v33

    .end local v26    # "pkgi":I
    .local v1, "pkgi":I
    goto/16 :goto_35

    .end local v1    # "pkgi":I
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v33    # "nowElapsed":J
    .end local v35    # "dumpMode":I
    .end local v38    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v0, "nowElapsed":J
    .restart local v3    # "dumpMode":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .local v10, "pkgi":I
    .restart local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v15, "sdf":Ljava/text/SimpleDateFormat;
    .local v24, "date":Ljava/util/Date;
    .local v26, "now":J
    :cond_6c
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move-object v14, v6

    move-object v0, v8

    move-object/from16 v38, v12

    move-object/from16 v11, v24

    const/16 v23, 0x0

    move-object/from16 v24, v9

    move-wide/from16 v8, v26

    move/from16 v26, v10

    move-object v10, v15

    move v15, v5

    .line 5491
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v10    # "pkgi":I
    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :goto_3d
    move/from16 v2, v25

    .end local v0    # "nowElapsed":J
    .end local v3    # "dumpMode":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .end local v24    # "date":Ljava/util/Date;
    .end local v26    # "now":J
    .local v8, "now":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .local v15, "dumpOp":I
    .restart local v33    # "nowElapsed":J
    .restart local v35    # "dumpMode":I
    goto :goto_3f

    .line 5731
    .end local v8    # "now":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v15    # "dumpOp":I
    .end local v20    # "nowUptime":J
    .end local v25    # "needSep":Z
    .end local v32    # "i":I
    .end local v33    # "nowElapsed":J
    .end local v35    # "dumpMode":I
    .restart local v3    # "dumpMode":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move/from16 v35, v3

    move v15, v5

    move-object/from16 v14, p2

    move-object v9, v6

    .end local v3    # "dumpMode":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v15    # "dumpOp":I
    .restart local v35    # "dumpMode":I
    goto/16 :goto_53

    .line 5536
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v15    # "dumpOp":I
    .end local v35    # "dumpMode":I
    .restart local v0    # "nowElapsed":J
    .restart local v3    # "dumpMode":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    .local v7, "hasOp":Z
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v20    # "nowUptime":J
    .local v25, "hasMode":Z
    .restart local v26    # "now":J
    .local v29, "hasPackage":Z
    .local v30, "needSep":Z
    .restart local v32    # "i":I
    :cond_6d
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move v15, v5

    move-object v14, v6

    move-object v0, v8

    move-object/from16 v24, v9

    move-object/from16 v38, v12

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    .end local v3    # "dumpMode":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v26    # "now":J
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v8, "now":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v15    # "dumpOp":I
    .local v24, "opModes":Landroid/util/SparseIntArray;
    .restart local v33    # "nowElapsed":J
    .restart local v35    # "dumpMode":I
    .restart local v38    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    goto :goto_3e

    .line 5496
    .end local v7    # "hasOp":Z
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v24    # "opModes":Landroid/util/SparseIntArray;
    .end local v25    # "hasMode":Z
    .end local v28    # "dumpUid":I
    .end local v29    # "hasPackage":Z
    .end local v30    # "needSep":Z
    .end local v32    # "i":I
    .end local v33    # "nowElapsed":J
    .end local v35    # "dumpMode":I
    .end local v38    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v0, "nowElapsed":J
    .local v2, "needSep":Z
    .restart local v3    # "dumpMode":I
    .local v4, "dumpUid":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .restart local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v15, "i":I
    .restart local v26    # "now":J
    :cond_6e
    move-wide/from16 v33, v0

    move/from16 v30, v2

    move/from16 v35, v3

    move/from16 v28, v4

    move-object v14, v6

    move-object v0, v8

    move-object/from16 v24, v9

    move-object/from16 v38, v12

    move/from16 v32, v15

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    move v15, v5

    .line 5491
    .end local v0    # "nowElapsed":J
    .end local v2    # "needSep":Z
    .end local v3    # "dumpMode":I
    .end local v4    # "dumpUid":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v26    # "now":J
    .local v8, "now":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .local v15, "dumpOp":I
    .restart local v28    # "dumpUid":I
    .restart local v30    # "needSep":Z
    .restart local v32    # "i":I
    .restart local v33    # "nowElapsed":J
    .restart local v35    # "dumpMode":I
    :goto_3e
    move/from16 v2, v30

    .end local v30    # "needSep":Z
    .restart local v2    # "needSep":Z
    :goto_3f
    add-int/lit8 v0, v32, 0x1

    move-wide/from16 v26, v8

    move-object v6, v14

    move v5, v15

    move/from16 v4, v28

    move/from16 v3, v35

    move-object/from16 v14, p2

    move v15, v0

    move-wide/from16 v0, v33

    .end local v32    # "i":I
    .local v0, "i":I
    goto/16 :goto_21

    .line 5731
    .end local v0    # "i":I
    .end local v2    # "needSep":Z
    .end local v8    # "now":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v15    # "dumpOp":I
    .end local v20    # "nowUptime":J
    .end local v28    # "dumpUid":I
    .end local v33    # "nowElapsed":J
    .end local v35    # "dumpMode":I
    .restart local v3    # "dumpMode":I
    .restart local v4    # "dumpUid":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move/from16 v35, v3

    move/from16 v28, v4

    move v15, v5

    move-object/from16 v14, p2

    move-object v9, v6

    .end local v3    # "dumpMode":I
    .end local v4    # "dumpUid":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v15    # "dumpOp":I
    .restart local v28    # "dumpUid":I
    .restart local v35    # "dumpMode":I
    goto/16 :goto_53

    .line 5491
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v28    # "dumpUid":I
    .end local v35    # "dumpMode":I
    .local v0, "nowElapsed":J
    .restart local v2    # "needSep":Z
    .restart local v3    # "dumpMode":I
    .restart local v4    # "dumpUid":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .local v15, "i":I
    .restart local v20    # "nowUptime":J
    .restart local v26    # "now":J
    :cond_6f
    move-wide/from16 v33, v0

    move/from16 v30, v2

    move/from16 v35, v3

    move/from16 v28, v4

    move-object v14, v6

    move/from16 v32, v15

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    move v15, v5

    .line 5640
    .end local v0    # "nowElapsed":J
    .end local v2    # "needSep":Z
    .end local v3    # "dumpMode":I
    .end local v4    # "dumpUid":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .end local v26    # "now":J
    .restart local v8    # "now":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .local v15, "dumpOp":I
    .restart local v28    # "dumpUid":I
    .restart local v30    # "needSep":Z
    .restart local v33    # "nowElapsed":J
    .restart local v35    # "dumpMode":I
    if-eqz v30, :cond_70

    .line 5641
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_4

    goto :goto_40

    .line 5731
    .end local v8    # "now":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v20    # "nowUptime":J
    .end local v30    # "needSep":Z
    .end local v33    # "nowElapsed":J
    :catchall_4
    move-exception v0

    move-object v9, v14

    move-object/from16 v14, p2

    goto/16 :goto_53

    .line 5644
    .restart local v8    # "now":J
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v20    # "nowUptime":J
    .restart local v30    # "needSep":Z
    .restart local v33    # "nowElapsed":J
    :cond_70
    :goto_40
    :try_start_2b
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_8

    .line 5645
    .local v0, "userRestrictionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, v0, :cond_89

    .line 5646
    :try_start_2c
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 5647
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 5648
    .local v3, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    const/4 v4, 0x0

    .line 5650
    .local v4, "printedTokenHeader":Z
    if-gez v35, :cond_88

    if-nez v18, :cond_88

    if-eqz v16, :cond_71

    .line 5651
    move/from16 v22, v0

    move-wide/from16 v31, v8

    move-object v5, v14

    move-object/from16 v14, p2

    goto/16 :goto_51

    .line 5654
    :cond_71
    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_6

    if-eqz v5, :cond_72

    .line 5655
    :try_start_2d
    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v12
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    goto :goto_42

    :cond_72
    move/from16 v12, v23

    :goto_42
    move v5, v12

    .line 5656
    .local v5, "restrictionCount":I
    if-lez v5, :cond_7d

    if-nez v14, :cond_7d

    .line 5657
    const/4 v6, 0x0

    .line 5658
    .local v6, "printedOpsHeader":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_43
    if-ge v7, v5, :cond_7c

    .line 5659
    :try_start_2e
    iget-object v12, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 5660
    .local v12, "userId":I
    move/from16 v22, v0

    .end local v0    # "userRestrictionCount":I
    .local v22, "userRestrictionCount":I
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_6

    .line 5661
    .local v0, "restrictedOps":[Z
    if-nez v0, :cond_73

    .line 5662
    move/from16 v24, v5

    goto :goto_44

    .line 5664
    :cond_73
    if-ltz v15, :cond_75

    move/from16 v24, v5

    .end local v5    # "restrictionCount":I
    .local v24, "restrictionCount":I
    :try_start_2f
    array-length v5, v0

    if-ge v15, v5, :cond_74

    aget-boolean v5, v0, v15
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4

    if-nez v5, :cond_76

    .line 5658
    .end local v0    # "restrictedOps":[Z
    .end local v12    # "userId":I
    .end local v24    # "restrictionCount":I
    .restart local v5    # "restrictionCount":I
    :cond_74
    :goto_44
    move/from16 v26, v6

    move-wide/from16 v31, v8

    move-object v5, v14

    const/4 v6, 0x1

    move-object/from16 v14, p2

    .end local v5    # "restrictionCount":I
    .restart local v24    # "restrictionCount":I
    goto/16 :goto_49

    .line 5664
    .end local v24    # "restrictionCount":I
    .restart local v0    # "restrictedOps":[Z
    .restart local v5    # "restrictionCount":I
    .restart local v12    # "userId":I
    :cond_75
    move/from16 v24, v5

    .line 5668
    .end local v5    # "restrictionCount":I
    .restart local v24    # "restrictionCount":I
    :cond_76
    if-nez v4, :cond_77

    .line 5669
    :try_start_30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v4

    .end local v4    # "printedTokenHeader":Z
    .local v25, "printedTokenHeader":Z
    const-string v4, "  User restrictions for token "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_6

    move-object v5, v14

    move-object/from16 v14, p2

    .end local v14    # "dumpPackage":Ljava/lang/String;
    .local v5, "dumpPackage":Ljava/lang/String;
    :try_start_31
    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5670
    const/4 v4, 0x1

    .end local v25    # "printedTokenHeader":Z
    .restart local v4    # "printedTokenHeader":Z
    goto :goto_45

    .line 5668
    .end local v5    # "dumpPackage":Ljava/lang/String;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    :cond_77
    move/from16 v25, v4

    move-object v5, v14

    move-object/from16 v14, p2

    .line 5672
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    :goto_45
    if-nez v6, :cond_78

    .line 5673
    move/from16 v25, v4

    .end local v4    # "printedTokenHeader":Z
    .restart local v25    # "printedTokenHeader":Z
    const-string v4, "      Restricted ops:"

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5674
    const/4 v6, 0x1

    goto :goto_46

    .line 5672
    .end local v25    # "printedTokenHeader":Z
    .restart local v4    # "printedTokenHeader":Z
    :cond_78
    move/from16 v25, v4

    .line 5676
    .end local v4    # "printedTokenHeader":Z
    .restart local v25    # "printedTokenHeader":Z
    :goto_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5677
    .local v4, "restrictedOpsValue":Ljava/lang/StringBuilder;
    move/from16 v26, v6

    .end local v6    # "printedOpsHeader":Z
    .local v26, "printedOpsHeader":Z
    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5678
    array-length v6, v0

    .line 5679
    .local v6, "restrictedOpCount":I
    const/16 v27, 0x0

    move-wide/from16 v31, v8

    move/from16 v8, v27

    .local v8, "k":I
    .local v31, "now":J
    :goto_47
    if-ge v8, v6, :cond_7b

    .line 5680
    aget-boolean v9, v0, v8

    if-eqz v9, :cond_7a

    .line 5681
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    move/from16 v27, v6

    const/4 v6, 0x1

    .end local v6    # "restrictedOpCount":I
    .local v27, "restrictedOpCount":I
    if-le v9, v6, :cond_79

    .line 5682
    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5684
    :cond_79
    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 5680
    .end local v27    # "restrictedOpCount":I
    .restart local v6    # "restrictedOpCount":I
    :cond_7a
    move/from16 v27, v6

    const/4 v6, 0x1

    .line 5679
    .end local v6    # "restrictedOpCount":I
    .restart local v27    # "restrictedOpCount":I
    :goto_48
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v27

    goto :goto_47

    .end local v27    # "restrictedOpCount":I
    .restart local v6    # "restrictedOpCount":I
    :cond_7b
    move/from16 v27, v6

    const/4 v6, 0x1

    .line 5687
    .end local v6    # "restrictedOpCount":I
    .end local v8    # "k":I
    .restart local v27    # "restrictedOpCount":I
    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5688
    const-string v8, "        "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "user: "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 5689
    const-string v8, " restricted ops: "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v4, v25

    .line 5658
    .end local v0    # "restrictedOps":[Z
    .end local v12    # "userId":I
    .end local v25    # "printedTokenHeader":Z
    .end local v27    # "restrictedOpCount":I
    .local v4, "printedTokenHeader":Z
    :goto_49
    add-int/lit8 v7, v7, 0x1

    move-object v14, v5

    move/from16 v0, v22

    move/from16 v5, v24

    move/from16 v6, v26

    move-wide/from16 v8, v31

    goto/16 :goto_43

    .end local v22    # "userRestrictionCount":I
    .end local v24    # "restrictionCount":I
    .end local v26    # "printedOpsHeader":Z
    .end local v31    # "now":J
    .local v0, "userRestrictionCount":I
    .local v5, "restrictionCount":I
    .local v6, "printedOpsHeader":Z
    .local v8, "now":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    :cond_7c
    move/from16 v22, v0

    move/from16 v25, v4

    move/from16 v24, v5

    move/from16 v26, v6

    move-wide/from16 v31, v8

    move-object v5, v14

    const/4 v6, 0x1

    move-object/from16 v14, p2

    .end local v0    # "userRestrictionCount":I
    .end local v4    # "printedTokenHeader":Z
    .end local v6    # "printedOpsHeader":Z
    .end local v8    # "now":J
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .local v5, "dumpPackage":Ljava/lang/String;
    .restart local v22    # "userRestrictionCount":I
    .restart local v24    # "restrictionCount":I
    .restart local v25    # "printedTokenHeader":Z
    .restart local v26    # "printedOpsHeader":Z
    .restart local v31    # "now":J
    goto :goto_4a

    .line 5656
    .end local v7    # "j":I
    .end local v22    # "userRestrictionCount":I
    .end local v24    # "restrictionCount":I
    .end local v25    # "printedTokenHeader":Z
    .end local v26    # "printedOpsHeader":Z
    .end local v31    # "now":J
    .restart local v0    # "userRestrictionCount":I
    .restart local v4    # "printedTokenHeader":Z
    .local v5, "restrictionCount":I
    .restart local v8    # "now":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    :cond_7d
    move/from16 v22, v0

    move/from16 v24, v5

    move-wide/from16 v31, v8

    move-object v5, v14

    const/4 v6, 0x1

    move-object/from16 v14, p2

    .line 5693
    .end local v0    # "userRestrictionCount":I
    .end local v8    # "now":J
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .local v5, "dumpPackage":Ljava/lang/String;
    .restart local v22    # "userRestrictionCount":I
    .restart local v24    # "restrictionCount":I
    .restart local v31    # "now":J
    :goto_4a
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_7e

    .line 5694
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    goto :goto_4b

    :cond_7e
    move/from16 v12, v23

    :goto_4b
    move v0, v12

    .line 5695
    .local v0, "excludedPackageCount":I
    if-lez v0, :cond_87

    if-gez v15, :cond_87

    .line 5696
    const/4 v7, 0x0

    .line 5697
    .local v7, "printedPackagesHeader":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4c
    if-ge v8, v0, :cond_86

    .line 5698
    iget-object v9, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 5699
    .local v9, "userId":I
    iget-object v12, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    .line 5700
    .local v12, "packageNames":[Ljava/lang/String;
    if-nez v12, :cond_7f

    .line 5701
    move/from16 v26, v0

    move-object/from16 v27, v3

    goto/16 :goto_50

    .line 5704
    :cond_7f
    if-eqz v5, :cond_82

    .line 5705
    const/16 v25, 0x0

    .line 5706
    .local v25, "hasPackage":Z
    array-length v6, v12

    move/from16 v26, v0

    move/from16 v0, v23

    .end local v0    # "excludedPackageCount":I
    .local v26, "excludedPackageCount":I
    :goto_4d
    if-ge v0, v6, :cond_81

    aget-object v27, v12, v0

    move-object/from16 v29, v27

    .line 5707
    .local v29, "pkg":Ljava/lang/String;
    move-object/from16 v27, v3

    move-object/from16 v3, v29

    .end local v29    # "pkg":Ljava/lang/String;
    .local v3, "pkg":Ljava/lang/String;
    .local v27, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_80

    .line 5708
    const/16 v25, 0x1

    .line 5709
    goto :goto_4e

    .line 5706
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_80
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v27

    goto :goto_4d

    .end local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .local v3, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_81
    move-object/from16 v27, v3

    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :goto_4e
    goto :goto_4f

    .line 5713
    .end local v25    # "hasPackage":Z
    .end local v26    # "excludedPackageCount":I
    .end local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0    # "excludedPackageCount":I
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_82
    move/from16 v26, v0

    move-object/from16 v27, v3

    .end local v0    # "excludedPackageCount":I
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v26    # "excludedPackageCount":I
    .restart local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    const/16 v25, 0x1

    .line 5715
    .restart local v25    # "hasPackage":Z
    :goto_4f
    if-nez v25, :cond_83

    .line 5716
    goto :goto_50

    .line 5718
    :cond_83
    if-nez v4, :cond_84

    .line 5719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  User restrictions for token "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5720
    const/4 v4, 0x1

    .line 5722
    :cond_84
    if-nez v7, :cond_85

    .line 5723
    const-string v0, "      Excluded packages:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5724
    const/4 v7, 0x1

    .line 5726
    :cond_85
    const-string v0, "        "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 5727
    const-string v0, " packages: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_5

    .line 5697
    .end local v9    # "userId":I
    .end local v12    # "packageNames":[Ljava/lang/String;
    .end local v25    # "hasPackage":Z
    :goto_50
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v26

    move-object/from16 v3, v27

    const/4 v6, 0x1

    goto/16 :goto_4c

    .end local v26    # "excludedPackageCount":I
    .end local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0    # "excludedPackageCount":I
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_86
    move/from16 v26, v0

    move-object/from16 v27, v3

    .end local v0    # "excludedPackageCount":I
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v26    # "excludedPackageCount":I
    .restart local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    goto :goto_51

    .line 5695
    .end local v7    # "printedPackagesHeader":Z
    .end local v8    # "j":I
    .end local v26    # "excludedPackageCount":I
    .end local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0    # "excludedPackageCount":I
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_87
    move/from16 v26, v0

    move-object/from16 v27, v3

    .end local v0    # "excludedPackageCount":I
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v26    # "excludedPackageCount":I
    .restart local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    goto :goto_51

    .line 5731
    .end local v1    # "i":I
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v4    # "printedTokenHeader":Z
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v20    # "nowUptime":J
    .end local v22    # "userRestrictionCount":I
    .end local v24    # "restrictionCount":I
    .end local v26    # "excludedPackageCount":I
    .end local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .end local v30    # "needSep":Z
    .end local v31    # "now":J
    .end local v33    # "nowElapsed":J
    :catchall_5
    move-exception v0

    move-object v9, v5

    goto :goto_53

    .line 5650
    .end local v5    # "dumpPackage":Ljava/lang/String;
    .local v0, "userRestrictionCount":I
    .restart local v1    # "i":I
    .restart local v2    # "token":Landroid/os/IBinder;
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v4    # "printedTokenHeader":Z
    .local v8, "now":J
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v20    # "nowUptime":J
    .restart local v30    # "needSep":Z
    .restart local v33    # "nowElapsed":J
    :cond_88
    move/from16 v22, v0

    move-object/from16 v27, v3

    move-wide/from16 v31, v8

    move-object v5, v14

    move-object/from16 v14, p2

    .line 5645
    .end local v0    # "userRestrictionCount":I
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .end local v4    # "printedTokenHeader":Z
    .end local v8    # "now":J
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    .restart local v22    # "userRestrictionCount":I
    .restart local v31    # "now":J
    :goto_51
    add-int/lit8 v1, v1, 0x1

    move-object v14, v5

    move/from16 v0, v22

    move-wide/from16 v8, v31

    goto/16 :goto_41

    .line 5731
    .end local v1    # "i":I
    .end local v5    # "dumpPackage":Ljava/lang/String;
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v20    # "nowUptime":J
    .end local v22    # "userRestrictionCount":I
    .end local v30    # "needSep":Z
    .end local v31    # "now":J
    .end local v33    # "nowElapsed":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v5, v14

    move-object/from16 v14, p2

    move-object v9, v5

    .end local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    goto :goto_53

    .line 5645
    .end local v5    # "dumpPackage":Ljava/lang/String;
    .restart local v0    # "userRestrictionCount":I
    .restart local v1    # "i":I
    .restart local v8    # "now":J
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v20    # "nowUptime":J
    .restart local v30    # "needSep":Z
    .restart local v33    # "nowElapsed":J
    :cond_89
    move/from16 v22, v0

    move-wide/from16 v31, v8

    move-object v5, v14

    move-object/from16 v14, p2

    .line 5731
    .end local v0    # "userRestrictionCount":I
    .end local v1    # "i":I
    .end local v8    # "now":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v20    # "nowUptime":J
    .end local v30    # "needSep":Z
    .end local v33    # "nowElapsed":J
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    :try_start_32
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_7

    .line 5734
    if-eqz v16, :cond_8a

    if-nez v18, :cond_8a

    .line 5735
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    const-string v2, "  "

    move-object/from16 v3, p2

    move/from16 v4, v28

    move-object v9, v5

    .end local v5    # "dumpPackage":Ljava/lang/String;
    .local v9, "dumpPackage":Ljava/lang/String;
    move-object/from16 v6, v17

    move v7, v15

    move/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_52

    .line 5734
    .end local v9    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    :cond_8a
    move-object v9, v5

    .line 5738
    .end local v5    # "dumpPackage":Ljava/lang/String;
    .restart local v9    # "dumpPackage":Ljava/lang/String;
    :goto_52
    return-void

    .line 5731
    .end local v9    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object v9, v5

    .end local v5    # "dumpPackage":Ljava/lang/String;
    .restart local v9    # "dumpPackage":Ljava/lang/String;
    goto :goto_53

    .end local v9    # "dumpPackage":Ljava/lang/String;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object v9, v14

    move-object/from16 v14, p2

    .end local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v9    # "dumpPackage":Ljava/lang/String;
    goto :goto_53

    .end local v9    # "dumpPackage":Ljava/lang/String;
    .end local v15    # "dumpOp":I
    .end local v28    # "dumpUid":I
    .end local v35    # "dumpMode":I
    .local v3, "dumpMode":I
    .local v4, "dumpUid":I
    .local v5, "dumpOp":I
    .local v6, "dumpPackage":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move/from16 v35, v3

    move/from16 v28, v4

    move v15, v5

    move-object v9, v6

    .end local v3    # "dumpMode":I
    .end local v4    # "dumpUid":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .restart local v9    # "dumpPackage":Ljava/lang/String;
    .restart local v15    # "dumpOp":I
    .restart local v28    # "dumpUid":I
    .restart local v35    # "dumpMode":I
    :goto_53
    :try_start_33
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_a

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_53
.end method

.method public extractAsyncOps(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation

    .line 3457
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3459
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3461
    .local v0, "uid":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    .line 3463
    monitor-enter p0

    .line 3464
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit p0

    return-object v1

    .line 3465
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 3552
    invoke-direct {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3553
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3554
    invoke-static {p3, p4}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3555
    .local v7, "resolvedPackageName":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 3556
    return-void

    .line 3561
    :cond_0
    :try_start_0
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3565
    .local v5, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    nop

    .line 3567
    monitor-enter p0

    .line 3568
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, v7

    move-object v4, p5

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v0

    .line 3569
    .local v0, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v0, :cond_1

    .line 3570
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation not found: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") op="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3571
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3570
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    monitor-exit p0

    return-void

    .line 3574
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 3575
    .local v1, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    if-nez v1, :cond_2

    .line 3576
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribution not found: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3577
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3576
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    monitor-exit p0

    return-void

    .line 3581
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3582
    invoke-virtual {v1, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_0

    .line 3584
    :cond_3
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation not started: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3585
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3584
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    .end local v0    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v1    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :goto_0
    monitor-exit p0

    .line 3588
    return-void

    .line 3587
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3562
    .end local v5    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    :catch_0
    move-exception v0

    .line 3563
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v2, "Cannot finishOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3564
    return-void
.end method

.method public getAppOpsServiceDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .locals 1

    .line 2875
    monitor-enter p0

    .line 2876
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    monitor-exit p0

    return-object v0

    .line 2877
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJILandroid/os/RemoteCallback;)V
    .locals 17
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "flags"    # I
    .param p11, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 2095
    .local p4, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v13, p11

    invoke-direct/range {p0 .. p10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 2097
    const-string v2, "callback cannot be null"

    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2099
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/app/ActivityManagerInternal;

    .line 2100
    .local v14, "ami":Landroid/app/ActivityManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/app/ActivityManagerInternal;->isUidCurrentlyInstrumented(I)Z

    move-result v15

    .line 2101
    .local v15, "isCallerInstrumented":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move/from16 v16, v2

    .line 2103
    .local v16, "isCallerSystem":Z
    if-nez v16, :cond_1

    if-nez v15, :cond_1

    .line 2104
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$JHjaGTUaQHugMX7TLydyaTrbPFw;

    invoke-direct {v3, v13}, Lcom/android/server/appop/-$$Lambda$AppOpsService$JHjaGTUaQHugMX7TLydyaTrbPFw;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2105
    return-void

    .line 2108
    :cond_1
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2109
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2108
    const-string v5, "android.permission.GET_APP_OPS_STATS"

    const-string v6, "getHistoricalOps"

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2111
    if-eqz v1, :cond_2

    .line 2112
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v7, v2

    .line 2115
    .local v7, "opNamesArray":[Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/-$$Lambda$9PbhNRcJKpFejdnfSDhPa_VHrMY;->INSTANCE:Lcom/android/server/appop/-$$Lambda$9PbhNRcJKpFejdnfSDhPa_VHrMY;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2116
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2117
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 2115
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v0, v12

    move-object/from16 v12, p11

    invoke-static/range {v2 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v2

    .line 2117
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v2

    .line 2115
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2118
    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJILandroid/os/RemoteCallback;)V
    .locals 15
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "flags"    # I
    .param p11, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 2124
    .local p4, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    move-object/from16 v1, p4

    invoke-direct/range {p0 .. p10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 2126
    const-string v2, "callback cannot be null"

    move-object/from16 v14, p11

    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2128
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2129
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2128
    const-string v5, "android.permission.MANAGE_APPOPS"

    const-string v6, "getHistoricalOps"

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2131
    if-eqz v1, :cond_0

    .line 2132
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v8, v2

    .line 2135
    .local v8, "opNamesArray":[Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$ztf_FWUCLkjfRoVMTTWb7ZsjhNk;->INSTANCE:Lcom/android/server/appop/-$$Lambda$ztf_FWUCLkjfRoVMTTWb7ZsjhNk;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2136
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2137
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2135
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v13, p11

    invoke-static/range {v3 .. v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 2137
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 2135
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2138
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2032
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2033
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2032
    const-string v3, "android.permission.GET_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2034
    invoke-static {p1, p2}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2035
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2036
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2038
    :cond_0
    monitor-enter p0

    .line 2039
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v6, p1

    move-object v7, v0

    :try_start_0
    invoke-direct/range {v5 .. v10}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v1

    .line 2040
    .local v1, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v1, :cond_1

    .line 2041
    monitor-exit p0

    return-object v4

    .line 2043
    :cond_1
    invoke-direct {p0, v1, p3}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2044
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2

    .line 2045
    monitor-exit p0

    return-object v4

    .line 2047
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2048
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v4, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2050
    .local v4, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2051
    monitor-exit p0

    return-object v3

    .line 2052
    .end local v1    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v4    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 12
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2000
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2001
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2000
    const-string v3, "android.permission.GET_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2002
    const/4 v0, 0x0

    .line 2003
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 2004
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2005
    .local v1, "uidStateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 2006
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2007
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2008
    goto :goto_2

    .line 2010
    :cond_0
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2011
    .local v4, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 2012
    .local v5, "packageCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 2013
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2014
    .local v7, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-direct {p0, v7, p1}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v8

    .line 2015
    .local v8, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v8, :cond_2

    .line 2016
    if-nez v0, :cond_1

    .line 2017
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    .line 2019
    :cond_1
    new-instance v9, Landroid/app/AppOpsManager$PackageOps;

    iget-object v10, v7, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v9, v10, v11, v8}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2021
    .local v9, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2012
    .end local v7    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v8    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v9    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2005
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v5    # "packageCount":I
    .end local v6    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2025
    .end local v1    # "uidStateCount":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit p0

    .line 2026
    return-object v0

    .line 2025
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2150
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2151
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2150
    const-string v3, "android.permission.GET_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2152
    monitor-enter p0

    .line 2153
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 2154
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_0

    .line 2155
    monitor-exit p0

    return-object v4

    .line 2157
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/appop/AppOpsService;->collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2158
    .local v1, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v1, :cond_1

    .line 2159
    monitor-exit p0

    return-object v4

    .line 2161
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2162
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v4, v5, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2164
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2165
    monitor-exit p0

    return-object v2

    .line 2166
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 5839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    .line 5840
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5842
    return v1

    .line 5845
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 5846
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5847
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 5848
    return v1

    .line 5851
    :cond_1
    monitor-enter p0

    .line 5852
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p2

    move-object v4, v0

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v2

    .line 5853
    .local v2, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v2, :cond_2

    .line 5854
    monitor-exit p0

    return v1

    .line 5857
    :cond_2
    invoke-virtual {v2, p1}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 5858
    .local v3, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v3, :cond_3

    .line 5859
    monitor-exit p0

    return v1

    .line 5862
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v1

    monitor-exit p0

    return v1

    .line 5863
    .end local v2    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v3    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$systemReady$0$AppOpsService(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1673
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1674
    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 1675
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 1673
    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I
    .locals 11
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 3064
    move-object v1, p0

    monitor-enter p0

    .line 3065
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 3066
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3067
    if-nez v0, :cond_0

    .line 3068
    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v2

    return v2

    .line 3071
    :cond_0
    new-instance v10, Lcom/android/server/appop/-$$Lambda$AppOpsService$p0ZLmKR_KoZGKlw2X3zSLMlh_MU;

    invoke-direct {v10, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$p0ZLmKR_KoZGKlw2X3zSLMlh_MU;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)I

    move-result v2

    return v2

    .line 3066
    .end local v0    # "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteProxyOperation(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I
    .locals 23
    .param p1, "code"    # I
    .param p2, "proxiedUid"    # I
    .param p3, "proxiedPackageName"    # Ljava/lang/String;
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "proxyUid"    # I
    .param p6, "proxyPackageName"    # Ljava/lang/String;
    .param p7, "proxyAttributionTag"    # Ljava/lang/String;
    .param p8, "shouldCollectAsyncNotedOp"    # Z
    .param p9, "message"    # Ljava/lang/String;
    .param p10, "shouldCollectMessage"    # Z

    .line 3028
    move-object/from16 v15, p0

    move/from16 v14, p5

    invoke-direct {v15, v14}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3029
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3031
    invoke-static/range {p5 .. p6}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3032
    .local v21, "resolveProxyPackageName":Ljava/lang/String;
    const/4 v12, 0x1

    if-nez v21, :cond_0

    .line 3033
    return v12

    .line 3036
    :cond_0
    iget-object v0, v15, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v2, v1, v14}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v12

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move/from16 v22, v0

    .line 3040
    .local v22, "isProxyTrusted":Z
    if-eqz v22, :cond_2

    const/4 v0, 0x2

    move v8, v0

    goto :goto_1

    .line 3041
    :cond_2
    const/4 v0, 0x4

    move v8, v0

    :goto_1
    nop

    .line 3042
    .local v8, "proxyFlags":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v22, :cond_3

    move v9, v12

    goto :goto_2

    :cond_3
    move v9, v1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proxy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p9

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v3, v21

    move-object/from16 v4, p7

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)I

    move-result v0

    .line 3045
    .local v0, "proxyMode":I
    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v2, p2

    if-ne v1, v2, :cond_4

    goto :goto_4

    .line 3049
    :cond_4
    invoke-static/range {p2 .. p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3050
    .local v1, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 3051
    return v12

    .line 3053
    :cond_5
    if-eqz v22, :cond_6

    const/16 v3, 0x8

    move/from16 v17, v3

    goto :goto_3

    .line 3054
    :cond_6
    const/16 v3, 0x10

    move/from16 v17, v3

    :goto_3
    nop

    .line 3055
    .local v17, "proxiedFlags":I
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v1

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, v21

    move-object/from16 v16, p7

    move/from16 v18, p8

    move-object/from16 v19, p9

    move/from16 v20, p10

    invoke-direct/range {v9 .. v20}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)I

    move-result v3

    return v3

    .line 3045
    .end local v1    # "resolveProxiedPackageName":Ljava/lang/String;
    .end local v17    # "proxiedFlags":I
    :cond_7
    move/from16 v2, p2

    .line 3046
    :goto_4
    return v0
.end method

.method public offsetHistory(J)V
    .locals 3
    .param p1, "offsetMillis"    # J

    .line 5877
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "offsetHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5880
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 5881
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 4740
    new-instance v0, Lcom/android/server/appop/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/appop/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4741
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1792
    monitor-enter p0

    .line 1793
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1794
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_0

    .line 1795
    monitor-exit p0

    return-void

    .line 1798
    :cond_0
    const/4 v1, 0x0

    .line 1801
    .local v1, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    .line 1802
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    move-object v1, v2

    .line 1806
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1807
    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 1808
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1811
    :cond_2
    if-eqz v1, :cond_5

    .line 1812
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1814
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v2

    .line 1815
    .local v2, "numOps":I
    const/4 v3, 0x0

    .local v3, "opNum":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 1816
    invoke-virtual {v1, v3}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 1818
    .local v4, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1819
    .local v5, "numAttributions":I
    const/4 v6, 0x0

    .local v6, "attributionNum":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 1821
    iget-object v7, v4, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 1823
    .local v7, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :goto_2
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$1700(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1824
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$1700(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1820
    .end local v7    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1815
    .end local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v5    # "numAttributions":I
    .end local v6    # "attributionNum":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1830
    .end local v2    # "numOps":I
    .end local v3    # "opNum":I
    :cond_5
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory(ILjava/lang/String;)V

    .line 1831
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    monitor-exit p0

    .line 1832
    return-void

    .line 1831
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 3729
    if-nez p1, :cond_0

    .line 3730
    const/4 v0, -0x1

    return v0

    .line 3732
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish()V
    .locals 2

    .line 1535
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "appops"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1536
    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1537
    return-void
.end method

.method readState()V
    .locals 13

    .line 4116
    const/4 v0, -0x1

    .line 4117
    .local v0, "oldVersion":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 4118
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4121
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4125
    .local v2, "stream":Ljava/io/FileInputStream;
    nop

    .line 4126
    const/4 v3, 0x0

    .line 4127
    .local v3, "success":Z
    :try_start_2
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4129
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 4130
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4132
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 4137
    :cond_0
    if-ne v6, v8, :cond_9

    .line 4141
    const/4 v5, 0x0

    const-string/jumbo v8, "v"

    invoke-interface {v4, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4142
    .local v5, "versionString":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 4143
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v0, v8

    .line 4146
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 4147
    .local v8, "outerDepth":I
    :cond_2
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v6, v9

    if-eq v9, v7, :cond_7

    const/4 v9, 0x3

    if-ne v6, v9, :cond_3

    .line 4148
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_7

    .line 4149
    :cond_3
    if-eq v6, v9, :cond_2

    const/4 v9, 0x4

    if-ne v6, v9, :cond_4

    .line 4150
    goto :goto_1

    .line 4153
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 4154
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "pkg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4155
    invoke-direct {p0, v4}, Lcom/android/server/appop/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 4156
    :cond_5
    const-string/jumbo v10, "uid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4157
    invoke-direct {p0, v4}, Lcom/android/server/appop/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 4159
    :cond_6
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <app-ops>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4160
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4159
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4163
    .end local v9    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 4164
    :cond_7
    const/4 v3, 0x1

    .line 4178
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "versionString":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "outerDepth":I
    if-nez v3, :cond_8

    .line 4179
    :try_start_4
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4182
    :cond_8
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4184
    :goto_3
    goto/16 :goto_4

    .line 4183
    :catch_0
    move-exception v4

    .line 4185
    goto/16 :goto_4

    .line 4138
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_9
    :try_start_6
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldVersion":I
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    throw v5
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4178
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    .restart local v0    # "oldVersion":I
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_0
    move-exception v4

    goto/16 :goto_5

    .line 4175
    :catch_1
    move-exception v4

    .line 4176
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_7
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4178
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v3, :cond_a

    .line 4179
    :try_start_8
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4182
    :cond_a
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 4173
    :catch_2
    move-exception v4

    .line 4174
    .local v4, "e":Ljava/io/IOException;
    :try_start_a
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4178
    .end local v4    # "e":Ljava/io/IOException;
    if-nez v3, :cond_b

    .line 4179
    :try_start_b
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 4182
    :cond_b
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    .line 4171
    :catch_3
    move-exception v4

    .line 4172
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 4178
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v3, :cond_c

    .line 4179
    :try_start_e
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 4182
    :cond_c
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_3

    .line 4169
    :catch_4
    move-exception v4

    .line 4170
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_10
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 4178
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_d

    .line 4179
    :try_start_11
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 4182
    :cond_d
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_3

    .line 4167
    :catch_5
    move-exception v4

    .line 4168
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_13
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 4178
    .end local v4    # "e":Ljava/lang/NullPointerException;
    if-nez v3, :cond_e

    .line 4179
    :try_start_14
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 4182
    :cond_e
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_3

    .line 4165
    :catch_6
    move-exception v4

    .line 4166
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_16
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 4178
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    if-nez v3, :cond_f

    .line 4179
    :try_start_17
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 4182
    :cond_f
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_3

    .line 4186
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    :goto_4
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 4187
    :try_start_1a
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 4188
    monitor-enter p0

    .line 4189
    :try_start_1b
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->upgradeLocked(I)V

    .line 4190
    monitor-exit p0

    .line 4191
    return-void

    .line 4190
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    throw v1

    .line 4178
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "success":Z
    :goto_5
    if-nez v3, :cond_10

    .line 4179
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 4182
    :cond_10
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 4184
    goto :goto_6

    .line 4183
    :catch_7
    move-exception v5

    .line 4185
    :goto_6
    nop

    .end local v0    # "oldVersion":I
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_1e
    throw v4

    .line 4186
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    .restart local v0    # "oldVersion":I
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_2
    move-exception v2

    goto :goto_7

    .line 4122
    :catch_8
    move-exception v2

    .line 4123
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing app ops "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    return-void

    .line 4186
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .end local v0    # "oldVersion":I
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_21
    throw v2

    .line 4187
    .restart local v0    # "oldVersion":I
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    throw v2
.end method

.method public rebootHistory(J)V
    .locals 3
    .param p1, "offlineDurationMillis"    # J

    .line 5909
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "rebootHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5912
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 5915
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v2}, Lcom/android/server/appop/HistoricalRegistry;->shutdown()V

    .line 5917
    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 5918
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 5921
    :cond_1
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Lcom/android/server/appop/HistoricalRegistry;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 5922
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 5923
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    .line 5924
    return-void
.end method

.method public reloadNonHistoricalState()V
    .locals 5

    .line 2142
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2143
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2142
    const-string v3, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v4, "reloadNonHistoricalState"

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2144
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 2145
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 2146
    return-void
.end method

.method public removeUser(I)V
    .locals 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5826
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 5827
    monitor-enter p0

    .line 5828
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 5829
    .local v0, "tokenCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 5830
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 5831
    .local v2, "opRestrictions":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v2, p1}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->removeUser(I)V

    .line 5829
    .end local v2    # "opRestrictions":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5833
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->removeUidsForUserLocked(I)V

    .line 5834
    .end local v0    # "tokenCount":I
    monitor-exit p0

    .line 5835
    return-void

    .line 5834
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notedAppOp"    # Landroid/app/SyncNotedAppOp;
    .param p3, "message"    # Ljava/lang/String;

    .line 5938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5939
    .local v6, "uid":I
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5940
    monitor-enter p0

    .line 5941
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 5942
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v7, 0x1

    if-nez v0, :cond_0

    .line 5943
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig;

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 5944
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v7, v8, v4}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit p0

    .line 5943
    return-object v0

    .line 5947
    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5948
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5950
    nop

    .line 5951
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v3

    .line 5952
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 5950
    move-object v0, p0

    move v1, v6

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 5954
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig;

    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    iget v2, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 5955
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v7, v8, v4}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit p0

    .line 5954
    return-object v0

    .line 5956
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 23
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    .line 2637
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2638
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2639
    .local v5, "callingUid":I
    const/4 v12, 0x1

    const/4 v13, 0x1

    const-string/jumbo v14, "resetAllModes"

    const/4 v15, 0x0

    move v9, v6

    move v10, v5

    move/from16 v11, p1

    invoke-static/range {v9 .. v15}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2642
    .end local p1    # "reqUserId":I
    .local v9, "reqUserId":I
    const/4 v1, -0x1

    .line 2643
    .local v1, "reqUid":I
    if-eqz v8, :cond_0

    .line 2645
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-interface {v0, v8, v2, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 2649
    move v10, v1

    goto :goto_0

    .line 2647
    :catch_0
    move-exception v0

    .line 2652
    :cond_0
    move v10, v1

    .end local v1    # "reqUid":I
    .local v10, "reqUid":I
    :goto_0
    invoke-direct {v7, v6, v5, v10}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2654
    const/4 v1, 0x0

    .line 2655
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 2656
    .local v2, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    monitor-enter p0

    .line 2657
    const/4 v0, 0x0

    .line 2658
    .local v0, "changed":Z
    :try_start_1
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    add-int/lit8 v3, v3, -0x1

    move-object v11, v1

    move-object v12, v2

    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .local v3, "i":I
    .local v11, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v12, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :goto_1
    if-ltz v3, :cond_13

    .line 2659
    :try_start_2
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2661
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 2662
    .local v2, "opModes":Landroid/util/SparseIntArray;
    const/4 v4, -0x1

    if-eqz v2, :cond_7

    :try_start_3
    iget v13, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v13, v10, :cond_2

    if-ne v10, v4, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v21, v6

    goto/16 :goto_7

    .line 2663
    :cond_2
    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 2664
    .local v13, "uidOpCount":I
    add-int/lit8 v14, v13, -0x1

    .local v14, "j":I
    :goto_3
    if-ltz v14, :cond_6

    .line 2665
    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 2666
    .local v15, "code":I
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2667
    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2668
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-gtz v16, :cond_3

    .line 2669
    const/4 v4, 0x0

    :try_start_4
    iput-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 2740
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v3    # "i":I
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    :catchall_0
    move-exception v0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v9

    move-object v1, v11

    move-object v2, v12

    goto/16 :goto_14

    .line 2671
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2    # "opModes":Landroid/util/SparseIntArray;
    .restart local v3    # "i":I
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v15    # "code":I
    :cond_3
    :goto_4
    :try_start_5
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v2

    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .local v16, "opModes":Landroid/util/SparseIntArray;
    array-length v2, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/16 v17, 0x0

    move/from16 v22, v17

    move/from16 v17, v5

    move/from16 v5, v22

    .end local v5    # "callingUid":I
    .local v17, "callingUid":I
    :goto_5
    if-ge v5, v2, :cond_4

    :try_start_6
    aget-object v18, v4, v5

    move-object/from16 v19, v18

    .line 2672
    .local v19, "packageName":Ljava/lang/String;
    move/from16 v18, v2

    iget v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object/from16 v20, v4

    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 2673
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2672
    move/from16 v21, v6

    move-object/from16 v6, v19

    .end local v19    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    .local v21, "callingPid":I
    :try_start_7
    invoke-static {v11, v15, v2, v6, v4}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2674
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v2, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_8
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 2675
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 2674
    invoke-static {v2, v15, v4, v6, v11}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v11, v4

    .line 2677
    .end local v2    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_9
    iget v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v12, v15, v2, v6}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v12, v2

    .line 2671
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v18

    move-object/from16 v4, v20

    move/from16 v6, v21

    goto :goto_5

    .line 2740
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "i":I
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .restart local v2    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :catchall_1
    move-exception v0

    move-object v1, v2

    move/from16 v20, v9

    move-object v2, v12

    move/from16 v18, v21

    goto/16 :goto_14

    .end local v2    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :catchall_2
    move-exception v0

    move/from16 v20, v9

    move-object v1, v11

    move-object v2, v12

    move/from16 v18, v21

    goto/16 :goto_14

    .end local v21    # "callingPid":I
    .local v6, "callingPid":I
    :catchall_3
    move-exception v0

    move/from16 v18, v6

    move/from16 v20, v9

    move-object v1, v11

    move-object v2, v12

    .end local v6    # "callingPid":I
    .restart local v21    # "callingPid":I
    goto/16 :goto_14

    .line 2671
    .end local v21    # "callingPid":I
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3    # "i":I
    .restart local v6    # "callingPid":I
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v15    # "code":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    :cond_4
    move/from16 v21, v6

    .end local v6    # "callingPid":I
    .restart local v21    # "callingPid":I
    goto :goto_6

    .line 2666
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .end local v17    # "callingUid":I
    .end local v21    # "callingPid":I
    .local v2, "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_5
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v21, v6

    .line 2664
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v15    # "code":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    .restart local v17    # "callingUid":I
    .restart local v21    # "callingPid":I
    :goto_6
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v2, v16

    move/from16 v5, v17

    move/from16 v6, v21

    const/4 v4, -0x1

    goto/16 :goto_3

    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .end local v17    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v2    # "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_6
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v21, v6

    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    .restart local v17    # "callingUid":I
    .restart local v21    # "callingPid":I
    move-object v2, v12

    goto :goto_8

    .line 2740
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "i":I
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .end local v17    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :catchall_4
    move-exception v0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v9

    move-object v1, v11

    move-object v2, v12

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v17    # "callingUid":I
    .restart local v21    # "callingPid":I
    goto/16 :goto_14

    .line 2662
    .end local v17    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2    # "opModes":Landroid/util/SparseIntArray;
    .restart local v3    # "i":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_7
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v21, v6

    .line 2684
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    .restart local v17    # "callingUid":I
    .restart local v21    # "callingPid":I
    :goto_7
    move-object v2, v12

    .end local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .local v2, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :goto_8
    :try_start_a
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-nez v4, :cond_8

    .line 2685
    goto :goto_9

    .line 2688
    :cond_8
    const/4 v4, -0x1

    if-eq v9, v4, :cond_9

    :try_start_b
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2689
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eq v9, v4, :cond_9

    .line 2691
    nop

    .line 2658
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    :goto_9
    move-object v12, v2

    move/from16 v20, v9

    goto/16 :goto_e

    .line 2740
    .end local v0    # "changed":Z
    .end local v3    # "i":I
    :catchall_5
    move-exception v0

    move/from16 v20, v9

    move-object v1, v11

    move/from16 v18, v21

    goto/16 :goto_14

    .line 2694
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3    # "i":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    :cond_9
    :try_start_c
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2695
    .local v4, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2696
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    const/4 v6, 0x0

    .line 2697
    .local v6, "uidChanged":Z
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 2698
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 2699
    .local v12, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 2700
    .local v13, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_a

    :try_start_d
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-nez v14, :cond_a

    .line 2702
    goto :goto_a

    .line 2704
    :cond_a
    :try_start_e
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2705
    .local v14, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v14}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .local v15, "j":I
    :goto_b
    if-ltz v15, :cond_e

    .line 2706
    invoke-virtual {v14, v15}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/appop/AppOpsService$Op;

    move-object/from16 p1, v18

    .line 2707
    .local p1, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 p1, v4

    .end local v4    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v0, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .local v18, "changed":Z
    .local p1, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    iget v4, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2708
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v4

    move/from16 v19, v6

    .end local v6    # "uidChanged":Z
    .local v19, "uidChanged":Z
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    if-eq v4, v6, :cond_c

    .line 2709
    iget v4, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/appop/AppOpsService$Op;->access$302(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 2710
    const/4 v4, 0x1

    .line 2711
    .end local v18    # "changed":Z
    .local v4, "changed":Z
    const/4 v6, 0x1

    .line 2712
    .end local v19    # "uidChanged":Z
    .restart local v6    # "uidChanged":Z
    move/from16 v18, v4

    .end local v4    # "changed":Z
    .restart local v18    # "changed":Z
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2713
    .local v4, "uid":I
    move/from16 v19, v6

    .end local v6    # "uidChanged":Z
    .restart local v19    # "uidChanged":Z
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v8, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move/from16 v20, v9

    .end local v9    # "reqUserId":I
    .local v20, "reqUserId":I
    :try_start_f
    iget v9, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2714
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 2713
    invoke-static {v11, v6, v4, v13, v8}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 2715
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v6, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_10
    iget v8, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v9, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 2716
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 2715
    invoke-static {v6, v8, v4, v13, v9}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v8

    move-object v6, v8

    .line 2718
    iget v8, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v2, v8, v4, v13}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move-object v2, v8

    .line 2719
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 2720
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2721
    invoke-virtual {v14, v15}, Lcom/android/server/appop/AppOpsService$Ops;->removeAt(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 2705
    .end local v0    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v4    # "uid":I
    :cond_b
    move-object v11, v6

    move/from16 v0, v18

    move/from16 v6, v19

    goto :goto_d

    .line 2740
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v12    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v15    # "j":I
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .end local v18    # "changed":Z
    .end local v19    # "uidChanged":Z
    .end local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :catchall_6
    move-exception v0

    move-object v1, v6

    move/from16 v18, v21

    goto/16 :goto_14

    .line 2708
    .end local v6    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v20    # "reqUserId":I
    .restart local v0    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3    # "i":I
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .restart local v9    # "reqUserId":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v12    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v15    # "j":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    .restart local v18    # "changed":Z
    .restart local v19    # "uidChanged":Z
    .restart local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_c
    move/from16 v20, v9

    .end local v9    # "reqUserId":I
    .restart local v20    # "reqUserId":I
    goto :goto_c

    .line 2707
    .end local v19    # "uidChanged":Z
    .end local v20    # "reqUserId":I
    .local v6, "uidChanged":Z
    .restart local v9    # "reqUserId":I
    :cond_d
    move/from16 v19, v6

    move/from16 v20, v9

    .line 2705
    .end local v0    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v6    # "uidChanged":Z
    .end local v9    # "reqUserId":I
    .restart local v19    # "uidChanged":Z
    .restart local v20    # "reqUserId":I
    :goto_c
    move/from16 v0, v18

    move/from16 v6, v19

    .end local v18    # "changed":Z
    .end local v19    # "uidChanged":Z
    .local v0, "changed":Z
    .restart local v6    # "uidChanged":Z
    :goto_d
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move/from16 v9, v20

    goto/16 :goto_b

    .end local v20    # "reqUserId":I
    .end local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v4, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v9    # "reqUserId":I
    :cond_e
    move/from16 v18, v0

    move-object/from16 p1, v4

    move/from16 v19, v6

    move/from16 v20, v9

    .line 2725
    .end local v0    # "changed":Z
    .end local v4    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v6    # "uidChanged":Z
    .end local v9    # "reqUserId":I
    .end local v15    # "j":I
    .restart local v18    # "changed":Z
    .restart local v19    # "uidChanged":Z
    .restart local v20    # "reqUserId":I
    .restart local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :try_start_11
    invoke-virtual {v14}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 2726
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 2728
    .end local v12    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_f
    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move/from16 v0, v18

    move/from16 v6, v19

    move/from16 v9, v20

    goto/16 :goto_a

    .line 2729
    .end local v18    # "changed":Z
    .end local v19    # "uidChanged":Z
    .end local v20    # "reqUserId":I
    .end local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v0    # "changed":Z
    .restart local v4    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v6    # "uidChanged":Z
    .restart local v9    # "reqUserId":I
    :cond_10
    move-object/from16 p1, v4

    move/from16 v20, v9

    .end local v4    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v9    # "reqUserId":I
    .restart local v20    # "reqUserId":I
    .restart local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2730
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v8, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 2732
    :cond_11
    if-eqz v6, :cond_12

    .line 2733
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 2658
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v6    # "uidChanged":Z
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .end local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_12
    move-object v12, v2

    .end local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .local v12, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :goto_e
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v8, p2

    move/from16 v5, v17

    move/from16 v9, v20

    move/from16 v6, v21

    goto/16 :goto_1

    .line 2740
    .end local v0    # "changed":Z
    .end local v3    # "i":I
    .end local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .restart local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :catchall_7
    move-exception v0

    move-object v1, v11

    move/from16 v18, v21

    goto/16 :goto_14

    .end local v20    # "reqUserId":I
    .restart local v9    # "reqUserId":I
    :catchall_8
    move-exception v0

    move/from16 v20, v9

    move-object v1, v11

    move/from16 v18, v21

    .end local v9    # "reqUserId":I
    .restart local v20    # "reqUserId":I
    goto/16 :goto_14

    .end local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v17    # "callingUid":I
    .end local v20    # "reqUserId":I
    .end local v21    # "callingPid":I
    .local v5, "callingUid":I
    .local v6, "callingPid":I
    .restart local v9    # "reqUserId":I
    .restart local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :catchall_9
    move-exception v0

    move/from16 v20, v9

    move/from16 v17, v5

    move/from16 v18, v6

    move-object v1, v11

    move-object v2, v12

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .restart local v17    # "callingUid":I
    .restart local v20    # "reqUserId":I
    .restart local v21    # "callingPid":I
    goto/16 :goto_14

    .line 2658
    .end local v17    # "callingUid":I
    .end local v20    # "reqUserId":I
    .end local v21    # "callingPid":I
    .restart local v0    # "changed":Z
    .restart local v3    # "i":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v9    # "reqUserId":I
    :cond_13
    move/from16 v17, v5

    move/from16 v21, v6

    move/from16 v20, v9

    .line 2737
    .end local v3    # "i":I
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .restart local v17    # "callingUid":I
    .restart local v20    # "reqUserId":I
    .restart local v21    # "callingPid":I
    if-eqz v0, :cond_14

    .line 2738
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    goto :goto_f

    .line 2740
    .end local v0    # "changed":Z
    :catchall_a
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    move/from16 v18, v21

    goto/16 :goto_14

    :cond_14
    :goto_f
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 2741
    if-eqz v11, :cond_17

    .line 2742
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/Map$Entry;

    .line 2743
    .local v8, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2744
    .local v9, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/ArrayList;

    .line 2745
    .local v13, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_11
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_15

    .line 2746
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2747
    .local v15, "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    iget v2, v15, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 2749
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v2, v15, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v3, v15, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 2747
    move-object/from16 v2, p0

    move-object/from16 v16, v3

    move-object v3, v9

    move-object/from16 p1, v0

    move-object v0, v6

    move/from16 v18, v21

    .end local v21    # "callingPid":I
    .local v18, "callingPid":I
    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2745
    .end local v15    # "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    goto :goto_11

    .end local v18    # "callingPid":I
    .restart local v21    # "callingPid":I
    :cond_15
    move-object/from16 p1, v0

    move/from16 v18, v21

    .line 2751
    .end local v8    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v9    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v13    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v14    # "i":I
    .end local v21    # "callingPid":I
    .restart local v18    # "callingPid":I
    goto :goto_10

    .line 2742
    .end local v18    # "callingPid":I
    .restart local v21    # "callingPid":I
    :cond_16
    move/from16 v18, v21

    .end local v21    # "callingPid":I
    .restart local v18    # "callingPid":I
    goto :goto_12

    .line 2741
    .end local v18    # "callingPid":I
    .restart local v21    # "callingPid":I
    :cond_17
    move/from16 v18, v21

    .line 2754
    .end local v21    # "callingPid":I
    .restart local v18    # "callingPid":I
    :goto_12
    if-eqz v12, :cond_18

    .line 2755
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2756
    .local v0, "numChanges":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_18

    .line 2757
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2758
    .local v2, "change":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget v3, v2, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    iget-object v5, v2, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 2759
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    .line 2758
    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 2756
    .end local v2    # "change":Lcom/android/server/appop/AppOpsService$ChangeRec;
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2762
    .end local v0    # "numChanges":I
    .end local v1    # "i":I
    :cond_18
    return-void

    .line 2740
    .end local v18    # "callingPid":I
    .restart local v21    # "callingPid":I
    :catchall_b
    move-exception v0

    move/from16 v18, v21

    move-object v1, v11

    move-object v2, v12

    .end local v21    # "callingPid":I
    .restart local v18    # "callingPid":I
    goto :goto_14

    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v17    # "callingUid":I
    .end local v18    # "callingPid":I
    .end local v20    # "reqUserId":I
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v2, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .local v9, "reqUserId":I
    :catchall_c
    move-exception v0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v9

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .restart local v17    # "callingUid":I
    .restart local v18    # "callingPid":I
    .restart local v20    # "reqUserId":I
    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_14
.end method

.method public resetHistoryParameters()V
    .locals 3

    .line 5893
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "resetHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5896
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->resetHistoryParameters()V

    .line 5897
    return-void
.end method

.method public setAppOpsServiceDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2881
    monitor-enter p0

    .line 2882
    :try_start_0
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2883
    monitor-exit p0

    .line 2884
    return-void

    .line 2883
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 2985
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2986
    invoke-direct {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2987
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2989
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AudioRestrictionManager;->setZenModeAudioRestriction(IIII[Ljava/lang/String;)V

    .line 2992
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 2993
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2992
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2994
    return-void
.end method

.method public setCameraAudioRestriction(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 2999
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3001
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/AudioRestrictionManager;->setCameraAudioRestriction(I)V

    .line 3003
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 3005
    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3003
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3006
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 3008
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3006
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3009
    return-void
.end method

.method public setHistoryParameters(IJI)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "compressionStep"    # I

    .line 5869
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "setHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5872
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    int-to-long v7, p4

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 5873
    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 2475
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 2476
    return-void
.end method

.method public setUidMode(III)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 2213
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 2214
    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 5767
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 5768
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 5769
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 5768
    const-string v4, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 5771
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_2

    .line 5772
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 5774
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5776
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5780
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 5781
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5782
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 5783
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 9
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I

    .line 5742
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 5743
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5744
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5745
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x64

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 5746
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v7

    .line 5747
    .local v7, "restriction":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 5748
    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 5745
    .end local v7    # "restriction":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5754
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x3e9

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0x3f3

    if-ge v0, v1, :cond_3

    .line 5755
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v1

    .line 5756
    .local v1, "restriction":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 5757
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v8, 0x0

    move-object v3, p0

    move v4, v0

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 5754
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5762
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public shouldCollectNotes(I)Z
    .locals 5
    .param p1, "opCode"    # I

    .line 3737
    const/4 v0, 0x0

    const/16 v1, 0x63

    const-string/jumbo v2, "opCode"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3739
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    .line 3740
    .local v1, "perm":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3741
    return v0

    .line 3746
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3749
    .local v2, "permInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 3751
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 3752
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_2

    :cond_1
    move v0, v4

    .line 3751
    :cond_2
    return v0

    .line 3747
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v2

    .line 3748
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public shutdown()V
    .locals 2

    .line 1920
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    const/4 v0, 0x0

    .line 1922
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 1923
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 1924
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 1925
    const/4 v0, 0x1

    .line 1927
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    if-eqz v0, :cond_1

    .line 1929
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 1935
    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v1}, Lcom/android/server/appop/HistoricalRegistry;->shutdown()V

    .line 1936
    return-void

    .line 1927
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)I
    .locals 16
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "startIfModeDefault"    # Z
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "shouldCollectMessage"    # Z

    .line 3472
    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct {v9, v11}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3473
    invoke-direct {v9, v10}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3474
    invoke-static/range {p3 .. p4}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3475
    .local v14, "resolvedPackageName":Ljava/lang/String;
    const/4 v0, 0x1

    if-nez v14, :cond_0

    .line 3476
    return v0

    .line 3481
    :cond_0
    const/4 v7, 0x2

    :try_start_0
    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v1

    .line 3485
    .local v15, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    nop

    .line 3487
    monitor-enter p0

    .line 3488
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p5

    move-object v5, v15

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v1

    .line 3490
    .local v1, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v1, :cond_1

    .line 3491
    invoke-direct {v9, v10, v11, v12, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V

    .line 3494
    monitor-exit p0

    return v7

    .line 3496
    :cond_1
    invoke-direct {v9, v1, v10, v11, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v2

    .line 3497
    .local v2, "op":Lcom/android/server/appop/AppOpsService$Op;
    invoke-direct {v9, v11, v10, v14, v15}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3498
    invoke-direct {v9, v10, v11, v12, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V

    .line 3499
    monitor-exit p0

    return v0

    .line 3501
    :cond_2
    invoke-static {v2, v2, v13}, Lcom/android/server/appop/AppOpsService$Op;->access$1000(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v3

    .line 3502
    .local v3, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    .line 3503
    .local v4, "switchCode":I
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 3506
    .local v5, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v7, 0x3

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_5

    .line 3507
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v10, v6}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v6

    .line 3508
    .local v6, "uidMode":I
    if-eqz v6, :cond_4

    if-eqz p6, :cond_3

    if-eq v6, v7, :cond_4

    .line 3513
    :cond_3
    iget v7, v5, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v3, v7, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V

    .line 3514
    invoke-direct {v9, v10, v11, v12, v6}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V

    .line 3515
    monitor-exit p0

    return v6

    .line 3517
    .end local v6    # "uidMode":I
    :cond_4
    goto :goto_1

    .line 3518
    :cond_5
    if-eq v4, v10, :cond_6

    invoke-direct {v9, v1, v4, v11, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v6

    goto :goto_0

    .line 3519
    :cond_6
    move-object v6, v2

    :goto_0
    nop

    .line 3520
    .local v6, "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v8

    .line 3521
    .local v8, "mode":I
    if-eqz v8, :cond_8

    if-eqz p6, :cond_7

    if-eq v8, v7, :cond_8

    .line 3526
    :cond_7
    iget v7, v5, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v3, v7, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V

    .line 3527
    invoke-direct {v9, v10, v11, v12, v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V

    .line 3528
    monitor-exit p0

    return v8

    .line 3533
    .end local v6    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v8    # "mode":I
    :cond_8
    :goto_1
    const/4 v0, 0x0

    invoke-direct {v9, v10, v11, v12, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3535
    :try_start_2
    iget v6, v5, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object/from16 v8, p1

    invoke-virtual {v3, v8, v6}, Lcom/android/server/appop/AppOpsService$AttributedOp;->started(Landroid/os/IBinder;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3538
    nop

    .line 3539
    .end local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v3    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v4    # "switchCode":I
    .end local v5    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3541
    if-eqz p7, :cond_9

    .line 3542
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 3546
    :cond_9
    return v0

    .line 3536
    .restart local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v3    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v4    # "switchCode":I
    .restart local v5    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :catch_0
    move-exception v0

    .line 3537
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v14    # "resolvedPackageName":Ljava/lang/String;
    .end local v15    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1    # "clientId":Landroid/os/IBinder;
    .end local p2    # "code":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "attributionTag":Ljava/lang/String;
    .end local p6    # "startIfModeDefault":Z
    .end local p7    # "shouldCollectAsyncNotedOp":Z
    .end local p8    # "message":Ljava/lang/String;
    .end local p9    # "shouldCollectMessage":Z
    throw v6

    .line 3539
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v3    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v4    # "switchCode":I
    .end local v5    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v14    # "resolvedPackageName":Ljava/lang/String;
    .restart local v15    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1    # "clientId":Landroid/os/IBinder;
    .restart local p2    # "code":I
    .restart local p3    # "uid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "attributionTag":Ljava/lang/String;
    .restart local p6    # "startIfModeDefault":Z
    .restart local p7    # "shouldCollectAsyncNotedOp":Z
    .restart local p8    # "message":Ljava/lang/String;
    .restart local p9    # "shouldCollectMessage":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 3482
    .end local v15    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 3483
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string/jumbo v2, "startOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3484
    return v7
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 12
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 3175
    const/4 v0, -0x1

    .line 3176
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3177
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3178
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3180
    move v0, v7

    .line 3182
    :cond_0
    const/4 v9, 0x0

    if-eqz p1, :cond_1

    .line 3190
    const/16 v1, 0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3191
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3190
    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3194
    :cond_1
    if-nez p2, :cond_2

    .line 3195
    return-void

    .line 3197
    :cond_2
    monitor-enter p0

    .line 3198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3199
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    if-nez v1, :cond_3

    .line 3200
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 3201
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_0

    .line 3199
    :cond_3
    move-object v10, v1

    .line 3203
    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :goto_0
    new-instance v11, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    move-object v1, v11

    .line 3205
    .local v1, "activeCallback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    array-length v2, p1

    :goto_1
    if-ge v9, v2, :cond_4

    aget v3, p1, v9

    .line 3206
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3205
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3208
    .end local v1    # "activeCallback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :cond_4
    monitor-exit p0

    .line 3209
    return-void

    .line 3208
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 3406
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3407
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3409
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3410
    .local v0, "uid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    .line 3412
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    .line 3414
    monitor-enter p0

    .line 3415
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 3416
    .local v2, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    if-nez v2, :cond_0

    .line 3417
    new-instance v3, Lcom/android/server/appop/AppOpsService$8;

    invoke-direct {v3, p0, v1}, Lcom/android/server/appop/AppOpsService$8;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/util/Pair;)V

    move-object v2, v3

    .line 3427
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3430
    :cond_0
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3431
    nop

    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    monitor-exit p0

    .line 3432
    return-void

    .line 3431
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2775
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 2776
    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 19
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2781
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, -0x1

    .line 2782
    .local v12, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 2783
    .local v13, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 2795
    .local v14, "callingPid":I
    const/16 v0, 0x3e8

    const/4 v15, -0x1

    if-le v10, v0, :cond_0

    .line 2796
    const/16 v1, 0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    goto :goto_0

    .line 2799
    :cond_0
    const/16 v0, 0x63

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v15, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 2803
    :goto_0
    if-nez p4, :cond_1

    .line 2804
    return-void

    .line 2806
    :cond_1
    monitor-enter p0

    .line 2807
    if-eq v10, v15, :cond_2

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    goto :goto_1

    .line 2843
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 2807
    :cond_2
    move v0, v10

    .line 2810
    .local v0, "switchOp":I
    :goto_1
    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_4

    .line 2811
    if-ne v10, v15, :cond_3

    .line 2812
    const/4 v1, -0x2

    move/from16 v16, v1

    .local v1, "notifiedOps":I
    goto :goto_2

    .line 2814
    .end local v1    # "notifiedOps":I
    :cond_3
    move/from16 v1, p1

    move/from16 v16, v1

    .restart local v1    # "notifiedOps":I
    goto :goto_2

    .line 2817
    .end local v1    # "notifiedOps":I
    :cond_4
    move v1, v0

    move/from16 v16, v1

    .line 2820
    .local v16, "notifiedOps":I
    :goto_2
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    move-object/from16 v17, v1

    .line 2821
    .local v17, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-nez v17, :cond_5

    .line 2822
    new-instance v18, Lcom/android/server/appop/AppOpsService$ModeCallback;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move v4, v12

    move/from16 v5, p3

    move/from16 v6, v16

    move v7, v13

    move v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService$ModeCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIIII)V

    move-object/from16 v1, v18

    .line 2824
    .end local v17    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .local v1, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2821
    .end local v1    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v17    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :cond_5
    move-object/from16 v1, v17

    .line 2826
    .end local v17    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v1    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :goto_3
    if-eq v0, v15, :cond_7

    .line 2827
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2828
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v2, :cond_6

    .line 2829
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 2830
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2832
    :cond_6
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2834
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_7
    if-eqz v11, :cond_9

    .line 2835
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2836
    .restart local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v2, :cond_8

    .line 2837
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 2838
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2840
    :cond_8
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2842
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 2843
    .end local v0    # "switchOp":I
    .end local v1    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v16    # "notifiedOps":I
    monitor-exit p0

    .line 2844
    return-void

    .line 2843
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 12
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 3279
    const/4 v0, -0x1

    .line 3280
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3281
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3282
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3284
    move v0, v7

    .line 3286
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ops cannot be null or empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3294
    const/16 v1, 0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3295
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3294
    const/4 v9, 0x0

    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3297
    const-string v1, "Callback cannot be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3298
    monitor-enter p0

    .line 3299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3300
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    if-nez v1, :cond_1

    .line 3301
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 3302
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_0

    .line 3300
    :cond_1
    move-object v10, v1

    .line 3304
    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    :goto_0
    new-instance v11, Lcom/android/server/appop/AppOpsService$NotedCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$NotedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsNotedCallback;III)V

    move-object v1, v11

    .line 3306
    .local v1, "notedCallback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    array-length v2, p1

    :goto_1
    if-ge v9, v2, :cond_2

    aget v3, p1, v9

    .line 3307
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3306
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3309
    .end local v1    # "notedCallback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    :cond_2
    monitor-exit p0

    .line 3310
    return-void

    .line 3309
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 12
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsStartedCallback;

    .line 3231
    const/4 v0, -0x1

    .line 3232
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3233
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3234
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3236
    move v0, v7

    .line 3239
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ops cannot be null or empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3240
    const/16 v1, 0x63

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3241
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3240
    const/4 v9, 0x0

    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3242
    const-string v1, "Callback cannot be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3244
    monitor-enter p0

    .line 3245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3246
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    if-nez v1, :cond_1

    .line 3247
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 3248
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_0

    .line 3246
    :cond_1
    move-object v10, v1

    .line 3251
    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    :goto_0
    new-instance v11, Lcom/android/server/appop/AppOpsService$StartedCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$StartedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsStartedCallback;III)V

    move-object v1, v11

    .line 3253
    .local v1, "startedCallback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    array-length v2, p1

    :goto_1
    if-ge v9, v2, :cond_2

    aget v3, p1, v9

    .line 3254
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3253
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3256
    .end local v1    # "startedCallback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    :cond_2
    monitor-exit p0

    .line 3257
    return-void

    .line 3256
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 3213
    if-nez p1, :cond_0

    .line 3214
    return-void

    .line 3216
    :cond_0
    monitor-enter p0

    .line 3217
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3218
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3219
    .local v0, "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    if-nez v0, :cond_1

    .line 3220
    monitor-exit p0

    return-void

    .line 3222
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3223
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3224
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$ActiveCallback;->destroy()V

    .line 3223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3226
    .end local v0    # "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit p0

    .line 3227
    return-void

    .line 3226
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 3436
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3437
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3439
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3440
    .local v0, "uid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    .line 3442
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    .line 3444
    monitor-enter p0

    .line 3445
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 3446
    .local v2, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    if-eqz v2, :cond_0

    .line 3447
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3448
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 3449
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3452
    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    :cond_0
    monitor-exit p0

    .line 3453
    return-void

    .line 3452
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2848
    if-nez p1, :cond_0

    .line 2849
    return-void

    .line 2851
    :cond_0
    monitor-enter p0

    .line 2852
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2853
    .local v0, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v0, :cond_4

    .line 2854
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 2855
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2856
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2857
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2858
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2859
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2855
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2862
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 2863
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2864
    .restart local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2865
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 2866
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2862
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2870
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 2871
    .end local v0    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 2872
    return-void

    .line 2871
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 3314
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3315
    monitor-enter p0

    .line 3316
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 3317
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3318
    .local v0, "notedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    if-nez v0, :cond_0

    .line 3319
    monitor-exit p0

    return-void

    .line 3321
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3322
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3323
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$NotedCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$NotedCallback;->destroy()V

    .line 3322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3325
    .end local v0    # "notedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    .line 3326
    return-void

    .line 3325
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsStartedCallback;

    .line 3261
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3263
    monitor-enter p0

    .line 3264
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 3265
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3266
    .local v0, "startedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    if-nez v0, :cond_0

    .line 3267
    monitor-exit p0

    return-void

    .line 3270
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3271
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3272
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$StartedCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$StartedCallback;->destroy()V

    .line 3271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3274
    .end local v0    # "startedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    .line 3275
    return-void

    .line 3274
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 13

    .line 1632
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 1633
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 1635
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1636
    .local v0, "packageUpdateFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1637
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1638
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1640
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1643
    monitor-enter p0

    .line 1644
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "uidNum":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1645
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1646
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1648
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1649
    .local v4, "pkgsInUid":[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1650
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 1651
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1652
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1653
    goto :goto_3

    .line 1656
    :cond_0
    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1657
    .local v5, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v5, :cond_1

    .line 1658
    goto :goto_3

    .line 1661
    :cond_1
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1662
    .local v6, "numPkgs":I
    const/4 v7, 0x0

    .local v7, "pkgNum":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 1663
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1666
    .local v8, "pkg":Ljava/lang/String;
    invoke-static {v4, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1667
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    .local v9, "action":Ljava/lang/String;
    goto :goto_2

    .line 1669
    .end local v9    # "action":Ljava/lang/String;
    :cond_2
    const-string v9, "android.intent.action.PACKAGE_REPLACED"

    .line 1672
    .restart local v9    # "action":Ljava/lang/String;
    :goto_2
    new-instance v10, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;

    invoke-direct {v10, p0, v9, v8, v2}, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update app-ops uidState in case package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " changed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1662
    nop

    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "action":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1644
    .end local v2    # "uid":I
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "pkgsInUid":[Ljava/lang/String;
    .end local v5    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v6    # "numPkgs":I
    .end local v7    # "pkgNum":I
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1679
    .end local v1    # "uidNum":I
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1681
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1682
    .local v1, "packageSuspendFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1683
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1684
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/appop/AppOpsService$3;

    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1710
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1711
    .local v2, "packageAddedFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1712
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1713
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/appop/AppOpsService$4;

    invoke-direct {v4, p0}, Lcom/android/server/appop/AppOpsService$4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1730
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsService$5;

    invoke-direct {v4, p0}, Lcom/android/server/appop/AppOpsService$5;-><init>(Lcom/android/server/appop/AppOpsService;)V

    const-wide/32 v5, 0x493e0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1738
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 1740
    .local v3, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v4, Lcom/android/server/appop/AppOpsService$6;

    invoke-direct {v4, p0}, Lcom/android/server/appop/AppOpsService$6;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 1757
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1758
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManagerInternal;

    .line 1760
    .local v4, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    new-instance v5, Lcom/android/server/appop/AppOpsService$7;

    invoke-direct {v5, p0}, Lcom/android/server/appop/AppOpsService$7;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManagerInternal;->addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V

    .line 1788
    .end local v4    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_5
    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    iput-object v4, p0, Lcom/android/server/appop/AppOpsService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1789
    return-void

    .line 1679
    .end local v1    # "packageSuspendFilter":Landroid/content/IntentFilter;
    .end local v2    # "packageAddedFilter":Landroid/content/IntentFilter;
    .end local v3    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 1835
    monitor-enter p0

    .line 1836
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1838
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1840
    :cond_0
    monitor-exit p0

    .line 1841
    return-void

    .line 1840
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateUidProcState(III)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "capability"    # I

    .line 1858
    move-object/from16 v1, p0

    move/from16 v2, p3

    monitor-enter p0

    .line 1859
    const/4 v0, 0x1

    move/from16 v3, p1

    :try_start_0
    invoke-direct {v1, v3, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 1860
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    sget-object v4, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget v4, v4, p2

    .line 1861
    .local v4, "newState":I
    if-eqz v0, :cond_9

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-ne v5, v4, :cond_0

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    if-eq v5, v2, :cond_9

    .line 1863
    :cond_0
    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 1864
    .local v5, "oldPendingState":I
    iput v4, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 1865
    iput v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    .line 1866
    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-lt v4, v6, :cond_5

    const/16 v6, 0x1f4

    if-gt v4, v6, :cond_1

    iget v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-le v7, v6, :cond_1

    goto :goto_1

    .line 1873
    :cond_1
    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-ne v4, v6, :cond_2

    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    if-eq v2, v6, :cond_2

    .line 1875
    invoke-direct {v1, v0}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    goto :goto_2

    .line 1876
    :cond_2
    iget-wide v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1880
    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v7, 0xc8

    if-gt v6, v7, :cond_3

    .line 1881
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v6, v6, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .local v6, "settleTime":J
    goto :goto_0

    .line 1882
    .end local v6    # "settleTime":J
    :cond_3
    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v7, 0x190

    if-gt v6, v7, :cond_4

    .line 1883
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v6, v6, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .restart local v6    # "settleTime":J
    goto :goto_0

    .line 1885
    .end local v6    # "settleTime":J
    :cond_4
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v6, v6, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 1887
    .restart local v6    # "settleTime":J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v6

    .line 1888
    .local v8, "commitTime":J
    iput-wide v8, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 1890
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v11, Lcom/android/server/appop/-$$Lambda$AppOpsService$CVMS-lLMRyZYA1tmqvyuOloKBu0;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$CVMS-lLMRyZYA1tmqvyuOloKBu0;

    const-wide/16 v12, 0x1

    add-long v14, v8, v12

    .line 1892
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 1891
    invoke-static {v11, v1, v14, v15}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    add-long/2addr v12, v6

    .line 1890
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1872
    .end local v6    # "settleTime":J
    .end local v8    # "commitTime":J
    :cond_5
    :goto_1
    invoke-direct {v1, v0}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 1895
    :cond_6
    :goto_2
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v6, :cond_9

    .line 1896
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1897
    .local v6, "numPkgs":I
    const/4 v7, 0x0

    .local v7, "pkgNum":I
    :goto_3
    if-ge v7, v6, :cond_9

    .line 1898
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1900
    .local v8, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v8}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v9

    .line 1901
    .local v9, "numOps":I
    const/4 v10, 0x0

    .local v10, "opNum":I
    :goto_4
    if-ge v10, v9, :cond_8

    .line 1902
    invoke-virtual {v8, v10}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$Op;

    .line 1904
    .local v11, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-object v12, v11, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 1905
    .local v12, "numAttributions":I
    const/4 v13, 0x0

    .local v13, "attributionNum":I
    :goto_5
    if-ge v13, v12, :cond_7

    .line 1907
    iget-object v14, v11, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 1910
    .local v14, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-virtual {v14, v4}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onUidStateChanged(I)V

    .line 1906
    .end local v14    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1901
    .end local v11    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v12    # "numAttributions":I
    .end local v13    # "attributionNum":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1897
    .end local v8    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v9    # "numOps":I
    .end local v10    # "opNum":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1916
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "newState":I
    .end local v5    # "oldPendingState":I
    .end local v6    # "numPkgs":I
    .end local v7    # "pkgNum":I
    :cond_9
    monitor-exit p0

    .line 1917
    return-void

    .line 1916
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeState()V
    .locals 38

    .line 4376
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 4379
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v3, v0

    .line 4383
    .local v3, "stream":Ljava/io/FileOutputStream;
    nop

    .line 4385
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 4388
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_2
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4389
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4390
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4391
    const-string v6, "app-ops"

    invoke-interface {v5, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4392
    const-string/jumbo v6, "v"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4395
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 4396
    :try_start_3
    new-instance v6, Landroid/util/SparseArray;

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 4398
    .local v6, "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4399
    .local v7, "uidStateCount":I
    const/4 v8, 0x0

    .local v8, "uidStateNum":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 4400
    :try_start_4
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$UidState;

    .line 4401
    .local v9, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 4403
    .local v10, "uid":I
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4404
    .local v11, "opModes":Landroid/util/SparseIntArray;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 4405
    new-instance v12, Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/util/SparseIntArray;-><init>(I)V

    invoke-virtual {v6, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4407
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 4408
    .local v12, "opCount":I
    const/4 v13, 0x0

    .local v13, "opCountNum":I
    :goto_1
    if-ge v13, v12, :cond_0

    .line 4409
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseIntArray;

    .line 4410
    invoke-virtual {v11, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 4411
    invoke-virtual {v11, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 4409
    invoke-virtual {v14, v15, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4408
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x0

    goto :goto_1

    .line 4399
    .end local v9    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v10    # "uid":I
    .end local v11    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "opCount":I
    .end local v13    # "opCountNum":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x0

    goto :goto_0

    .line 4415
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "uidStateCount":I
    .end local v8    # "uidStateNum":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_b

    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4417
    :try_start_6
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4418
    .local v0, "uidStateCount":I
    const/4 v7, 0x0

    .local v7, "uidStateNum":I
    :goto_2
    if-ge v7, v0, :cond_4

    .line 4419
    :try_start_7
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    .line 4420
    .local v8, "opModes":Landroid/util/SparseIntArray;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 4421
    const-string/jumbo v9, "uid"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4422
    const-string/jumbo v9, "n"

    .line 4423
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 4422
    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4424
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 4425
    .local v9, "opCount":I
    const/4 v10, 0x0

    .local v10, "opCountNum":I
    :goto_3
    if-ge v10, v9, :cond_2

    .line 4426
    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 4427
    .local v11, "op":I
    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 4428
    .local v12, "mode":I
    const-string/jumbo v13, "op"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4429
    const-string/jumbo v13, "n"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v14, v13, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4430
    const-string/jumbo v13, "m"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v14, v13, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4431
    const-string/jumbo v13, "op"

    invoke-interface {v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4425
    nop

    .end local v11    # "op":I
    .end local v12    # "mode":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 4433
    .end local v10    # "opCountNum":I
    :cond_2
    const-string/jumbo v10, "uid"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4418
    .end local v8    # "opModes":Landroid/util/SparseIntArray;
    .end local v9    # "opCount":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 4536
    .end local v0    # "uidStateCount":I
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "uidStateNum":I
    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_c

    .line 4437
    .restart local v0    # "uidStateCount":I
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_4
    if-eqz v4, :cond_15

    .line 4438
    const/4 v7, 0x0

    .line 4439
    .local v7, "lastPkg":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    :try_start_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_14

    .line 4440
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 4441
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v10, :cond_6

    .line 4442
    if-eqz v7, :cond_5

    .line 4443
    :try_start_9
    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4445
    :cond_5
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 4446
    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4447
    const-string/jumbo v10, "n"

    invoke-interface {v5, v11, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4449
    :cond_6
    :try_start_a
    const-string/jumbo v10, "uid"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4450
    const-string/jumbo v10, "n"

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4451
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v10

    .line 4452
    .local v10, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_13

    .line 4453
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 4454
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v13, "op"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4455
    const-string/jumbo v13, "n"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v5, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4456
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v13

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v14
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eq v13, v14, :cond_7

    .line 4457
    :try_start_b
    const-string/jumbo v13, "m"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v5, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 4460
    :cond_7
    :try_start_c
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 4461
    .local v14, "attributionTag":Ljava/lang/String;
    nop

    .line 4462
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4464
    .local v15, "attribution":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v15}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v16

    move-object/from16 v17, v16

    .line 4466
    .local v17, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    move-result v16
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move/from16 v18, v16

    .line 4467
    .local v18, "keyCount":I
    const/16 v16, 0x0

    move/from16 v19, v0

    move/from16 v0, v16

    .local v0, "k":I
    .local v19, "uidStateCount":I
    :goto_7
    move-object/from16 v16, v4

    move/from16 v4, v18

    .end local v18    # "keyCount":I
    .local v4, "keyCount":I
    .local v16, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-ge v0, v4, :cond_11

    .line 4468
    move/from16 v18, v4

    move-object/from16 v4, v17

    .end local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v18    # "keyCount":I
    :try_start_d
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 4470
    .local v20, "key":J
    invoke-static/range {v20 .. v21}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v17

    move/from16 v22, v17

    .line 4471
    .local v22, "uidState":I
    invoke-static/range {v20 .. v21}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v17

    move/from16 v23, v17

    .line 4473
    .local v23, "flags":I
    move-object/from16 v17, v4

    move/from16 v4, v22

    move-object/from16 v22, v6

    move/from16 v6, v23

    .end local v23    # "flags":I
    .local v4, "uidState":I
    .local v6, "flags":I
    .restart local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v22, "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v23

    .line 4475
    .local v23, "accessTime":J
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v25

    .line 4477
    .local v25, "rejectTime":J
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v27

    .line 4480
    .local v27, "accessDuration":J
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v29

    .line 4483
    .local v29, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    const-wide/16 v30, 0x0

    cmp-long v32, v23, v30

    if-gtz v32, :cond_8

    cmp-long v32, v25, v30

    if-gtz v32, :cond_8

    cmp-long v32, v27, v30

    if-gtz v32, :cond_8

    if-nez v29, :cond_8

    .line 4485
    move-object/from16 v33, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    goto/16 :goto_9

    .line 4488
    :cond_8
    const/16 v32, 0x0

    .line 4489
    .local v32, "proxyPkg":Ljava/lang/String;
    const/16 v33, 0x0

    .line 4490
    .local v33, "proxyAttributionTag":Ljava/lang/String;
    const/16 v34, -0x1

    .line 4491
    .local v34, "proxyUid":I
    if-eqz v29, :cond_9

    .line 4492
    invoke-virtual/range {v29 .. v29}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v32, v35

    .line 4493
    invoke-virtual/range {v29 .. v29}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v33, v35

    .line 4494
    invoke-virtual/range {v29 .. v29}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v35

    move/from16 v34, v35

    move/from16 v35, v4

    move-object/from16 v4, v32

    move/from16 v32, v6

    move-object/from16 v6, v33

    goto :goto_8

    .line 4491
    :cond_9
    move/from16 v35, v4

    move-object/from16 v4, v32

    move/from16 v32, v6

    move-object/from16 v6, v33

    .line 4497
    .end local v33    # "proxyAttributionTag":Ljava/lang/String;
    .local v4, "proxyPkg":Ljava/lang/String;
    .local v6, "proxyAttributionTag":Ljava/lang/String;
    .local v32, "flags":I
    .local v35, "uidState":I
    :goto_8
    move-object/from16 v33, v7

    .end local v7    # "lastPkg":Ljava/lang/String;
    .local v33, "lastPkg":Ljava/lang/String;
    const-string/jumbo v7, "st"

    move-object/from16 v36, v9

    const/4 v9, 0x0

    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .local v36, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4498
    if-eqz v14, :cond_a

    .line 4499
    const-string v7, "id"

    invoke-interface {v5, v9, v7, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4501
    :cond_a
    const-string/jumbo v7, "n"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v37, v10

    const/4 v10, 0x0

    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v37, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-interface {v5, v10, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4502
    cmp-long v7, v23, v30

    if-lez v7, :cond_b

    .line 4503
    const-string/jumbo v7, "t"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4505
    :cond_b
    cmp-long v7, v25, v30

    if-lez v7, :cond_c

    .line 4506
    const-string/jumbo v7, "r"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4508
    :cond_c
    cmp-long v7, v27, v30

    if-lez v7, :cond_d

    .line 4509
    const-string v7, "d"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4511
    :cond_d
    if-eqz v4, :cond_e

    .line 4512
    const-string/jumbo v7, "pp"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4514
    :cond_e
    if-eqz v6, :cond_f

    .line 4515
    const-string/jumbo v7, "pc"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4517
    :cond_f
    if-ltz v34, :cond_10

    .line 4518
    const-string/jumbo v7, "pu"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4520
    :cond_10
    const-string/jumbo v7, "st"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4467
    .end local v4    # "proxyPkg":Ljava/lang/String;
    .end local v6    # "proxyAttributionTag":Ljava/lang/String;
    .end local v20    # "key":J
    .end local v23    # "accessTime":J
    .end local v25    # "rejectTime":J
    .end local v27    # "accessDuration":J
    .end local v29    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .end local v32    # "flags":I
    .end local v34    # "proxyUid":I
    .end local v35    # "uidState":I
    :goto_9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v16

    move-object/from16 v6, v22

    move-object/from16 v7, v33

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_7

    .end local v18    # "keyCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v33    # "lastPkg":Ljava/lang/String;
    .end local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v4, "keyCount":I
    .local v6, "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_11
    move/from16 v18, v4

    move-object/from16 v22, v6

    move-object/from16 v33, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    .line 4522
    .end local v0    # "k":I
    .end local v4    # "keyCount":I
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v14    # "attributionTag":Ljava/lang/String;
    .end local v15    # "attribution":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v33    # "lastPkg":Ljava/lang/String;
    .restart local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move-object/from16 v4, v16

    move/from16 v0, v19

    goto/16 :goto_6

    .line 4524
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v33    # "lastPkg":Ljava/lang/String;
    .end local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v0, "uidStateCount":I
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_12
    move/from16 v19, v0

    move-object/from16 v16, v4

    move-object/from16 v22, v6

    move-object/from16 v33, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    .end local v0    # "uidStateCount":I
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v33    # "lastPkg":Ljava/lang/String;
    .restart local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const-string/jumbo v0, "op"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4452
    nop

    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    move/from16 v0, v19

    move-object/from16 v6, v22

    move-object/from16 v7, v33

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_5

    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v33    # "lastPkg":Ljava/lang/String;
    .end local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v0    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_13
    move/from16 v19, v0

    move-object/from16 v16, v4

    move-object/from16 v22, v6

    move-object/from16 v33, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    .line 4526
    .end local v0    # "uidStateCount":I
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "j":I
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v33    # "lastPkg":Ljava/lang/String;
    .restart local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const-string/jumbo v0, "uid"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4439
    nop

    .end local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v16

    move/from16 v0, v19

    move-object/from16 v6, v22

    move-object/from16 v7, v33

    goto/16 :goto_4

    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v33    # "lastPkg":Ljava/lang/String;
    .restart local v0    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    :cond_14
    move/from16 v19, v0

    move-object/from16 v16, v4

    move-object/from16 v22, v6

    .line 4528
    .end local v0    # "uidStateCount":I
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v8    # "i":I
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    if-eqz v7, :cond_16

    .line 4529
    const-string/jumbo v0, "pkg"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    .line 4437
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v0    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_15
    move/from16 v19, v0

    move-object/from16 v16, v4

    move-object/from16 v22, v6

    .line 4533
    .end local v0    # "uidStateCount":I
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_16
    :goto_a
    const-string v0, "app-ops"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4534
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4535
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 4539
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v19    # "uidStateCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    goto :goto_d

    .line 4415
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_b
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 4536
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catch_1
    move-exception v0

    goto :goto_c

    .line 4415
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_2
    move-exception v0

    goto :goto_b

    .line 4536
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_2
    move-exception v0

    move-object/from16 v16, v4

    .line 4537
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_c
    :try_start_10
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4538
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 4540
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_d
    monitor-exit v2

    .line 4541
    return-void

    .line 4540
    :catchall_3
    move-exception v0

    goto :goto_e

    .line 4380
    :catch_3
    move-exception v0

    .line 4381
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    monitor-exit v2

    return-void

    .line 4540
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v0
.end method
