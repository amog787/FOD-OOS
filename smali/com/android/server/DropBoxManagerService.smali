.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;,
        Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;,
        Lcom/android/server/DropBoxManagerService$ShellCmd;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_MAX_FILES_LOWRAM:I = 0x12c

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

.field private mLowPriorityRateLimitPeriod:J

.field private mLowPriorityTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxFiles:I

.field mObjEpitaphLock:Ljava/lang/Object;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;

.field private final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 341
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    .line 342
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 128
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 130
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 131
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 135
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 137
    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 138
    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 140
    iput-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mObjEpitaphLock:Ljava/lang/Object;

    .line 156
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 354
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 355
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 358
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    .line 360
    new-instance v0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    .line 361
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # J

    .line 104
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/DropBoxManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 104
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/DropBoxManagerService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # J

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/DropBoxManagerService;->setLowPriorityRateLimit(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->addLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->removeLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/DropBoxManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 104
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->restoreDefaults()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/DropBoxManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 104
    iget-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DropBoxManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 104
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    return-wide v0
.end method

.method private declared-synchronized addLowPriorityTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    monitor-exit p0

    return-void

    .line 634
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkPermission(ILjava/lang/String;)Z
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 579
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DropBoxManagerService"

    const-string v2, "android.permission.READ_LOGS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 584
    const/16 v2, 0x2b

    invoke-virtual {v0, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 592
    const/4 v0, 0x0

    return v0

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return v2

    .line 586
    :cond_1
    return v2
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .locals 28
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1127
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1133
    .local v2, "t":J
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 1134
    .local v0, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v4, 0x0

    .line 1135
    .local v4, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1136
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v4, v5

    .line 1137
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1140
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_0
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    const-wide/16 v6, 0x1

    if-nez v5, :cond_1

    .line 1141
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v8, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v2, v8

    .line 1144
    :cond_1
    if-eqz v4, :cond_5

    .line 1145
    array-length v5, v4

    const/4 v8, 0x0

    move-wide v13, v2

    .end local v2    # "t":J
    .local v13, "t":J
    :goto_0
    if-ge v8, v5, :cond_4

    aget-object v2, v4, v8

    .line 1146
    .local v2, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1147
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1148
    .local v3, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v3, :cond_2

    iget-object v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v9, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1149
    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1151
    :cond_2
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_3

    .line 1152
    new-instance v15, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v9}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v12, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v17, v13, v6

    .end local v13    # "t":J
    .local v17, "t":J
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v7, v9

    move-object v9, v15

    move-object/from16 v19, v0

    move-object v0, v15

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .local v19, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    move v15, v7

    move/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v13, v17

    const-wide/16 v9, 0x1

    goto :goto_1

    .line 1155
    .end local v17    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v13    # "t":J
    :cond_3
    move-object/from16 v19, v0

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v9, 0x1

    add-long v11, v13, v9

    .end local v13    # "t":J
    .local v11, "t":J
    invoke-direct {v0, v6, v7, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v13, v11

    .line 1145
    .end local v2    # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v11    # "t":J
    .restart local v13    # "t":J
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v0, v19

    goto :goto_0

    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :cond_4
    move-object/from16 v19, v0

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    goto :goto_2

    .line 1144
    .end local v13    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .local v2, "t":J
    :cond_5
    move-object/from16 v19, v0

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    move-wide v13, v2

    .line 1160
    .end local v2    # "t":J
    .restart local v13    # "t":J
    :goto_2
    if-nez p1, :cond_6

    .line 1161
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v2, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v3, p2

    invoke-direct {v0, v2, v3, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    goto :goto_3

    .line 1163
    :cond_6
    move-object/from16 v3, p2

    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v2, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v5, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v20, v0

    move-object/from16 v21, p1

    move-object/from16 v22, v2

    move-object/from16 v23, p2

    move-wide/from16 v24, v13

    move/from16 v26, p3

    move/from16 v27, v5

    invoke-direct/range {v20 .. v27}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    :goto_3
    monitor-exit p0

    return-wide v13

    .line 1126
    .end local v4    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .end local p1    # "temp":Ljava/io/File;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "flags":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    monitor-enter p0

    .line 1108
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1109
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1114
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1116
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_0

    .line 1117
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    move-object v0, v1

    .line 1118
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_0
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1121
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_1
    monitor-exit p0

    return-void

    .line 1107
    .end local p1    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getLowPriorityResourceConfigs()V
    .locals 5

    .line 1270
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 1273
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1275
    .local v0, "lowPrioritytags":[Ljava/lang/String;
    array-length v1, v0

    .line 1276
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 1277
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1278
    return-void

    .line 1280
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1282
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1284
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private declared-synchronized init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_2

    .line 1069
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1070
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 1074
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    goto :goto_1

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t statfs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1080
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_6

    .line 1081
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1082
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_5

    .line 1084
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 1085
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 1088
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 1089
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1090
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1092
    goto :goto_3

    .line 1095
    :cond_3
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 1097
    .local v4, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1100
    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 1088
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1082
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t list files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1104
    .end local v0    # "files":[Ljava/io/File;
    :cond_6
    monitor-exit p0

    return-void

    .line 1067
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeLowPriorityTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    monitor-exit p0

    return-void

    .line 638
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized restoreDefaults()V
    .locals 1

    monitor-enter p0

    .line 643
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    monitor-exit p0

    return-void

    .line 642
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setLowPriorityRateLimit(J)V
    .locals 0
    .param p1, "period"    # J

    monitor-enter p0

    .line 631
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    monitor-exit p0

    return-void

    .line 630
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "period":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized trimToFit()J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1175
    :try_start_0
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "dropbox_age_seconds"

    const v3, 0x3f480

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    .line 1177
    .local v2, "ageSeconds":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "dropbox_max_files"

    .line 1179
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1180
    const/16 v4, 0x12c

    goto :goto_0

    :cond_0
    const/16 v4, 0x3e8

    .line 1177
    :goto_0
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 1181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v5, v0

    sub-long/2addr v3, v5

    .line 1182
    .local v3, "cutoffMillis":J
    :goto_1
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1183
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1184
    .local v0, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_1

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    if-ge v5, v6, :cond_1

    .line 1185
    goto :goto_2

    .line 1188
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_1
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1189
    .local v5, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1190
    :cond_2
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1191
    :cond_3
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1192
    .end local v0    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v5    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_1

    .line 1199
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1200
    .local v5, "uptimeMillis":J
    iget-wide v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v9, 0x1388

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-lez v0, :cond_5

    .line 1201
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dropbox_quota_percent"

    const/16 v8, 0xa

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    .line 1203
    .local v7, "quotaPercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_reserve_percent"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    .line 1205
    .local v8, "reservePercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_quota_kb"

    const/16 v10, 0x1400

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 1208
    .local v9, "quotaKb":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    .line 1210
    .local v10, "dirPath":Ljava/lang/String;
    :try_start_1
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1213
    nop

    .line 1214
    :try_start_2
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    .line 1215
    .local v0, "available":I
    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    mul-int/2addr v11, v8

    div-int/lit8 v11, v11, 0x64

    sub-int v11, v0, v11

    .line 1216
    .local v11, "nonreserved":I
    mul-int/lit16 v12, v9, 0x400

    iget v13, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v12, v13

    .line 1217
    .local v12, "maximum":I
    const/4 v13, 0x0

    mul-int v14, v11, v7

    div-int/lit8 v14, v14, 0x64

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 1218
    iput-wide v5, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    goto :goto_3

    .line 1211
    .end local v0    # "available":I
    .end local v11    # "nonreserved":I
    .end local v12    # "maximum":I
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t restat: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1235
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "quotaPercent":I
    .end local v8    # "reservePercent":I
    .end local v9    # "quotaKb":I
    .end local v10    # "dirPath":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v7, :cond_d

    .line 1237
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .local v0, "unsqueezed":I
    const/4 v7, 0x0

    .line 1238
    .local v7, "squeezed":I
    new-instance v8, Ljava/util/TreeSet;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1239
    .local v8, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v0

    .end local v0    # "unsqueezed":I
    .local v10, "unsqueezed":I
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1240
    .local v0, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v7, :cond_6

    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v12, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v12, v10

    div-int/2addr v12, v7

    if-gt v11, v12, :cond_6

    .line 1241
    goto :goto_5

    .line 1243
    :cond_6
    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v10, v11

    .line 1244
    nop

    .end local v0    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    add-int/lit8 v7, v7, 0x1

    .line 1245
    goto :goto_4

    .line 1246
    :cond_7
    :goto_5
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v0, v10

    div-int/2addr v0, v7

    move v9, v0

    .line 1249
    .local v9, "tagQuota":I
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v12, v0

    .line 1250
    .local v12, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v13, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v0, v13, :cond_8

    move/from16 v16, v2

    move-wide/from16 v17, v3

    goto/16 :goto_a

    .line 1251
    :cond_8
    :goto_7
    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v0, v9, :cond_b

    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1252
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v13, v0

    .line 1253
    .local v13, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v14, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v0, v14

    iput v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1254
    :cond_9
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v14, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v15, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v14, v15

    iput v14, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1257
    :cond_a
    :try_start_3
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v13, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1258
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v14, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v15, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v16, v2

    move-wide/from16 v17, v3

    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .local v16, "ageSeconds":I
    .local v17, "cutoffMillis":J
    :try_start_4
    iget-wide v2, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v14, v15, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1261
    goto :goto_9

    .line 1259
    :catch_1
    move-exception v0

    goto :goto_8

    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :catch_2
    move-exception v0

    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 1260
    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "ageSeconds":I
    .restart local v17    # "cutoffMillis":J
    :goto_8
    :try_start_5
    const-string v2, "DropBoxManagerService"

    const-string v3, "Can\'t write tombstone file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1262
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :goto_9
    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto :goto_7

    .line 1251
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :cond_b
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 1263
    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .end local v12    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v16    # "ageSeconds":I
    .restart local v17    # "cutoffMillis":J
    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto/16 :goto_6

    .line 1249
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :cond_c
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .restart local v16    # "ageSeconds":I
    .restart local v17    # "cutoffMillis":J
    goto :goto_a

    .line 1235
    .end local v7    # "squeezed":I
    .end local v8    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v9    # "tagQuota":I
    .end local v10    # "unsqueezed":I
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :cond_d
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 1266
    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .restart local v16    # "ageSeconds":I
    .restart local v17    # "cutoffMillis":J
    :goto_a
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v2, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    mul-int/2addr v0, v2

    int-to-long v2, v0

    monitor-exit p0

    return-wide v2

    .line 1174
    .end local v5    # "uptimeMillis":J
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .locals 29
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    .line 403
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 404
    .local v2, "temp":Ljava/io/File;
    const/4 v3, 0x0

    .line 405
    .local v3, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 408
    .local v4, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "tag":Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v6, "persist.sys.assert.enable"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 415
    .local v6, "assertState":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v7

    .line 416
    .local v7, "flags":I
    const-string v8, "DropBoxManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add tag="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isTagEnabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " flags=0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 416
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    and-int/lit8 v8, v7, 0x1

    if-nez v8, :cond_1c

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 421
    invoke-virtual {v1, v5}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v8, :cond_1

    .line 560
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 561
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 563
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 421
    :cond_0
    return-void

    .line 422
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v8

    .line 423
    .local v8, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 425
    .local v10, "lastTrim":J
    iget v12, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    new-array v12, v12, [B

    .line 426
    .local v12, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    move-object v3, v13

    .line 431
    move v13, v0

    .line 432
    .local v13, "read":I
    :goto_0
    array-length v14, v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ge v13, v14, :cond_4

    .line 433
    :try_start_2
    array-length v14, v12

    sub-int/2addr v14, v13

    invoke-virtual {v3, v12, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    .line 434
    .local v14, "n":I
    if-gtz v14, :cond_2

    goto :goto_1

    .line 437
    :cond_2
    if-nez v13, :cond_3

    .line 438
    iget-object v15, v1, Lcom/android/server/DropBoxManagerService;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v15, v0, v5, v12}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppIssueData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 439
    .local v0, "tempTag":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_3

    .line 440
    move-object v5, v0

    .line 444
    .end local v0    # "tempTag":Ljava/lang/String;
    :cond_3
    add-int/2addr v13, v14

    .line 445
    .end local v14    # "n":I
    const/4 v0, 0x0

    goto :goto_0

    .line 557
    .end local v7    # "flags":I
    .end local v8    # "max":J
    .end local v10    # "lastTrim":J
    .end local v12    # "buffer":[B
    .end local v13    # "read":I
    :catch_0
    move-exception v0

    goto/16 :goto_d

    .line 450
    .restart local v7    # "flags":I
    .restart local v8    # "max":J
    .restart local v10    # "lastTrim":J
    .restart local v12    # "buffer":[B
    .restart local v13    # "read":I
    :cond_4
    :goto_1
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v14, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v16, v2

    .end local v2    # "temp":Ljava/io/File;
    .local v16, "temp":Ljava/io/File;
    :try_start_4
    const-string v2, "drop"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-wide/from16 v17, v8

    .end local v8    # "max":J
    .local v17, "max":J
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v14, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v0

    .line 451
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    :try_start_5
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 452
    .local v0, "bufferSize":I
    const/16 v8, 0x1000

    if-le v0, v8, :cond_5

    const/16 v0, 0x1000

    .line 453
    :cond_5
    const/16 v8, 0x200

    if-ge v0, v8, :cond_6

    const/16 v0, 0x200

    :cond_6
    move v8, v0

    .line 454
    .end local v0    # "bufferSize":I
    .local v8, "bufferSize":I
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v9, v0

    .line 455
    .local v9, "foutput":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v9, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v4, v0

    .line 456
    array-length v0, v12

    if-ne v13, v0, :cond_7

    and-int/lit8 v0, v7, 0x4

    if-nez v0, :cond_7

    .line 457
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 458
    .end local v4    # "output":Ljava/io/OutputStream;
    .local v0, "output":Ljava/io/OutputStream;
    or-int/lit8 v7, v7, 0x4

    move-object v4, v0

    .line 462
    .end local v0    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :cond_7
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v4, v12, v0, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 465
    .local v14, "now":J
    sub-long v19, v14, v10

    const-wide/16 v21, 0x7530

    cmp-long v0, v19, v21

    if-lez v0, :cond_8

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v19

    move-wide/from16 v16, v19

    .line 467
    .end local v17    # "max":J
    .local v16, "max":J
    move-wide v10, v14

    move-wide/from16 v27, v10

    move-wide/from16 v10, v16

    move-wide/from16 v16, v27

    goto :goto_3

    .line 465
    .end local v16    # "max":J
    .restart local v17    # "max":J
    :cond_8
    move-wide/from16 v27, v10

    move-wide/from16 v10, v17

    move-wide/from16 v16, v27

    .line 470
    .end local v17    # "max":J
    .local v10, "max":J
    .local v16, "lastTrim":J
    :goto_3
    invoke-virtual {v3, v12}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v13, v0

    .line 471
    if-gtz v13, :cond_9

    .line 472
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 473
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 474
    const/4 v0, 0x0

    move-object v4, v0

    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v0    # "output":Ljava/io/OutputStream;
    goto :goto_4

    .line 476
    .end local v0    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :cond_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 479
    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 480
    .local v18, "len":J
    cmp-long v0, v18, v10

    if-lez v0, :cond_a

    .line 481
    const-string v0, "DropBoxManagerService"

    move/from16 v20, v8

    .end local v8    # "bufferSize":I
    .local v20, "bufferSize":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v9

    .end local v9    # "foutput":Ljava/io/FileOutputStream;
    .local v21, "foutput":Ljava/io/FileOutputStream;
    const-string v9, "Dropping: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v22, v14

    .end local v14    # "now":J
    .local v22, "now":J
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " bytes)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 484
    const/4 v0, 0x0

    .line 485
    .end local v2    # "temp":Ljava/io/File;
    .local v0, "temp":Ljava/io/File;
    move-object v2, v0

    goto :goto_5

    .line 480
    .end local v0    # "temp":Ljava/io/File;
    .end local v20    # "bufferSize":I
    .end local v21    # "foutput":Ljava/io/FileOutputStream;
    .end local v22    # "now":J
    .restart local v2    # "temp":Ljava/io/File;
    .restart local v8    # "bufferSize":I
    .restart local v9    # "foutput":Ljava/io/FileOutputStream;
    .restart local v14    # "now":J
    :cond_a
    move/from16 v20, v8

    move-object/from16 v21, v9

    move-wide/from16 v22, v14

    .line 487
    .end local v8    # "bufferSize":I
    .end local v9    # "foutput":Ljava/io/FileOutputStream;
    .end local v14    # "now":J
    .end local v18    # "len":J
    .restart local v20    # "bufferSize":I
    .restart local v21    # "foutput":Ljava/io/FileOutputStream;
    if-gtz v13, :cond_1b

    .line 491
    :goto_5
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v0, v8, v5}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveSystemErrorData(Landroid/content/Context;Ljava/lang/String;)V

    .line 494
    invoke-direct {v1, v2, v5, v7}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v8

    .line 495
    .local v8, "time":J
    const/4 v2, 0x0

    .line 501
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 503
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v0, v5, v8, v9}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->maybeDeferBroadcast(Ljava/lang/String;J)V

    goto :goto_6

    .line 505
    :cond_b
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v0, v5, v8, v9}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->sendBroadcast(Ljava/lang/String;J)V

    .line 507
    :goto_6
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v14, 0xd9

    const/4 v15, 0x0

    aput v14, v0, v15

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 511
    if-eqz v6, :cond_17

    .line 512
    new-instance v0, Ljava/io/File;

    const-string v14, "/data/system/dropbox"

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v14, v0

    .line 513
    .local v14, "logFiles":[Ljava/io/File;
    const/4 v0, 0x0

    .line 514
    .local v0, "name":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    if-eqz v14, :cond_16

    move-object/from16 v18, v0

    .end local v0    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    array-length v0, v14

    if-ge v15, v0, :cond_15

    .line 515
    aget-object v0, v14, v15

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 516
    .end local v18    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    move-wide/from16 v22, v10

    .end local v10    # "max":J
    .local v22, "max":J
    const-string v10, ".gz"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 517
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 519
    :cond_c
    const-string v10, ".lost"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 520
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x5

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_8

    .line 521
    :cond_d
    const-string v10, ".txt"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 522
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_8

    .line 523
    :cond_e
    const-string v10, ".dat"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 524
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_8

    .line 523
    :cond_f
    move-object v10, v0

    .line 527
    .end local v0    # "name":Ljava/lang/String;
    .local v10, "name":Ljava/lang/String;
    :goto_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy-MM-dd-HH_mm_ss_SSS"

    invoke-direct {v0, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 528
    .local v11, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v18, v0

    .line 529
    .local v18, "curDate":Ljava/util/Date;
    move-wide/from16 v24, v8

    move-object/from16 v8, v18

    .end local v18    # "curDate":Ljava/util/Date;
    .local v8, "curDate":Ljava/util/Date;
    .local v24, "time":J
    invoke-virtual {v11, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 531
    .local v9, "mDate":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v8

    .end local v8    # "curDate":Ljava/util/Date;
    .restart local v18    # "curDate":Ljava/util/Date;
    const-string v8, "@"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 533
    .local v8, "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v9

    .end local v9    # "mDate":Ljava/lang/String;
    .local v19, "mDate":Ljava/lang/String;
    const-string v9, "/data/system/dropbox/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v14, v15

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    const-string v0, "DropBoxManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v8

    .end local v8    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v26, "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "file :: /data/system/dropbox/"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v14, v15

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-eqz v6, :cond_14

    .line 536
    const-string/jumbo v0, "wtf"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "system_server"

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    :goto_9
    const-string/jumbo v0, "system_app_crash"

    .line 537
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "system_app_anr"

    .line 538
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "data_app_crash"

    .line 539
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "data_app_anr"

    .line 540
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 541
    :cond_11
    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mObjEpitaphLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 542
    :try_start_6
    aget-object v0, v14, v15

    invoke-static {v0, v5, v7}, Lcom/oem/debug/OPAssertInjector;->epitaph(Ljava/io/File;Ljava/lang/String;I)Z

    .line 543
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 545
    :cond_12
    :try_start_7
    const-string v0, "DropBoxManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "assertState="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_a

    .line 543
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v2    # "temp":Ljava/io/File;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "assertState":Z
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "entry":Landroid/os/DropBoxManager$Entry;
    :try_start_9
    throw v0

    .line 531
    .end local v19    # "mDate":Ljava/lang/String;
    .end local v26    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "temp":Ljava/io/File;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "assertState":Z
    .restart local v9    # "mDate":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "entry":Landroid/os/DropBoxManager$Entry;
    :cond_13
    move-object/from16 v19, v9

    .line 514
    .end local v9    # "mDate":Ljava/lang/String;
    .end local v11    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v18    # "curDate":Ljava/util/Date;
    :cond_14
    :goto_a
    add-int/lit8 v15, v15, 0x1

    move-object v0, v10

    move-wide/from16 v10, v22

    move-wide/from16 v8, v24

    goto/16 :goto_7

    .end local v22    # "max":J
    .end local v24    # "time":J
    .local v8, "time":J
    .local v10, "max":J
    .local v18, "name":Ljava/lang/String;
    :cond_15
    move-wide/from16 v24, v8

    move-wide/from16 v22, v10

    .end local v8    # "time":J
    .end local v10    # "max":J
    .restart local v22    # "max":J
    .restart local v24    # "time":J
    goto :goto_b

    .end local v18    # "name":Ljava/lang/String;
    .end local v22    # "max":J
    .end local v24    # "time":J
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v8    # "time":J
    .restart local v10    # "max":J
    :cond_16
    move-object/from16 v18, v0

    move-wide/from16 v24, v8

    move-wide/from16 v22, v10

    .end local v0    # "name":Ljava/lang/String;
    .end local v8    # "time":J
    .end local v10    # "max":J
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v22    # "max":J
    .restart local v24    # "time":J
    goto :goto_b

    .line 511
    .end local v14    # "logFiles":[Ljava/io/File;
    .end local v15    # "i":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v22    # "max":J
    .end local v24    # "time":J
    .restart local v8    # "time":J
    .restart local v10    # "max":J
    :cond_17
    move-wide/from16 v24, v8

    move-wide/from16 v22, v10

    .end local v8    # "time":J
    .end local v10    # "max":J
    .restart local v22    # "max":J
    .restart local v24    # "time":J
    goto :goto_b

    .line 507
    .end local v22    # "max":J
    .end local v24    # "time":J
    .restart local v8    # "time":J
    .restart local v10    # "max":J
    :cond_18
    move-wide/from16 v24, v8

    move-wide/from16 v22, v10

    .line 553
    .end local v8    # "time":J
    .end local v10    # "max":J
    .restart local v22    # "max":J
    .restart local v24    # "time":J
    :goto_b
    const-string v0, "anr"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "watchdog"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 554
    :cond_19
    const-string/jumbo v0, "persist.sys.copy.transaction"

    const-string v8, "1"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 560
    .end local v7    # "flags":I
    .end local v12    # "buffer":[B
    .end local v13    # "read":I
    .end local v16    # "lastTrim":J
    .end local v20    # "bufferSize":I
    .end local v21    # "foutput":Ljava/io/FileOutputStream;
    .end local v22    # "max":J
    .end local v24    # "time":J
    :cond_1a
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 561
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 563
    if-eqz v2, :cond_1d

    :goto_c
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_e

    .line 487
    .restart local v7    # "flags":I
    .restart local v10    # "max":J
    .restart local v12    # "buffer":[B
    .restart local v13    # "read":I
    .restart local v16    # "lastTrim":J
    .restart local v20    # "bufferSize":I
    .restart local v21    # "foutput":Ljava/io/FileOutputStream;
    :cond_1b
    move-wide/from16 v22, v10

    .end local v10    # "max":J
    .restart local v22    # "max":J
    move-wide/from16 v10, v16

    move/from16 v8, v20

    move-object/from16 v9, v21

    move-wide/from16 v17, v22

    goto/16 :goto_2

    .line 418
    .end local v12    # "buffer":[B
    .end local v13    # "read":I
    .end local v16    # "lastTrim":J
    .end local v20    # "bufferSize":I
    .end local v21    # "foutput":Ljava/io/FileOutputStream;
    .end local v22    # "max":J
    :cond_1c
    move-object/from16 v16, v2

    .end local v2    # "temp":Ljava/io/File;
    .local v16, "temp":Ljava/io/File;
    :try_start_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "assertState":Z
    .end local v16    # "temp":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "entry":Landroid/os/DropBoxManager$Entry;
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 560
    .end local v7    # "flags":I
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "assertState":Z
    .restart local v16    # "temp":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "entry":Landroid/os/DropBoxManager$Entry;
    :catchall_1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_f

    .line 557
    :catch_1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_d

    .line 560
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "temp":Ljava/io/File;
    .restart local v16    # "temp":Ljava/io/File;
    goto :goto_f

    .line 557
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    .line 558
    .local v0, "e":Ljava/io/IOException;
    :goto_d
    :try_start_b
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t write: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 560
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 561
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 563
    if-eqz v2, :cond_1d

    goto :goto_c

    .line 565
    :cond_1d
    :goto_e
    return-void

    .line 560
    :catchall_3
    move-exception v0

    :goto_f
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 561
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 563
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1e
    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 30
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 647
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DropBoxManagerService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 650
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 655
    nop

    .line 659
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 660
    .local v4, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "doPrint":Z
    const/4 v5, 0x0

    .line 661
    .local v5, "doFile":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v6, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move v8, v5

    move v5, v0

    .end local v0    # "doPrint":Z
    .local v5, "doPrint":Z
    .local v7, "i":I
    .local v8, "doFile":Z
    :goto_0
    if-eqz v3, :cond_8

    array-length v0, v3

    if-ge v7, v0, :cond_8

    .line 663
    aget-object v0, v3, v7

    const-string v9, "-p"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    aget-object v0, v3, v7

    const-string v9, "--print"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 665
    :cond_1
    aget-object v0, v3, v7

    const-string v9, "-f"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    aget-object v0, v3, v7

    const-string v9, "--file"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 667
    :cond_2
    aget-object v0, v3, v7

    const-string v9, "-h"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    aget-object v0, v3, v7

    const-string v9, "--help"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 675
    :cond_3
    aget-object v0, v3, v7

    const-string v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 676
    const-string v0, "Unknown argument: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v3, v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 678
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_4
    aget-object v0, v3, v7

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 668
    :cond_5
    :goto_1
    const-string v0, "Dropbox (dropbox) dump options:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    const-string v0, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    const-string v0, "    -h|--help: print this help"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    const-string v0, "    -p|--print: print full contents of each entry"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    const-string v0, "    -f|--file: print path of each entry\'s file"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    const-string v0, "  [timestamp] optionally filters to only those entries."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 674
    monitor-exit p0

    return-void

    .line 666
    :cond_6
    :goto_2
    const/4 v0, 0x1

    move v8, v0

    .end local v8    # "doFile":Z
    .local v0, "doFile":Z
    goto :goto_4

    .line 664
    .end local v0    # "doFile":Z
    .restart local v8    # "doFile":Z
    :cond_7
    :goto_3
    const/4 v0, 0x1

    move v5, v0

    .line 662
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 682
    .end local v7    # "i":I
    :cond_8
    :try_start_3
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string v0, "Max entries: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const-string v0, "Low priority rate limit period: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget-wide v9, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const-string v0, "Low priority tags: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 690
    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "a":Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 692
    .end local v7    # "a":Ljava/lang/String;
    :cond_9
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_a
    const/4 v0, 0x0

    .local v0, "numFound":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 696
    .local v7, "numArgs":I
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 697
    .local v9, "time":Landroid/text/format/Time;
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v10, v10, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_29

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 699
    .local v11, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v12, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v9, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 700
    const-string v12, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 701
    .local v12, "date":Ljava/lang/String;
    const/4 v13, 0x1

    .line 702
    .local v13, "match":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_7
    const/16 v16, 0x1

    if-ge v14, v7, :cond_d

    if-eqz v13, :cond_d

    .line 703
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .line 704
    .local v18, "arg":Ljava/lang/String;
    move-object/from16 v15, v18

    .end local v18    # "arg":Ljava/lang/String;
    .local v15, "arg":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v18, v6

    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_8

    :cond_b
    const/16 v16, 0x0

    goto :goto_8

    .end local v18    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v18, v6

    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_8
    move/from16 v13, v16

    .line 702
    .end local v15    # "arg":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v18

    goto :goto_7

    .end local v18    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v18, v6

    .line 706
    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "i":I
    .restart local v18    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v13, :cond_e

    move-object/from16 v6, v18

    goto :goto_6

    .line 708
    :cond_e
    add-int/lit8 v6, v0, 0x1

    .line 709
    .end local v0    # "numFound":I
    .local v6, "numFound":I
    if-eqz v5, :cond_f

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_f
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "(no tag)"

    goto :goto_9

    :cond_10
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v11, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v14, v0

    .line 713
    .local v14, "file":Ljava/io/File;
    if-nez v14, :cond_11

    .line 714
    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    move/from16 v25, v6

    move v15, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object/from16 v16, v10

    goto/16 :goto_18

    .line 716
    :cond_11
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    .line 717
    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    move/from16 v25, v6

    move v15, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object/from16 v16, v10

    goto/16 :goto_18

    .line 720
    :cond_12
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_13
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    const-string/jumbo v0, "text"

    goto :goto_a

    :cond_14
    const-string v0, "data"

    :goto_a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v25, v6

    move v15, v7

    .end local v6    # "numFound":I
    .end local v7    # "numArgs":I
    .local v15, "numArgs":I
    .local v25, "numFound":I
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    if-nez v8, :cond_15

    if-eqz v5, :cond_17

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17

    .line 727
    :cond_15
    if-nez v5, :cond_16

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :cond_16
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :cond_17
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_26

    if-nez v5, :cond_19

    if-nez v8, :cond_18

    goto :goto_b

    :cond_18
    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object/from16 v16, v10

    goto/16 :goto_17

    .line 732
    :cond_19
    :goto_b
    const/4 v6, 0x0

    .line 733
    .local v6, "dbe":Landroid/os/DropBoxManager$Entry;
    const/4 v7, 0x0

    .line 735
    .local v7, "isr":Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v0, Landroid/os/DropBoxManager$Entry;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v26, v6

    .end local v6    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v26, "dbe":Landroid/os/DropBoxManager$Entry;
    :try_start_5
    iget-object v6, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object/from16 v28, v7

    move/from16 v27, v8

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "doFile":Z
    .local v27, "doFile":Z
    .local v28, "isr":Ljava/io/InputStreamReader;
    :try_start_6
    iget-wide v7, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v29, v9

    .end local v9    # "time":Landroid/text/format/Time;
    .local v29, "time":Landroid/text/format/Time;
    :try_start_7
    iget v9, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    move-wide/from16 v21, v7

    move-object/from16 v23, v14

    move/from16 v24, v9

    invoke-direct/range {v19 .. v24}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v6, v0

    .line 738
    .end local v26    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v6    # "dbe":Landroid/os/DropBoxManager$Entry;
    if-eqz v5, :cond_1e

    .line 739
    :try_start_8
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 740
    .end local v28    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    const/16 v8, 0x1000

    :try_start_9
    new-array v8, v8, [C

    .line 741
    .local v8, "buf":[C
    const/4 v9, 0x0

    move/from16 v19, v9

    .line 743
    .local v19, "newline":Z
    :goto_c
    invoke-virtual {v7, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v9
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 744
    .local v9, "n":I
    if-gtz v9, :cond_1b

    .line 754
    .end local v9    # "n":I
    if-nez v19, :cond_1a

    :try_start_a
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_d

    .line 767
    .end local v8    # "buf":[C
    .end local v19    # "newline":Z
    :catch_0
    move-exception v0

    goto/16 :goto_13

    .line 755
    :cond_1a
    :goto_d
    move-object/from16 v28, v7

    goto/16 :goto_11

    .line 745
    .restart local v8    # "buf":[C
    .restart local v9    # "n":I
    .restart local v19    # "newline":Z
    :cond_1b
    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {v4, v8, v0, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 746
    add-int/lit8 v0, v9, -0x1

    aget-char v0, v8, v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v21, v7

    const/16 v7, 0xa

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .local v21, "isr":Ljava/io/InputStreamReader;
    if-ne v0, v7, :cond_1c

    move/from16 v0, v16

    goto :goto_e

    :cond_1c
    const/4 v0, 0x0

    :goto_e
    move/from16 v19, v0

    .line 749
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/high16 v7, 0x10000

    if-le v0, v7, :cond_1d

    .line 750
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 751
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_f

    .line 749
    :cond_1d
    const/4 v0, 0x0

    .line 753
    .end local v9    # "n":I
    :goto_f
    move-object/from16 v7, v21

    goto :goto_c

    .line 771
    .end local v8    # "buf":[C
    .end local v19    # "newline":Z
    :catchall_0
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v28, v21

    move-object v6, v0

    goto/16 :goto_15

    .line 767
    :catch_1
    move-exception v0

    move-object/from16 v7, v21

    goto/16 :goto_13

    .line 771
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v26, v6

    move-object/from16 v28, v21

    move-object v6, v0

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    goto/16 :goto_15

    .line 767
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v0

    move-object/from16 v21, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    goto/16 :goto_13

    .line 756
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v28    # "isr":Ljava/io/InputStreamReader;
    :cond_1e
    const/4 v0, 0x0

    const/16 v7, 0x46

    :try_start_d
    invoke-virtual {v6, v7}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 757
    .local v8, "text":Ljava/lang/String;
    const-string v9, "    "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    if-nez v8, :cond_1f

    .line 759
    const-string v0, "[null]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v8

    goto :goto_10

    .line 761
    :cond_1f
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v7, :cond_20

    move/from16 v0, v16

    .line 762
    .local v0, "truncated":Z
    :cond_20
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2f

    move-object/from16 v16, v8

    const/16 v8, 0xa

    .end local v8    # "text":Ljava/lang/String;
    .local v16, "text":Ljava/lang/String;
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    if-eqz v0, :cond_21

    const-string v7, " ..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .end local v0    # "truncated":Z
    :cond_21
    :goto_10
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 771
    .end local v16    # "text":Ljava/lang/String;
    :goto_11
    :try_start_e
    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 772
    if-eqz v28, :cond_22

    .line 774
    :try_start_f
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStreamReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 776
    :goto_12
    move-object/from16 v16, v10

    goto/16 :goto_17

    .line 775
    :catch_3
    move-exception v0

    goto :goto_12

    .line 772
    :cond_22
    move-object/from16 v16, v10

    goto/16 :goto_17

    .line 771
    :catchall_2
    move-exception v0

    move-object/from16 v26, v6

    move-object v6, v0

    goto/16 :goto_15

    .line 767
    :catch_4
    move-exception v0

    move-object/from16 v7, v28

    goto :goto_13

    .line 771
    .end local v6    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v26    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_3
    move-exception v0

    move-object v6, v0

    goto/16 :goto_15

    .line 767
    :catch_5
    move-exception v0

    move-object/from16 v6, v26

    move-object/from16 v7, v28

    goto :goto_13

    .line 771
    .end local v29    # "time":Landroid/text/format/Time;
    .local v9, "time":Landroid/text/format/Time;
    :catchall_4
    move-exception v0

    move-object/from16 v29, v9

    move-object v6, v0

    .end local v9    # "time":Landroid/text/format/Time;
    .restart local v29    # "time":Landroid/text/format/Time;
    goto/16 :goto_15

    .line 767
    .end local v29    # "time":Landroid/text/format/Time;
    .restart local v9    # "time":Landroid/text/format/Time;
    :catch_6
    move-exception v0

    move-object/from16 v29, v9

    move-object/from16 v6, v26

    move-object/from16 v7, v28

    .end local v9    # "time":Landroid/text/format/Time;
    .restart local v29    # "time":Landroid/text/format/Time;
    goto :goto_13

    .line 771
    .end local v27    # "doFile":Z
    .end local v28    # "isr":Ljava/io/InputStreamReader;
    .end local v29    # "time":Landroid/text/format/Time;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .local v8, "doFile":Z
    .restart local v9    # "time":Landroid/text/format/Time;
    :catchall_5
    move-exception v0

    move-object/from16 v28, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object v6, v0

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "doFile":Z
    .end local v9    # "time":Landroid/text/format/Time;
    .restart local v27    # "doFile":Z
    .restart local v28    # "isr":Ljava/io/InputStreamReader;
    .restart local v29    # "time":Landroid/text/format/Time;
    goto :goto_15

    .line 767
    .end local v27    # "doFile":Z
    .end local v28    # "isr":Ljava/io/InputStreamReader;
    .end local v29    # "time":Landroid/text/format/Time;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "doFile":Z
    .restart local v9    # "time":Landroid/text/format/Time;
    :catch_7
    move-exception v0

    move-object/from16 v28, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object/from16 v6, v26

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "doFile":Z
    .end local v9    # "time":Landroid/text/format/Time;
    .restart local v27    # "doFile":Z
    .restart local v28    # "isr":Ljava/io/InputStreamReader;
    .restart local v29    # "time":Landroid/text/format/Time;
    goto :goto_13

    .line 771
    .end local v26    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v27    # "doFile":Z
    .end local v28    # "isr":Ljava/io/InputStreamReader;
    .end local v29    # "time":Landroid/text/format/Time;
    .restart local v6    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "doFile":Z
    .restart local v9    # "time":Landroid/text/format/Time;
    :catchall_6
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v28, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object v6, v0

    .end local v6    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "doFile":Z
    .end local v9    # "time":Landroid/text/format/Time;
    .restart local v26    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v27    # "doFile":Z
    .restart local v28    # "isr":Ljava/io/InputStreamReader;
    .restart local v29    # "time":Landroid/text/format/Time;
    goto :goto_15

    .line 767
    .end local v26    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v27    # "doFile":Z
    .end local v28    # "isr":Ljava/io/InputStreamReader;
    .end local v29    # "time":Landroid/text/format/Time;
    .restart local v6    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "doFile":Z
    .restart local v9    # "time":Landroid/text/format/Time;
    :catch_8
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v28, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    .line 768
    .end local v8    # "doFile":Z
    .end local v9    # "time":Landroid/text/format/Time;
    .local v0, "e":Ljava/io/IOException;
    .restart local v27    # "doFile":Z
    .restart local v29    # "time":Landroid/text/format/Time;
    :goto_13
    :try_start_10
    const-string v8, "*** "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    const-string v8, "DropBoxManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v10

    const-string v10, "Can\'t read: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 771
    nop

    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_23

    :try_start_11
    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 772
    :cond_23
    if-eqz v7, :cond_27

    .line 774
    :try_start_12
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 776
    :goto_14
    goto :goto_17

    .line 775
    :catch_9
    move-exception v0

    goto :goto_14

    .line 771
    :catchall_7
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v28, v7

    move-object v6, v0

    .end local v6    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v26    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v28    # "isr":Ljava/io/InputStreamReader;
    :goto_15
    if-eqz v26, :cond_24

    :try_start_13
    invoke-virtual/range {v26 .. v26}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 772
    :cond_24
    if-eqz v28, :cond_25

    .line 774
    :try_start_14
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStreamReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 776
    goto :goto_16

    .line 775
    :catch_a
    move-exception v0

    .line 776
    :cond_25
    :goto_16
    :try_start_15
    throw v6

    .line 731
    .end local v26    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v27    # "doFile":Z
    .end local v28    # "isr":Ljava/io/InputStreamReader;
    .end local v29    # "time":Landroid/text/format/Time;
    .restart local v8    # "doFile":Z
    .restart local v9    # "time":Landroid/text/format/Time;
    :cond_26
    move/from16 v27, v8

    move-object/from16 v29, v9

    move-object/from16 v16, v10

    .line 781
    .end local v8    # "doFile":Z
    .end local v9    # "time":Landroid/text/format/Time;
    .restart local v27    # "doFile":Z
    .restart local v29    # "time":Landroid/text/format/Time;
    :cond_27
    :goto_17
    if-eqz v5, :cond_28

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .end local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v12    # "date":Ljava/lang/String;
    .end local v13    # "match":Z
    .end local v14    # "file":Ljava/io/File;
    :cond_28
    nop

    .line 698
    .end local v15    # "numArgs":I
    .end local v25    # "numFound":I
    .end local v27    # "doFile":Z
    .end local v29    # "time":Landroid/text/format/Time;
    .local v6, "numFound":I
    .local v7, "numArgs":I
    .restart local v8    # "doFile":Z
    .restart local v9    # "time":Landroid/text/format/Time;
    :goto_18
    move v7, v15

    move-object/from16 v10, v16

    move-object/from16 v6, v18

    move/from16 v0, v25

    move/from16 v8, v27

    move-object/from16 v9, v29

    .end local v6    # "numFound":I
    .end local v7    # "numArgs":I
    .end local v8    # "doFile":Z
    .end local v9    # "time":Landroid/text/format/Time;
    .restart local v15    # "numArgs":I
    .restart local v25    # "numFound":I
    .restart local v27    # "doFile":Z
    .restart local v29    # "time":Landroid/text/format/Time;
    goto/16 :goto_6

    .line 784
    .end local v15    # "numArgs":I
    .end local v18    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "numFound":I
    .end local v27    # "doFile":Z
    .end local v29    # "time":Landroid/text/format/Time;
    .local v0, "numFound":I
    .local v6, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "numArgs":I
    .restart local v8    # "doFile":Z
    .restart local v9    # "time":Landroid/text/format/Time;
    :cond_29
    move-object/from16 v18, v6

    move v15, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "numArgs":I
    .end local v8    # "doFile":Z
    .end local v9    # "time":Landroid/text/format/Time;
    .restart local v15    # "numArgs":I
    .restart local v18    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27    # "doFile":Z
    .restart local v29    # "time":Landroid/text/format/Time;
    if-nez v0, :cond_2a

    const-string v6, "(No entries found.)\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_2a
    if-eqz v3, :cond_2b

    array-length v6, v3

    if-nez v6, :cond_2d

    .line 787
    :cond_2b
    if-nez v5, :cond_2c

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_2c
    const-string v6, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 793
    monitor-exit p0

    return-void

    .line 651
    .end local v0    # "numFound":I
    .end local v4    # "out":Ljava/lang/StringBuilder;
    .end local v5    # "doPrint":Z
    .end local v15    # "numArgs":I
    .end local v18    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27    # "doFile":Z
    .end local v29    # "time":Landroid/text/format/Time;
    :catch_b
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 652
    .local v0, "e":Ljava/io/IOException;
    :try_start_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t initialize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t init"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 654
    monitor-exit p0

    return-void

    .line 646
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;JLjava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .locals 15
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 598
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v3, p4

    invoke-direct {p0, v0, v3}, Lcom/android/server/DropBoxManagerService;->checkPermission(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 599
    monitor-exit p0

    return-object v4

    .line 603
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    nop

    .line 609
    if-nez v2, :cond_1

    :try_start_2
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_0

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_1
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move-object v5, v0

    .line 610
    .local v5, "list":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v5, :cond_2

    monitor-exit p0

    return-object v4

    .line 612
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_2
    :try_start_3
    iget-object v0, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v6, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v7, 0x1

    add-long v7, p2, v7

    invoke-direct {v6, v7, v8}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v7, v0

    .line 613
    .local v7, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    .line 614
    :cond_3
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 615
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v8, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v4, v8, v9}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 617
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_4
    :try_start_4
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v0

    .line 619
    .local v14, "file":Ljava/io/File;
    :try_start_5
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v9, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v10, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v13, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v8, v0

    move-object v12, v14

    invoke-direct/range {v8 .. v13}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v8, "DropBoxManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 625
    nop

    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v14    # "file":Ljava/io/File;
    goto :goto_1

    .line 627
    :cond_5
    monitor-exit p0

    return-object v4

    .line 604
    .end local v5    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 605
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    const-string v5, "DropBoxManagerService"

    const-string v6, "Can\'t init"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 606
    monitor-exit p0

    return-object v4

    .line 597
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "millis":J
    .end local p4    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 568
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 570
    .local v0, "token":J
    :try_start_0
    const-string v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 570
    return v2

    .line 573
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .line 373
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_0

    .line 375
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/DropBoxManagerService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 388
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V

    .line 389
    nop

    .line 395
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    const-string v1, "dropbox"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 369
    return-void
.end method
