.class public Lcom/android/server/appop/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;,
        Lcom/android/server/appop/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/appop/AppOpsService$Restriction;,
        Lcom/android/server/appop/AppOpsService$Shell;,
        Lcom/android/server/appop/AppOpsService$ChangeRec;,
        Lcom/android/server/appop/AppOpsService$ClientState;,
        Lcom/android/server/appop/AppOpsService$NotedCallback;,
        Lcom/android/server/appop/AppOpsService$ActiveCallback;,
        Lcom/android/server/appop/AppOpsService$ModeCallback;,
        Lcom/android/server/appop/AppOpsService$Op;,
        Lcom/android/server/appop/AppOpsService$Ops;,
        Lcom/android/server/appop/AppOpsService$UidState;,
        Lcom/android/server/appop/AppOpsService$Constants;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x2

.field static final DEBUG:Z = false

.field private static final NO_VERSION:I = -0x1

.field private static final OPS_RESTRICTED_ON_SUSPEND:[I

.field private static final PROCESS_STATE_TO_UID_STATE:[I

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final UID_ANY:I = -0x2

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
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

.field private final mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field final mConstants:Lcom/android/server/appop/AppOpsService$Constants;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

.field mLastRealtime:J

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

.field final mUidStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    .line 191
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
        0x12c
        0x1f4
        0x190
        0x1f4
        0x1f4
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

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 2
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 736
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 201
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$1;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 206
    new-instance v0, Lcom/android/server/appop/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 222
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 225
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {v0, p0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 232
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 550
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 551
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 552
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 553
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 554
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 555
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 697
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 737
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 738
    new-instance v0, Landroid/util/AtomicFile;

    const-string v1, "appops"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 739
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 740
    new-instance v0, Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$Constants;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 743
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/appop/OpAppOpsService;->shouldUpdateXml(Landroid/util/AtomicFile;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-static {p1, v1}, Lcom/android/server/appop/OpAppOpsService;->updateXml(Ljava/io/File;I)V

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 748
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 144
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 144
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/appop/AppOpsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/appop/AppOpsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->setAllPkgModesToDefault(II)V

    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 144
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/ArraySet;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .locals 9
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

    .line 1569
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local p4, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez p4, :cond_0

    .line 1570
    return-object p0

    .line 1572
    :cond_0
    if-nez p0, :cond_1

    .line 1573
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p0, v0

    .line 1575
    :cond_1
    const/4 v0, 0x0

    .line 1576
    .local v0, "duplicate":Z
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1577
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 1578
    invoke-virtual {p4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1579
    .local v3, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1580
    .local v4, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    if-nez v4, :cond_2

    .line 1581
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 1582
    invoke-virtual {p0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1584
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1585
    .local v5, "reportCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 1586
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 1587
    .local v7, "report":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget v8, v7, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    if-ne v8, p1, :cond_3

    iget-object v8, v7, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1588
    const/4 v0, 0x1

    .line 1589
    goto :goto_2

    .line 1585
    .end local v7    # "report":Lcom/android/server/appop/AppOpsService$ChangeRec;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1593
    .end local v5    # "reportCount":I
    .end local v6    # "j":I
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 1594
    new-instance v5, Lcom/android/server/appop/AppOpsService$ChangeRec;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/appop/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    .end local v3    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1597
    .end local v2    # "i":I
    :cond_6
    return-object p0
.end method

.method private checkAudioOperationImpl(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1939
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/appop/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1943
    .local v0, "suspended":Z
    goto :goto_0

    .line 1940
    .end local v0    # "suspended":Z
    :catch_0
    move-exception v0

    .line 1942
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 1945
    .local v0, "suspended":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio disabled for suspended package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOps"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const/4 v1, 0x1

    return v1

    .line 1951
    :cond_0
    monitor-enter p0

    .line 1952
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I

    move-result v1

    .line 1953
    .local v1, "mode":I
    if-eqz v1, :cond_1

    .line 1954
    monitor-exit p0

    return v1

    .line 1956
    .end local v1    # "mode":I
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1957
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    return v1

    .line 1956
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private checkOperationImpl(IILjava/lang/String;Z)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "raw"    # Z

    .line 1870
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 1871
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1872
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1873
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1874
    const/4 v1, 0x1

    return v1

    .line 1876
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

    .line 1858
    monitor-enter p0

    .line 1859
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 1860
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1861
    if-nez v0, :cond_0

    .line 1862
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Z)I

    move-result v1

    return v1

    .line 1864
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

    .line 1860
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
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "raw"    # Z

    .line 1891
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1892
    return v1

    .line 1898
    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1902
    .local v0, "isPrivileged":Z
    nop

    .line 1904
    monitor-enter p0

    .line 1905
    :try_start_1
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1906
    monitor-exit p0

    return v1

    .line 1908
    :cond_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move p1, v1

    .line 1909
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v1

    .line 1910
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1911
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 1912
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1913
    .local v2, "rawMode":I
    if-eqz p4, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v3

    :goto_0
    monitor-exit p0

    return v3

    .line 1915
    .end local v2    # "rawMode":I
    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v2

    .line 1916
    .local v2, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v2, :cond_4

    .line 1917
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    monitor-exit p0

    return v3

    .line 1919
    :cond_4
    if-eqz p4, :cond_5

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v3

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v3

    :goto_1
    monitor-exit p0

    return v3

    .line 1920
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1899
    .end local v0    # "isPrivileged":Z
    :catch_0
    move-exception v0

    .line 1900
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v2, "checkOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1901
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    return v1
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1973
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1974
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    if-eqz v0, :cond_0

    .line 1975
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Restriction;

    .line 1976
    .local v1, "r":Lcom/android/server/appop/AppOpsService$Restriction;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1977
    iget v2, v1, Lcom/android/server/appop/AppOpsService$Restriction;->mode:I

    return v2

    .line 1980
    .end local v1    # "r":Lcom/android/server/appop/AppOpsService$Restriction;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .line 4604
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4605
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 4608
    return-void

    .line 4606
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

.method private collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "uidOps"    # Landroid/util/SparseIntArray;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 1069
    if-nez p1, :cond_0

    .line 1070
    const/4 v0, 0x0

    return-object v0

    .line 1072
    :cond_0
    const/4 v0, 0x0

    .line 1073
    .local v0, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_2

    .line 1074
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1075
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1076
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_1
    goto :goto_2

    .line 1079
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 1080
    aget v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 1081
    .local v2, "index":I
    if-ltz v2, :cond_4

    .line 1082
    if-nez v0, :cond_3

    .line 1083
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 1085
    :cond_3
    new-instance v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/AppOpsManager$OpEntry;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    .end local v2    # "index":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1089
    .end local v1    # "j":I
    :cond_5
    :goto_2
    return-object v0
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

    .line 1046
    const/4 v0, 0x0

    .line 1047
    .local v0, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1048
    .local v1, "elapsedNow":J
    if-nez p2, :cond_1

    .line 1049
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 1050
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1051
    invoke-virtual {p1, v3}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 1052
    .local v4, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-static {v4, v1, v2}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    .end local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "j":I
    :cond_0
    goto :goto_2

    .line 1055
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_4

    .line 1056
    aget v4, p2, v3

    invoke-virtual {p1, v4}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 1057
    .restart local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v4, :cond_3

    .line 1058
    if-nez v0, :cond_2

    .line 1059
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 1061
    :cond_2
    invoke-static {v4, v1, v2}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    .end local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1065
    .end local v3    # "j":I
    :cond_4
    :goto_2
    return-object v0
.end method

.method private commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .locals 20
    .param p1, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;

    .line 2628
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    if-eqz v0, :cond_c

    .line 2629
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "fgi":I
    :goto_0
    if-ltz v9, :cond_c

    .line 2630
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2631
    goto/16 :goto_6

    .line 2633
    :cond_0
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 2636
    .local v10, "code":I
    invoke-static {v10}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    int-to-long v11, v0

    .line 2637
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

    .line 2638
    .local v13, "resolvedLastFg":Z
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    int-to-long v2, v0

    cmp-long v0, v2, v11

    if-gtz v0, :cond_2

    move v1, v8

    :cond_2
    move v14, v1

    .line 2639
    .local v14, "resolvedNowFg":Z
    if-ne v13, v14, :cond_3

    .line 2640
    goto/16 :goto_6

    .line 2643
    :cond_3
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v15, 0x4

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2644
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2645
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v15, :cond_4

    .line 2646
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$u9c0eEYUUm25QC1meV06FHffZE0;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$u9c0eEYUUm25QC1meV06FHffZE0;

    .line 2648
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2646
    invoke-static {v1, v6, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 2650
    :cond_4
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/ArraySet;

    .line 2651
    .local v5, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v5, :cond_b

    .line 2652
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v4, v0

    .local v4, "cbi":I
    :goto_2
    if-ltz v4, :cond_a

    .line 2653
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2654
    .local v3, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    iget v0, v3, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_9

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2655
    invoke-virtual {v3, v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2656
    move/from16 v17, v4

    move-object v8, v5

    goto/16 :goto_5

    .line 2658
    :cond_5
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v2, v0

    .local v2, "pkgi":I
    :goto_3
    if-ltz v2, :cond_8

    .line 2659
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v0, v10}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/appop/AppOpsService$Op;

    .line 2660
    .local v16, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v16, :cond_6

    .line 2661
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    goto :goto_4

    .line 2663
    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    if-ne v0, v15, :cond_7

    .line 2664
    iget-object v1, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 2666
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v8, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v15, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2667
    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2664
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

    .line 2663
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

    .line 2658
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

    .line 2654
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

    .line 2652
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

    .line 2651
    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17    # "cbi":I
    .restart local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_b
    move-object v8, v5

    .line 2629
    .end local v5    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v10    # "code":I
    .end local v11    # "firstUnrestrictedUidState":J
    .end local v13    # "resolvedLastFg":Z
    .end local v14    # "resolvedNowFg":Z
    :goto_6
    add-int/lit8 v9, v9, -0x1

    const/4 v8, 0x1

    move-object/from16 v6, p0

    goto/16 :goto_0

    .line 2675
    .end local v9    # "fgi":I
    :cond_c
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    iput v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 2676
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 2677
    return-void
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3516
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3517
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3518
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3519
    const-string v0, "  start [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3520
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3521
    const-string v0, "  stop [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3522
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3523
    const-string v0, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3524
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3525
    const-string v0, "  get [--user <USER_ID>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3526
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3527
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3528
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3529
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3530
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3531
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3532
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3533
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3534
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3535
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3536
    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3537
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3538
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3539
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3540
    const-string v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3541
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3785
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3786
    const-string v0, "  -h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3787
    const-string v0, "    Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3788
    const-string v0, "  --op [OP]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3789
    const-string v0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3790
    const-string v0, "  --mode [MODE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3791
    const-string v0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3792
    const-string v0, "  --package [PACKAGE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3793
    const-string v0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3794
    const-string v0, "  --watchers"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3795
    const-string v0, "    Only output the watcher sections."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3796
    return-void
.end method

.method private dumpStatesLocked(Ljava/io/PrintWriter;Lcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .locals 28
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p3, "now"    # J
    .param p5, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p6, "date"    # Ljava/util/Date;
    .param p7, "prefix"    # Ljava/lang/String;

    .line 3801
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    iget v5, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v6, v1, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v7

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v8

    .line 3802
    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v12

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 3804
    .local v4, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v5

    .line 3805
    .local v5, "keys":Landroid/util/LongSparseArray;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-gtz v6, :cond_0

    move-object/from16 v22, v4

    move-object/from16 v16, v5

    goto/16 :goto_4

    .line 3809
    :cond_0
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    .line 3810
    .local v6, "keyCount":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_0
    if-ge v7, v6, :cond_6

    .line 3811
    invoke-virtual {v5, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 3813
    .local v8, "key":J
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v10

    .line 3814
    .local v10, "uidState":I
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v11

    .line 3816
    .local v11, "flags":I
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v12

    .line 3818
    .local v12, "accessTime":J
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v14

    .line 3820
    .local v14, "rejectTime":J
    move-object/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "keys":Landroid/util/LongSparseArray;
    .end local v6    # "keyCount":I
    .local v16, "keys":Landroid/util/LongSparseArray;
    .local v17, "keyCount":I
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v5

    .line 3822
    .local v5, "accessDuration":J
    invoke-virtual {v4, v10, v11}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName(II)Ljava/lang/String;

    move-result-object v1

    .line 3823
    .local v1, "proxyPkg":Ljava/lang/String;
    move/from16 v18, v7

    .end local v7    # "k":I
    .local v18, "k":I
    invoke-virtual {v4, v10, v11}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid(II)I

    move-result v7

    .line 3825
    .local v7, "proxyUid":I
    const-wide/16 v19, 0x0

    cmp-long v21, v12, v19

    move-object/from16 v22, v4

    .end local v4    # "entry":Landroid/app/AppOpsManager$OpEntry;
    .local v22, "entry":Landroid/app/AppOpsManager$OpEntry;
    const-string v4, "]"

    move/from16 v23, v10

    .end local v10    # "uidState":I
    .local v23, "uidState":I
    const-string v10, ", pkg="

    move/from16 v24, v11

    .end local v11    # "flags":I
    .local v24, "flags":I
    const-string/jumbo v11, "uid="

    move-wide/from16 v25, v14

    .end local v14    # "rejectTime":J
    .local v25, "rejectTime":J
    const-string v14, " proxy["

    const-string v15, ")"

    move-object/from16 v27, v4

    const-string v4, " ("

    if-lez v21, :cond_3

    .line 3826
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3827
    const-string v3, "Access: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3828
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3829
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {v2, v12, v13}, Ljava/util/Date;->setTime(J)V

    .line 3831
    invoke-virtual/range {p5 .. p6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3832
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3833
    move-object/from16 v21, v4

    sub-long v3, v12, p3

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3834
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3835
    cmp-long v3, v5, v19

    if-lez v3, :cond_1

    .line 3836
    const-string v3, " duration="

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3837
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3839
    :cond_1
    if-ltz v7, :cond_2

    .line 3840
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3841
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3842
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 3843
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3844
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3845
    move-object/from16 v3, v27

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 3839
    :cond_2
    move-object/from16 v3, v27

    .line 3847
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    .line 3825
    :cond_3
    move-object/from16 v21, v4

    move-object/from16 v3, v27

    .line 3850
    :goto_2
    cmp-long v4, v25, v19

    if-lez v4, :cond_5

    .line 3851
    move-object/from16 v4, p7

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3852
    const-string v4, "Reject: "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3853
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3854
    move-wide/from16 v19, v5

    move-wide/from16 v4, v25

    .end local v5    # "accessDuration":J
    .end local v25    # "rejectTime":J
    .local v4, "rejectTime":J
    .local v19, "accessDuration":J
    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 3855
    invoke-virtual/range {p5 .. p6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3856
    move-object/from16 v6, v21

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3857
    move-wide/from16 v25, v8

    .end local v8    # "key":J
    .local v25, "key":J
    sub-long v8, v4, p3

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3858
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3859
    if-ltz v7, :cond_4

    .line 3860
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3861
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3862
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 3863
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3864
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3865
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3867
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .line 3850
    .end local v4    # "rejectTime":J
    .end local v19    # "accessDuration":J
    .restart local v5    # "accessDuration":J
    .restart local v8    # "key":J
    .local v25, "rejectTime":J
    :cond_5
    move-wide/from16 v19, v5

    move-wide/from16 v4, v25

    move-wide/from16 v25, v8

    .line 3810
    .end local v1    # "proxyPkg":Ljava/lang/String;
    .end local v5    # "accessDuration":J
    .end local v7    # "proxyUid":I
    .end local v8    # "key":J
    .end local v12    # "accessTime":J
    .end local v23    # "uidState":I
    .end local v24    # "flags":I
    .end local v25    # "rejectTime":J
    :goto_3
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v1, p2

    move-object/from16 v3, p7

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v4, v22

    .end local v18    # "k":I
    .local v7, "k":I
    goto/16 :goto_0

    .line 3870
    .end local v7    # "k":I
    .end local v16    # "keys":Landroid/util/LongSparseArray;
    .end local v17    # "keyCount":I
    .end local v22    # "entry":Landroid/app/AppOpsManager$OpEntry;
    .local v4, "entry":Landroid/app/AppOpsManager$OpEntry;
    .local v5, "keys":Landroid/util/LongSparseArray;
    .restart local v6    # "keyCount":I
    :cond_6
    return-void

    .line 3805
    .end local v6    # "keyCount":I
    :cond_7
    move-object/from16 v22, v4

    move-object/from16 v16, v5

    .line 3806
    .end local v4    # "entry":Landroid/app/AppOpsManager$OpEntry;
    .end local v5    # "keys":Landroid/util/LongSparseArray;
    .restart local v16    # "keys":Landroid/util/LongSparseArray;
    .restart local v22    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :goto_4
    return-void
.end method

.method private enforceManageAppOpsModes(III)V
    .locals 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "targetUid"    # I

    .line 1266
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1267
    return-void

    .line 1269
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1270
    .local v0, "callingUser":I
    monitor-enter p0

    .line 1271
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 1272
    if-ltz p3, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1275
    monitor-exit p0

    return-void

    .line 1278
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1280
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 1279
    const-string v5, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1281
    return-void

    .line 1278
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private evalAllForegroundOpsLocked()V
    .locals 3

    .line 1726
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidi":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1727
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1728
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_0

    .line 1729
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1726
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1732
    .end local v0    # "uidi":I
    :cond_1
    return-void
.end method

.method private static getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;
    .locals 13
    .param p0, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p1, "elapsedNow"    # J

    .line 1093
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    if-eqz v0, :cond_0

    .line 1094
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/appop/AppOpsService$Op;->continuing(JII)V

    .line 1097
    :cond_0
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v5, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v6, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v7

    .line 1098
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    :cond_1
    move-object v8, v2

    .line 1099
    :goto_0
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :cond_2
    move-object v9, v2

    .line 1100
    :goto_1
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v10, v1

    goto :goto_2

    :cond_3
    move-object v10, v2

    .line 1101
    :goto_2
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v11, v1

    goto :goto_3

    :cond_4
    move-object v11, v2

    .line 1102
    :goto_3
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v1

    move-object v12, v1

    goto :goto_4

    :cond_5
    move-object v12, v2

    :goto_4
    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 1103
    .local v0, "entry":Landroid/app/AppOpsManager$OpEntry;
    return-object v0
.end method

.method private getOpLocked(IILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Op;
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isPrivileged"    # Z
    .param p5, "edit"    # Z

    .line 2839
    invoke-direct {p0, p2, p3, p5, p4}, Lcom/android/server/appop/AppOpsService;->getOpsRawNoVerifyLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 2840
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 2841
    const/4 v1, 0x0

    return-object v1

    .line 2843
    :cond_0
    invoke-direct {p0, v0, p1, p5}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;
    .locals 4
    .param p1, "ops"    # Lcom/android/server/appop/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .line 2847
    invoke-virtual {p1, p2}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    .line 2848
    .local v0, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v0, :cond_1

    .line 2849
    if-nez p3, :cond_0

    .line 2850
    const/4 v1, 0x0

    return-object v1

    .line 2852
    :cond_0
    new-instance v1, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V

    move-object v0, v1

    .line 2853
    invoke-virtual {p1, p2, v0}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2855
    :cond_1
    if-eqz p3, :cond_2

    .line 2856
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 2858
    :cond_2
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isPrivileged"    # Z
    .param p4, "edit"    # Z

    .line 2749
    invoke-direct {p0, p1, p4}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 2750
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2751
    return-object v1

    .line 2754
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    .line 2755
    if-nez p4, :cond_1

    .line 2756
    return-object v1

    .line 2758
    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2761
    :cond_2
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2762
    .local v2, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v2, :cond_4

    .line 2763
    if-nez p4, :cond_3

    .line 2764
    return-object v1

    .line 2766
    :cond_3
    new-instance v1, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;Z)V

    move-object v2, v1

    .line 2767
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    :cond_4
    return-object v2
.end method

.method private getOpsRawNoVerifyLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z
    .param p4, "isPrivileged"    # Z

    .line 2786
    invoke-direct {p0, p1, p3}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 2787
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2788
    return-object v1

    .line 2791
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    .line 2792
    if-nez p3, :cond_1

    .line 2793
    return-object v1

    .line 2795
    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2798
    :cond_2
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2799
    .local v2, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v2, :cond_4

    .line 2800
    if-nez p3, :cond_3

    .line 2801
    return-object v1

    .line 2803
    :cond_3
    new-instance v1, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v1, p2, v0, p4}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;Z)V

    move-object v2, v1

    .line 2804
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2806
    :cond_4
    return-object v2
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I

    .line 4647
    const/4 v0, 0x0

    .line 4651
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4653
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 4656
    goto :goto_0

    .line 4654
    :catch_0
    move-exception v1

    .line 4658
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4659
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 4661
    :cond_1
    return-object v0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .line 2594
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2595
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_1

    .line 2596
    if-nez p2, :cond_0

    .line 2597
    const/4 v1, 0x0

    return-object v1

    .line 2599
    :cond_0
    new-instance v1, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(I)V

    move-object v0, v1

    .line 2600
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2602
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 2604
    :goto_0
    return-object v0
.end method

.method private isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 2862
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2863
    const/4 v0, 0x0

    return v0

    .line 2865
    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 2866
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;Z)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isPrivileged"    # Z

    .line 2871
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2872
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2874
    .local v1, "restrictionSetCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_3

    .line 2877
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 2878
    .local v4, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v4, p2, p3, v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2879
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 2881
    monitor-enter p0

    .line 2882
    :try_start_0
    invoke-direct {p0, p1, p3, p4, v6}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v5

    .line 2884
    .local v5, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v5, :cond_0

    iget-boolean v7, v5, Lcom/android/server/appop/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v7, :cond_0

    .line 2885
    monitor-exit p0

    return v3

    .line 2887
    .end local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2889
    :cond_1
    :goto_1
    return v6

    .line 2874
    .end local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2892
    .end local v2    # "i":I
    :cond_3
    return v3
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1961
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1963
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1964
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1963
    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1968
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1963
    return v2

    .line 1968
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1965
    :catch_0
    move-exception v2

    .line 1966
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Could not talk to package manager service"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1968
    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
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

.method public static synthetic lambda$gQy7GOuCV6GbjQtdNhNG6xld8I4(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Z)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$hqd76gFlOJ1gAuDYDPVUaSkXjTc(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$mfUWTdGevxEoIUv1cEPEFG0qAaI(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$u9c0eEYUUm25QC1meV06FHffZE0(Lcom/android/server/appop/AppOpsService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZ)V

    return-void
.end method

.method private noteOperationImpl(IILjava/lang/String;)I
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2076
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2077
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2078
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2079
    .local v7, "resolvedPackageName":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 2080
    const/4 v0, 0x1

    return v0

    .line 2082
    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I
    .locals 21
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;
    .param p6, "flags"    # I

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v7, p6

    .line 2090
    const/4 v2, 0x2

    :try_start_0
    invoke-direct {v1, v9, v10}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v0

    .line 2094
    .local v6, "isPrivileged":Z
    nop

    .line 2096
    monitor-enter p0

    .line 2097
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {v1, v9, v10, v6, v0}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v3

    .line 2098
    .local v5, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v5, :cond_0

    .line 2099
    :try_start_2
    invoke-direct {v1, v8, v9, v10, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2103
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    .line 2161
    .end local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :catchall_0
    move-exception v0

    move/from16 v18, v6

    goto/16 :goto_2

    .line 2105
    .restart local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_0
    :try_start_3
    invoke-direct {v1, v5, v8, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v2

    move-object v4, v2

    .line 2106
    .local v4, "op":Lcom/android/server/appop/AppOpsService$Op;
    invoke-direct {v1, v9, v8, v10, v6}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Z)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 2107
    :try_start_4
    invoke-direct {v1, v8, v9, v10, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2109
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v0

    .line 2111
    :cond_1
    :try_start_5
    iget-object v2, v5, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    move-object v3, v2

    .line 2112
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-boolean v2, v4, Lcom/android/server/appop/AppOpsService$Op;->running:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    .line 2113
    :try_start_6
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    iget v12, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v13, v4, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v14

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v15

    .line 2114
    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v16

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v17

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v18

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v19

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 2115
    .local v2, "entry":Landroid/app/AppOpsManager$OpEntry;
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Noting op not finished: uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v14, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 2116
    invoke-virtual {v2, v13, v14, v7}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " duration="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v14, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 2117
    invoke-virtual {v2, v13, v14, v7}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2115
    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2121
    .end local v2    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    :try_start_7
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    .line 2124
    .local v2, "switchCode":I
    iget-object v11, v3, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v11, :cond_4

    iget-object v11, v3, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    if-ltz v11, :cond_4

    .line 2125
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v3, v8, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v0

    .line 2126
    .local v0, "uidMode":I
    if-eqz v0, :cond_3

    .line 2130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget v15, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v11, v4

    move/from16 v14, p4

    move/from16 v16, v15

    move-object/from16 v15, p5

    move/from16 v17, p6

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2132
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v12, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v15, v2

    .end local v2    # "switchCode":I
    .local v15, "switchCode":I
    move-object v2, v11

    move-object v14, v3

    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v14, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move/from16 v3, p1

    move-object v13, v4

    .end local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v13, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v4, p2

    move-object v11, v5

    .end local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v11, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move-object/from16 v5, p3

    move/from16 v18, v6

    .end local v6    # "isPrivileged":Z
    .local v18, "isPrivileged":Z
    move v6, v12

    move/from16 v7, p6

    :try_start_8
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2134
    invoke-direct {v1, v8, v9, v10, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2135
    monitor-exit p0

    return v0

    .line 2126
    .end local v11    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v15    # "switchCode":I
    .end local v18    # "isPrivileged":Z
    .restart local v2    # "switchCode":I
    .restart local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v6    # "isPrivileged":Z
    :cond_3
    move v15, v2

    move-object v14, v3

    move-object v13, v4

    move-object v11, v5

    move/from16 v18, v6

    .line 2137
    .end local v0    # "uidMode":I
    .end local v2    # "switchCode":I
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v6    # "isPrivileged":Z
    .restart local v11    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v13    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v15    # "switchCode":I
    .restart local v18    # "isPrivileged":Z
    move-object/from16 v19, v11

    move/from16 v20, v15

    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_1

    .line 2124
    .end local v11    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v15    # "switchCode":I
    .end local v18    # "isPrivileged":Z
    .restart local v2    # "switchCode":I
    .restart local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v6    # "isPrivileged":Z
    :cond_4
    move v15, v2

    move-object v14, v3

    move-object v13, v4

    move-object v11, v5

    move/from16 v18, v6

    .line 2138
    .end local v2    # "switchCode":I
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v6    # "isPrivileged":Z
    .restart local v11    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v13    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v15    # "switchCode":I
    .restart local v18    # "isPrivileged":Z
    if-eq v15, v8, :cond_5

    invoke-direct {v1, v11, v15, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v4

    goto :goto_0

    :cond_5
    move-object v4, v13

    :goto_0
    move-object v0, v4

    .line 2139
    .local v0, "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v2

    move v7, v2

    .line 2140
    .local v7, "mode":I
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 2144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, v14, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object/from16 v19, v11

    .end local v11    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v19, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move-object v11, v13

    move-object v6, v13

    .end local v13    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v6, "op":Lcom/android/server/appop/AppOpsService$Op;
    move-wide v12, v2

    move-object v5, v14

    .end local v14    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v5, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move/from16 v14, p4

    move/from16 v20, v15

    .end local v15    # "switchCode":I
    .local v20, "switchCode":I
    move-object/from16 v15, p5

    move/from16 v16, v4

    move/from16 v17, p6

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2146
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v11, v5, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move/from16 v3, p1

    move/from16 v4, p2

    move-object v15, v5

    .end local v5    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v15, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move-object/from16 v5, p3

    move-object v14, v6

    .end local v6    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v14, "op":Lcom/android/server/appop/AppOpsService$Op;
    move v6, v11

    move v11, v7

    .end local v7    # "mode":I
    .local v11, "mode":I
    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2148
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2149
    monitor-exit p0

    return v11

    .line 2140
    .end local v19    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v20    # "switchCode":I
    .restart local v7    # "mode":I
    .local v11, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v13    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v14, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v15, "switchCode":I
    :cond_6
    move-object/from16 v19, v11

    move/from16 v20, v15

    move v11, v7

    move-object v15, v14

    move-object v14, v13

    .line 2154
    .end local v0    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v7    # "mode":I
    .end local v11    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v14, "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v15, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v19    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v20    # "switchCode":I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget v0, v15, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v11, v14

    move-object v7, v14

    .end local v14    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v7, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v14, p4

    move-object v6, v15

    .end local v15    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v6, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move-object/from16 v15, p5

    move/from16 v16, v0

    move/from16 v17, p6

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/appop/AppOpsService$Op;->accessed(JILjava/lang/String;II)V

    .line 2156
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v3, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v0, v6, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object v11, v6

    .end local v6    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v11, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move v6, v0

    move-object v0, v7

    .end local v7    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v0, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;II)V

    .line 2158
    const/4 v2, 0x0

    invoke-direct {v1, v8, v9, v10, v2}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2160
    monitor-exit p0

    return v2

    .line 2161
    .end local v0    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v11    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v18    # "isPrivileged":Z
    .end local v19    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v20    # "switchCode":I
    .local v6, "isPrivileged":Z
    :catchall_1
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "isPrivileged":Z
    .restart local v18    # "isPrivileged":Z
    :goto_2
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 2091
    .end local v18    # "isPrivileged":Z
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2092
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "AppOps"

    const-string/jumbo v4, "noteOperation"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2093
    return v2
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

    .line 2470
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2472
    .local v0, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2473
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2474
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2476
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_start_1
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2479
    goto :goto_1

    .line 2477
    :catch_0
    move-exception v5

    .line 2473
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2482
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2483
    nop

    .line 2484
    return-void

    .line 2482
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 1542
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1543
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1544
    .local v1, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    .line 1542
    .end local v1    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1546
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/server/appop/AppOpsService$ModeCallback;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1550
    const/4 v0, -0x2

    if-eq p3, v0, :cond_0

    iget v0, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-eq v0, p3, :cond_0

    .line 1551
    return-void

    .line 1556
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1558
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1562
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1559
    :catch_0
    move-exception v2

    .line 1562
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    nop

    .line 1564
    return-void
.end method

.method private notifyOpChangedForAllPkgsInUid(IIZ)V
    .locals 17
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "onlyForeground"    # Z

    .line 1352
    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 1353
    .local v8, "uidPackageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1355
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 1356
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

    .line 1357
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v0, :cond_2

    .line 1358
    :try_start_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 1359
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1360
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1361
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz p3, :cond_0

    iget v5, v4, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 1362
    goto :goto_1

    .line 1365
    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1366
    .local v5, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v5, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1367
    if-nez v1, :cond_1

    .line 1368
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v6

    .line 1370
    :cond_1
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1359
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v5    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1396
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v8

    goto/16 :goto_a

    .line 1374
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

    .line 1375
    .local v1, "uidPackageName":Ljava/lang/String;
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v0, v4

    .line 1376
    if-eqz v0, :cond_7

    .line 1377
    if-nez v10, :cond_3

    .line 1378
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v4, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_3

    .line 1377
    .end local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_3
    move-object v4, v10

    .line 1380
    .end local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 1381
    .local v5, "callbackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_6

    .line 1382
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1383
    .local v10, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz p3, :cond_4

    iget v11, v10, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_4

    .line 1384
    goto :goto_5

    .line 1387
    :cond_4
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 1388
    .local v11, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v11, :cond_5

    .line 1389
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v12

    .line 1390
    invoke-virtual {v4, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    :cond_5
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1381
    .end local v10    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v11    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    move-object v10, v4

    goto :goto_6

    .line 1396
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v1    # "uidPackageName":Ljava/lang/String;
    .end local v5    # "callbackCount":I
    .end local v6    # "i":I
    :catchall_1
    move-exception v0

    move-object v1, v4

    move-object/from16 v16, v8

    goto/16 :goto_a

    .line 1374
    .end local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v10, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1396
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v16, v8

    move-object v1, v10

    goto/16 :goto_a

    :cond_8
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1398
    if-nez v10, :cond_9

    .line 1399
    return-void

    .line 1402
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 1403
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1404
    .local v11, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/ArraySet;

    .line 1405
    .local v12, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v12, :cond_a

    .line 1406
    iget-object v13, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 1408
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x0

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 1406
    move-object/from16 v2, p0

    move-object v3, v11

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v16, v8

    goto :goto_9

    .line 1411
    :cond_a
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 1412
    .local v13, "reportedPackageCount":I
    const/4 v1, 0x0

    move v14, v1

    .local v14, "j":I
    :goto_8
    if-ge v14, v13, :cond_b

    .line 1413
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 1414
    .local v15, "reportedPackageName":Ljava/lang/String;
    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 1416
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1414
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

    .line 1412
    .end local v15    # "reportedPackageName":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v16

    goto :goto_8

    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v8

    .line 1402
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

    .line 1420
    .end local v0    # "i":I
    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :cond_c
    return-void

    .line 1396
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
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

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

    .line 1423
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    .line 1424
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 1425
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;I)V

    .line 1428
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

    .line 2515
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2517
    .local v0, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2518
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2519
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2521
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_start_1
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsNotedCallback;->opNoted(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2524
    goto :goto_1

    .line 2522
    :catch_0
    move-exception v5

    .line 2518
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2527
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2528
    nop

    .line 2529
    return-void

    .line 2527
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private notifyWatchersOfChange(II)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 4504
    monitor-enter p0

    .line 4505
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 4506
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v0, :cond_0

    .line 4507
    monitor-exit p0

    return-void

    .line 4509
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v0, v1

    .line 4510
    .local v0, "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4512
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 4513
    return-void

    .line 4510
    .end local v0    # "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I
    .locals 20
    .param p0, "shell"    # Lcom/android/server/appop/AppOpsService$Shell;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 3544
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 3545
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3547
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 3548
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 3550
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

    .line 3776
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_11

    .line 3762
    :pswitch_0
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3763
    .local v0, "res":I
    if-gez v0, :cond_2

    .line 3764
    return v0

    .line 3767
    :cond_2
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 3768
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 3773
    return v7

    .line 3771
    :cond_3
    return v5

    .line 3748
    .end local v0    # "res":I
    :pswitch_1
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3749
    .restart local v0    # "res":I
    if-gez v0, :cond_4

    .line 3750
    return v0

    .line 3753
    :cond_4
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 3754
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 3759
    return v7

    .line 3757
    :cond_5
    return v5

    .line 3736
    .end local v0    # "res":I
    :pswitch_2
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3737
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3736
    invoke-direct {v0, v6, v8, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3740
    .local v8, "token":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 3741
    const-string v0, "Last settings read."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3743
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3744
    nop

    .line 3745
    return v7

    .line 3743
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "err":Ljava/io/PrintWriter;
    .end local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v0

    .line 3721
    .end local v8    # "token":J
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :pswitch_3
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3722
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3721
    invoke-direct {v0, v6, v8, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3723
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3725
    .restart local v8    # "token":J
    :try_start_3
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3726
    :try_start_4
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v10, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3727
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3728
    :try_start_5
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 3729
    const-string v0, "Current settings written."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3731
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 3732
    nop

    .line 3733
    return v7

    .line 3727
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

    .line 3731
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local v8    # "token":J
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "err":Ljava/io/PrintWriter;
    .end local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v0

    .line 3685
    .end local v8    # "token":J
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x0

    .line 3686
    .local v0, "packageName":Ljava/lang/String;
    const/4 v6, -0x2

    move v8, v6

    .line 3687
    .local v8, "userId":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "argument":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 3688
    const-string v9, "--user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3689
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 3690
    .local v9, "userStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v11

    move v8, v11

    .line 3691
    .end local v9    # "userStr":Ljava/lang/String;
    goto :goto_2

    .line 3692
    :cond_6
    if-nez v0, :cond_7

    .line 3693
    move-object v0, v10

    goto :goto_2

    .line 3695
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3696
    return v5

    .line 3701
    .end local v10    # "argument":Ljava/lang/String;
    :cond_8
    if-ne v8, v6, :cond_9

    .line 3702
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    move v8, v6

    .line 3705
    :cond_9
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v6, v8, v0}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 3706
    const-string v6, "Reset all modes for: "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3707
    if-ne v8, v5, :cond_a

    .line 3708
    const-string v6, "all users"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 3710
    :cond_a
    const-string/jumbo v6, "user "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 3712
    :goto_3
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3713
    if-nez v0, :cond_b

    .line 3714
    const-string v6, "all packages"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3716
    :cond_b
    const-string/jumbo v6, "package "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3718
    :goto_4
    return v7

    .line 3657
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v8    # "userId":I
    :pswitch_5
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v0

    .line 3658
    .local v0, "res":I
    if-gez v0, :cond_c

    .line 3659
    return v0

    .line 3661
    :cond_c
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v6, v6, [I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v9, v6, v7

    invoke-interface {v8, v6}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 3663
    .local v6, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_d

    goto :goto_8

    .line 3667
    :cond_d
    move v8, v7

    .local v8, "i":I
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 3668
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 3669
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v10, 0x0

    .line 3670
    .local v10, "hasMatch":Z
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 3671
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v12, v7

    .local v12, "j":I
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    .line 3672
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 3673
    .local v13, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    iget v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-ne v14, v15, :cond_e

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    iget v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-ne v14, v15, :cond_e

    .line 3674
    const/4 v10, 0x1

    .line 3675
    goto :goto_7

    .line 3671
    .end local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 3678
    .end local v12    # "j":I
    :cond_f
    :goto_7
    if-eqz v10, :cond_10

    .line 3679
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3667
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "hasMatch":Z
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 3682
    .end local v8    # "i":I
    :cond_11
    return v7

    .line 3664
    :cond_12
    :goto_8
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3665
    return v7

    .line 3584
    .end local v0    # "res":I
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_6
    invoke-virtual {v1, v7, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3585
    .restart local v0    # "res":I
    if-gez v0, :cond_13

    .line 3586
    return v0

    .line 3589
    :cond_13
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3590
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v9, :cond_18

    .line 3592
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 3594
    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_14

    new-array v12, v6, [I

    iget v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v13, v12, v7

    goto :goto_9

    :cond_14
    move-object v12, v10

    .line 3592
    :goto_9
    invoke-interface {v9, v11, v12}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v9

    .line 3595
    .local v9, "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v9, :cond_15

    .line 3596
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3598
    :cond_15
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3600
    iget v14, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v14, v5, :cond_16

    new-array v10, v6, [I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v6, v10, v7

    .line 3598
    :cond_16
    invoke-interface {v11, v12, v13, v10}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v6

    .line 3601
    .end local v9    # "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v6, "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_17

    .line 3602
    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3604
    .end local v6    # "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_17
    goto :goto_a

    .line 3605
    :cond_18
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 3607
    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_19

    new-array v10, v6, [I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v6, v10, v7

    .line 3605
    :cond_19
    invoke-interface {v9, v11, v10}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v6

    move-object v8, v6

    .line 3609
    :goto_a
    if-eqz v8, :cond_22

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1a

    move-object/from16 v19, v8

    goto/16 :goto_f

    .line 3623
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3624
    .local v9, "now":J
    move v6, v7

    .local v6, "i":I
    :goto_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_21

    .line 3625
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .line 3626
    .local v11, "packageOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1b

    .line 3627
    const-string v12, "Uid mode: "

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3629
    :cond_1b
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v12

    .line 3630
    .local v12, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v13, v7

    .local v13, "j":I
    :goto_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_20

    .line 3631
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$OpEntry;

    .line 3632
    .local v14, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3633
    const-string v15, ": "

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3634
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3635
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1c

    .line 3636
    const-string v15, "; time="

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3637
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v15

    move-object/from16 v19, v8

    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v19, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    sub-long v7, v9, v15

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3638
    const-string v7, " ago"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d

    .line 3635
    .end local v19    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_1c
    move-object/from16 v19, v8

    .line 3640
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_d
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v7

    cmp-long v7, v7, v17

    if-eqz v7, :cond_1d

    .line 3641
    const-string v7, "; rejectTime="

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3642
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v7

    sub-long v7, v9, v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3643
    const-string v7, " ago"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3645
    :cond_1d
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v7

    const-wide/16 v15, -0x1

    cmp-long v7, v7, v15

    if-nez v7, :cond_1e

    .line 3646
    const-string v7, " (running)"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e

    .line 3647
    :cond_1e
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v7

    cmp-long v7, v7, v17

    if-eqz v7, :cond_1f

    .line 3648
    const-string v7, "; duration="

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3649
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3651
    :cond_1f
    :goto_e
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 3630
    .end local v14    # "ent":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v19

    const/4 v7, 0x0

    goto/16 :goto_c

    .end local v19    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_20
    move-object/from16 v19, v8

    .line 3624
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v11    # "packageOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v12    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v13    # "j":I
    .restart local v19    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_b

    .line 3654
    .end local v6    # "i":I
    .end local v19    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_21
    const/4 v5, 0x0

    return v5

    .line 3609
    .end local v9    # "now":J
    :cond_22
    move-object/from16 v19, v8

    .line 3610
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_f
    const-string v6, "No operations."

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3611
    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-le v6, v5, :cond_23

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    const/16 v7, 0x5b

    if-ge v6, v7, :cond_23

    .line 3612
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3613
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v7

    .line 3612
    invoke-static {v7}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3616
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const-string v7, "android.app.role.cts.app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    const/16 v7, 0x14

    if-ne v6, v7, :cond_23

    .line 3617
    const-string v6, " allow"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3621
    :cond_23
    const/4 v5, 0x0

    return v5

    .line 3552
    .end local v0    # "res":I
    .end local v19    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_7
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    move v6, v0

    .line 3553
    .local v6, "res":I
    if-gez v6, :cond_24

    .line 3554
    return v6

    .line 3556
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 3557
    .local v7, "modeStr":Ljava/lang/String;
    if-nez v7, :cond_25

    .line 3558
    const-string v0, "Error: Mode not specified."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3559
    return v5

    .line 3562
    :cond_25
    invoke-static {v7, v4}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    move v8, v0

    .line 3563
    .local v8, "mode":I
    if-gez v8, :cond_26

    .line 3564
    return v5

    .line 3567
    :cond_26
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-nez v0, :cond_27

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 3568
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v0, v9, v10, v11, v8}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_10

    .line 3570
    :cond_27
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v0, :cond_28

    .line 3572
    :try_start_a
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3573
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 3574
    .local v0, "uid":I
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-interface {v9, v10, v0, v8}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 3577
    .end local v0    # "uid":I
    goto :goto_10

    .line 3575
    :catch_0
    move-exception v0

    .line 3576
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5

    .line 3579
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_28
    :try_start_b
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v0, v9, v10, v8}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    .line 3581
    :goto_10
    const/4 v0, 0x0

    return v0

    .line 3776
    .end local v6    # "res":I
    .end local v7    # "modeStr":Ljava/lang/String;
    .end local v8    # "mode":I
    :goto_11
    return v0

    .line 3778
    :catch_1
    move-exception v0

    .line 3779
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3781
    .end local v0    # "e":Landroid/os/RemoteException;
    return v5

    nop

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

.method private pruneOp(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1244
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1245
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 1246
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v0, :cond_1

    .line 1247
    iget v1, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Ops;->remove(I)V

    .line 1248
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1249
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 1250
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1251
    .local v2, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-eqz v2, :cond_1

    .line 1252
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1254
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1256
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1257
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1263
    .end local v0    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_1
    return-void
.end method

.method private readOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;Z)V
    .locals 30
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "isPrivileged"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3122
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 3123
    const-string/jumbo v4, "n"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v1, v2, v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 3125
    .local v3, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget v5, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 3126
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    .line 3125
    const-string/jumbo v6, "m"

    invoke-static {v0, v6, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 3127
    .local v5, "mode":I
    invoke-static {v3, v5}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 3129
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 3131
    .local v13, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v14, v6

    .local v14, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    const/4 v6, 0x3

    if-ne v14, v6, :cond_1

    .line 3132
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v13, :cond_7

    .line 3133
    :cond_1
    if-eq v14, v6, :cond_0

    const/4 v6, 0x4

    if-ne v14, v6, :cond_2

    .line 3134
    goto :goto_0

    .line 3136
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 3137
    .local v15, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "st"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3138
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v16

    .line 3140
    .local v16, "key":J
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v18

    .line 3141
    .local v18, "flags":I
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v19

    .line 3143
    .local v19, "state":I
    const-wide/16 v11, 0x0

    const-string/jumbo v6, "t"

    invoke-static {v0, v6, v11, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v20

    .line 3144
    .local v20, "accessTime":J
    const-string/jumbo v6, "r"

    invoke-static {v0, v6, v11, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v22

    .line 3145
    .local v22, "rejectTime":J
    const-string v6, "d"

    invoke-static {v0, v6, v11, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v24

    .line 3146
    .local v24, "accessDuration":J
    const-string/jumbo v6, "pp"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3147
    .local v26, "proxyPkg":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v7, "pu"

    invoke-static {v0, v7, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v27

    .line 3149
    .local v27, "proxyUid":I
    cmp-long v6, v20, v11

    if-lez v6, :cond_3

    .line 3150
    move-object v6, v3

    move-wide/from16 v7, v20

    move/from16 v9, v27

    move-object/from16 v10, v26

    move-wide/from16 v28, v11

    move/from16 v11, v19

    move/from16 v12, v18

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/appop/AppOpsService$Op;->accessed(JILjava/lang/String;II)V

    goto :goto_1

    .line 3149
    :cond_3
    move-wide/from16 v28, v11

    .line 3152
    :goto_1
    cmp-long v6, v22, v28

    if-lez v6, :cond_4

    .line 3153
    move-object v6, v3

    move-wide/from16 v7, v22

    move/from16 v9, v27

    move-object/from16 v10, v26

    move/from16 v11, v19

    move/from16 v12, v18

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 3155
    :cond_4
    cmp-long v6, v24, v28

    if-lez v6, :cond_5

    .line 3156
    move-object v6, v3

    move-wide/from16 v7, v20

    move-wide/from16 v9, v24

    move/from16 v11, v19

    move/from16 v12, v18

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/appop/AppOpsService$Op;->running(JJII)V

    .line 3158
    .end local v16    # "key":J
    .end local v18    # "flags":I
    .end local v19    # "state":I
    .end local v20    # "accessTime":J
    .end local v22    # "rejectTime":J
    .end local v24    # "accessDuration":J
    .end local v26    # "proxyPkg":Ljava/lang/String;
    .end local v27    # "proxyUid":I
    :cond_5
    goto :goto_2

    .line 3159
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <op>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3160
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3159
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3163
    .end local v15    # "tagName":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 3165
    :cond_7
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_8

    .line 3166
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 3168
    :cond_8
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    .line 3169
    .local v4, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v4, :cond_9

    .line 3170
    new-instance v6, Lcom/android/server/appop/AppOpsService$Ops;

    move/from16 v7, p4

    invoke-direct {v6, v2, v1, v7}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;Z)V

    move-object v4, v6

    .line 3171
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3169
    :cond_9
    move/from16 v7, p4

    .line 3173
    :goto_3
    iget v6, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v4, v6, v3}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 3174
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

    .line 3054
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3055
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3057
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

    .line 3058
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 3059
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 3060
    goto :goto_0

    .line 3063
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3064
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3065
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_1

    .line 3067
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <pkg>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3067
    const-string v5, "AppOps"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3071
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 3072
    :cond_4
    return-void
.end method

.method private readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3076
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3077
    .local v1, "uid":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v3

    .line 3078
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const-string/jumbo v4, "p"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3079
    .local v0, "isPrivilegedString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3080
    .local v4, "isPrivileged":Z
    const-string v5, "AppOps"

    if-nez v0, :cond_3

    .line 3082
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 3083
    .local v6, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v6, :cond_2

    .line 3084
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 3085
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v7, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 3086
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_1

    .line 3087
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_0

    move v9, v2

    :cond_0
    move v4, v9

    .line 3090
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 3092
    :cond_2
    return-void

    .line 3094
    .end local v6    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v6

    .line 3095
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "Could not contact PackageManager"

    invoke-static {v5, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3096
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 3098
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 3100
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 3102
    .local v6, "outerDepth":I
    :cond_4
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    if-eq v7, v2, :cond_8

    const/4 v7, 0x3

    if-ne v8, v7, :cond_5

    .line 3103
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_8

    .line 3104
    :cond_5
    if-eq v8, v7, :cond_4

    const/4 v7, 0x4

    if-ne v8, v7, :cond_6

    .line 3105
    goto :goto_2

    .line 3107
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3108
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "op"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3109
    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/appop/AppOpsService;->readOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;Z)V

    goto :goto_3

    .line 3111
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <pkg>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3112
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3111
    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3115
    .end local v7    # "tagName":Ljava/lang/String;
    :goto_3
    goto :goto_2

    .line 3116
    :cond_8
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 3117
    return-void
.end method

.method private readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3026
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3027
    .local v2, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 3029
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 3030
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_5

    .line 3031
    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 3032
    goto :goto_0

    .line 3035
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3036
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "op"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3037
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3038
    .local v7, "code":I
    const-string/jumbo v8, "m"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3039
    .local v8, "mode":I
    invoke-direct {p0, v2, v6}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v6

    .line 3040
    .local v6, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v9, v6, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v9, :cond_3

    .line 3041
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, v6, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3043
    :cond_3
    iget-object v9, v6, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 3044
    .end local v6    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v7    # "code":I
    .end local v8    # "mode":I
    goto :goto_1

    .line 3045
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <uid-ops>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3046
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3045
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3049
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 3050
    :cond_5
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 4595
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4596
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 4597
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 4598
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4595
    .end local v1    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4601
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4611
    if-nez p0, :cond_0

    .line 4612
    const-string/jumbo v0, "root"

    return-object v0

    .line 4613
    :cond_0
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    .line 4614
    const-string v0, "com.android.shell"

    return-object v0

    .line 4615
    :cond_1
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_2

    .line 4616
    const-string/jumbo v0, "media"

    return-object v0

    .line 4617
    :cond_2
    const/16 v0, 0x411

    if-ne p0, v0, :cond_3

    .line 4618
    const-string v0, "audioserver"

    return-object v0

    .line 4619
    :cond_3
    const/16 v0, 0x417

    if-ne p0, v0, :cond_4

    .line 4620
    const-string v0, "cameraserver"

    return-object v0

    .line 4621
    :cond_4
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_5

    if-nez p1, :cond_5

    .line 4622
    const-string v0, "android"

    return-object v0

    .line 4624
    :cond_5
    return-object p1
.end method

.method private static resolveUid(Ljava/lang/String;)I
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .line 4628
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 4629
    return v0

    .line 4631
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

    .line 4643
    return v0

    .line 4641
    :cond_2
    const/16 v0, 0x417

    return v0

    .line 4639
    :cond_3
    const/16 v0, 0x411

    return v0

    .line 4637
    :cond_4
    const/16 v0, 0x3f5

    return v0

    .line 4635
    :cond_5
    const/16 v0, 0x7d0

    return v0

    .line 4633
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

    .line 2817
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    .line 2818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 2819
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 2820
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2821
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2823
    :cond_0
    return-void
.end method

.method private scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 2442
    const/4 v0, 0x0

    .line 2443
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2444
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2445
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2446
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    .line 2447
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    if-eqz v4, :cond_2

    .line 2448
    iget v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v5, :cond_0

    iget v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_0

    .line 2449
    goto :goto_1

    .line 2451
    :cond_0
    if-nez v0, :cond_1

    .line 2452
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 2454
    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2444
    .end local v3    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2457
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 2458
    return-void

    .line 2460
    :cond_4
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ;

    .line 2462
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 2460
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2463
    return-void
.end method

.method private scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "result"    # I

    .line 2488
    const/4 v0, 0x0

    .line 2489
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2490
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2491
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2492
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 2493
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    if-eqz v4, :cond_2

    .line 2494
    iget v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-ltz v5, :cond_0

    iget v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_0

    .line 2495
    goto :goto_1

    .line 2497
    :cond_0
    if-nez v0, :cond_1

    .line 2498
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 2500
    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2490
    .end local v3    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2503
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 2504
    return-void

    .line 2506
    :cond_4
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$AfBLuTvVESlqN91IyRX84hMV5nE;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$AfBLuTvVESlqN91IyRX84hMV5nE;

    .line 2508
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2506
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2509
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .line 2810
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 2811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 2812
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2814
    :cond_0
    return-void
.end method

.method private setAllPkgModesToDefault(II)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 1437
    monitor-enter p0

    .line 1438
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 1439
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_0

    .line 1440
    monitor-exit p0

    return-void

    .line 1443
    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1444
    .local v1, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v1, :cond_1

    .line 1445
    monitor-exit p0

    return-void

    .line 1448
    :cond_1
    const/4 v2, 0x0

    .line 1450
    .local v2, "scheduleWrite":Z
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1451
    .local v3, "numPkgs":I
    const/4 v4, 0x0

    .local v4, "pkgNum":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 1452
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1454
    .local v5, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v5, p1}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Op;

    .line 1455
    .local v6, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v6, :cond_2

    .line 1456
    goto :goto_1

    .line 1459
    :cond_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v7

    .line 1460
    .local v7, "defaultMode":I
    invoke-static {v6}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v8

    if-eq v8, v7, :cond_3

    .line 1461
    invoke-static {v6, v7}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 1462
    const/4 v2, 0x1

    .line 1451
    .end local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v6    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v7    # "defaultMode":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1466
    .end local v4    # "pkgNum":I
    :cond_4
    if-eqz v2, :cond_5

    .line 1467
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 1469
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v2    # "scheduleWrite":Z
    .end local v3    # "numPkgs":I
    :cond_5
    monitor-exit p0

    .line 1470
    return-void

    .line 1469
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 4478
    monitor-enter p0

    .line 4479
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4481
    .local v0, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    if-nez v0, :cond_0

    .line 4483
    :try_start_1
    new-instance v1, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    invoke-direct {v1, p0, p3}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 4486
    nop

    .line 4487
    :try_start_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4484
    :catch_0
    move-exception v1

    .line 4485
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit p0

    return-void

    .line 4490
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4491
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 4492
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4491
    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4495
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4496
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4497
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->destroy()V

    .line 4499
    .end local v0    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_2
    monitor-exit p0

    .line 4500
    return-void

    .line 4499
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private updatePendingState(JI)V
    .locals 2
    .param p1, "currentTime"    # J
    .param p3, "uid"    # I

    .line 964
    monitor-enter p0

    .line 965
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 966
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 967
    monitor-exit p0

    .line 968
    return-void

    .line 967
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

    .line 2613
    if-eqz p1, :cond_1

    .line 2614
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2615
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2616
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    goto :goto_0

    .line 2618
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 2619
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 2620
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 2625
    :cond_1
    :goto_0
    return-void
.end method

.method private upgradeLocked(I)V
    .locals 3
    .param p1, "oldVersion"    # I

    .line 3010
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 3011
    return-void

    .line 3013
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

    .line 3014
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3016
    :cond_1
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    .line 3021
    :goto_0
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 3022
    return-void
.end method

.method private upgradeRunAnyInBackgroundLocked()V
    .locals 11

    .line 2974
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 2975
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2976
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v1, :cond_0

    .line 2977
    goto :goto_2

    .line 2979
    :cond_0
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v3, 0x3f

    const/16 v4, 0x46

    if-eqz v2, :cond_1

    .line 2980
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 2981
    .local v2, "idx":I
    if-ltz v2, :cond_1

    .line 2982
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2983
    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 2982
    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2986
    .end local v2    # "idx":I
    :cond_1
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    .line 2987
    goto :goto_2

    .line 2989
    :cond_2
    const/4 v2, 0x0

    .line 2990
    .local v2, "changed":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 2991
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2992
    .local v6, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v6, :cond_3

    .line 2993
    invoke-virtual {v6, v3}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Op;

    .line 2994
    .local v7, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v7, :cond_3

    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v8

    iget v9, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v9}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 2995
    new-instance v8, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v9, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v10, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v4}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2997
    .local v8, "copy":Lcom/android/server/appop/AppOpsService$Op;
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 2998
    invoke-virtual {v6, v4, v8}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2999
    const/4 v2, 0x1

    .line 2990
    .end local v6    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v7    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v8    # "copy":Lcom/android/server/appop/AppOpsService$Op;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3003
    .end local v5    # "j":I
    :cond_4
    if-eqz v2, :cond_5

    .line 3004
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2974
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "changed":Z
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3007
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method private verifyAndGetIsPrivileged(ILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2688
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2690
    return v0

    .line 2694
    :cond_0
    monitor-enter p0

    .line 2695
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2696
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    .line 2697
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2699
    .local v2, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v2, :cond_1

    .line 2700
    iget-boolean v0, v2, Lcom/android/server/appop/AppOpsService$Ops;->isPrivileged:Z

    monitor-exit p0

    return v0

    .line 2703
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2705
    const/4 v1, 0x0

    .line 2706
    .local v1, "isPrivileged":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2710
    .local v2, "ident":J
    :try_start_1
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    const v5, 0x208c2000

    const/16 v6, 0x3e8

    .line 2716
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2711
    invoke-virtual {v4, p2, v5, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2717
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_3

    .line 2718
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2719
    .local v5, "pkgUid":I
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0

    .line 2722
    .end local v5    # "pkgUid":I
    :cond_3
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v0

    .line 2723
    .restart local v5    # "pkgUid":I
    if-ltz v5, :cond_4

    .line 2724
    const/4 v1, 0x0

    .line 2727
    :cond_4
    :goto_0
    if-ne v5, p1, :cond_5

    .line 2732
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pkgUid":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2733
    nop

    .line 2735
    return v1

    .line 2728
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "pkgUid":I
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Specified package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " under uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " but it is really "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isPrivileged":Z
    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2732
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pkgUid":I
    .restart local v1    # "isPrivileged":Z
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2703
    .end local v1    # "isPrivileged":Z
    .end local v2    # "ident":J
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

    .line 2581
    if-ltz p1, :cond_0

    const/16 v0, 0x5b

    if-ge p1, v0, :cond_0

    .line 2582
    return-void

    .line 2586
    :cond_0
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    const/16 v0, 0x3f3

    if-ge p1, v0, :cond_1

    .line 2587
    return-void

    .line 2590
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

    .line 2570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2571
    return-void

    .line 2573
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2574
    return-void

    .line 2576
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2577
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 2576
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2578
    return-void
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 3
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 4572
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "addHistoricalOps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4575
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/HistoricalRegistry;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 4576
    return-void
.end method

.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1926
    monitor-enter p0

    .line 1927
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 1928
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    if-nez v0, :cond_0

    .line 1930
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result v1

    return v1

    .line 1932
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

    .line 1928
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

    .line 1853
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

    .line 1848
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->checkOperationInternal(IILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2019
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2023
    const/4 v0, 0x0

    return v0

    .line 2024
    :catch_0
    move-exception v0

    .line 2025
    .local v0, "ignored":Ljava/lang/SecurityException;
    const/4 v1, 0x2

    return v1
.end method

.method public clearHistory()V
    .locals 3

    .line 4588
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "clearHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4591
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory()V

    .line 4592
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 36
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3874
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "AppOps"

    invoke-static {v0, v1, v10}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3876
    :cond_0
    const/4 v0, -0x1

    .line 3877
    .local v0, "dumpOp":I
    const/4 v1, 0x0

    .line 3878
    .local v1, "dumpPackage":Ljava/lang/String;
    const/4 v2, -0x1

    .line 3879
    .local v2, "dumpUid":I
    const/4 v3, -0x1

    .line 3880
    .local v3, "dumpMode":I
    const/4 v4, 0x0

    .line 3881
    .local v4, "dumpWatchers":Z
    const/4 v12, 0x0

    .line 3883
    .local v12, "dumpHistory":Z
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v11, :cond_f

    .line 3884
    const/4 v5, 0x0

    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .end local v0    # "dumpOp":I
    .local v2, "dumpOp":I
    .local v3, "dumpUid":I
    .local v4, "dumpMode":I
    .local v5, "i":I
    .local v6, "dumpWatchers":Z
    :goto_0
    array-length v0, v11

    if-ge v5, v0, :cond_e

    .line 3885
    aget-object v7, v11, v5

    .line 3886
    .local v7, "arg":Ljava/lang/String;
    const-string v0, "-h"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3887
    invoke-direct {v9, v10}, Lcom/android/server/appop/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3888
    return-void

    .line 3889
    :cond_1
    const-string v0, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 3891
    :cond_2
    const-string v0, "--op"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3892
    add-int/lit8 v5, v5, 0x1

    .line 3893
    array-length v0, v11

    if-lt v5, v0, :cond_3

    .line 3894
    const-string v0, "No argument for --op option"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3895
    return-void

    .line 3897
    :cond_3
    aget-object v0, v11, v5

    invoke-static {v0, v10}, Lcom/android/server/appop/AppOpsService$Shell;->access$1100(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    .line 3898
    .end local v2    # "dumpOp":I
    .restart local v0    # "dumpOp":I
    if-gez v0, :cond_4

    .line 3899
    return-void

    .line 3898
    :cond_4
    move v2, v0

    goto :goto_2

    .line 3901
    .end local v0    # "dumpOp":I
    .restart local v2    # "dumpOp":I
    :cond_5
    const-string v0, "--package"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3902
    add-int/lit8 v5, v5, 0x1

    .line 3903
    array-length v0, v11

    if-lt v5, v0, :cond_6

    .line 3904
    const-string v0, "No argument for --package option"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3905
    return-void

    .line 3907
    :cond_6
    aget-object v1, v11, v5

    .line 3909
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v8, 0xc02000

    invoke-interface {v0, v1, v8, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 3913
    goto :goto_1

    .line 3912
    :catch_0
    move-exception v0

    .line 3914
    :goto_1
    if-gez v3, :cond_7

    .line 3915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3916
    return-void

    .line 3918
    :cond_7
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    move v3, v0

    .end local v3    # "dumpUid":I
    .local v0, "dumpUid":I
    goto :goto_2

    .line 3919
    .end local v0    # "dumpUid":I
    .restart local v3    # "dumpUid":I
    :cond_8
    const-string v0, "--mode"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3920
    add-int/lit8 v5, v5, 0x1

    .line 3921
    array-length v0, v11

    if-lt v5, v0, :cond_9

    .line 3922
    const-string v0, "No argument for --mode option"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3923
    return-void

    .line 3925
    :cond_9
    aget-object v0, v11, v5

    invoke-static {v0, v10}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    .line 3926
    .end local v4    # "dumpMode":I
    .local v0, "dumpMode":I
    if-gez v0, :cond_a

    .line 3927
    return-void

    .line 3926
    :cond_a
    move v4, v0

    goto :goto_2

    .line 3929
    .end local v0    # "dumpMode":I
    .restart local v4    # "dumpMode":I
    :cond_b
    const-string v0, "--watchers"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3930
    const/4 v6, 0x1

    .line 3884
    .end local v7    # "arg":Ljava/lang/String;
    :goto_2
    add-int/2addr v5, v14

    goto/16 :goto_0

    .line 3931
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_d

    .line 3932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown option: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3933
    return-void

    .line 3935
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown command: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3936
    return-void

    .line 3884
    .end local v7    # "arg":Ljava/lang/String;
    :cond_e
    move v8, v2

    move v15, v6

    move-object v2, v1

    move v1, v3

    move v3, v4

    goto :goto_3

    .line 3883
    .end local v5    # "i":I
    .end local v6    # "dumpWatchers":Z
    .local v0, "dumpOp":I
    .local v2, "dumpUid":I
    .local v3, "dumpMode":I
    .local v4, "dumpWatchers":Z
    :cond_f
    move v8, v0

    move v15, v4

    move/from16 v34, v2

    move-object v2, v1

    move/from16 v1, v34

    .line 3941
    .end local v0    # "dumpOp":I
    .end local v4    # "dumpWatchers":Z
    .local v1, "dumpUid":I
    .local v2, "dumpPackage":Ljava/lang/String;
    .local v8, "dumpOp":I
    .local v15, "dumpWatchers":Z
    :goto_3
    monitor-enter p0

    .line 3942
    :try_start_1
    const-string v0, "Current AppOps Service state:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 3943
    if-nez v12, :cond_10

    if-nez v15, :cond_10

    .line 3944
    :try_start_2
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-virtual {v0, v10}, Lcom/android/server/appop/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 4417
    :catchall_0
    move-exception v0

    move/from16 v22, v1

    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v28, v15

    move v12, v8

    goto/16 :goto_53

    .line 3946
    :cond_10
    :goto_4
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3948
    .local v4, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3949
    .local v6, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 3950
    .local v16, "nowUptime":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v18, v6

    .end local v6    # "nowElapsed":J
    .local v18, "nowElapsed":J
    move-object v6, v0

    .line 3951
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 3952
    .local v7, "date":Ljava/util/Date;
    const/4 v0, 0x0

    .line 3953
    .local v0, "needSep":Z
    if-gez v8, :cond_12

    if-gez v3, :cond_12

    if-nez v2, :cond_12

    :try_start_4
    iget-object v14, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v14, :cond_12

    if-nez v15, :cond_12

    if-nez v12, :cond_12

    .line 3955
    const-string v14, "  Profile owners:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3956
    move v14, v13

    .local v14, "poi":I
    :goto_5
    iget-object v13, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-ge v14, v13, :cond_11

    .line 3957
    const-string v13, "    User #"

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3958
    iget-object v13, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 3959
    const-string v13, ": "

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3960
    iget-object v13, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    invoke-static {v10, v13}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3961
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3956
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_5

    .line 3963
    .end local v14    # "poi":I
    :cond_11
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3965
    :cond_12
    :try_start_5
    iget-object v13, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-lez v13, :cond_19

    if-nez v12, :cond_19

    .line 3966
    const/4 v13, 0x0

    .line 3967
    .local v13, "printedHeader":Z
    const/4 v14, 0x0

    move/from16 v21, v14

    move v14, v0

    move/from16 v0, v21

    .local v0, "i":I
    .local v14, "needSep":Z
    :goto_6
    :try_start_6
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v0, v11, :cond_1a

    .line 3968
    if-ltz v8, :cond_13

    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    if-eq v8, v11, :cond_13

    .line 3969
    goto/16 :goto_a

    .line 3971
    :cond_13
    const/4 v11, 0x0

    .line 3972
    .local v11, "printedOpHeader":Z
    move/from16 v21, v11

    .end local v11    # "printedOpHeader":Z
    .local v21, "printedOpHeader":Z
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 3973
    .local v11, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/16 v20, 0x0

    move/from16 v22, v20

    move/from16 v34, v22

    move/from16 v22, v13

    move/from16 v13, v34

    .local v13, "j":I
    .local v22, "printedHeader":Z
    :goto_7
    move/from16 v23, v14

    .end local v14    # "needSep":Z
    .local v23, "needSep":Z
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-ge v13, v14, :cond_18

    .line 3974
    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 3975
    .local v14, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v2, :cond_14

    move-object/from16 v24, v11

    .end local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v24, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    iget v11, v14, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3976
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v1, v11, :cond_15

    .line 3977
    move/from16 v14, v23

    goto :goto_9

    .line 3975
    .end local v24    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_14
    move-object/from16 v24, v11

    .line 3979
    .end local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v24    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_15
    const/4 v11, 0x1

    .line 3980
    .end local v23    # "needSep":Z
    .local v11, "needSep":Z
    if-nez v22, :cond_16

    .line 3981
    move/from16 v23, v11

    .end local v11    # "needSep":Z
    .restart local v23    # "needSep":Z
    const-string v11, "  Op mode watchers:"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3982
    const/16 v22, 0x1

    goto :goto_8

    .line 3980
    .end local v23    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_16
    move/from16 v23, v11

    .line 3984
    .end local v11    # "needSep":Z
    .restart local v23    # "needSep":Z
    :goto_8
    if-nez v21, :cond_17

    .line 3985
    const-string v11, "    Op "

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3986
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3987
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3988
    const/16 v21, 0x1

    .line 3990
    :cond_17
    const-string v11, "      #"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3991
    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v14, v23

    .line 3973
    .end local v23    # "needSep":Z
    .local v14, "needSep":Z
    :goto_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v24

    goto :goto_7

    .end local v14    # "needSep":Z
    .end local v24    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v11, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v23    # "needSep":Z
    :cond_18
    move-object/from16 v24, v11

    .end local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v24    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    move/from16 v13, v22

    move/from16 v14, v23

    .line 3967
    .end local v21    # "printedOpHeader":Z
    .end local v22    # "printedHeader":Z
    .end local v23    # "needSep":Z
    .end local v24    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v13, "printedHeader":Z
    .restart local v14    # "needSep":Z
    :goto_a
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, p3

    goto/16 :goto_6

    .line 3995
    .end local v13    # "printedHeader":Z
    .end local v14    # "needSep":Z
    .local v0, "needSep":Z
    :cond_19
    move v14, v0

    .end local v0    # "needSep":Z
    .restart local v14    # "needSep":Z
    :cond_1a
    :try_start_7
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-lez v0, :cond_1e

    if-gez v8, :cond_1e

    if-nez v12, :cond_1e

    .line 3996
    const/4 v0, 0x0

    .line 3997
    .local v0, "printedHeader":Z
    const/4 v11, 0x0

    move v13, v11

    .local v13, "i":I
    :goto_b
    :try_start_8
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v13, v11, :cond_1e

    .line 3998
    if-eqz v2, :cond_1b

    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b

    .line 3999
    goto :goto_d

    .line 4001
    :cond_1b
    const/4 v14, 0x1

    .line 4002
    if-nez v0, :cond_1c

    .line 4003
    const-string v11, "  Package mode watchers:"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4004
    const/4 v0, 0x1

    .line 4006
    :cond_1c
    const-string v11, "    Pkg "

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4007
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4008
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 4009
    .restart local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/16 v20, 0x0

    move/from16 v21, v20

    move/from16 v22, v0

    move/from16 v0, v21

    .local v0, "j":I
    .restart local v22    # "printedHeader":Z
    :goto_c
    move/from16 v21, v14

    .end local v14    # "needSep":Z
    .local v21, "needSep":Z
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-ge v0, v14, :cond_1d

    .line 4010
    const-string v14, "      #"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v14, ": "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4011
    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4009
    add-int/lit8 v0, v0, 0x1

    move/from16 v14, v21

    goto :goto_c

    :cond_1d
    move/from16 v14, v21

    move/from16 v0, v22

    .line 3997
    .end local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v21    # "needSep":Z
    .end local v22    # "printedHeader":Z
    .local v0, "printedHeader":Z
    .restart local v14    # "needSep":Z
    :goto_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 4015
    .end local v0    # "printedHeader":Z
    .end local v13    # "i":I
    :cond_1e
    :try_start_9
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-lez v0, :cond_23

    if-gez v8, :cond_23

    if-nez v12, :cond_23

    .line 4016
    const/4 v0, 0x0

    .line 4017
    .restart local v0    # "printedHeader":Z
    const/4 v11, 0x0

    move v13, v11

    .restart local v13    # "i":I
    :goto_e
    :try_start_a
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v13, v11, :cond_22

    .line 4018
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 4019
    .local v11, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v2, :cond_1f

    move/from16 v21, v14

    .end local v14    # "needSep":Z
    .restart local v21    # "needSep":Z
    iget v14, v11, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 4020
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-eq v1, v14, :cond_20

    .line 4021
    move/from16 v14, v21

    goto :goto_10

    .line 4019
    .end local v21    # "needSep":Z
    .restart local v14    # "needSep":Z
    :cond_1f
    move/from16 v21, v14

    .line 4023
    .end local v14    # "needSep":Z
    .restart local v21    # "needSep":Z
    :cond_20
    const/4 v14, 0x1

    .line 4024
    .end local v21    # "needSep":Z
    .restart local v14    # "needSep":Z
    if-nez v0, :cond_21

    .line 4025
    move/from16 v22, v0

    .end local v0    # "printedHeader":Z
    .restart local v22    # "printedHeader":Z
    const-string v0, "  All op mode watchers:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4026
    const/4 v0, 0x1

    .end local v22    # "printedHeader":Z
    .restart local v0    # "printedHeader":Z
    goto :goto_f

    .line 4024
    :cond_21
    move/from16 v22, v0

    .line 4028
    :goto_f
    move/from16 v21, v0

    .end local v0    # "printedHeader":Z
    .local v21, "printedHeader":Z
    const-string v0, "    "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4029
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4030
    const-string v0, ": "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move/from16 v0, v21

    .line 4017
    .end local v11    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v21    # "printedHeader":Z
    .restart local v0    # "printedHeader":Z
    :goto_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_22
    move/from16 v22, v0

    move/from16 v21, v14

    .line 4033
    .end local v0    # "printedHeader":Z
    .end local v13    # "i":I
    :cond_23
    :try_start_b
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-lez v0, :cond_2d

    if-gez v3, :cond_2d

    .line 4034
    const/4 v14, 0x1

    .line 4035
    const/4 v0, 0x0

    .line 4036
    .restart local v0    # "printedHeader":Z
    const/16 v20, 0x0

    move/from16 v21, v20

    move/from16 v34, v21

    move/from16 v21, v0

    move/from16 v0, v34

    .local v0, "watcherNum":I
    .restart local v21    # "printedHeader":Z
    :goto_11
    :try_start_c
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v0, v11, :cond_2c

    .line 4037
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 4038
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 4039
    .local v11, "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v23

    if-gtz v23, :cond_24

    .line 4040
    move/from16 v24, v14

    goto :goto_12

    .line 4042
    :cond_24
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    move-object/from16 v13, v24

    .line 4043
    .local v13, "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    if-ltz v8, :cond_25

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v24

    if-gez v24, :cond_25

    .line 4044
    move/from16 v24, v14

    goto :goto_12

    .line 4046
    :cond_25
    if-eqz v2, :cond_26

    move/from16 v24, v14

    .end local v14    # "needSep":Z
    .local v24, "needSep":Z
    iget v14, v13, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 4047
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-eq v1, v14, :cond_27

    .line 4048
    nop

    .line 4036
    .end local v11    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v13    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v24    # "needSep":Z
    .restart local v14    # "needSep":Z
    :goto_12
    move-wide/from16 v26, v4

    .end local v14    # "needSep":Z
    .restart local v24    # "needSep":Z
    goto :goto_14

    .line 4046
    .end local v24    # "needSep":Z
    .restart local v11    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .restart local v13    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .restart local v14    # "needSep":Z
    :cond_26
    move/from16 v24, v14

    .line 4050
    .end local v14    # "needSep":Z
    .restart local v24    # "needSep":Z
    :cond_27
    if-nez v21, :cond_28

    .line 4051
    const-string v14, "  All op active watchers:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4052
    const/16 v21, 0x1

    .line 4054
    :cond_28
    const-string v14, "    "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4055
    iget-object v14, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 4056
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    .line 4055
    invoke-static {v14}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4057
    const-string v14, " ->"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4058
    const-string v14, "        ["

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4059
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 4060
    .local v14, "opCount":I
    const/16 v25, 0x0

    move-wide/from16 v26, v4

    move/from16 v4, v25

    .local v4, "opNum":I
    .local v26, "now":J
    :goto_13
    if-ge v4, v14, :cond_2b

    .line 4061
    if-lez v4, :cond_29

    .line 4062
    const/16 v5, 0x20

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 4064
    :cond_29
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4065
    add-int/lit8 v5, v14, -0x1

    if-ge v4, v5, :cond_2a

    .line 4066
    const/16 v5, 0x2c

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 4060
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 4069
    .end local v4    # "opNum":I
    :cond_2b
    const-string v4, "]"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4070
    const-string v4, "        "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4071
    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 4036
    .end local v11    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v13    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v14    # "opCount":I
    :goto_14
    add-int/lit8 v0, v0, 0x1

    move/from16 v14, v24

    move-wide/from16 v4, v26

    goto/16 :goto_11

    .end local v24    # "needSep":Z
    .end local v26    # "now":J
    .local v4, "now":J
    .local v14, "needSep":Z
    :cond_2c
    move-wide/from16 v26, v4

    move/from16 v24, v14

    .end local v4    # "now":J
    .end local v14    # "needSep":Z
    .restart local v24    # "needSep":Z
    .restart local v26    # "now":J
    goto :goto_15

    .line 4033
    .end local v0    # "watcherNum":I
    .end local v21    # "printedHeader":Z
    .end local v24    # "needSep":Z
    .end local v26    # "now":J
    .restart local v4    # "now":J
    .restart local v14    # "needSep":Z
    :cond_2d
    move-wide/from16 v26, v4

    .line 4074
    .end local v4    # "now":J
    .restart local v26    # "now":J
    :goto_15
    :try_start_d
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-lez v0, :cond_35

    if-gez v3, :cond_35

    .line 4075
    const/4 v14, 0x1

    .line 4076
    const/4 v0, 0x0

    .line 4077
    .local v0, "printedHeader":Z
    const/4 v4, 0x0

    move v5, v4

    .restart local v5    # "i":I
    :goto_16
    :try_start_e
    iget-object v4, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v5, v4, :cond_35

    .line 4078
    iget-object v4, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4079
    .local v4, "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-gtz v11, :cond_2e

    .line 4080
    goto/16 :goto_1a

    .line 4082
    :cond_2e
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/AppOpsService$NotedCallback;

    move-object v11, v13

    .line 4083
    .local v11, "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    if-ltz v8, :cond_2f

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v13

    if-gez v13, :cond_2f

    .line 4084
    goto/16 :goto_1a

    .line 4086
    :cond_2f
    if-eqz v2, :cond_30

    iget v13, v11, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 4087
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v1, v13, :cond_30

    .line 4088
    goto :goto_1a

    .line 4090
    :cond_30
    if-nez v0, :cond_31

    .line 4091
    const-string v13, "  All op noted watchers:"

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4092
    const/4 v0, 0x1

    .line 4094
    :cond_31
    const-string v13, "    "

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4095
    iget-object v13, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 4096
    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    .line 4095
    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4097
    const-string v13, " ->"

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4098
    const-string v13, "        ["

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4099
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 4100
    .local v13, "opCount":I
    const/4 v5, 0x0

    :goto_17
    if-ge v5, v13, :cond_34

    .line 4101
    if-lez v5, :cond_32

    .line 4102
    move/from16 v21, v0

    const/16 v0, 0x20

    .end local v0    # "printedHeader":Z
    .restart local v21    # "printedHeader":Z
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_18

    .line 4101
    .end local v21    # "printedHeader":Z
    .restart local v0    # "printedHeader":Z
    :cond_32
    move/from16 v21, v0

    const/16 v0, 0x20

    .line 4104
    .end local v0    # "printedHeader":Z
    .restart local v21    # "printedHeader":Z
    :goto_18
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4105
    add-int/lit8 v0, v13, -0x1

    if-ge v5, v0, :cond_33

    .line 4106
    const/16 v0, 0x2c

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_19

    .line 4105
    :cond_33
    const/16 v0, 0x2c

    .line 4100
    :goto_19
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v21

    goto :goto_17

    .line 4109
    .end local v21    # "printedHeader":Z
    .restart local v0    # "printedHeader":Z
    :cond_34
    move/from16 v21, v0

    const/16 v0, 0x2c

    .end local v0    # "printedHeader":Z
    .restart local v21    # "printedHeader":Z
    const-string v0, "]"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4110
    const-string v0, "        "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4111
    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move/from16 v0, v21

    .line 4077
    .end local v4    # "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v11    # "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    .end local v13    # "opCount":I
    .end local v21    # "printedHeader":Z
    .restart local v0    # "printedHeader":Z
    :goto_1a
    const/4 v4, 0x1

    add-int/2addr v5, v4

    goto/16 :goto_16

    .line 4114
    .end local v0    # "printedHeader":Z
    .end local v5    # "i":I
    :cond_35
    :try_start_f
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-lez v0, :cond_3f

    if-gez v3, :cond_3f

    if-nez v15, :cond_3f

    if-nez v12, :cond_3f

    .line 4115
    const/4 v14, 0x1

    .line 4116
    const/4 v0, 0x0

    .line 4117
    .restart local v0    # "printedHeader":Z
    const/4 v4, 0x0

    move v5, v4

    .restart local v5    # "i":I
    :goto_1b
    :try_start_10
    iget-object v4, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v5, v4, :cond_3e

    .line 4118
    const/4 v4, 0x0

    .line 4119
    .local v4, "printedClient":Z
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 4120
    .local v11, "cs":Lcom/android/server/appop/AppOpsService$ClientState;
    iget-object v13, v11, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-lez v13, :cond_3d

    .line 4121
    const/4 v13, 0x0

    .line 4122
    .local v13, "printedStarted":Z
    const/16 v20, 0x0

    move/from16 v21, v20

    move/from16 v34, v21

    move/from16 v21, v0

    move/from16 v0, v34

    .local v0, "j":I
    .restart local v21    # "printedHeader":Z
    :goto_1c
    move/from16 v22, v1

    .end local v1    # "dumpUid":I
    .local v22, "dumpUid":I
    :try_start_11
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 4123
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    .line 4124
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-ltz v8, :cond_36

    move/from16 v23, v14

    .end local v14    # "needSep":Z
    .restart local v23    # "needSep":Z
    iget v14, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    if-eq v14, v8, :cond_37

    .line 4125
    goto :goto_1d

    .line 4124
    .end local v23    # "needSep":Z
    .restart local v14    # "needSep":Z
    :cond_36
    move/from16 v23, v14

    .line 4127
    .end local v14    # "needSep":Z
    .restart local v23    # "needSep":Z
    :cond_37
    if-eqz v2, :cond_38

    iget-object v14, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_38

    .line 4128
    goto :goto_1d

    .line 4130
    :cond_38
    if-nez v21, :cond_39

    .line 4131
    const-string v14, "  Clients:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4132
    const/16 v21, 0x1

    .line 4134
    :cond_39
    if-nez v4, :cond_3a

    .line 4135
    const-string v14, "    "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    const-string v14, "      "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4137
    const/4 v4, 0x1

    .line 4139
    :cond_3a
    if-nez v13, :cond_3b

    .line 4140
    const-string v14, "      Started ops:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4141
    const/4 v13, 0x1

    .line 4143
    :cond_3b
    const-string v14, "        "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v14, "uid="

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 4144
    const-string v14, " pkg="

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4145
    const-string v14, " op="

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 4122
    .end local v1    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v22

    move/from16 v14, v23

    goto/16 :goto_1c

    .end local v23    # "needSep":Z
    .restart local v14    # "needSep":Z
    :cond_3c
    move/from16 v23, v14

    .end local v14    # "needSep":Z
    .restart local v23    # "needSep":Z
    move/from16 v0, v21

    goto :goto_1e

    .line 4120
    .end local v13    # "printedStarted":Z
    .end local v21    # "printedHeader":Z
    .end local v22    # "dumpUid":I
    .end local v23    # "needSep":Z
    .local v0, "printedHeader":Z
    .local v1, "dumpUid":I
    .restart local v14    # "needSep":Z
    :cond_3d
    move/from16 v22, v1

    move/from16 v23, v14

    .line 4117
    .end local v1    # "dumpUid":I
    .end local v4    # "printedClient":Z
    .end local v11    # "cs":Lcom/android/server/appop/AppOpsService$ClientState;
    .end local v14    # "needSep":Z
    .restart local v22    # "dumpUid":I
    .restart local v23    # "needSep":Z
    :goto_1e
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v22

    move/from16 v14, v23

    goto/16 :goto_1b

    .end local v22    # "dumpUid":I
    .end local v23    # "needSep":Z
    .restart local v1    # "dumpUid":I
    .restart local v14    # "needSep":Z
    :cond_3e
    move/from16 v22, v1

    move/from16 v23, v14

    .end local v1    # "dumpUid":I
    .end local v14    # "needSep":Z
    .restart local v22    # "dumpUid":I
    .restart local v23    # "needSep":Z
    goto :goto_1f

    .line 4417
    .end local v0    # "printedHeader":Z
    .end local v5    # "i":I
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "date":Ljava/util/Date;
    .end local v16    # "nowUptime":J
    .end local v18    # "nowElapsed":J
    .end local v22    # "dumpUid":I
    .end local v23    # "needSep":Z
    .end local v26    # "now":J
    .restart local v1    # "dumpUid":I
    :catchall_1
    move-exception v0

    move/from16 v22, v1

    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v28, v15

    move v12, v8

    .end local v1    # "dumpUid":I
    .restart local v22    # "dumpUid":I
    goto/16 :goto_53

    .line 4114
    .end local v22    # "dumpUid":I
    .restart local v1    # "dumpUid":I
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7    # "date":Ljava/util/Date;
    .restart local v14    # "needSep":Z
    .restart local v16    # "nowUptime":J
    .restart local v18    # "nowElapsed":J
    .restart local v26    # "now":J
    :cond_3f
    move/from16 v22, v1

    .line 4150
    .end local v1    # "dumpUid":I
    .restart local v22    # "dumpUid":I
    :goto_1f
    :try_start_12
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-lez v0, :cond_44

    if-gez v8, :cond_44

    if-eqz v2, :cond_44

    if-gez v3, :cond_44

    if-nez v15, :cond_44

    if-nez v15, :cond_44

    .line 4152
    const/4 v0, 0x0

    .line 4153
    .restart local v0    # "printedHeader":Z
    const/4 v1, 0x0

    move v4, v1

    .local v4, "o":I
    :goto_20
    :try_start_13
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_44

    .line 4154
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    .line 4155
    .local v1, "op":Ljava/lang/String;
    iget-object v5, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 4156
    .local v5, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    const/4 v11, 0x0

    move v13, v11

    .local v13, "i":I
    :goto_21
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v13, v11, :cond_43

    .line 4157
    if-nez v0, :cond_40

    .line 4158
    const-string v11, "  Audio Restrictions:"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4159
    const/4 v0, 0x1

    .line 4160
    const/4 v11, 0x1

    move v14, v11

    .line 4162
    :cond_40
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 4163
    .local v11, "usage":I
    move/from16 v21, v0

    .end local v0    # "printedHeader":Z
    .restart local v21    # "printedHeader":Z
    const-string v0, "    "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4164
    const-string v0, " usage="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4165
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Restriction;

    .line 4166
    .local v0, "r":Lcom/android/server/appop/AppOpsService$Restriction;
    move-object/from16 v23, v1

    .end local v1    # "op":Ljava/lang/String;
    .local v23, "op":Ljava/lang/String;
    const-string v1, ": mode="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/appop/AppOpsService$Restriction;->mode:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4167
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 4168
    const-string v1, "      Exceptions:"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4169
    const/4 v1, 0x0

    move/from16 v24, v1

    .local v1, "j":I
    :goto_22
    move-object/from16 v24, v5

    .end local v5    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .local v24, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_42

    .line 4170
    const-string v5, "        "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4169
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v24

    goto :goto_22

    .line 4167
    .end local v1    # "j":I
    .end local v24    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .restart local v5    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    :cond_41
    move-object/from16 v24, v5

    .line 4156
    .end local v0    # "r":Lcom/android/server/appop/AppOpsService$Restriction;
    .end local v5    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .end local v11    # "usage":I
    .restart local v24    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    :cond_42
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v5, v24

    goto :goto_21

    .end local v21    # "printedHeader":Z
    .end local v23    # "op":Ljava/lang/String;
    .end local v24    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .local v0, "printedHeader":Z
    .local v1, "op":Ljava/lang/String;
    .restart local v5    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    :cond_43
    move-object/from16 v23, v1

    move-object/from16 v24, v5

    .line 4153
    .end local v1    # "op":Ljava/lang/String;
    .end local v5    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .end local v13    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_20

    .line 4176
    .end local v0    # "printedHeader":Z
    .end local v4    # "o":I
    :cond_44
    if-eqz v14, :cond_45

    .line 4177
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_23

    .line 4417
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "date":Ljava/util/Date;
    .end local v14    # "needSep":Z
    .end local v16    # "nowUptime":J
    .end local v18    # "nowElapsed":J
    .end local v26    # "now":J
    :catchall_2
    move-exception v0

    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v28, v15

    move v12, v8

    goto/16 :goto_53

    .line 4179
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7    # "date":Ljava/util/Date;
    .restart local v14    # "needSep":Z
    .restart local v16    # "nowUptime":J
    .restart local v18    # "nowElapsed":J
    .restart local v26    # "now":J
    :cond_45
    :goto_23
    const/4 v1, 0x0

    move v0, v1

    .local v0, "i":I
    :goto_24
    :try_start_14
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_79

    .line 4180
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    move-object v11, v1

    .line 4181
    .local v11, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object v13, v1

    .line 4182
    .local v13, "opModes":Landroid/util/SparseIntArray;
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    move-object v4, v1

    .line 4184
    .local v4, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v15, :cond_78

    if-eqz v12, :cond_46

    .line 4185
    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v29, v14

    move/from16 v28, v15

    move-wide/from16 v4, v26

    move v12, v8

    move-wide/from16 v26, v18

    const/16 v18, 0x0

    goto/16 :goto_41

    .line 4187
    :cond_46
    if-gez v8, :cond_48

    if-nez v2, :cond_48

    if-ltz v3, :cond_47

    goto :goto_25

    :cond_47
    move/from16 v25, v12

    move/from16 v29, v14

    move/from16 v28, v15

    goto/16 :goto_32

    .line 4188
    :cond_48
    :goto_25
    if-ltz v8, :cond_4a

    :try_start_15
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_49

    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4189
    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_49

    goto :goto_26

    :cond_49
    const/4 v1, 0x0

    goto :goto_27

    :cond_4a
    :goto_26
    const/4 v1, 0x1

    .line 4190
    .local v1, "hasOp":Z
    :goto_27
    if-nez v2, :cond_4b

    const/4 v5, 0x1

    goto :goto_28

    :cond_4b
    const/4 v5, 0x0

    .line 4191
    .local v5, "hasPackage":Z
    :goto_28
    if-gez v3, :cond_4c

    const/16 v21, 0x1

    goto :goto_29

    :cond_4c
    const/16 v21, 0x0

    .line 4192
    .local v21, "hasMode":Z
    :goto_29
    if-nez v21, :cond_4f

    if-eqz v13, :cond_4f

    .line 4193
    const/16 v23, 0x0

    move/from16 v34, v23

    move/from16 v23, v1

    move/from16 v1, v34

    .local v1, "opi":I
    .local v23, "hasOp":Z
    :goto_2a
    if-nez v21, :cond_4e

    move/from16 v24, v5

    .end local v5    # "hasPackage":Z
    .local v24, "hasPackage":Z
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_50

    .line 4194
    invoke-virtual {v13, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-ne v5, v3, :cond_4d

    .line 4195
    const/16 v21, 0x1

    .line 4193
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v24

    goto :goto_2a

    .end local v24    # "hasPackage":Z
    .restart local v5    # "hasPackage":Z
    :cond_4e
    move/from16 v24, v5

    .end local v5    # "hasPackage":Z
    .restart local v24    # "hasPackage":Z
    goto :goto_2b

    .line 4192
    .end local v23    # "hasOp":Z
    .end local v24    # "hasPackage":Z
    .local v1, "hasOp":Z
    .restart local v5    # "hasPackage":Z
    :cond_4f
    move/from16 v23, v1

    move/from16 v24, v5

    .line 4199
    .end local v1    # "hasOp":Z
    .end local v5    # "hasPackage":Z
    .restart local v23    # "hasOp":Z
    .restart local v24    # "hasPackage":Z
    :cond_50
    :goto_2b
    if-eqz v4, :cond_5a

    .line 4200
    const/4 v1, 0x0

    move/from16 v25, v12

    move/from16 v5, v24

    move v12, v1

    move/from16 v1, v23

    .line 4201
    .end local v23    # "hasOp":Z
    .end local v24    # "hasPackage":Z
    .restart local v1    # "hasOp":Z
    .restart local v5    # "hasPackage":Z
    .local v12, "pkgi":I
    .local v25, "dumpHistory":Z
    :goto_2c
    if-eqz v1, :cond_52

    if-eqz v5, :cond_52

    if-nez v21, :cond_51

    goto :goto_2d

    :cond_51
    move/from16 v29, v14

    move/from16 v28, v15

    goto :goto_30

    :cond_52
    :goto_2d
    move/from16 v28, v15

    .end local v15    # "dumpWatchers":Z
    .local v28, "dumpWatchers":Z
    :try_start_16
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v12, v15, :cond_59

    .line 4203
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4204
    .local v15, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v1, :cond_53

    if-eqz v15, :cond_53

    invoke-virtual {v15, v8}, Lcom/android/server/appop/AppOpsService$Ops;->indexOfKey(I)I

    move-result v23

    if-ltz v23, :cond_53

    .line 4205
    const/4 v1, 0x1

    .line 4207
    :cond_53
    if-nez v21, :cond_56

    .line 4208
    const/16 v23, 0x0

    move/from16 v34, v23

    move/from16 v23, v1

    move/from16 v1, v34

    .local v1, "opi":I
    .restart local v23    # "hasOp":Z
    :goto_2e
    if-nez v21, :cond_55

    move/from16 v29, v14

    .end local v14    # "needSep":Z
    .local v29, "needSep":Z
    invoke-virtual {v15}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v14

    if-ge v1, v14, :cond_57

    .line 4209
    invoke-virtual {v15, v1}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/AppOpsService$Op;

    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v14

    if-ne v14, v3, :cond_54

    .line 4210
    const/16 v21, 0x1

    .line 4208
    :cond_54
    add-int/lit8 v1, v1, 0x1

    move/from16 v14, v29

    goto :goto_2e

    .end local v29    # "needSep":Z
    .restart local v14    # "needSep":Z
    :cond_55
    move/from16 v29, v14

    .end local v14    # "needSep":Z
    .restart local v29    # "needSep":Z
    goto :goto_2f

    .line 4207
    .end local v23    # "hasOp":Z
    .end local v29    # "needSep":Z
    .local v1, "hasOp":Z
    .restart local v14    # "needSep":Z
    :cond_56
    move/from16 v23, v1

    move/from16 v29, v14

    .line 4214
    .end local v1    # "hasOp":Z
    .end local v14    # "needSep":Z
    .restart local v23    # "hasOp":Z
    .restart local v29    # "needSep":Z
    :cond_57
    :goto_2f
    if-nez v5, :cond_58

    iget-object v1, v15, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v1, :cond_58

    .line 4215
    const/4 v5, 0x1

    .line 4202
    .end local v15    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_58
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v23

    move/from16 v15, v28

    move/from16 v14, v29

    goto :goto_2c

    .line 4201
    .end local v23    # "hasOp":Z
    .end local v29    # "needSep":Z
    .restart local v1    # "hasOp":Z
    .restart local v14    # "needSep":Z
    :cond_59
    move/from16 v29, v14

    .line 4219
    .end local v12    # "pkgi":I
    .end local v14    # "needSep":Z
    .restart local v29    # "needSep":Z
    :goto_30
    move/from16 v24, v5

    goto :goto_31

    .line 4417
    .end local v0    # "i":I
    .end local v1    # "hasOp":Z
    .end local v4    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v5    # "hasPackage":Z
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "date":Ljava/util/Date;
    .end local v11    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v13    # "opModes":Landroid/util/SparseIntArray;
    .end local v16    # "nowUptime":J
    .end local v18    # "nowElapsed":J
    .end local v21    # "hasMode":Z
    .end local v26    # "now":J
    .end local v29    # "needSep":Z
    :catchall_3
    move-exception v0

    move-object v11, v2

    move/from16 v32, v3

    move v12, v8

    goto/16 :goto_53

    .line 4199
    .end local v25    # "dumpHistory":Z
    .end local v28    # "dumpWatchers":Z
    .restart local v0    # "i":I
    .restart local v4    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7    # "date":Ljava/util/Date;
    .restart local v11    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v12, "dumpHistory":Z
    .restart local v13    # "opModes":Landroid/util/SparseIntArray;
    .restart local v14    # "needSep":Z
    .local v15, "dumpWatchers":Z
    .restart local v16    # "nowUptime":J
    .restart local v18    # "nowElapsed":J
    .restart local v21    # "hasMode":Z
    .restart local v23    # "hasOp":Z
    .restart local v24    # "hasPackage":Z
    .restart local v26    # "now":J
    :cond_5a
    move/from16 v25, v12

    move/from16 v29, v14

    move/from16 v28, v15

    .end local v12    # "dumpHistory":Z
    .end local v14    # "needSep":Z
    .end local v15    # "dumpWatchers":Z
    .restart local v25    # "dumpHistory":Z
    .restart local v28    # "dumpWatchers":Z
    .restart local v29    # "needSep":Z
    move/from16 v1, v23

    .line 4219
    .end local v23    # "hasOp":Z
    .restart local v1    # "hasOp":Z
    :goto_31
    :try_start_17
    iget-object v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    if-eqz v5, :cond_5b

    if-nez v1, :cond_5b

    .line 4220
    :try_start_18
    iget-object v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-lez v5, :cond_5b

    .line 4221
    const/4 v1, 0x1

    .line 4224
    :cond_5b
    if-eqz v1, :cond_77

    if-eqz v24, :cond_77

    if-nez v21, :cond_5c

    .line 4225
    move-object v11, v2

    move/from16 v32, v3

    move v12, v8

    move-wide/from16 v4, v26

    move-wide/from16 v26, v18

    const/16 v18, 0x0

    goto/16 :goto_41

    .line 4229
    .end local v1    # "hasOp":Z
    .end local v21    # "hasMode":Z
    .end local v24    # "hasPackage":Z
    :cond_5c
    :goto_32
    :try_start_19
    const-string v1, "  Uid "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v10, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v1, ":"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4230
    const-string v1, "    state="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4231
    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4232
    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-eq v1, v5, :cond_5d

    .line 4233
    :try_start_1a
    const-string v1, "    pendingState="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4234
    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 4236
    :cond_5d
    :try_start_1b
    iget-wide v14, v11, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    const-wide/16 v23, 0x0

    cmp-long v1, v14, v23

    if-eqz v1, :cond_5e

    .line 4237
    :try_start_1c
    const-string v1, "    pendingStateCommitTime="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4238
    iget-wide v14, v11, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    move-object v12, v6

    move-wide/from16 v5, v18

    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v18    # "nowElapsed":J
    .local v5, "nowElapsed":J
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {v14, v15, v5, v6, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4239
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    goto :goto_33

    .line 4236
    .end local v5    # "nowElapsed":J
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v18    # "nowElapsed":J
    :cond_5e
    move-object v12, v6

    move-wide/from16 v5, v18

    .line 4241
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v18    # "nowElapsed":J
    .restart local v5    # "nowElapsed":J
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_33
    :try_start_1d
    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v1, :cond_5f

    .line 4242
    :try_start_1e
    const-string v1, "    startNesting="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4243
    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 4245
    :cond_5f
    :try_start_1f
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-eqz v1, :cond_64

    if-ltz v3, :cond_60

    const/4 v1, 0x4

    if-ne v3, v1, :cond_64

    .line 4247
    :cond_60
    :try_start_20
    const-string v1, "    foregroundOps:"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4248
    const/4 v1, 0x0

    move v14, v1

    .local v14, "j":I
    :goto_34
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v14, v1, :cond_63

    .line 4249
    if-ltz v8, :cond_61

    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-eq v8, v1, :cond_61

    .line 4250
    goto :goto_36

    .line 4252
    :cond_61
    const-string v1, "      "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4253
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4254
    const-string v1, ": "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4255
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_62

    const-string v1, "WATCHER"

    goto :goto_35

    :cond_62
    const-string v1, "SILENT"

    :goto_35
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4248
    :goto_36
    add-int/lit8 v14, v14, 0x1

    goto :goto_34

    .line 4257
    .end local v14    # "j":I
    :cond_63
    const-string v1, "    hasForegroundWatchers="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4258
    iget-boolean v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4260
    :cond_64
    const/4 v14, 0x1

    .line 4262
    .end local v29    # "needSep":Z
    .local v14, "needSep":Z
    if-eqz v13, :cond_6a

    .line 4263
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 4264
    .local v1, "opModeCount":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_37
    if-ge v15, v1, :cond_69

    .line 4265
    invoke-virtual {v13, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v18

    move/from16 v19, v18

    .line 4266
    .local v19, "code":I
    invoke-virtual {v13, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    move/from16 v21, v18

    .line 4267
    .local v21, "mode":I
    if-ltz v8, :cond_65

    move/from16 v18, v1

    move/from16 v1, v19

    .end local v19    # "code":I
    .local v1, "code":I
    .local v18, "opModeCount":I
    if-eq v8, v1, :cond_66

    .line 4268
    move-wide/from16 v23, v5

    goto :goto_38

    .line 4267
    .end local v18    # "opModeCount":I
    .local v1, "opModeCount":I
    .restart local v19    # "code":I
    :cond_65
    move/from16 v18, v1

    move/from16 v1, v19

    .line 4270
    .end local v19    # "code":I
    .local v1, "code":I
    .restart local v18    # "opModeCount":I
    :cond_66
    if-ltz v3, :cond_67

    move-wide/from16 v23, v5

    move/from16 v5, v21

    .end local v21    # "mode":I
    .local v5, "mode":I
    .local v23, "nowElapsed":J
    if-eq v3, v5, :cond_68

    .line 4271
    goto :goto_38

    .line 4270
    .end local v23    # "nowElapsed":J
    .local v5, "nowElapsed":J
    .restart local v21    # "mode":I
    :cond_67
    move-wide/from16 v23, v5

    move/from16 v5, v21

    .line 4273
    .end local v21    # "mode":I
    .local v5, "mode":I
    .restart local v23    # "nowElapsed":J
    :cond_68
    const-string v6, "      "

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4274
    const-string v6, ": mode="

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 4264
    .end local v1    # "code":I
    .end local v5    # "mode":I
    :goto_38
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v18

    move-wide/from16 v5, v23

    goto :goto_37

    .end local v18    # "opModeCount":I
    .end local v23    # "nowElapsed":J
    .local v1, "opModeCount":I
    .local v5, "nowElapsed":J
    :cond_69
    move/from16 v18, v1

    move-wide/from16 v23, v5

    .end local v1    # "opModeCount":I
    .end local v5    # "nowElapsed":J
    .restart local v18    # "opModeCount":I
    .restart local v23    # "nowElapsed":J
    goto :goto_39

    .line 4262
    .end local v15    # "j":I
    .end local v18    # "opModeCount":I
    .end local v23    # "nowElapsed":J
    .restart local v5    # "nowElapsed":J
    :cond_6a
    move-wide/from16 v23, v5

    .line 4278
    .end local v5    # "nowElapsed":J
    .restart local v23    # "nowElapsed":J
    :goto_39
    if-nez v4, :cond_6b

    .line 4279
    move-object v11, v2

    move/from16 v32, v3

    move-object v6, v12

    move-wide/from16 v4, v26

    const/16 v18, 0x0

    move v12, v8

    move-wide/from16 v26, v23

    goto/16 :goto_42

    .line 4282
    :cond_6b
    const/4 v1, 0x0

    move v5, v1

    move v15, v5

    .local v15, "pkgi":I
    :goto_3a
    :try_start_21
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v15, v1, :cond_76

    .line 4283
    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    move-object v5, v1

    .line 4284
    .local v5, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v2, :cond_6c

    :try_start_22
    iget-object v1, v5, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    if-nez v1, :cond_6c

    .line 4285
    move/from16 v32, v3

    move-object/from16 v20, v4

    move-object/from16 v31, v11

    move-object v6, v12

    move-wide/from16 v4, v26

    const/16 v18, 0x0

    move-object v11, v2

    move v12, v8

    move-wide/from16 v26, v23

    goto/16 :goto_40

    .line 4287
    :cond_6c
    const/4 v1, 0x0

    .line 4288
    .local v1, "printedPackage":Z
    const/16 v18, 0x0

    move/from16 v6, v18

    .local v6, "j":I
    :goto_3b
    move-object/from16 v19, v2

    .end local v2    # "dumpPackage":Ljava/lang/String;
    .local v19, "dumpPackage":Ljava/lang/String;
    :try_start_23
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v2

    if-ge v6, v2, :cond_75

    .line 4289
    invoke-virtual {v5, v6}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Op;

    .line 4290
    .local v2, "op":Lcom/android/server/appop/AppOpsService$Op;
    move-object/from16 v20, v4

    .end local v4    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v20, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    .line 4291
    .local v4, "opCode":I
    if-ltz v8, :cond_6d

    if-eq v8, v4, :cond_6d

    .line 4292
    move/from16 v21, v6

    goto :goto_3c

    .line 4294
    :cond_6d
    if-ltz v3, :cond_6e

    move/from16 v21, v6

    .end local v6    # "j":I
    .local v21, "j":I
    :try_start_24
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v6

    if-eq v3, v6, :cond_6f

    .line 4295
    nop

    .line 4288
    .end local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v4    # "opCode":I
    .end local v21    # "j":I
    .restart local v6    # "j":I
    :goto_3c
    move/from16 v32, v3

    move-object/from16 v31, v11

    move-object v6, v12

    move-object/from16 v11, v19

    move v12, v8

    move/from16 v34, v21

    move-object/from16 v21, v5

    move-wide/from16 v4, v26

    move-wide/from16 v26, v23

    move/from16 v23, v34

    .end local v6    # "j":I
    .restart local v21    # "j":I
    goto/16 :goto_3f

    .line 4417
    .end local v0    # "i":I
    .end local v1    # "printedPackage":Z
    .end local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v7    # "date":Ljava/util/Date;
    .end local v11    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v13    # "opModes":Landroid/util/SparseIntArray;
    .end local v14    # "needSep":Z
    .end local v15    # "pkgi":I
    .end local v16    # "nowUptime":J
    .end local v20    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v21    # "j":I
    .end local v23    # "nowElapsed":J
    .end local v26    # "now":J
    :catchall_4
    move-exception v0

    move/from16 v32, v3

    move v12, v8

    move-object/from16 v11, v19

    goto/16 :goto_53

    .line 4294
    .restart local v0    # "i":I
    .restart local v1    # "printedPackage":Z
    .restart local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v4    # "opCode":I
    .restart local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v6    # "j":I
    .restart local v7    # "date":Ljava/util/Date;
    .restart local v11    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v13    # "opModes":Landroid/util/SparseIntArray;
    .restart local v14    # "needSep":Z
    .restart local v15    # "pkgi":I
    .restart local v16    # "nowUptime":J
    .restart local v20    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v23    # "nowElapsed":J
    .restart local v26    # "now":J
    :cond_6e
    move/from16 v21, v6

    .line 4297
    .end local v6    # "j":I
    .restart local v21    # "j":I
    :cond_6f
    if-nez v1, :cond_70

    .line 4298
    const-string v6, "    Package "

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    .line 4299
    const/4 v1, 0x1

    move/from16 v29, v1

    goto :goto_3d

    .line 4297
    :cond_70
    move/from16 v29, v1

    .line 4301
    .end local v1    # "printedPackage":Z
    .local v29, "printedPackage":Z
    :goto_3d
    :try_start_25
    const-string v1, "      "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4302
    const-string v1, " ("

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4303
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    move v6, v1

    .line 4304
    .local v6, "switchOp":I
    if-eq v6, v4, :cond_72

    .line 4305
    :try_start_26
    const-string v1, " / switch "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4306
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4307
    invoke-virtual {v5, v6}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    .line 4308
    .local v1, "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v1, :cond_71

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v30

    goto :goto_3e

    .line 4309
    :cond_71
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v30

    :goto_3e
    nop

    .line 4310
    .local v30, "mode":I
    move-object/from16 v31, v1

    .end local v1    # "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    .local v31, "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    const-string v1, "="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    .line 4312
    .end local v30    # "mode":I
    .end local v31    # "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    :cond_72
    :try_start_27
    const-string v1, "): "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4313
    const-string v30, "          "
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_5

    move-object/from16 v1, p0

    move-object/from16 v31, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v2

    .end local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v11, "dumpPackage":Ljava/lang/String;
    .local v19, "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v31, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move-object/from16 v2, p2

    move/from16 v32, v3

    .end local v3    # "dumpMode":I
    .local v32, "dumpMode":I
    move-object/from16 v3, v19

    move-object/from16 v33, v12

    move v12, v8

    .end local v8    # "dumpOp":I
    .local v12, "dumpOp":I
    .local v33, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v8, v30

    move/from16 v30, v6

    move-object/from16 v6, v33

    move-wide/from16 v34, v23

    move/from16 v24, v4

    move/from16 v23, v21

    move-object/from16 v21, v5

    move-wide/from16 v4, v26

    move-wide/from16 v26, v34

    .end local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v33    # "sdf":Ljava/text/SimpleDateFormat;
    .local v4, "now":J
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    .local v21, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v23, "j":I
    .local v24, "opCode":I
    .local v26, "nowElapsed":J
    .local v30, "switchOp":I
    :try_start_28
    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;Lcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    .line 4314
    move-object/from16 v1, v19

    .end local v19    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-boolean v2, v1, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    if-eqz v2, :cond_73

    .line 4315
    const-string v2, "          Running start at: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4316
    iget-wide v2, v1, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long v2, v26, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4317
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4319
    :cond_73
    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-eqz v2, :cond_74

    .line 4320
    const-string v2, "          startNesting="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4321
    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4288
    .end local v1    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v24    # "opCode":I
    .end local v30    # "switchOp":I
    :cond_74
    move/from16 v1, v29

    .end local v29    # "printedPackage":Z
    .local v1, "printedPackage":Z
    :goto_3f
    add-int/lit8 v2, v23, 0x1

    move v8, v12

    move-wide/from16 v23, v26

    move/from16 v3, v32

    move-wide/from16 v26, v4

    move-object v12, v6

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move v6, v2

    move-object v2, v11

    move-object/from16 v11, v31

    .end local v23    # "j":I
    .local v2, "j":I
    goto/16 :goto_3b

    .end local v2    # "j":I
    .end local v20    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v21    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v31    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v32    # "dumpMode":I
    .restart local v3    # "dumpMode":I
    .local v4, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v6, "j":I
    .restart local v8    # "dumpOp":I
    .local v11, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    .local v19, "dumpPackage":Ljava/lang/String;
    .local v23, "nowElapsed":J
    .local v26, "now":J
    :cond_75
    move/from16 v32, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v31, v11

    move-object/from16 v11, v19

    move-wide/from16 v4, v26

    move-wide/from16 v26, v23

    move/from16 v23, v6

    move-object v6, v12

    move v12, v8

    .line 4282
    .end local v1    # "printedPackage":Z
    .end local v3    # "dumpMode":I
    .end local v5    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v8    # "dumpOp":I
    .end local v19    # "dumpPackage":Ljava/lang/String;
    .end local v23    # "nowElapsed":J
    .local v4, "now":J
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    .local v11, "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v20    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v26, "nowElapsed":J
    .restart local v31    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v32    # "dumpMode":I
    :goto_40
    add-int/lit8 v15, v15, 0x1

    move-object v2, v11

    move v8, v12

    move-wide/from16 v23, v26

    move-object/from16 v11, v31

    move/from16 v3, v32

    move-wide/from16 v26, v4

    move-object v12, v6

    move-object/from16 v4, v20

    goto/16 :goto_3a

    .line 4417
    .end local v0    # "i":I
    .end local v4    # "now":J
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "date":Ljava/util/Date;
    .end local v11    # "dumpPackage":Ljava/lang/String;
    .end local v12    # "dumpOp":I
    .end local v13    # "opModes":Landroid/util/SparseIntArray;
    .end local v14    # "needSep":Z
    .end local v15    # "pkgi":I
    .end local v16    # "nowUptime":J
    .end local v20    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v26    # "nowElapsed":J
    .end local v31    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v32    # "dumpMode":I
    .restart local v3    # "dumpMode":I
    .restart local v8    # "dumpOp":I
    .restart local v19    # "dumpPackage":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v32, v3

    move v12, v8

    move-object/from16 v11, v19

    .end local v3    # "dumpMode":I
    .end local v8    # "dumpOp":I
    .end local v19    # "dumpPackage":Ljava/lang/String;
    .restart local v11    # "dumpPackage":Ljava/lang/String;
    .restart local v12    # "dumpOp":I
    .restart local v32    # "dumpMode":I
    goto/16 :goto_53

    .line 4282
    .end local v32    # "dumpMode":I
    .restart local v0    # "i":I
    .local v2, "dumpPackage":Ljava/lang/String;
    .restart local v3    # "dumpMode":I
    .local v4, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v7    # "date":Ljava/util/Date;
    .restart local v8    # "dumpOp":I
    .local v11, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    .restart local v13    # "opModes":Landroid/util/SparseIntArray;
    .restart local v14    # "needSep":Z
    .restart local v15    # "pkgi":I
    .restart local v16    # "nowUptime":J
    .restart local v23    # "nowElapsed":J
    .local v26, "now":J
    :cond_76
    move/from16 v32, v3

    move-object/from16 v20, v4

    move-object/from16 v31, v11

    move-object v6, v12

    move-wide/from16 v4, v26

    const/16 v18, 0x0

    move-object v11, v2

    move v12, v8

    move-wide/from16 v26, v23

    .end local v2    # "dumpPackage":Ljava/lang/String;
    .end local v3    # "dumpMode":I
    .end local v8    # "dumpOp":I
    .end local v23    # "nowElapsed":J
    .local v4, "now":J
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .local v11, "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v20    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v26, "nowElapsed":J
    .restart local v31    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v32    # "dumpMode":I
    goto :goto_42

    .line 4417
    .end local v0    # "i":I
    .end local v4    # "now":J
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "date":Ljava/util/Date;
    .end local v11    # "dumpPackage":Ljava/lang/String;
    .end local v12    # "dumpOp":I
    .end local v13    # "opModes":Landroid/util/SparseIntArray;
    .end local v14    # "needSep":Z
    .end local v15    # "pkgi":I
    .end local v16    # "nowUptime":J
    .end local v20    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v26    # "nowElapsed":J
    .end local v31    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v32    # "dumpMode":I
    .restart local v2    # "dumpPackage":Ljava/lang/String;
    .restart local v3    # "dumpMode":I
    .restart local v8    # "dumpOp":I
    :catchall_6
    move-exception v0

    move-object v11, v2

    move/from16 v32, v3

    move v12, v8

    .end local v2    # "dumpPackage":Ljava/lang/String;
    .end local v3    # "dumpMode":I
    .end local v8    # "dumpOp":I
    .restart local v11    # "dumpPackage":Ljava/lang/String;
    .restart local v12    # "dumpOp":I
    .restart local v32    # "dumpMode":I
    goto/16 :goto_53

    .line 4224
    .end local v12    # "dumpOp":I
    .end local v32    # "dumpMode":I
    .restart local v0    # "i":I
    .local v1, "hasOp":Z
    .restart local v2    # "dumpPackage":Ljava/lang/String;
    .restart local v3    # "dumpMode":I
    .local v4, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7    # "date":Ljava/util/Date;
    .restart local v8    # "dumpOp":I
    .local v11, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v13    # "opModes":Landroid/util/SparseIntArray;
    .restart local v16    # "nowUptime":J
    .local v18, "nowElapsed":J
    .local v21, "hasMode":Z
    .local v24, "hasPackage":Z
    .local v26, "now":J
    .local v29, "needSep":Z
    :cond_77
    move/from16 v32, v3

    move-object/from16 v20, v4

    move v12, v8

    move-object/from16 v31, v11

    move-wide/from16 v4, v26

    move-object v11, v2

    move-wide/from16 v26, v18

    const/16 v18, 0x0

    .end local v2    # "dumpPackage":Ljava/lang/String;
    .end local v3    # "dumpMode":I
    .end local v8    # "dumpOp":I
    .end local v18    # "nowElapsed":J
    .local v4, "now":J
    .local v11, "dumpPackage":Ljava/lang/String;
    .restart local v12    # "dumpOp":I
    .restart local v20    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v26, "nowElapsed":J
    .restart local v31    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v32    # "dumpMode":I
    goto :goto_41

    .line 4184
    .end local v1    # "hasOp":Z
    .end local v20    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v21    # "hasMode":Z
    .end local v24    # "hasPackage":Z
    .end local v25    # "dumpHistory":Z
    .end local v28    # "dumpWatchers":Z
    .end local v29    # "needSep":Z
    .end local v31    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v32    # "dumpMode":I
    .restart local v2    # "dumpPackage":Ljava/lang/String;
    .restart local v3    # "dumpMode":I
    .local v4, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v8    # "dumpOp":I
    .local v11, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v12, "dumpHistory":Z
    .restart local v14    # "needSep":Z
    .local v15, "dumpWatchers":Z
    .restart local v18    # "nowElapsed":J
    .local v26, "now":J
    :cond_78
    move/from16 v32, v3

    move-object/from16 v20, v4

    move-object/from16 v31, v11

    move/from16 v25, v12

    move/from16 v29, v14

    move/from16 v28, v15

    move-wide/from16 v4, v26

    move-object v11, v2

    move v12, v8

    move-wide/from16 v26, v18

    const/16 v18, 0x0

    .line 4179
    .end local v2    # "dumpPackage":Ljava/lang/String;
    .end local v3    # "dumpMode":I
    .end local v8    # "dumpOp":I
    .end local v13    # "opModes":Landroid/util/SparseIntArray;
    .end local v14    # "needSep":Z
    .end local v15    # "dumpWatchers":Z
    .end local v18    # "nowElapsed":J
    .local v4, "now":J
    .local v11, "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v25    # "dumpHistory":Z
    .local v26, "nowElapsed":J
    .restart local v28    # "dumpWatchers":Z
    .restart local v29    # "needSep":Z
    .restart local v32    # "dumpMode":I
    :goto_41
    move/from16 v14, v29

    .end local v29    # "needSep":Z
    .restart local v14    # "needSep":Z
    :goto_42
    add-int/lit8 v0, v0, 0x1

    move-object v2, v11

    move v8, v12

    move/from16 v12, v25

    move-wide/from16 v18, v26

    move/from16 v15, v28

    move/from16 v3, v32

    move-wide/from16 v26, v4

    goto/16 :goto_24

    .end local v4    # "now":J
    .end local v11    # "dumpPackage":Ljava/lang/String;
    .end local v25    # "dumpHistory":Z
    .end local v28    # "dumpWatchers":Z
    .end local v32    # "dumpMode":I
    .restart local v2    # "dumpPackage":Ljava/lang/String;
    .restart local v3    # "dumpMode":I
    .restart local v8    # "dumpOp":I
    .local v12, "dumpHistory":Z
    .restart local v15    # "dumpWatchers":Z
    .restart local v18    # "nowElapsed":J
    .local v26, "now":J
    :cond_79
    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v29, v14

    move/from16 v28, v15

    move-wide/from16 v4, v26

    move v12, v8

    move-wide/from16 v26, v18

    const/16 v18, 0x0

    .line 4326
    .end local v0    # "i":I
    .end local v2    # "dumpPackage":Ljava/lang/String;
    .end local v3    # "dumpMode":I
    .end local v8    # "dumpOp":I
    .end local v14    # "needSep":Z
    .end local v15    # "dumpWatchers":Z
    .end local v18    # "nowElapsed":J
    .restart local v4    # "now":J
    .restart local v11    # "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v25    # "dumpHistory":Z
    .local v26, "nowElapsed":J
    .restart local v28    # "dumpWatchers":Z
    .restart local v29    # "needSep":Z
    .restart local v32    # "dumpMode":I
    if-eqz v29, :cond_7a

    .line 4327
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4330
    :cond_7a
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4331
    .local v0, "userRestrictionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_43
    if-ge v1, v0, :cond_92

    .line 4332
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4333
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 4334
    .local v3, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    const/4 v8, 0x0

    .line 4336
    .local v8, "printedTokenHeader":Z
    if-gez v32, :cond_91

    if-nez v28, :cond_91

    if-eqz v25, :cond_7b

    .line 4337
    move/from16 v19, v0

    move-wide/from16 v20, v4

    move-object/from16 v33, v6

    move-object/from16 v24, v7

    goto/16 :goto_52

    .line 4340
    :cond_7b
    iget-object v13, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v13, :cond_7c

    .line 4341
    iget-object v13, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    goto :goto_44

    :cond_7c
    move/from16 v13, v18

    .line 4342
    .local v13, "restrictionCount":I
    :goto_44
    if-lez v13, :cond_86

    if-nez v11, :cond_86

    .line 4343
    const/4 v14, 0x0

    .line 4344
    .local v14, "printedOpsHeader":Z
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_45
    if-ge v15, v13, :cond_85

    .line 4345
    move/from16 v19, v0

    .end local v0    # "userRestrictionCount":I
    .local v19, "userRestrictionCount":I
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 4346
    .local v0, "userId":I
    move-wide/from16 v20, v4

    .end local v4    # "now":J
    .local v20, "now":J
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 4347
    .local v4, "restrictedOps":[Z
    if-nez v4, :cond_7d

    .line 4348
    goto :goto_46

    .line 4350
    :cond_7d
    if-ltz v12, :cond_7f

    array-length v5, v4

    if-ge v12, v5, :cond_7e

    aget-boolean v5, v4, v12

    if-nez v5, :cond_7f

    .line 4344
    .end local v0    # "userId":I
    .end local v4    # "restrictedOps":[Z
    :cond_7e
    :goto_46
    move-object/from16 v33, v6

    move-object/from16 v24, v7

    const/4 v6, 0x1

    goto/16 :goto_4a

    .line 4354
    .restart local v0    # "userId":I
    .restart local v4    # "restrictedOps":[Z
    :cond_7f
    if-nez v8, :cond_80

    .line 4355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v6

    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v33    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v6, "  User restrictions for token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4356
    const/4 v8, 0x1

    goto :goto_47

    .line 4354
    .end local v33    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_80
    move-object/from16 v33, v6

    .line 4358
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v33    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_47
    if-nez v14, :cond_81

    .line 4359
    const-string v5, "      Restricted ops:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4360
    const/4 v14, 0x1

    .line 4362
    :cond_81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4363
    .local v5, "restrictedOpsValue":Ljava/lang/StringBuilder;
    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4364
    array-length v6, v4

    .line 4365
    .local v6, "restrictedOpCount":I
    const/16 v23, 0x0

    move-object/from16 v24, v7

    move/from16 v7, v23

    .local v7, "k":I
    .local v24, "date":Ljava/util/Date;
    :goto_48
    if-ge v7, v6, :cond_84

    .line 4366
    aget-boolean v23, v4, v7

    if-eqz v23, :cond_83

    .line 4367
    move-object/from16 v23, v4

    .end local v4    # "restrictedOps":[Z
    .local v23, "restrictedOps":[Z
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move/from16 v30, v6

    const/4 v6, 0x1

    .end local v6    # "restrictedOpCount":I
    .local v30, "restrictedOpCount":I
    if-le v4, v6, :cond_82

    .line 4368
    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4370
    :cond_82
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 4366
    .end local v23    # "restrictedOps":[Z
    .end local v30    # "restrictedOpCount":I
    .restart local v4    # "restrictedOps":[Z
    .restart local v6    # "restrictedOpCount":I
    :cond_83
    move-object/from16 v23, v4

    move/from16 v30, v6

    const/4 v6, 0x1

    .line 4365
    .end local v4    # "restrictedOps":[Z
    .end local v6    # "restrictedOpCount":I
    .restart local v23    # "restrictedOps":[Z
    .restart local v30    # "restrictedOpCount":I
    :goto_49
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v23

    move/from16 v6, v30

    goto :goto_48

    .end local v23    # "restrictedOps":[Z
    .end local v30    # "restrictedOpCount":I
    .restart local v4    # "restrictedOps":[Z
    .restart local v6    # "restrictedOpCount":I
    :cond_84
    move-object/from16 v23, v4

    move/from16 v30, v6

    const/4 v6, 0x1

    .line 4373
    .end local v4    # "restrictedOps":[Z
    .end local v6    # "restrictedOpCount":I
    .end local v7    # "k":I
    .restart local v23    # "restrictedOps":[Z
    .restart local v30    # "restrictedOpCount":I
    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4374
    const-string v4, "        "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "user: "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4375
    const-string v4, " restricted ops: "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4344
    .end local v0    # "userId":I
    .end local v5    # "restrictedOpsValue":Ljava/lang/StringBuilder;
    .end local v23    # "restrictedOps":[Z
    .end local v30    # "restrictedOpCount":I
    :goto_4a
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v19

    move-wide/from16 v4, v20

    move-object/from16 v7, v24

    move-object/from16 v6, v33

    goto/16 :goto_45

    .end local v19    # "userRestrictionCount":I
    .end local v20    # "now":J
    .end local v24    # "date":Ljava/util/Date;
    .end local v33    # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "userRestrictionCount":I
    .local v4, "now":J
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    .local v7, "date":Ljava/util/Date;
    :cond_85
    move/from16 v19, v0

    move-wide/from16 v20, v4

    move-object/from16 v33, v6

    move-object/from16 v24, v7

    const/4 v6, 0x1

    .end local v0    # "userRestrictionCount":I
    .end local v4    # "now":J
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "date":Ljava/util/Date;
    .restart local v19    # "userRestrictionCount":I
    .restart local v20    # "now":J
    .restart local v24    # "date":Ljava/util/Date;
    .restart local v33    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_4b

    .line 4342
    .end local v14    # "printedOpsHeader":Z
    .end local v15    # "j":I
    .end local v19    # "userRestrictionCount":I
    .end local v20    # "now":J
    .end local v24    # "date":Ljava/util/Date;
    .end local v33    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v0    # "userRestrictionCount":I
    .restart local v4    # "now":J
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7    # "date":Ljava/util/Date;
    :cond_86
    move/from16 v19, v0

    move-wide/from16 v20, v4

    move-object/from16 v33, v6

    move-object/from16 v24, v7

    const/4 v6, 0x1

    .line 4379
    .end local v0    # "userRestrictionCount":I
    .end local v4    # "now":J
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "date":Ljava/util/Date;
    .restart local v19    # "userRestrictionCount":I
    .restart local v20    # "now":J
    .restart local v24    # "date":Ljava/util/Date;
    .restart local v33    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_4b
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_87

    .line 4380
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_4c

    :cond_87
    move/from16 v0, v18

    .line 4381
    .local v0, "excludedPackageCount":I
    :goto_4c
    if-lez v0, :cond_90

    if-gez v12, :cond_90

    .line 4382
    const/4 v4, 0x0

    .line 4383
    .local v4, "printedPackagesHeader":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4d
    if-ge v5, v0, :cond_8f

    .line 4384
    iget-object v7, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 4385
    .local v7, "userId":I
    iget-object v14, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .line 4386
    .local v14, "packageNames":[Ljava/lang/String;
    if-nez v14, :cond_88

    .line 4387
    move/from16 v23, v0

    move-object/from16 v30, v3

    goto/16 :goto_51

    .line 4390
    :cond_88
    if-eqz v11, :cond_8b

    .line 4391
    const/4 v15, 0x0

    .line 4392
    .local v15, "hasPackage":Z
    array-length v6, v14

    move/from16 v23, v0

    move/from16 v0, v18

    .end local v0    # "excludedPackageCount":I
    .local v23, "excludedPackageCount":I
    :goto_4e
    if-ge v0, v6, :cond_8a

    aget-object v30, v14, v0

    move-object/from16 v31, v30

    .line 4393
    .local v31, "pkg":Ljava/lang/String;
    move-object/from16 v30, v3

    move-object/from16 v3, v31

    .end local v31    # "pkg":Ljava/lang/String;
    .local v3, "pkg":Ljava/lang/String;
    .local v30, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_89

    .line 4394
    const/4 v15, 0x1

    .line 4395
    goto :goto_4f

    .line 4392
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_89
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v30

    goto :goto_4e

    .end local v30    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .local v3, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_8a
    move-object/from16 v30, v3

    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v30    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :goto_4f
    goto :goto_50

    .line 4399
    .end local v15    # "hasPackage":Z
    .end local v23    # "excludedPackageCount":I
    .end local v30    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0    # "excludedPackageCount":I
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_8b
    move/from16 v23, v0

    move-object/from16 v30, v3

    .end local v0    # "excludedPackageCount":I
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v23    # "excludedPackageCount":I
    .restart local v30    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    const/4 v15, 0x1

    .line 4401
    .restart local v15    # "hasPackage":Z
    :goto_50
    if-nez v15, :cond_8c

    .line 4402
    goto :goto_51

    .line 4404
    :cond_8c
    if-nez v8, :cond_8d

    .line 4405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  User restrictions for token "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4406
    const/4 v8, 0x1

    .line 4408
    :cond_8d
    if-nez v4, :cond_8e

    .line 4409
    const-string v0, "      Excluded packages:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4410
    const/4 v4, 0x1

    .line 4412
    :cond_8e
    const-string v0, "        "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4413
    const-string v0, " packages: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4383
    .end local v7    # "userId":I
    .end local v14    # "packageNames":[Ljava/lang/String;
    .end local v15    # "hasPackage":Z
    :goto_51
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v23

    move-object/from16 v3, v30

    const/4 v6, 0x1

    goto/16 :goto_4d

    .end local v23    # "excludedPackageCount":I
    .end local v30    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0    # "excludedPackageCount":I
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_8f
    move/from16 v23, v0

    move-object/from16 v30, v3

    .end local v0    # "excludedPackageCount":I
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v23    # "excludedPackageCount":I
    .restart local v30    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    goto :goto_52

    .line 4381
    .end local v4    # "printedPackagesHeader":Z
    .end local v5    # "j":I
    .end local v23    # "excludedPackageCount":I
    .end local v30    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0    # "excludedPackageCount":I
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_90
    move/from16 v23, v0

    move-object/from16 v30, v3

    .end local v0    # "excludedPackageCount":I
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v23    # "excludedPackageCount":I
    .restart local v30    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    goto :goto_52

    .line 4336
    .end local v13    # "restrictionCount":I
    .end local v19    # "userRestrictionCount":I
    .end local v20    # "now":J
    .end local v23    # "excludedPackageCount":I
    .end local v24    # "date":Ljava/util/Date;
    .end local v30    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .end local v33    # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "userRestrictionCount":I
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .local v4, "now":J
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .local v7, "date":Ljava/util/Date;
    :cond_91
    move/from16 v19, v0

    move-object/from16 v30, v3

    move-wide/from16 v20, v4

    move-object/from16 v33, v6

    move-object/from16 v24, v7

    .line 4331
    .end local v0    # "userRestrictionCount":I
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .end local v4    # "now":J
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "date":Ljava/util/Date;
    .end local v8    # "printedTokenHeader":Z
    .restart local v19    # "userRestrictionCount":I
    .restart local v20    # "now":J
    .restart local v24    # "date":Ljava/util/Date;
    .restart local v33    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_52
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v19

    move-wide/from16 v4, v20

    move-object/from16 v7, v24

    move-object/from16 v6, v33

    goto/16 :goto_43

    .end local v19    # "userRestrictionCount":I
    .end local v20    # "now":J
    .end local v24    # "date":Ljava/util/Date;
    .end local v33    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v0    # "userRestrictionCount":I
    .restart local v4    # "now":J
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7    # "date":Ljava/util/Date;
    :cond_92
    move/from16 v19, v0

    move-wide/from16 v20, v4

    move-object/from16 v33, v6

    move-object/from16 v24, v7

    .line 4417
    .end local v0    # "userRestrictionCount":I
    .end local v1    # "i":I
    .end local v4    # "now":J
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "date":Ljava/util/Date;
    .end local v16    # "nowUptime":J
    .end local v26    # "nowElapsed":J
    .end local v29    # "needSep":Z
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    .line 4420
    if-eqz v25, :cond_93

    if-nez v28, :cond_93

    .line 4421
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    const-string v2, "  "

    move-object/from16 v3, p2

    move/from16 v4, v22

    move-object v5, v11

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry;->dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;I)V

    .line 4423
    :cond_93
    return-void

    .line 4417
    .end local v11    # "dumpPackage":Ljava/lang/String;
    .end local v25    # "dumpHistory":Z
    .end local v28    # "dumpWatchers":Z
    .end local v32    # "dumpMode":I
    .local v2, "dumpPackage":Ljava/lang/String;
    .local v3, "dumpMode":I
    .local v8, "dumpOp":I
    .local v12, "dumpHistory":Z
    .local v15, "dumpWatchers":Z
    :catchall_7
    move-exception v0

    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v28, v15

    move v12, v8

    .end local v2    # "dumpPackage":Ljava/lang/String;
    .end local v3    # "dumpMode":I
    .end local v8    # "dumpOp":I
    .end local v15    # "dumpWatchers":Z
    .restart local v11    # "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v25    # "dumpHistory":Z
    .restart local v28    # "dumpWatchers":Z
    .restart local v32    # "dumpMode":I
    goto :goto_53

    .end local v11    # "dumpPackage":Ljava/lang/String;
    .end local v22    # "dumpUid":I
    .end local v25    # "dumpHistory":Z
    .end local v28    # "dumpWatchers":Z
    .end local v32    # "dumpMode":I
    .local v1, "dumpUid":I
    .restart local v2    # "dumpPackage":Ljava/lang/String;
    .restart local v3    # "dumpMode":I
    .restart local v8    # "dumpOp":I
    .local v12, "dumpHistory":Z
    .restart local v15    # "dumpWatchers":Z
    :catchall_8
    move-exception v0

    move/from16 v22, v1

    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v28, v15

    move v12, v8

    .end local v1    # "dumpUid":I
    .end local v2    # "dumpPackage":Ljava/lang/String;
    .end local v3    # "dumpMode":I
    .end local v8    # "dumpOp":I
    .end local v15    # "dumpWatchers":Z
    .restart local v11    # "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v22    # "dumpUid":I
    .restart local v25    # "dumpHistory":Z
    .restart local v28    # "dumpWatchers":Z
    .restart local v32    # "dumpMode":I
    :goto_53
    :try_start_29
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_53
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2361
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct {v7, v10}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2362
    invoke-direct {v7, v9}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2363
    invoke-static/range {p3 .. p4}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2364
    .local v12, "resolvedPackageName":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 2365
    return-void

    .line 2367
    :cond_0
    instance-of v0, v8, Lcom/android/server/appop/AppOpsService$ClientState;

    if-nez v0, :cond_1

    .line 2368
    return-void

    .line 2375
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2377
    .local v13, "identity":J
    :try_start_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 2378
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2377
    const/4 v15, 0x0

    invoke-virtual {v0, v12, v15, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v16, v0

    .line 2380
    .local v16, "packageUid":I
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2381
    nop

    .line 2384
    move-object v6, v8

    check-cast v6, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 2388
    .local v6, "client":Lcom/android/server/appop/AppOpsService$ClientState;
    :try_start_1
    invoke-direct {v7, v10, v11}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2392
    .local v5, "isPrivileged":Z
    nop

    .line 2394
    monitor-enter p0

    .line 2395
    const/4 v0, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v12

    move-object v15, v6

    .end local v6    # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    .local v15, "client":Lcom/android/server/appop/AppOpsService$ClientState;
    move v6, v0

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v0

    .line 2396
    .local v0, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v0, :cond_2

    .line 2397
    monitor-exit p0

    return-void

    .line 2399
    :cond_2
    iget-object v1, v15, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2421
    if-gez v16, :cond_3

    .line 2422
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing op="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for non-existing package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    monitor-exit p0

    return-void

    .line 2429
    :cond_3
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation not started: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " op="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2430
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2429
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    monitor-exit p0

    return-void

    .line 2433
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/android/server/appop/AppOpsService;->finishOperationLocked(Lcom/android/server/appop/AppOpsService$Op;Z)V

    .line 2434
    iget v2, v0, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-gtz v2, :cond_5

    .line 2435
    invoke-direct {v7, v9, v10, v11, v1}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 2437
    .end local v0    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_5
    monitor-exit p0

    .line 2438
    return-void

    .line 2437
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2389
    .end local v5    # "isPrivileged":Z
    .end local v15    # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    .restart local v6    # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    :catch_0
    move-exception v0

    move-object v15, v6

    move-object v1, v0

    .end local v6    # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    .restart local v15    # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    move-object v0, v1

    .line 2390
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v2, "Cannot finishOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2391
    return-void

    .line 2380
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v15    # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    .end local v16    # "packageUid":I
    :catchall_1
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method finishOperationLocked(Lcom/android/server/appop/AppOpsService$Op;Z)V
    .locals 25
    .param p1, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p2, "finishNested"    # Z

    .line 2540
    move-object/from16 v7, p1

    iget v14, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2541
    .local v14, "opCode":I
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v15, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2542
    .local v15, "uid":I
    iget v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    const/4 v13, 0x1

    if-le v0, v13, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2564
    :cond_0
    iget v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    sub-int/2addr v0, v13

    iput v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    .line 2565
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    sub-int/2addr v1, v13

    iput v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    move-object/from16 v0, p0

    move v1, v14

    move v3, v15

    goto/16 :goto_3

    .line 2543
    :cond_1
    :goto_0
    iget v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-eq v0, v13, :cond_3

    if-eqz p2, :cond_2

    goto/16 :goto_1

    .line 2551
    :cond_2
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v1, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v2, v7, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v19

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v20

    .line 2552
    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v22

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v24

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-direct/range {v16 .. v24}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 2553
    .local v0, "entry":Landroid/app/AppOpsManager$OpEntry;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " duration="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    const/16 v4, 0x2bc

    .line 2556
    invoke-virtual {v0, v3, v4, v2}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2553
    const-string v2, "AppOps"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move v2, v13

    move v1, v14

    move v3, v15

    goto :goto_2

    .line 2545
    .end local v0    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, v7, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long v16, v0, v2

    .line 2546
    .local v16, "duration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v3, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$Op;->finished(JJII)V

    .line 2548
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v12, v1, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v1, 0x1

    move v9, v14

    move v10, v15

    move v2, v13

    move v13, v1

    move v1, v14

    move v3, v15

    .end local v14    # "opCode":I
    .end local v15    # "uid":I
    .local v1, "opCode":I
    .local v3, "uid":I
    move-wide/from16 v14, v16

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/appop/HistoricalRegistry;->increaseOpAccessDuration(IILjava/lang/String;IIJ)V

    .line 2550
    .end local v16    # "duration":J
    nop

    .line 2559
    :goto_2
    iget v4, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-lt v4, v2, :cond_4

    .line 2560
    iget-object v2, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    iget v5, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    sub-int/2addr v4, v5

    iput v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    .line 2562
    :cond_4
    const/4 v2, 0x0

    iput v2, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    .line 2567
    :goto_3
    return-void
.end method

.method public getAppOpsServiceDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .locals 1

    .line 1835
    monitor-enter p0

    .line 1836
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    monitor-exit p0

    return-object v0

    .line 1837
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/util/List;JJILandroid/os/RemoteCallback;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "beginTimeMillis"    # J
    .param p6, "endTimeMillis"    # J
    .param p8, "flags"    # I
    .param p9, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 1169
    .local p3, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-wide/from16 v13, p4

    move-wide/from16 v11, p6

    invoke-direct {v2, v13, v14, v11, v12}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 1171
    move/from16 v15, p1

    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setUid(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1172
    move-object/from16 v9, p2

    invoke-virtual {v2, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1173
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1174
    move/from16 v10, p8

    invoke-virtual {v2, v10}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1175
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    .line 1176
    const-string v2, "callback cannot be null"

    move-object/from16 v7, p9

    invoke-static {v7, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1179
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1178
    const-string v5, "android.permission.GET_APP_OPS_STATS"

    const-string v6, "getHistoricalOps"

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1181
    if-eqz v1, :cond_0

    .line 1182
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v6, v2

    .line 1185
    .local v6, "opNamesArray":[Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/appop/HistoricalRegistry;->getHistoricalOps(ILjava/lang/String;[Ljava/lang/String;JJILandroid/os/RemoteCallback;)V

    .line 1187
    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/util/List;JJILandroid/os/RemoteCallback;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "beginTimeMillis"    # J
    .param p6, "endTimeMillis"    # J
    .param p8, "flags"    # I
    .param p9, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 1194
    .local p3, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-wide/from16 v13, p4

    move-wide/from16 v11, p6

    invoke-direct {v2, v13, v14, v11, v12}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 1196
    move/from16 v15, p1

    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setUid(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1197
    move-object/from16 v9, p2

    invoke-virtual {v2, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1198
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1199
    move/from16 v10, p8

    invoke-virtual {v2, v10}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1200
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    .line 1201
    const-string v2, "callback cannot be null"

    move-object/from16 v7, p9

    invoke-static {v7, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1204
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1203
    const-string v5, "android.permission.MANAGE_APPOPS"

    const-string v6, "getHistoricalOps"

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1206
    if-eqz v1, :cond_0

    .line 1207
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v6, v2

    .line 1210
    .local v6, "opNamesArray":[Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/appop/HistoricalRegistry;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;[Ljava/lang/String;JJILandroid/os/RemoteCallback;)V

    .line 1212
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 7
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

    .line 1140
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1141
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1140
    const/4 v3, 0x0

    const-string v4, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1142
    invoke-static {p1, p2}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1146
    :cond_0
    monitor-enter p0

    .line 1147
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v1

    .line 1149
    .local v1, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v1, :cond_1

    .line 1150
    monitor-exit p0

    return-object v3

    .line 1152
    :cond_1
    invoke-direct {p0, v1, p3}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1153
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2

    .line 1154
    monitor-exit p0

    return-object v3

    .line 1156
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v4, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1159
    .local v4, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    monitor-exit p0

    return-object v3

    .line 1161
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

    .line 1108
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1109
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1108
    const-string v3, "android.permission.GET_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1110
    const/4 v0, 0x0

    .line 1111
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 1112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1113
    .local v1, "uidStateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1114
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1115
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1116
    goto :goto_2

    .line 1118
    :cond_0
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1119
    .local v4, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1120
    .local v5, "packageCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 1121
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1122
    .local v7, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-direct {p0, v7, p1}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v8

    .line 1123
    .local v8, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v8, :cond_2

    .line 1124
    if-nez v0, :cond_1

    .line 1125
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    .line 1127
    :cond_1
    new-instance v9, Landroid/app/AppOpsManager$PackageOps;

    iget-object v10, v7, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v9, v10, v11, v8}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1129
    .local v9, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    .end local v7    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v8    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v9    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1113
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v5    # "packageCount":I
    .end local v6    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1133
    .end local v1    # "uidStateCount":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit p0

    .line 1134
    return-object v0

    .line 1133
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 1824
    monitor-enter p0

    .line 1825
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 1826
    .local v0, "cs":Lcom/android/server/appop/AppOpsService$ClientState;
    if-nez v0, :cond_0

    .line 1827
    new-instance v1, Lcom/android/server/appop/AppOpsService$ClientState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appop/AppOpsService$ClientState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V

    move-object v0, v1

    .line 1828
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1831
    .end local v0    # "cs":Lcom/android/server/appop/AppOpsService$ClientState;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    .line 1224
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1225
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1224
    const/4 v3, 0x0

    const-string v4, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1226
    monitor-enter p0

    .line 1227
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 1228
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_0

    .line 1229
    monitor-exit p0

    return-object v3

    .line 1231
    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, p2}, Lcom/android/server/appop/AppOpsService;->collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1232
    .local v1, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v1, :cond_1

    .line 1233
    monitor-exit p0

    return-object v3

    .line 1235
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v4, v3, v5, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    move-object v3, v4

    .line 1238
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    monitor-exit p0

    return-object v2

    .line 1240
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

    .line 4530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    .line 4531
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4533
    return v1

    .line 4536
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4537
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4538
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 4539
    return v1

    .line 4541
    :cond_1
    monitor-enter p0

    .line 4542
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 4543
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 4544
    .local v4, "client":Lcom/android/server/appop/AppOpsService$ClientState;
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_3

    .line 4545
    iget-object v6, v4, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Op;

    .line 4546
    .local v6, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget v7, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    if-ne v7, p1, :cond_2

    iget-object v7, v6, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v7, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-ne v7, p2, :cond_2

    monitor-exit p0

    return v3

    .line 4544
    .end local v6    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4542
    .end local v4    # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4549
    .end local v2    # "i":I
    :cond_4
    monitor-exit p0

    .line 4550
    return v1

    .line 4549
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2065
    monitor-enter p0

    .line 2066
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2067
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2068
    if-nez v0, :cond_0

    .line 2069
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;)I

    move-result v1

    return v1

    .line 2071
    :cond_0
    new-instance v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$hqd76gFlOJ1gAuDYDPVUaSkXjTc;

    invoke-direct {v1, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$hqd76gFlOJ1gAuDYDPVUaSkXjTc;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Lcom/android/internal/util/function/TriFunction;)I

    move-result v1

    return v1

    .line 2067
    .end local v0    # "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteProxyOperation(IILjava/lang/String;ILjava/lang/String;)I
    .locals 18
    .param p1, "code"    # I
    .param p2, "proxyUid"    # I
    .param p3, "proxyPackageName"    # Ljava/lang/String;
    .param p4, "proxiedUid"    # I
    .param p5, "proxiedPackageName"    # Ljava/lang/String;

    .line 2032
    move-object/from16 v14, p0

    move/from16 v15, p2

    invoke-direct {v14, v15}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2033
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2035
    invoke-static/range {p2 .. p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2036
    .local v16, "resolveProxyPackageName":Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v16, :cond_0

    .line 2037
    return v7

    .line 2040
    :cond_0
    iget-object v0, v14, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v2, v1, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v17, v0

    .line 2044
    .local v17, "isProxyTrusted":Z
    if-eqz v17, :cond_2

    const/4 v0, 0x2

    move v6, v0

    goto :goto_1

    .line 2045
    :cond_2
    const/4 v0, 0x4

    move v6, v0

    :goto_1
    nop

    .line 2046
    .local v6, "proxyFlags":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I

    move-result v0

    .line 2048
    .local v0, "proxyMode":I
    if-nez v0, :cond_6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v2, p4

    if-ne v1, v2, :cond_3

    goto :goto_3

    .line 2052
    :cond_3
    invoke-static/range {p4 .. p5}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2053
    .local v1, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 2054
    return v7

    .line 2056
    :cond_4
    if-eqz v17, :cond_5

    const/16 v3, 0x8

    move v13, v3

    goto :goto_2

    .line 2057
    :cond_5
    const/16 v3, 0x10

    move v13, v3

    :goto_2
    nop

    .line 2058
    .local v13, "proxiedFlags":I
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p4

    move-object v10, v1

    move/from16 v11, p2

    move-object/from16 v12, v16

    invoke-direct/range {v7 .. v13}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I

    move-result v3

    return v3

    .line 2048
    .end local v1    # "resolveProxiedPackageName":Ljava/lang/String;
    .end local v13    # "proxiedFlags":I
    :cond_6
    move/from16 v2, p4

    .line 2049
    :goto_3
    return v0
.end method

.method public offsetHistory(J)V
    .locals 3
    .param p1, "offsetMillis"    # J

    .line 4564
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "offsetHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4567
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 4568
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

    .line 3512
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

    .line 3513
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 891
    monitor-enter p0

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 893
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_0

    .line 894
    monitor-exit p0

    return-void

    .line 897
    :cond_0
    const/4 v1, 0x0

    .line 900
    .local v1, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    .line 901
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    move-object v1, v2

    .line 905
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 907
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 911
    :cond_2
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 912
    .local v2, "clientCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_6

    .line 913
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 914
    .local v5, "client":Lcom/android/server/appop/AppOpsService$ClientState;
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 915
    goto :goto_2

    .line 917
    :cond_3
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 918
    .local v6, "opCount":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_5

    .line 919
    iget-object v8, v5, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$Op;

    .line 920
    .local v8, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v9, v9, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-ne p1, v9, :cond_4

    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 921
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/appop/AppOpsService;->finishOperationLocked(Lcom/android/server/appop/AppOpsService$Op;Z)V

    .line 922
    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 923
    iget v9, v8, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-gtz v9, :cond_4

    .line 924
    iget v9, v8, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-direct {p0, v9, p1, p2, v4}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 918
    .end local v8    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 912
    .end local v5    # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    .end local v6    # "opCount":I
    .end local v7    # "j":I
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 931
    .end local v3    # "i":I
    :cond_6
    if-eqz v1, :cond_8

    .line 932
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 934
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v3

    .line 935
    .local v3, "opCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v3, :cond_8

    .line 936
    invoke-virtual {v1, v5}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Op;

    .line 937
    .local v6, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-boolean v7, v6, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    if-eqz v7, :cond_7

    .line 938
    iget v7, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v8, v6, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v9, v6, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v4}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 935
    .end local v6    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 944
    .end local v3    # "opCount":I
    .end local v5    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory(ILjava/lang/String;)V

    .line 945
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v2    # "clientCount":I
    monitor-exit p0

    .line 946
    return-void

    .line 945
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

    .line 2533
    if-nez p1, :cond_0

    .line 2534
    const/4 v0, -0x1

    return v0

    .line 2536
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 751
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 752
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "appops"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 753
    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 754
    return-void
.end method

.method readState()V
    .locals 13

    .line 2896
    const/4 v0, -0x1

    .line 2897
    .local v0, "oldVersion":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 2898
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2901
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2905
    .local v2, "stream":Ljava/io/FileInputStream;
    nop

    .line 2906
    const/4 v3, 0x0

    .line 2907
    .local v3, "success":Z
    :try_start_2
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2909
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2910
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2912
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

    .line 2917
    :cond_0
    if-ne v6, v8, :cond_9

    .line 2921
    const/4 v5, 0x0

    const-string/jumbo v8, "v"

    invoke-interface {v4, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2922
    .local v5, "versionString":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 2923
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v0, v8

    .line 2926
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 2927
    .local v8, "outerDepth":I
    :cond_2
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v6, v9

    if-eq v9, v7, :cond_7

    const/4 v9, 0x3

    if-ne v6, v9, :cond_3

    .line 2928
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_7

    .line 2929
    :cond_3
    if-eq v6, v9, :cond_2

    const/4 v9, 0x4

    if-ne v6, v9, :cond_4

    .line 2930
    goto :goto_1

    .line 2933
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2934
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "pkg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2935
    invoke-direct {p0, v4}, Lcom/android/server/appop/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 2936
    :cond_5
    const-string/jumbo v10, "uid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2937
    invoke-direct {p0, v4}, Lcom/android/server/appop/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 2939
    :cond_6
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <app-ops>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2940
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2939
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2943
    .end local v9    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 2944
    :cond_7
    const/4 v3, 0x1

    .line 2958
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "versionString":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "outerDepth":I
    if-nez v3, :cond_8

    .line 2959
    :try_start_4
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2962
    :cond_8
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2964
    :goto_3
    goto/16 :goto_4

    .line 2963
    :catch_0
    move-exception v4

    .line 2965
    goto/16 :goto_4

    .line 2918
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

    .line 2958
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    .restart local v0    # "oldVersion":I
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_0
    move-exception v4

    goto/16 :goto_5

    .line 2955
    :catch_1
    move-exception v4

    .line 2956
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

    .line 2958
    nop

    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v3, :cond_a

    .line 2959
    :try_start_8
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2962
    :cond_a
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 2953
    :catch_2
    move-exception v4

    .line 2954
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

    .line 2958
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-nez v3, :cond_b

    .line 2959
    :try_start_b
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2962
    :cond_b
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    .line 2951
    :catch_3
    move-exception v4

    .line 2952
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

    .line 2958
    nop

    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v3, :cond_c

    .line 2959
    :try_start_e
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 2962
    :cond_c
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_3

    .line 2949
    :catch_4
    move-exception v4

    .line 2950
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

    .line 2958
    nop

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_d

    .line 2959
    :try_start_11
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 2962
    :cond_d
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_3

    .line 2947
    :catch_5
    move-exception v4

    .line 2948
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

    .line 2958
    nop

    .end local v4    # "e":Ljava/lang/NullPointerException;
    if-nez v3, :cond_e

    .line 2959
    :try_start_14
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2962
    :cond_e
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_3

    .line 2945
    :catch_6
    move-exception v4

    .line 2946
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

    .line 2958
    nop

    .end local v4    # "e":Ljava/lang/IllegalStateException;
    if-nez v3, :cond_f

    .line 2959
    :try_start_17
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 2962
    :cond_f
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_3

    .line 2966
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    :goto_4
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 2967
    :try_start_1a
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 2968
    monitor-enter p0

    .line 2969
    :try_start_1b
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->upgradeLocked(I)V

    .line 2970
    monitor-exit p0

    .line 2971
    return-void

    .line 2970
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    throw v1

    .line 2958
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "success":Z
    :goto_5
    if-nez v3, :cond_10

    .line 2959
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 2962
    :cond_10
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 2964
    goto :goto_6

    .line 2963
    :catch_7
    move-exception v5

    .line 2964
    :goto_6
    nop

    .end local v0    # "oldVersion":I
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_1e
    throw v4

    .line 2966
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    .restart local v0    # "oldVersion":I
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_2
    move-exception v2

    goto :goto_7

    .line 2902
    :catch_8
    move-exception v2

    .line 2903
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

    .line 2904
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    return-void

    .line 2966
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

    .line 2967
    .restart local v0    # "oldVersion":I
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    throw v2
.end method

.method public reloadNonHistoricalState()V
    .locals 5

    .line 1216
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1217
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1216
    const-string v3, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v4, "reloadNonHistoricalState"

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1218
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 1220
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

    .line 4517
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 4518
    monitor-enter p0

    .line 4519
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4520
    .local v0, "tokenCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4521
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 4522
    .local v2, "opRestrictions":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v2, p1}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->removeUser(I)V

    .line 4520
    .end local v2    # "opRestrictions":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4524
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->removeUidsForUserLocked(I)V

    .line 4525
    .end local v0    # "tokenCount":I
    monitor-exit p0

    .line 4526
    return-void

    .line 4525
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 22
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    .line 1614
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1615
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1616
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

    .line 1619
    .end local p1    # "reqUserId":I
    .local v9, "reqUserId":I
    const/4 v1, -0x1

    .line 1620
    .local v1, "reqUid":I
    if-eqz v8, :cond_0

    .line 1622
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-interface {v0, v8, v2, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 1626
    move v10, v1

    goto :goto_0

    .line 1624
    :catch_0
    move-exception v0

    .line 1629
    :cond_0
    move v10, v1

    .end local v1    # "reqUid":I
    .local v10, "reqUid":I
    :goto_0
    invoke-direct {v7, v6, v5, v10}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1631
    const/4 v1, 0x0

    .line 1632
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    monitor-enter p0

    .line 1633
    const/4 v0, 0x0

    .line 1634
    .local v0, "changed":Z
    :try_start_1
    iget-object v2, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    add-int/lit8 v2, v2, -0x1

    move-object v11, v1

    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v2, "i":I
    .local v11, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :goto_1
    if-ltz v2, :cond_13

    .line 1635
    :try_start_2
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1637
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1638
    .local v3, "opModes":Landroid/util/SparseIntArray;
    const/4 v12, -0x1

    if-eqz v3, :cond_7

    iget v13, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v13, v10, :cond_2

    if-ne v10, v12, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v17, v3

    move/from16 v20, v5

    move/from16 v21, v6

    goto/16 :goto_7

    .line 1639
    :cond_2
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 1640
    .local v13, "uidOpCount":I
    add-int/lit8 v14, v13, -0x1

    .local v14, "j":I
    :goto_3
    if-ltz v14, :cond_6

    .line 1641
    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 1642
    .local v15, "code":I
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1643
    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1644
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-gtz v16, :cond_3

    .line 1645
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1710
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "i":I
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    :catchall_0
    move-exception v0

    move/from16 v18, v5

    move/from16 v16, v6

    move-object v1, v11

    goto/16 :goto_11

    .line 1647
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2    # "i":I
    .restart local v3    # "opModes":Landroid/util/SparseIntArray;
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v15    # "code":I
    :cond_3
    :goto_4
    :try_start_4
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    array-length v12, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object/from16 v17, v3

    move-object v3, v11

    const/4 v11, 0x0

    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v3, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v17, "opModes":Landroid/util/SparseIntArray;
    :goto_5
    if-ge v11, v12, :cond_4

    :try_start_5
    aget-object v18, v4, v11

    move-object/from16 v19, v18

    .line 1648
    .local v19, "packageName":Ljava/lang/String;
    move-object/from16 v18, v4

    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v20, v5

    .end local v5    # "callingUid":I
    .local v20, "callingUid":I
    :try_start_6
    iget-object v5, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1649
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1648
    move/from16 v21, v6

    move-object/from16 v6, v19

    .end local v19    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    .local v21, "callingPid":I
    :try_start_7
    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4

    move-object v3, v4

    .line 1650
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v5, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1651
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1650
    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v3, v4

    .line 1647
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v18

    move/from16 v5, v20

    move/from16 v6, v21

    goto :goto_5

    .line 1710
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "i":I
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    .end local v17    # "opModes":Landroid/util/SparseIntArray;
    :catchall_1
    move-exception v0

    move-object v1, v3

    move/from16 v18, v20

    move/from16 v16, v21

    goto/16 :goto_11

    .end local v21    # "callingPid":I
    .local v6, "callingPid":I
    :catchall_2
    move-exception v0

    move-object v1, v3

    move/from16 v16, v6

    move/from16 v18, v20

    .end local v6    # "callingPid":I
    .restart local v21    # "callingPid":I
    goto/16 :goto_11

    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :catchall_3
    move-exception v0

    move-object v1, v3

    move/from16 v18, v5

    move/from16 v16, v6

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    goto/16 :goto_11

    .line 1647
    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2    # "i":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v15    # "code":I
    .restart local v17    # "opModes":Landroid/util/SparseIntArray;
    :cond_4
    move/from16 v20, v5

    move/from16 v21, v6

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    move-object v11, v3

    goto :goto_6

    .line 1642
    .end local v17    # "opModes":Landroid/util/SparseIntArray;
    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .local v3, "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :cond_5
    move-object/from16 v17, v3

    move/from16 v20, v5

    move/from16 v21, v6

    .line 1640
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v15    # "code":I
    .restart local v17    # "opModes":Landroid/util/SparseIntArray;
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    :goto_6
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, v17

    move/from16 v5, v20

    move/from16 v6, v21

    const/4 v12, -0x1

    goto/16 :goto_3

    .end local v17    # "opModes":Landroid/util/SparseIntArray;
    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v3    # "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_6
    move-object/from16 v17, v3

    move/from16 v20, v5

    move/from16 v21, v6

    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v17    # "opModes":Landroid/util/SparseIntArray;
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    goto :goto_7

    .line 1638
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v17    # "opModes":Landroid/util/SparseIntArray;
    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v3    # "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_7
    move-object/from16 v17, v3

    move/from16 v20, v5

    move/from16 v21, v6

    .line 1657
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v17    # "opModes":Landroid/util/SparseIntArray;
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    :goto_7
    :try_start_8
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_8

    .line 1658
    goto/16 :goto_c

    .line 1661
    :cond_8
    const/4 v3, -0x1

    if-eq v9, v3, :cond_9

    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 1662
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v9, v3, :cond_9

    .line 1664
    goto/16 :goto_c

    .line 1667
    :cond_9
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1668
    .local v3, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1669
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    const/4 v5, 0x0

    .line 1670
    .local v5, "uidChanged":Z
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1671
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1672
    .local v6, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1673
    .local v12, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_a

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1675
    goto :goto_8

    .line 1677
    :cond_a
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1678
    .local v13, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v13}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    .restart local v14    # "j":I
    :goto_9
    if-ltz v14, :cond_e

    .line 1679
    invoke-virtual {v13, v14}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$Op;

    .line 1680
    .local v15, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 p1, v0

    .end local v0    # "changed":Z
    .local p1, "changed":Z
    iget v0, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1681
    invoke-static {v15}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    move-object/from16 v16, v3

    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v16, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    iget v3, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-eq v0, v3, :cond_c

    .line 1682
    iget v0, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    invoke-static {v15, v0}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 1683
    const/4 v0, 0x1

    .line 1684
    .end local p1    # "changed":Z
    .restart local v0    # "changed":Z
    const/4 v5, 0x1

    .line 1685
    iget-object v3, v15, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 1686
    .local v3, "uid":I
    move/from16 p1, v0

    .end local v0    # "changed":Z
    .restart local p1    # "changed":Z
    iget v0, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    move/from16 v18, v5

    .end local v5    # "uidChanged":Z
    .local v18, "uidChanged":Z
    iget-object v5, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v19, v6

    .end local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v19, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    iget v6, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 1687
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1686
    invoke-static {v11, v0, v3, v12, v5}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object v5, v0

    .line 1688
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v5, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_9
    iget v0, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1689
    invoke-virtual {v6, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 1688
    invoke-static {v5, v0, v3, v12, v6}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0

    move-object v5, v0

    .line 1690
    invoke-virtual {v15}, Lcom/android/server/appop/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1691
    invoke-virtual {v13, v14}, Lcom/android/server/appop/AppOpsService$Ops;->removeAt(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1678
    .end local v3    # "uid":I
    .end local v15    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    :cond_b
    move/from16 v0, p1

    move-object v11, v5

    move/from16 v5, v18

    goto :goto_b

    .line 1710
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "i":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "j":I
    .end local v16    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v17    # "opModes":Landroid/util/SparseIntArray;
    .end local v18    # "uidChanged":Z
    .end local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local p1    # "changed":Z
    :catchall_4
    move-exception v0

    move-object v1, v5

    move/from16 v18, v20

    move/from16 v16, v21

    goto/16 :goto_11

    .line 1681
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2    # "i":I
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .local v5, "uidChanged":Z
    .restart local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v14    # "j":I
    .restart local v15    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v16    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v17    # "opModes":Landroid/util/SparseIntArray;
    .restart local p1    # "changed":Z
    :cond_c
    move-object/from16 v19, v6

    .end local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    goto :goto_a

    .line 1680
    .end local v16    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v3, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_d
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    .line 1678
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v15    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v16    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :goto_a
    move/from16 v0, p1

    .end local p1    # "changed":Z
    .restart local v0    # "changed":Z
    :goto_b
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, v16

    move-object/from16 v6, v19

    goto :goto_9

    .end local v16    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_e
    move/from16 p1, v0

    move-object/from16 v16, v3

    move-object/from16 v19, v6

    .line 1695
    .end local v0    # "changed":Z
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v14    # "j":I
    .restart local v16    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local p1    # "changed":Z
    :try_start_a
    invoke-virtual {v13}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 1696
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1698
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_f
    move/from16 v0, p1

    move-object/from16 v3, v16

    goto/16 :goto_8

    .line 1699
    .end local v16    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local p1    # "changed":Z
    .restart local v0    # "changed":Z
    .restart local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_10
    move-object/from16 v16, v3

    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v16    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1700
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 1702
    :cond_11
    if-eqz v5, :cond_12

    .line 1703
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1634
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v5    # "uidChanged":Z
    .end local v16    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v17    # "opModes":Landroid/util/SparseIntArray;
    :cond_12
    :goto_c
    add-int/lit8 v2, v2, -0x1

    move/from16 v5, v20

    move/from16 v6, v21

    goto/16 :goto_1

    .line 1710
    .end local v0    # "changed":Z
    .end local v2    # "i":I
    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .local v5, "callingUid":I
    .local v6, "callingPid":I
    :catchall_5
    move-exception v0

    move/from16 v18, v5

    move/from16 v16, v6

    move-object v1, v11

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    goto/16 :goto_11

    .line 1634
    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v0    # "changed":Z
    .restart local v2    # "i":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_13
    move/from16 v20, v5

    move/from16 v21, v6

    .line 1707
    .end local v2    # "i":I
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    if-eqz v0, :cond_14

    .line 1708
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_d

    .line 1710
    .end local v0    # "changed":Z
    :catchall_6
    move-exception v0

    move-object v1, v11

    move/from16 v18, v20

    move/from16 v16, v21

    goto/16 :goto_11

    :cond_14
    :goto_d
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1711
    if-eqz v11, :cond_17

    .line 1712
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map$Entry;

    .line 1713
    .local v12, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1714
    .local v13, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/ArrayList;

    .line 1715
    .local v14, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_f
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_15

    .line 1716
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 1717
    .local v6, "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget-object v5, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    iget v2, v6, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 1719
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v2, v6, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v3, v6, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 1717
    move-object/from16 v2, p0

    move-object/from16 v17, v3

    move-object v3, v13

    move-object/from16 p1, v0

    move-object v0, v5

    move/from16 v18, v20

    .end local v20    # "callingUid":I
    .local v18, "callingUid":I
    move-object/from16 v5, v16

    move-object/from16 v19, v6

    move/from16 v16, v21

    .end local v6    # "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    .end local v21    # "callingPid":I
    .local v16, "callingPid":I
    .local v19, "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1715
    .end local v19    # "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    goto :goto_f

    .end local v16    # "callingPid":I
    .end local v18    # "callingUid":I
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    :cond_15
    move-object/from16 p1, v0

    move/from16 v18, v20

    move/from16 v16, v21

    .line 1721
    .end local v12    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v13    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v14    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v15    # "i":I
    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v18    # "callingUid":I
    goto :goto_e

    .line 1712
    .end local v16    # "callingPid":I
    .end local v18    # "callingUid":I
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    :cond_16
    move/from16 v18, v20

    move/from16 v16, v21

    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v18    # "callingUid":I
    goto :goto_10

    .line 1711
    .end local v16    # "callingPid":I
    .end local v18    # "callingUid":I
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    :cond_17
    move/from16 v18, v20

    move/from16 v16, v21

    .line 1723
    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v18    # "callingUid":I
    :goto_10
    return-void

    .line 1710
    .end local v16    # "callingPid":I
    .end local v18    # "callingUid":I
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    :catchall_7
    move-exception v0

    move/from16 v18, v20

    move/from16 v16, v21

    move-object v1, v11

    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v18    # "callingUid":I
    goto :goto_11

    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v16    # "callingPid":I
    .end local v18    # "callingUid":I
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v5    # "callingUid":I
    .local v6, "callingPid":I
    :catchall_8
    move-exception v0

    move/from16 v18, v5

    move/from16 v16, v6

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v18    # "callingUid":I
    :goto_11
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_11
.end method

.method public resetHistoryParameters()V
    .locals 3

    .line 4580
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "resetHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4583
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->resetHistoryParameters()V

    .line 4584
    return-void
.end method

.method public setAppOpsServiceDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 1841
    monitor-enter p0

    .line 1842
    :try_start_0
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 1843
    monitor-exit p0

    .line 1844
    return-void

    .line 1843
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 1986
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1987
    invoke-direct {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 1988
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1989
    monitor-enter p0

    .line 1990
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1991
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    if-nez v0, :cond_0

    .line 1992
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 1993
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1995
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1996
    if-eqz p4, :cond_3

    .line 1997
    new-instance v1, Lcom/android/server/appop/AppOpsService$Restriction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/appop/AppOpsService$Restriction;-><init>(Lcom/android/server/appop/AppOpsService$1;)V

    .line 1998
    .local v1, "r":Lcom/android/server/appop/AppOpsService$Restriction;
    iput p4, v1, Lcom/android/server/appop/AppOpsService$Restriction;->mode:I

    .line 1999
    if-eqz p5, :cond_2

    .line 2000
    array-length v2, p5

    .line 2001
    .local v2, "N":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, v1, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 2002
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2003
    aget-object v4, p5, v3

    .line 2004
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2005
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2002
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2009
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2011
    .end local v0    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .end local v1    # "r":Lcom/android/server/appop/AppOpsService$Restriction;
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2013
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 2014
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2013
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2015
    return-void

    .line 2011
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setHistoryParameters(IJI)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "compressionStep"    # I

    .line 4556
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "setHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4559
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    int-to-long v7, p4

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 4560
    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 16
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 1482
    move-object/from16 v12, p0

    move/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v12, v0, v1, v13}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1485
    invoke-static/range {p1 .. p4}, Lcom/android/server/wm/OpScreenCompatInjector;->resetModeIfNeed(IILjava/lang/String;I)I

    move-result v15

    .line 1487
    .end local p4    # "mode":I
    .local v15, "mode":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1488
    const/4 v7, 0x0

    .line 1489
    .local v7, "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v11

    .line 1493
    .end local p1    # "code":I
    .local v11, "code":I
    :try_start_0
    invoke-direct {v12, v13, v14}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    .local v5, "isPrivileged":Z
    nop

    .line 1499
    monitor-enter p0

    .line 1500
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {v12, v13, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 1501
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move v2, v11

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1502
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v1, :cond_6

    .line 1503
    :try_start_2
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    if-eq v2, v15, :cond_6

    .line 1504
    invoke-static {v1, v15}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 1505
    if-eqz v0, :cond_0

    .line 1506
    iget-object v2, v12, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1508
    :cond_0
    iget-object v2, v12, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1509
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v2, :cond_2

    .line 1510
    if-nez v7, :cond_1

    .line 1511
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v3

    .line 1513
    :cond_1
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1515
    :cond_2
    iget-object v3, v12, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move-object v2, v3

    .line 1516
    if-eqz v2, :cond_4

    .line 1517
    if-nez v7, :cond_3

    .line 1518
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v3

    .line 1520
    :cond_3
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1522
    :cond_4
    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-ne v15, v3, :cond_5

    .line 1525
    invoke-direct {v12, v1, v13, v14}, Lcom/android/server/appop/AppOpsService;->pruneOp(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    .line 1527
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v7

    goto :goto_0

    .line 1530
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_0
    move-exception v0

    move v2, v11

    goto :goto_2

    :cond_6
    move-object v1, v7

    .end local v7    # "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v1, "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1531
    if-eqz v1, :cond_7

    .line 1532
    iget-object v0, v12, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v6, Lcom/android/server/appop/-$$Lambda$AppOpsService$NDUi03ZZuuR42-RDEIQ0UELKycc;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$NDUi03ZZuuR42-RDEIQ0UELKycc;

    .line 1534
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1532
    move-object/from16 v7, p0

    move-object v8, v1

    move v2, v11

    .end local v11    # "code":I
    .local v2, "code":I
    move-object/from16 v11, p3

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1531
    .end local v2    # "code":I
    .restart local v11    # "code":I
    :cond_7
    move v2, v11

    .line 1537
    .end local v11    # "code":I
    .restart local v2    # "code":I
    :goto_1
    invoke-direct {v12, v2, v13, v14, v15}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 1538
    return-void

    .line 1530
    .end local v2    # "code":I
    .restart local v11    # "code":I
    :catchall_1
    move-exception v0

    move v2, v11

    move-object v7, v1

    .end local v11    # "code":I
    .restart local v2    # "code":I
    goto :goto_2

    .end local v1    # "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v2    # "code":I
    .restart local v7    # "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v11    # "code":I
    :catchall_2
    move-exception v0

    move v2, v11

    .end local v11    # "code":I
    .restart local v2    # "code":I
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 1494
    .end local v2    # "code":I
    .end local v5    # "isPrivileged":Z
    .restart local v11    # "code":I
    :catch_0
    move-exception v0

    move v2, v11

    move-object v1, v0

    .end local v11    # "code":I
    .restart local v2    # "code":I
    move-object v0, v1

    .line 1495
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v3, "Cannot setMode"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1496
    return-void
.end method

.method public setUidMode(III)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 1294
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1295
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

    .line 1296
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1295
    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1301
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1302
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1304
    monitor-enter p0

    .line 1305
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 1307
    .local v0, "defaultMode":I
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    .line 1308
    .local v2, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 1309
    if-ne p3, v0, :cond_1

    .line 1310
    monitor-exit p0

    return-void

    .line 1312
    :cond_1
    new-instance v4, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v4, p2}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(I)V

    move-object v2, v4

    .line 1313
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1314
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1315
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1316
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    .line 1317
    :cond_2
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v4, :cond_3

    .line 1318
    if-eq p3, v0, :cond_7

    .line 1319
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1320
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1321
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    .line 1324
    :cond_3
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_4

    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne v4, p3, :cond_4

    .line 1325
    monitor-exit p0

    return-void

    .line 1327
    :cond_4
    if-ne p3, v0, :cond_5

    .line 1328
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1329
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_6

    .line 1330
    iput-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1333
    :cond_5
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1335
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 1337
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1338
    .end local v0    # "defaultMode":I
    .end local v2    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZ)V

    .line 1341
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 1342
    return-void

    .line 1338
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 4458
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4459
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4460
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 4459
    const-string v4, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 4462
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_2

    .line 4463
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4465
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4467
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4471
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4472
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4473
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 4474
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 9
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I

    .line 4433
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 4434
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4435
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x5b

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 4437
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v7

    .line 4438
    .local v7, "restriction":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 4439
    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 4436
    .end local v7    # "restriction":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4445
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x3e9

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0x3f3

    if-ge v0, v1, :cond_3

    .line 4446
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v1

    .line 4447
    .local v1, "restriction":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 4448
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v8, 0x0

    move-object v3, p0

    move v4, v0

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 4445
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4453
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1032
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 1035
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 1036
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 1037
    const/4 v0, 0x1

    .line 1039
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    if-eqz v0, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 1043
    :cond_1
    return-void

    .line 1039
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I
    .locals 25
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z

    .line 2274
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct {v1, v11}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2275
    invoke-direct {v1, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2276
    invoke-static/range {p3 .. p4}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2277
    .local v13, "resolvedPackageName":Ljava/lang/String;
    const/4 v0, 0x1

    if-nez v13, :cond_0

    .line 2278
    return v0

    .line 2280
    :cond_0
    move-object/from16 v14, p1

    check-cast v14, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 2284
    .local v14, "client":Lcom/android/server/appop/AppOpsService$ClientState;
    const/4 v3, 0x2

    :try_start_0
    invoke-direct {v1, v11, v12}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v15, v4

    .line 2288
    .local v15, "isPrivileged":Z
    nop

    .line 2290
    monitor-enter p0

    .line 2291
    :try_start_1
    invoke-direct {v1, v11, v13, v15, v0}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v4

    .line 2293
    .local v10, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v10, :cond_1

    .line 2296
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    .line 2354
    .end local v10    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :catchall_0
    move-exception v0

    move-object/from16 v23, v13

    goto/16 :goto_5

    .line 2298
    .restart local v10    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_1
    :try_start_3
    invoke-direct {v1, v10, v2, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v3

    move-object v9, v3

    .line 2299
    .local v9, "op":Lcom/android/server/appop/AppOpsService$Op;
    invoke-direct {v1, v11, v2, v13, v15}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Z)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 2300
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v0

    .line 2302
    :cond_2
    :try_start_5
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    move v8, v3

    .line 2303
    .local v8, "switchCode":I
    iget-object v3, v10, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    move-object v7, v3

    .line 2306
    .local v7, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget v4, v9, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2307
    .local v4, "opCode":I
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v5, 0x3

    if-eqz v3, :cond_6

    iget-object v3, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_6

    .line 2308
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v3

    move v6, v3

    .line 2309
    .local v6, "uidMode":I
    if-eqz v6, :cond_5

    if-eqz p5, :cond_4

    if-eq v6, v5, :cond_3

    goto :goto_0

    :cond_3
    move v3, v8

    move-object/from16 v23, v13

    move-object v13, v7

    goto :goto_1

    .line 2315
    :cond_4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, -0x1

    const/16 v20, 0x0

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v22, 0x1

    move-object/from16 v16, v9

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2317
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v16, 0x1

    move/from16 v5, p3

    move/from16 v17, v6

    .end local v6    # "uidMode":I
    .local v17, "uidMode":I
    move-object/from16 v6, p4

    move-object/from16 v23, v13

    move-object v13, v7

    .end local v7    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v13, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v23, "resolvedPackageName":Ljava/lang/String;
    move v7, v0

    move v0, v8

    .end local v8    # "switchCode":I
    .local v0, "switchCode":I
    move/from16 v8, v16

    :try_start_6
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2319
    monitor-exit p0

    return v17

    .line 2309
    .end local v0    # "switchCode":I
    .end local v17    # "uidMode":I
    .end local v23    # "resolvedPackageName":Ljava/lang/String;
    .restart local v6    # "uidMode":I
    .restart local v7    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v8    # "switchCode":I
    .local v13, "resolvedPackageName":Ljava/lang/String;
    :cond_5
    move/from16 v17, v6

    move v3, v8

    move-object/from16 v23, v13

    move-object v13, v7

    .line 2321
    .end local v6    # "uidMode":I
    .end local v7    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v8    # "switchCode":I
    .local v3, "switchCode":I
    .local v13, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v23    # "resolvedPackageName":Ljava/lang/String;
    :goto_1
    move/from16 v18, v3

    move-object v3, v9

    move-object/from16 v19, v10

    goto/16 :goto_4

    .line 2307
    .end local v3    # "switchCode":I
    .end local v23    # "resolvedPackageName":Ljava/lang/String;
    .restart local v7    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v8    # "switchCode":I
    .local v13, "resolvedPackageName":Ljava/lang/String;
    :cond_6
    move v3, v8

    move-object/from16 v23, v13

    move-object v13, v7

    .line 2322
    .end local v7    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v8    # "switchCode":I
    .restart local v3    # "switchCode":I
    .local v13, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v23    # "resolvedPackageName":Ljava/lang/String;
    if-eq v3, v2, :cond_7

    invoke-direct {v1, v10, v3, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v6

    goto :goto_2

    :cond_7
    move-object v6, v9

    :goto_2
    move-object/from16 v24, v6

    .line 2323
    .local v24, "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v6

    move v8, v6

    .line 2324
    .local v8, "mode":I
    if-eqz v8, :cond_a

    if-eqz p5, :cond_9

    if-eq v8, v5, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v18, v3

    move-object v3, v9

    move-object/from16 v19, v10

    goto :goto_4

    .line 2330
    :cond_9
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, -0x1

    const/16 v20, 0x0

    iget v0, v13, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v22, 0x1

    move-object/from16 v16, v9

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2332
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v0, v13, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v16, 0x1

    move v6, v4

    move/from16 v7, p3

    move/from16 v17, v8

    .end local v8    # "mode":I
    .local v17, "mode":I
    move-object/from16 v8, p4

    move/from16 v18, v3

    move-object v3, v9

    .end local v9    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v3, "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v18, "switchCode":I
    move v9, v0

    move-object/from16 v19, v10

    .end local v10    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v19, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2334
    monitor-exit p0

    return v17

    .line 2324
    .end local v17    # "mode":I
    .end local v18    # "switchCode":I
    .end local v19    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v3, "switchCode":I
    .restart local v8    # "mode":I
    .restart local v9    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v10    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_a
    move/from16 v18, v3

    move/from16 v17, v8

    move-object v3, v9

    move-object/from16 v19, v10

    .line 2339
    .end local v8    # "mode":I
    .end local v9    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v10    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v24    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .local v3, "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v18    # "switchCode":I
    .restart local v19    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :goto_4
    iget v5, v3, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-nez v5, :cond_b

    .line 2340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    .line 2342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v7, v13, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v3, v5, v6, v7, v0}, Lcom/android/server/appop/AppOpsService$Op;->started(JII)V

    .line 2344
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v9, v13, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v10, 0x1

    move v6, v4

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;II)V

    .line 2347
    invoke-direct {v1, v2, v11, v12, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 2349
    :cond_b
    iget v5, v3, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    add-int/2addr v5, v0

    iput v5, v3, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    .line 2350
    iget v5, v13, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    add-int/2addr v5, v0

    iput v5, v13, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    .line 2351
    iget-object v0, v14, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 2352
    iget-object v0, v14, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2354
    .end local v3    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v4    # "opCode":I
    .end local v13    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v18    # "switchCode":I
    .end local v19    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_c
    monitor-exit p0

    .line 2356
    const/4 v0, 0x0

    return v0

    .line 2354
    .end local v23    # "resolvedPackageName":Ljava/lang/String;
    .local v13, "resolvedPackageName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v23, v13

    .end local v13    # "resolvedPackageName":Ljava/lang/String;
    .restart local v23    # "resolvedPackageName":Ljava/lang/String;
    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 2285
    .end local v15    # "isPrivileged":Z
    .end local v23    # "resolvedPackageName":Ljava/lang/String;
    .restart local v13    # "resolvedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v23, v13

    move-object v4, v0

    .end local v13    # "resolvedPackageName":Ljava/lang/String;
    .restart local v23    # "resolvedPackageName":Ljava/lang/String;
    move-object v0, v4

    .line 2286
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "AppOps"

    const-string/jumbo v5, "startOperation"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2287
    return v3
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 12
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 2166
    const/4 v0, -0x1

    .line 2167
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2168
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2169
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2171
    move v0, v7

    .line 2173
    :cond_0
    const/4 v9, 0x0

    if-eqz p1, :cond_1

    .line 2181
    const/16 v1, 0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2182
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2181
    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 2185
    :cond_1
    if-nez p2, :cond_2

    .line 2186
    return-void

    .line 2188
    :cond_2
    monitor-enter p0

    .line 2189
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2190
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    if-nez v1, :cond_3

    .line 2191
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 2192
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_0

    .line 2190
    :cond_3
    move-object v10, v1

    .line 2194
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

    .line 2196
    .local v1, "activeCallback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    array-length v2, p1

    :goto_1
    if-ge v9, v2, :cond_4

    aget v3, p1, v9

    .line 2197
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2196
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2199
    .end local v1    # "activeCallback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :cond_4
    monitor-exit p0

    .line 2200
    return-void

    .line 2199
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 1736
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 1737
    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 16
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 1742
    move-object/from16 v8, p0

    move/from16 v1, p1

    move-object/from16 v9, p2

    const/4 v10, -0x1

    .line 1743
    .local v10, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1744
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1756
    .local v12, "callingPid":I
    const/16 v0, 0x3e8

    const/4 v13, -0x1

    if-le v1, v0, :cond_0

    .line 1757
    const/16 v2, 0x3f2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid op code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    goto :goto_0

    .line 1760
    :cond_0
    const/16 v0, 0x5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v13, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1764
    :goto_0
    if-nez p4, :cond_1

    .line 1765
    return-void

    .line 1767
    :cond_1
    monitor-enter p0

    .line 1768
    if-eq v1, v13, :cond_2

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1791
    :catchall_0
    move-exception v0

    move v14, v1

    goto/16 :goto_2

    .line 1768
    :cond_2
    move v0, v1

    :goto_1
    move v14, v0

    .line 1769
    .end local p1    # "op":I
    .local v14, "op":I
    :try_start_1
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1770
    .local v0, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-nez v0, :cond_3

    .line 1771
    new-instance v15, Lcom/android/server/appop/AppOpsService$ModeCallback;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move v4, v10

    move/from16 v5, p3

    move v6, v11

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService$ModeCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V

    move-object v0, v15

    .line 1772
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    :cond_3
    if-eq v14, v13, :cond_5

    .line 1775
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1776
    .local v1, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v1, :cond_4

    .line 1777
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1778
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1780
    :cond_4
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1782
    .end local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_5
    if-eqz v9, :cond_7

    .line 1783
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1784
    .restart local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v1, :cond_6

    .line 1785
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1786
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    :cond_6
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1790
    .end local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1791
    .end local v0    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 1792
    return-void

    .line 1791
    :catchall_1
    move-exception v0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 12
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 2222
    const/4 v0, -0x1

    .line 2223
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2224
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2225
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2227
    move v0, v7

    .line 2229
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ops cannot be null or empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2237
    const/16 v1, 0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2237
    const/4 v9, 0x0

    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 2240
    const-string v1, "Callback cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    monitor-enter p0

    .line 2242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2243
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    if-nez v1, :cond_1

    .line 2244
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 2245
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_0

    .line 2243
    :cond_1
    move-object v10, v1

    .line 2247
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

    .line 2249
    .local v1, "notedCallback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    array-length v2, p1

    :goto_1
    if-ge v9, v2, :cond_2

    aget v3, p1, v9

    .line 2250
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2249
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2252
    .end local v1    # "notedCallback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    :cond_2
    monitor-exit p0

    .line 2253
    return-void

    .line 2252
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

    .line 2204
    if-nez p1, :cond_0

    .line 2205
    return-void

    .line 2207
    :cond_0
    monitor-enter p0

    .line 2208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 2209
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 2210
    .local v0, "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    if-nez v0, :cond_1

    .line 2211
    monitor-exit p0

    return-void

    .line 2213
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2214
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2215
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$ActiveCallback;->destroy()V

    .line 2214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2217
    .end local v0    # "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit p0

    .line 2218
    return-void

    .line 2217
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 1796
    if-nez p1, :cond_0

    .line 1797
    return-void

    .line 1799
    :cond_0
    monitor-enter p0

    .line 1800
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1801
    .local v0, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v0, :cond_4

    .line 1802
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 1803
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1804
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1805
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1806
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1807
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1803
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1810
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 1811
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1812
    .restart local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1813
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 1814
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1810
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1818
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1819
    .end local v0    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 1820
    return-void

    .line 1819
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

    .line 2257
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    monitor-enter p0

    .line 2259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 2260
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 2261
    .local v0, "notedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    if-nez v0, :cond_0

    .line 2262
    monitor-exit p0

    return-void

    .line 2264
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2265
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2266
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$NotedCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$NotedCallback;->destroy()V

    .line 2265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2268
    .end local v0    # "notedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    .line 2269
    return-void

    .line 2268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 12

    .line 757
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 758
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 760
    monitor-enter p0

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, "changed":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 763
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$UidState;

    .line 765
    .local v2, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 766
    .local v3, "packageNames":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 767
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 768
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 769
    const/4 v0, 0x1

    .line 770
    goto/16 :goto_3

    .line 773
    :cond_0
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 774
    .local v4, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v4, :cond_1

    .line 775
    goto/16 :goto_3

    .line 778
    :cond_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 779
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/appop/AppOpsService$Ops;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 780
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    .local v6, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    const/4 v7, -0x1

    .line 783
    .local v7, "curUid":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    const/16 v10, 0x2000

    iget-object v11, v6, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 785
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 783
    invoke-interface {v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v8

    .line 787
    goto :goto_2

    .line 786
    :catch_0
    move-exception v8

    .line 788
    :goto_2
    :try_start_2
    iget-object v8, v6, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v7, v8, :cond_2

    .line 789
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pruning old package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": new uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 792
    const/4 v0, 0x1

    .line 796
    :cond_2
    sget-boolean v8, Lcom/android/server/appop/OpAppOpsService;->mUpdatingXml:Z

    if-eqz v8, :cond_3

    iget-object v8, v6, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    const-string v9, "com.oneplus.mms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 797
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/server/appop/OpAppOpsService;->lockMmsApp(Landroid/content/Context;I)V

    .line 800
    .end local v6    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v7    # "curUid":I
    :cond_3
    goto :goto_1

    .line 802
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 803
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 762
    .end local v2    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 806
    .end local v1    # "i":I
    :cond_6
    if-eqz v0, :cond_7

    .line 807
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 809
    .end local v0    # "changed":Z
    :cond_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 811
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 812
    .local v0, "packageSuspendFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/appop/AppOpsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 840
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 842
    .local v1, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v2, Lcom/android/server/appop/AppOpsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 859
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v2

    if-nez v2, :cond_8

    .line 860
    const-class v2, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManagerInternal;

    .line 862
    .local v2, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    new-instance v3, Lcom/android/server/appop/AppOpsService$4;

    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsService$4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManagerInternal;->addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V

    .line 888
    .end local v2    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_8
    return-void

    .line 809
    .end local v0    # "packageSuspendFilter":Landroid/content/IntentFilter;
    .end local v1    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 949
    monitor-enter p0

    .line 950
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 952
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 954
    :cond_0
    monitor-exit p0

    .line 955
    return-void

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateUidProcState(II)V
    .locals 23
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 971
    move-object/from16 v1, p0

    monitor-enter p0

    .line 972
    const/4 v0, 0x1

    move/from16 v2, p1

    :try_start_0
    invoke-direct {v1, v2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v3

    .line 973
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    sget-object v4, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget v4, v4, p2

    .line 974
    .local v4, "newState":I
    if-eqz v3, :cond_8

    iget v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-eq v5, v4, :cond_8

    .line 975
    iget v10, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 976
    .local v10, "oldPendingState":I
    iput v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 977
    iget v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-lt v4, v5, :cond_3

    const/16 v5, 0x190

    if-gt v4, v5, :cond_0

    iget v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-le v6, v5, :cond_0

    goto :goto_1

    .line 984
    :cond_0
    iget-wide v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 988
    iget v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v7, 0xc8

    if-gt v6, v7, :cond_1

    .line 989
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v5, v5, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .local v5, "settleTime":J
    goto :goto_0

    .line 990
    .end local v5    # "settleTime":J
    :cond_1
    iget v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-gt v6, v5, :cond_2

    .line 991
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v5, v5, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .restart local v5    # "settleTime":J
    goto :goto_0

    .line 993
    .end local v5    # "settleTime":J
    :cond_2
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v5, v5, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 995
    .restart local v5    # "settleTime":J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 996
    .local v7, "commitTime":J
    iput-wide v7, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 998
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v11, Lcom/android/server/appop/-$$Lambda$AppOpsService$CVMS-lLMRyZYA1tmqvyuOloKBu0;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$CVMS-lLMRyZYA1tmqvyuOloKBu0;

    const-wide/16 v12, 0x1

    add-long v14, v7, v12

    .line 1000
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 999
    invoke-static {v11, v1, v14, v15}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    add-long/2addr v12, v5

    .line 998
    invoke-virtual {v9, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 983
    .end local v5    # "settleTime":J
    .end local v7    # "commitTime":J
    :cond_3
    :goto_1
    invoke-direct {v1, v3}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 1002
    :cond_4
    :goto_2
    iget v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    if-eqz v5, :cond_8

    .line 1005
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v14, v5

    .line 1006
    .local v14, "now":J
    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_7

    .line 1007
    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Ops;

    move-object v12, v6

    .line 1008
    .local v12, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v6

    sub-int/2addr v6, v0

    move v13, v6

    .local v13, "j":I
    :goto_4
    if-ltz v13, :cond_6

    .line 1009
    invoke-virtual {v12, v13}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Op;

    move-object v11, v6

    .line 1010
    .local v11, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget v6, v11, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-lez v6, :cond_5

    .line 1011
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v11, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long v18, v6, v8

    .line 1014
    .local v18, "duration":J
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v7, v11, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v8, v11, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v9, v11, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    const/16 v16, 0x1

    move-object/from16 v20, v11

    .end local v11    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v20, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v11, v16

    move-object/from16 v21, v12

    move/from16 v22, v13

    .end local v12    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13    # "j":I
    .local v21, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v22, "j":I
    move-wide/from16 v12, v18

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/appop/HistoricalRegistry;->increaseOpAccessDuration(IILjava/lang/String;IIJ)V

    .line 1018
    const/16 v17, 0x1

    move-object/from16 v11, v20

    move-wide v12, v14

    move-wide v6, v14

    .end local v14    # "now":J
    .local v6, "now":J
    move-wide/from16 v14, v18

    move/from16 v16, v10

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/appop/AppOpsService$Op;->finished(JJII)V

    .line 1021
    move-object/from16 v8, v20

    .end local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v8, "op":Lcom/android/server/appop/AppOpsService$Op;
    iput-wide v6, v8, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    .line 1022
    invoke-virtual {v8, v6, v7, v4, v0}, Lcom/android/server/appop/AppOpsService$Op;->started(JII)V

    goto :goto_5

    .line 1010
    .end local v6    # "now":J
    .end local v8    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v18    # "duration":J
    .end local v21    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v22    # "j":I
    .restart local v11    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v12    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v13    # "j":I
    .restart local v14    # "now":J
    :cond_5
    move-object v8, v11

    move-object/from16 v21, v12

    move/from16 v22, v13

    move-wide v6, v14

    .line 1008
    .end local v11    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v12    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13    # "j":I
    .end local v14    # "now":J
    .restart local v6    # "now":J
    .restart local v21    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v22    # "j":I
    :goto_5
    add-int/lit8 v13, v22, -0x1

    move-wide v14, v6

    move-object/from16 v12, v21

    .end local v22    # "j":I
    .restart local v13    # "j":I
    goto :goto_4

    .end local v6    # "now":J
    .end local v21    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v12    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v14    # "now":J
    :cond_6
    move-object/from16 v21, v12

    move/from16 v22, v13

    move-wide v6, v14

    .line 1006
    .end local v12    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13    # "j":I
    .end local v14    # "now":J
    .restart local v6    # "now":J
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .end local v6    # "now":J
    .restart local v14    # "now":J
    :cond_7
    move-wide v6, v14

    .line 1028
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "newState":I
    .end local v5    # "i":I
    .end local v10    # "oldPendingState":I
    .end local v14    # "now":J
    :cond_8
    monitor-exit p0

    .line 1029
    return-void

    .line 1028
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeState()V
    .locals 33

    .line 3177
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 3180
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v3, v0

    .line 3184
    .local v3, "stream":Ljava/io/FileOutputStream;
    nop

    .line 3186
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3189
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_2
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3190
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3191
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3192
    const-string v6, "app-ops"

    invoke-interface {v5, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3193
    const-string/jumbo v6, "v"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3195
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 3196
    .local v6, "uidStateCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 3197
    :try_start_3
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    .line 3198
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v9, :cond_1

    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 3199
    const-string/jumbo v9, "uid"

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3200
    const-string/jumbo v9, "n"

    iget v10, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3201
    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3202
    .local v9, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    .line 3203
    .local v10, "opCount":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v10, :cond_0

    .line 3204
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 3205
    .local v12, "op":I
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    .line 3206
    .local v13, "mode":I
    const-string/jumbo v14, "op"

    invoke-interface {v5, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3207
    const-string/jumbo v14, "n"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3208
    const-string/jumbo v14, "m"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3209
    const-string/jumbo v14, "op"

    invoke-interface {v5, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3203
    nop

    .end local v12    # "op":I
    .end local v13    # "mode":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3211
    .end local v11    # "j":I
    :cond_0
    const-string/jumbo v11, "uid"

    invoke-interface {v5, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3196
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v9    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v10    # "opCount":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3308
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "uidStateCount":I
    .end local v7    # "i":I
    :catch_0
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_b

    .line 3215
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "uidStateCount":I
    :cond_2
    if-eqz v4, :cond_13

    .line 3216
    const/4 v7, 0x0

    .line 3217
    .local v7, "lastPkg":Ljava/lang/String;
    const/4 v8, 0x0

    move v9, v8

    .local v9, "i":I
    :goto_2
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_12

    .line 3218
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$PackageOps;

    .line 3219
    .local v10, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v11, :cond_4

    .line 3220
    if-eqz v7, :cond_3

    .line 3221
    :try_start_5
    const-string/jumbo v11, "pkg"

    invoke-interface {v5, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3223
    :cond_3
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 3224
    const-string/jumbo v11, "pkg"

    invoke-interface {v5, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3225
    const-string/jumbo v11, "n"

    invoke-interface {v5, v0, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3227
    :cond_4
    :try_start_6
    const-string/jumbo v11, "uid"

    invoke-interface {v5, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3228
    const-string/jumbo v11, "n"

    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v0, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3229
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 3230
    :try_start_7
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12, v8, v8}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3234
    .local v11, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v11, :cond_5

    .line 3235
    :try_start_8
    const-string/jumbo v12, "p"

    iget-boolean v13, v11, Lcom/android/server/appop/AppOpsService$Ops;->isPrivileged:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 3239
    .end local v11    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    goto/16 :goto_9

    .line 3237
    .restart local v11    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_5
    :try_start_9
    const-string/jumbo v12, "p"

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3239
    .end local v11    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :goto_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3240
    :try_start_a
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 3241
    .local v11, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v12, v8

    .local v12, "j":I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_11

    .line 3242
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 3243
    .local v13, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v14, "op"

    invoke-interface {v5, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3244
    const-string/jumbo v14, "n"

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3245
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v15
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eq v14, v15, :cond_6

    .line 3246
    :try_start_b
    const-string/jumbo v14, "m"

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 3249
    :cond_6
    :try_start_c
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v14

    .line 3250
    .local v14, "keys":Landroid/util/LongSparseArray;
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v15

    if-gtz v15, :cond_7

    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    goto/16 :goto_7

    .line 3255
    :cond_7
    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v15

    .line 3256
    .local v15, "keyCount":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "k":I
    :goto_5
    if-ge v8, v15, :cond_f

    .line 3257
    invoke-virtual {v14, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v17

    .line 3259
    .local v17, "key":J
    invoke-static/range {v17 .. v18}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v16

    move/from16 v19, v16

    .line 3260
    .local v19, "uidState":I
    invoke-static/range {v17 .. v18}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v16
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move/from16 v20, v16

    .line 3262
    .local v20, "flags":I
    move/from16 v0, v19

    move-object/from16 v19, v4

    move/from16 v4, v20

    .end local v20    # "flags":I
    .local v0, "uidState":I
    .local v4, "flags":I
    .local v19, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_d
    invoke-virtual {v13, v0, v0, v4}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v20

    .line 3264
    .local v20, "accessTime":J
    invoke-virtual {v13, v0, v0, v4}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v22

    .line 3266
    .local v22, "rejectTime":J
    invoke-virtual {v13, v0, v0, v4}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v24

    .line 3268
    .local v24, "accessDuration":J
    invoke-virtual {v13, v0, v4}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v27, v26

    .line 3269
    .local v27, "proxyPkg":Ljava/lang/String;
    invoke-virtual {v13, v0, v4}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid(II)I

    move-result v26

    .line 3271
    .local v26, "proxyUid":I
    const-wide/16 v28, 0x0

    cmp-long v30, v20, v28

    if-gtz v30, :cond_8

    cmp-long v30, v22, v28

    if-gtz v30, :cond_8

    cmp-long v30, v24, v28

    if-gtz v30, :cond_8

    move/from16 v30, v0

    move-object/from16 v0, v27

    .end local v27    # "proxyPkg":Ljava/lang/String;
    .local v0, "proxyPkg":Ljava/lang/String;
    .local v30, "uidState":I
    if-nez v0, :cond_9

    if-gez v26, :cond_9

    .line 3273
    move/from16 v31, v6

    move-object/from16 v32, v7

    goto :goto_6

    .line 3271
    .end local v30    # "uidState":I
    .local v0, "uidState":I
    .restart local v27    # "proxyPkg":Ljava/lang/String;
    :cond_8
    move/from16 v30, v0

    move-object/from16 v0, v27

    .line 3276
    .end local v27    # "proxyPkg":Ljava/lang/String;
    .local v0, "proxyPkg":Ljava/lang/String;
    .restart local v30    # "uidState":I
    :cond_9
    move/from16 v27, v4

    .end local v4    # "flags":I
    .local v27, "flags":I
    const-string/jumbo v4, "st"

    move/from16 v31, v6

    const/4 v6, 0x0

    .end local v6    # "uidStateCount":I
    .local v31, "uidStateCount":I
    invoke-interface {v5, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3277
    const-string/jumbo v4, "n"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v32, v7

    const/4 v7, 0x0

    .end local v7    # "lastPkg":Ljava/lang/String;
    .local v32, "lastPkg":Ljava/lang/String;
    invoke-interface {v5, v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3278
    cmp-long v4, v20, v28

    if-lez v4, :cond_a

    .line 3279
    const-string/jumbo v4, "t"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3281
    :cond_a
    cmp-long v4, v22, v28

    if-lez v4, :cond_b

    .line 3282
    const-string/jumbo v4, "r"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3284
    :cond_b
    cmp-long v4, v24, v28

    if-lez v4, :cond_c

    .line 3285
    const-string v4, "d"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3287
    :cond_c
    if-eqz v0, :cond_d

    .line 3288
    const-string/jumbo v4, "pp"

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3290
    :cond_d
    if-ltz v26, :cond_e

    .line 3291
    const-string/jumbo v4, "pu"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3293
    :cond_e
    const-string/jumbo v4, "st"

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3256
    .end local v0    # "proxyPkg":Ljava/lang/String;
    .end local v17    # "key":J
    .end local v20    # "accessTime":J
    .end local v22    # "rejectTime":J
    .end local v24    # "accessDuration":J
    .end local v26    # "proxyUid":I
    .end local v27    # "flags":I
    .end local v30    # "uidState":I
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v19

    move/from16 v6, v31

    move-object/from16 v7, v32

    const/4 v0, 0x0

    goto/16 :goto_5

    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31    # "uidStateCount":I
    .end local v32    # "lastPkg":Ljava/lang/String;
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    .restart local v7    # "lastPkg":Ljava/lang/String;
    :cond_f
    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    .line 3296
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v8    # "k":I
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31    # "uidStateCount":I
    .restart local v32    # "lastPkg":Ljava/lang/String;
    const-string/jumbo v0, "op"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 3250
    .end local v15    # "keyCount":I
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31    # "uidStateCount":I
    .end local v32    # "lastPkg":Ljava/lang/String;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    .restart local v7    # "lastPkg":Ljava/lang/String;
    :cond_10
    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    .line 3251
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .end local v7    # "lastPkg":Ljava/lang/String;
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31    # "uidStateCount":I
    .restart local v32    # "lastPkg":Ljava/lang/String;
    :goto_7
    const-string/jumbo v0, "op"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3252
    nop

    .line 3241
    .end local v13    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v14    # "keys":Landroid/util/LongSparseArray;
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v19

    move/from16 v6, v31

    move-object/from16 v7, v32

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto/16 :goto_4

    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31    # "uidStateCount":I
    .end local v32    # "lastPkg":Ljava/lang/String;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    .restart local v7    # "lastPkg":Ljava/lang/String;
    :cond_11
    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    .line 3298
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v12    # "j":I
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31    # "uidStateCount":I
    .restart local v32    # "lastPkg":Ljava/lang/String;
    const-string/jumbo v0, "uid"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 3217
    nop

    .end local v10    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v11    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v19

    move/from16 v6, v31

    move-object/from16 v7, v32

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 3239
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31    # "uidStateCount":I
    .end local v32    # "lastPkg":Ljava/lang/String;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v10    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .end local v7    # "lastPkg":Ljava/lang/String;
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31    # "uidStateCount":I
    .restart local v32    # "lastPkg":Ljava/lang/String;
    :goto_9
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_f
    throw v0

    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_2
    move-exception v0

    goto :goto_9

    .line 3217
    .end local v10    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31    # "uidStateCount":I
    .end local v32    # "lastPkg":Ljava/lang/String;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    .restart local v7    # "lastPkg":Ljava/lang/String;
    :cond_12
    move-object/from16 v19, v4

    move/from16 v31, v6

    .line 3300
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .end local v9    # "i":I
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31    # "uidStateCount":I
    if-eqz v7, :cond_14

    .line 3301
    const-string/jumbo v0, "pkg"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    .line 3215
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    :cond_13
    move-object/from16 v19, v4

    move/from16 v31, v6

    .line 3305
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31    # "uidStateCount":I
    :cond_14
    :goto_a
    const-string v0, "app-ops"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3306
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3307
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 3311
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v31    # "uidStateCount":I
    goto :goto_c

    .line 3308
    :catch_1
    move-exception v0

    goto :goto_b

    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_2
    move-exception v0

    move-object/from16 v19, v4

    .line 3309
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_b
    :try_start_10
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3310
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3312
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v19    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_c
    monitor-exit v2

    .line 3313
    return-void

    .line 3312
    :catchall_3
    move-exception v0

    goto :goto_d

    .line 3181
    :catch_3
    move-exception v0

    .line 3182
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

    .line 3183
    monitor-exit v2

    return-void

    .line 3312
    .end local v0    # "e":Ljava/io/IOException;
    :goto_d
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v0
.end method
