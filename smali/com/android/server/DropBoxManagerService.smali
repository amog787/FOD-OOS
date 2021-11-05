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

.field private static final DEFAULT_QUOTA_KB:I = 0x2000

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final PROFILE_DUMP:Z = false

.field private static final PROTO_MAX_DATA_BYTES:I = 0x40000

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

    .line 352
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    .line 353
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 364
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 139
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 141
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 142
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 146
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 148
    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 149
    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 151
    iput-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mObjEpitaphLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 365
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 366
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 369
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    .line 371
    new-instance v0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    .line 372
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # J

    .line 109
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

    .line 109
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 109
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

    .line 109
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/DropBoxManagerService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # J

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/DropBoxManagerService;->setLowPriorityRateLimit(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->addLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->removeLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/DropBoxManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 109
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->restoreDefaults()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/DropBoxManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 109
    iget-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DropBoxManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 109
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    return-wide v0
.end method

.method private declared-synchronized addLowPriorityTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    monitor-exit p0

    return-void

    .line 668
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

    .line 607
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PEEK_DROPBOX_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 609
    return v1

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.READ_LOGS"

    const-string v3, "DropBoxManagerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v2, 0x2b

    .line 618
    invoke-virtual {v0, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 626
    const/4 v0, 0x0

    return v0

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return v1

    .line 620
    :cond_2
    return v1
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

    .line 1211
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1217
    .local v2, "t":J
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 1218
    .local v0, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v4, 0x0

    .line 1219
    .local v4, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1220
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v4, v5

    .line 1221
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1224
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_0
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    const-wide/16 v6, 0x1

    if-nez v5, :cond_1

    .line 1225
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

    .line 1228
    :cond_1
    if-eqz v4, :cond_5

    .line 1229
    array-length v5, v4

    const/4 v8, 0x0

    move-wide v13, v2

    .end local v2    # "t":J
    .local v13, "t":J
    :goto_0
    if-ge v8, v5, :cond_4

    aget-object v2, v4, v8

    .line 1230
    .local v2, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1231
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1232
    .local v3, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v3, :cond_2

    iget-object v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v9, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1233
    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1235
    :cond_2
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_3

    .line 1236
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

    .line 1239
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

    .line 1229
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
    move-wide v2, v13

    goto :goto_2

    .line 1228
    .end local v13    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .local v2, "t":J
    :cond_5
    move-object/from16 v19, v0

    .line 1244
    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :goto_2
    if-nez p1, :cond_6

    .line 1245
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v6, p2

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    goto :goto_3

    .line 1247
    :cond_6
    move-object/from16 v6, p2

    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v7, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v20, v0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    move-object/from16 v23, p2

    move-wide/from16 v24, v2

    move/from16 v26, p3

    move/from16 v27, v7

    invoke-direct/range {v20 .. v27}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    :goto_3
    monitor-exit p0

    return-wide v2

    .line 1210
    .end local v2    # "t":J
    .end local v4    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .end local p1    # "temp":Ljava/io/File;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "flags":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 844
    .local p2, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    .line 846
    .local v3, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 847
    .local v5, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v6, p2

    invoke-direct {v1, v5, v6}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 849
    :cond_0
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 850
    .local v13, "file":Ljava/io/File;
    if-eqz v13, :cond_6

    iget v0, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 851
    goto :goto_0

    .line 854
    :cond_1
    const-wide v7, 0x20b00000001L

    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 855
    .local v14, "bToken":J
    const-wide v7, 0x10300000001L

    iget-wide v9, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 857
    :try_start_0
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v9, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v12, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v7, v0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 859
    .local v7, "dbe":Landroid/os/DropBoxManager$Entry;
    :try_start_1
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, v0

    .line 861
    .local v8, "is":Ljava/io/InputStream;
    if-eqz v8, :cond_4

    .line 862
    const/high16 v0, 0x40000

    :try_start_2
    new-array v9, v0, [B

    .line 863
    .local v9, "buf":[B
    const/4 v10, 0x0

    .line 864
    .local v10, "readBytes":I
    const/4 v11, 0x0

    .line 865
    .local v11, "n":I
    :goto_1
    if-ltz v11, :cond_2

    add-int v12, v10, v11

    move v10, v12

    if-ge v12, v0, :cond_2

    .line 866
    sub-int v12, v0, v10

    invoke-virtual {v8, v9, v10, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    move v11, v12

    goto :goto_1

    .line 868
    :cond_2
    const-wide v0, 0x10c00000002L

    .line 869
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    .line 868
    invoke-virtual {v3, v0, v1, v12}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 856
    .end local v9    # "buf":[B
    .end local v10    # "readBytes":I
    .end local v11    # "n":I
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_3

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_4
    invoke-virtual {v1, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "bToken":J
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    throw v1

    .line 871
    .restart local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "bToken":J
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v8    # "is":Ljava/io/InputStream;
    :cond_5
    :try_start_5
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 873
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto :goto_5

    .line 856
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_6
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v8, v0

    :try_start_7
    invoke-virtual {v1, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "bToken":J
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 871
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "bToken":J
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 872
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "DropBoxManagerService"

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v3, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 876
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "bToken":J
    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 850
    .restart local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v13    # "file":Ljava/io/File;
    :cond_6
    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 878
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "file":Ljava/io/File;
    :cond_7
    move-object/from16 v6, p2

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 879
    return-void
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    monitor-enter p0

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1193
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1198
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1200
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_0

    .line 1201
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    move-object v0, v1

    .line 1202
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_0
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1205
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_1
    monitor-exit p0

    return-void

    .line 1191
    .end local p1    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getLowPriorityResourceConfigs()V
    .locals 5

    .line 1357
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 1360
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1362
    .local v0, "lowPrioritytags":[Ljava/lang/String;
    array-length v1, v0

    .line 1363
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 1364
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1365
    return-void

    .line 1367
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1368
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1369
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1371
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

    .line 1152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1154
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

    .line 1157
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

    .line 1158
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1161
    goto :goto_1

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
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

    .line 1164
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_6

    .line 1165
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1166
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_5

    .line 1168
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 1169
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 1172
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 1173
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1174
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1176
    goto :goto_3

    .line 1179
    :cond_3
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 1181
    .local v4, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1184
    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 1172
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1166
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

    .line 1188
    .end local v0    # "files":[Ljava/io/File;
    :cond_6
    monitor-exit p0

    return-void

    .line 1151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z
    .locals 6
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/DropBoxManagerService$EntryFile;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 833
    .local p2, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-wide v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v0, v1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "date":Ljava/lang/String;
    const/4 v1, 0x1

    .line 835
    .local v1, "match":Z
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 836
    .local v2, "numArgs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    if-eqz v1, :cond_2

    .line 837
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 838
    .local v4, "arg":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move v1, v5

    .line 836
    .end local v4    # "arg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 840
    .end local v3    # "i":I
    :cond_2
    return v1
.end method

.method private declared-synchronized removeLowPriorityTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    return-void

    .line 672
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

    .line 677
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    monitor-exit p0

    return-void

    .line 676
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

    .line 665
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    monitor-exit p0

    return-void

    .line 664
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "period":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized trimToFit()J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1259
    :try_start_0
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "dropbox_age_seconds"

    const v3, 0x3f480

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    .line 1261
    .local v2, "ageSeconds":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "dropbox_max_files"

    .line 1263
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1264
    const/16 v4, 0x12c

    goto :goto_0

    :cond_0
    const/16 v4, 0x3e8

    .line 1261
    :goto_0
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 1265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v5, v0

    sub-long/2addr v3, v5

    .line 1266
    .local v3, "cutoffMillis":J
    :goto_1
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1267
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1268
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

    .line 1269
    goto :goto_2

    .line 1272
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_1
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1273
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

    .line 1274
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

    .line 1275
    :cond_3
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1276
    .end local v0    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v5    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_1

    .line 1283
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1284
    .local v5, "uptimeMillis":J
    iget-wide v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v9, 0x1388

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-lez v0, :cond_5

    .line 1285
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dropbox_quota_percent"

    const/16 v8, 0xa

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    .line 1287
    .local v7, "quotaPercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_reserve_percent"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    .line 1289
    .local v8, "reservePercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_quota_kb"

    const/16 v10, 0x2000

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 1292
    .local v9, "quotaKb":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    .line 1294
    .local v10, "dirPath":Ljava/lang/String;
    :try_start_1
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1297
    nop

    .line 1298
    :try_start_2
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v11

    .line 1299
    .local v11, "available":J
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v13

    move v15, v2

    move-wide/from16 v16, v3

    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .local v15, "ageSeconds":I
    .local v16, "cutoffMillis":J
    int-to-long v2, v8

    mul-long/2addr v13, v2

    const-wide/16 v2, 0x64

    div-long/2addr v13, v2

    sub-long v13, v11, v13

    .line 1300
    .local v13, "nonreserved":J
    move-object v4, v10

    move-wide/from16 v18, v11

    .end local v10    # "dirPath":Ljava/lang/String;
    .end local v11    # "available":J
    .local v4, "dirPath":Ljava/lang/String;
    .local v18, "available":J
    int-to-long v10, v7

    mul-long/2addr v10, v13

    div-long/2addr v10, v2

    move-wide v2, v10

    .line 1301
    .local v2, "maxAvailableLong":J
    const-wide/32 v10, 0x7fffffff

    .line 1302
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 1301
    move-wide/from16 v20, v2

    const-wide/16 v2, 0x0

    .end local v2    # "maxAvailableLong":J
    .local v20, "maxAvailableLong":J
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    .line 1303
    .local v0, "maxAvailable":I
    mul-int/lit16 v2, v9, 0x400

    iget v3, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v2, v3

    .line 1304
    .local v2, "maximum":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 1305
    iput-wide v5, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    goto :goto_3

    .line 1295
    .end local v0    # "maxAvailable":I
    .end local v4    # "dirPath":Ljava/lang/String;
    .end local v13    # "nonreserved":J
    .end local v15    # "ageSeconds":I
    .end local v16    # "cutoffMillis":J
    .end local v18    # "available":J
    .end local v20    # "maxAvailableLong":J
    .local v2, "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    .restart local v10    # "dirPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    move v15, v2

    move-wide/from16 v16, v3

    move-object v4, v10

    .line 1296
    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .end local v10    # "dirPath":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "dirPath":Ljava/lang/String;
    .restart local v15    # "ageSeconds":I
    .restart local v16    # "cutoffMillis":J
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t restat: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1284
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "dirPath":Ljava/lang/String;
    .end local v7    # "quotaPercent":I
    .end local v8    # "reservePercent":I
    .end local v9    # "quotaKb":I
    .end local v15    # "ageSeconds":I
    .end local v16    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :cond_5
    move v15, v2

    move-wide/from16 v16, v3

    .line 1322
    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .restart local v15    # "ageSeconds":I
    .restart local v16    # "cutoffMillis":J
    :goto_3
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v2, :cond_c

    .line 1324
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .local v0, "unsqueezed":I
    const/4 v2, 0x0

    .line 1325
    .local v2, "squeezed":I
    new-instance v3, Ljava/util/TreeSet;

    iget-object v4, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1326
    .local v3, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v2

    move v2, v0

    .end local v0    # "unsqueezed":I
    .local v2, "unsqueezed":I
    .local v7, "squeezed":I
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1327
    .local v0, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v7, :cond_6

    iget v8, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v9, v2

    div-int/2addr v9, v7

    if-gt v8, v9, :cond_6

    .line 1328
    goto :goto_5

    .line 1330
    :cond_6
    iget v8, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v2, v8

    .line 1331
    nop

    .end local v0    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    add-int/lit8 v7, v7, 0x1

    .line 1332
    goto :goto_4

    .line 1333
    :cond_7
    :goto_5
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v7

    move v4, v0

    .line 1336
    .local v4, "tagQuota":I
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v9, v0

    .line 1337
    .local v9, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v0, v10, :cond_8

    goto :goto_9

    .line 1338
    :cond_8
    :goto_7
    iget v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v0, v4, :cond_b

    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1339
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v10, v0

    .line 1340
    .local v10, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v10}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v11, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v0, v11

    iput v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1341
    :cond_9
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v10}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v12, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1344
    :cond_a
    :try_start_3
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v10, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1345
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v12, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v13, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1348
    goto :goto_8

    .line 1346
    :catch_1
    move-exception v0

    .line 1347
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v11, "DropBoxManagerService"

    const-string v12, "Can\'t write tombstone file"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1349
    .end local v0    # "e":Ljava/io/IOException;
    .end local v10    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :goto_8
    goto :goto_7

    .line 1350
    .end local v9    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_b
    goto :goto_6

    .line 1353
    .end local v2    # "unsqueezed":I
    .end local v3    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v4    # "tagQuota":I
    .end local v7    # "squeezed":I
    :cond_c
    :goto_9
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v2, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    mul-int/2addr v0, v2

    int-to-long v2, v0

    monitor-exit p0

    return-wide v2

    .line 1258
    .end local v5    # "uptimeMillis":J
    .end local v15    # "ageSeconds":I
    .end local v16    # "cutoffMillis":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .locals 27
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    .line 414
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 415
    .local v2, "temp":Ljava/io/File;
    const/4 v3, 0x0

    .line 416
    .local v3, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 419
    .local v4, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.assert.enable"

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 432
    .local v7, "assertState":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v0

    move v8, v0

    .line 433
    .local v8, "flags":I
    const-string v0, "DropBoxManagerService"

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

    .line 434
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 433
    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    and-int/lit8 v0, v8, 0x1

    if-nez v0, :cond_1c

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 438
    invoke-virtual {v1, v5}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v0, :cond_1

    .line 586
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 587
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 589
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 438
    :cond_0
    return-void

    .line 439
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v9

    .line 440
    .local v9, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 442
    .local v11, "lastTrim":J
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    new-array v0, v0, [B

    move-object v13, v0

    .line 443
    .local v13, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v3, v0

    .line 448
    const/4 v0, 0x0

    move-object v14, v5

    move v5, v0

    .line 449
    .local v5, "read":I
    .local v14, "tag":Ljava/lang/String;
    :goto_0
    :try_start_2
    array-length v0, v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ge v5, v0, :cond_4

    .line 450
    :try_start_3
    array-length v0, v13

    sub-int/2addr v0, v5

    invoke-virtual {v3, v13, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 451
    .local v0, "n":I
    if-gtz v0, :cond_2

    goto :goto_1

    .line 454
    :cond_2
    if-nez v5, :cond_3

    .line 455
    iget-object v15, v1, Lcom/android/server/DropBoxManagerService;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v15, v6, v14, v13}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppIssueData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 456
    .local v6, "tempTag":Ljava/lang/String;
    if-eqz v6, :cond_3

    if-eq v6, v14, :cond_3

    .line 457
    move-object v14, v6

    .line 461
    .end local v6    # "tempTag":Ljava/lang/String;
    :cond_3
    add-int/2addr v5, v0

    .line 462
    .end local v0    # "n":I
    const/4 v6, 0x0

    goto :goto_0

    .line 586
    .end local v5    # "read":I
    .end local v8    # "flags":I
    .end local v9    # "max":J
    .end local v11    # "lastTrim":J
    .end local v13    # "buffer":[B
    :catchall_0
    move-exception v0

    move-object v5, v14

    goto/16 :goto_f

    .line 583
    :catch_0
    move-exception v0

    move-object v5, v14

    goto/16 :goto_d

    .line 468
    .restart local v5    # "read":I
    .restart local v8    # "flags":I
    .restart local v9    # "max":J
    .restart local v11    # "lastTrim":J
    .restart local v13    # "buffer":[B
    :cond_4
    :goto_1
    :try_start_4
    const-string v0, "anr"

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v0, :cond_5

    :try_start_5
    const-string/jumbo v0, "watchdog"

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_6

    .line 472
    :cond_5
    :try_start_6
    const-string/jumbo v0, "persist.sys.copy.transaction"

    const-string v6, "1"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 475
    goto :goto_2

    .line 473
    :catch_1
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v6, "DropBoxManagerService"

    const-string v15, "can not copy transaction file"

    invoke-static {v6, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v16, v2

    .end local v2    # "temp":Ljava/io/File;
    .local v16, "temp":Ljava/io/File;
    :try_start_8
    const-string v2, "drop"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-wide/from16 v17, v9

    .end local v9    # "max":J
    .local v17, "max":J
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v2, v0

    .line 482
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    :try_start_9
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 483
    .local v0, "bufferSize":I
    const/16 v6, 0x1000

    if-le v0, v6, :cond_7

    const/16 v0, 0x1000

    .line 484
    :cond_7
    const/16 v6, 0x200

    if-ge v0, v6, :cond_8

    const/16 v0, 0x200

    :cond_8
    move v6, v0

    .line 485
    .end local v0    # "bufferSize":I
    .local v6, "bufferSize":I
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v9, v0

    .line 486
    .local v9, "foutput":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v9, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v4, v0

    .line 487
    array-length v0, v13

    if-ne v5, v0, :cond_9

    and-int/lit8 v0, v8, 0x4

    if-nez v0, :cond_9

    .line 488
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 489
    .end local v4    # "output":Ljava/io/OutputStream;
    .local v0, "output":Ljava/io/OutputStream;
    or-int/lit8 v8, v8, 0x4

    move-object v4, v0

    .line 493
    .end local v0    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :cond_9
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {v4, v13, v10, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 496
    .local v19, "now":J
    sub-long v21, v19, v11

    const-wide/16 v23, 0x7530

    cmp-long v0, v21, v23

    if-lez v0, :cond_a

    .line 497
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v21

    move-wide/from16 v16, v21

    .line 498
    .end local v17    # "max":J
    .local v16, "max":J
    move-wide/from16 v10, v19

    move v0, v5

    move-wide v11, v10

    move v10, v6

    move-wide/from16 v5, v16

    .end local v11    # "lastTrim":J
    .local v10, "lastTrim":J
    goto :goto_4

    .line 496
    .end local v10    # "lastTrim":J
    .end local v16    # "max":J
    .restart local v11    # "lastTrim":J
    .restart local v17    # "max":J
    :cond_a
    move v0, v5

    move v10, v6

    move-wide/from16 v5, v17

    .line 501
    .end local v6    # "bufferSize":I
    .end local v17    # "max":J
    .local v0, "read":I
    .local v5, "max":J
    .local v10, "bufferSize":I
    :goto_4
    invoke-virtual {v3, v13}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 502
    .end local v0    # "read":I
    .local v15, "read":I
    if-gtz v15, :cond_b

    .line 503
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 504
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 505
    const/4 v0, 0x0

    move-object v4, v0

    .end local v4    # "output":Ljava/io/OutputStream;
    .local v0, "output":Ljava/io/OutputStream;
    goto :goto_5

    .line 507
    .end local v0    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :cond_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 510
    :goto_5
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 511
    .local v16, "len":J
    cmp-long v0, v16, v5

    if-lez v0, :cond_c

    .line 512
    const-string v0, "DropBoxManagerService"

    move-object/from16 v18, v9

    .end local v9    # "foutput":Ljava/io/FileOutputStream;
    .local v18, "foutput":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v10

    .end local v10    # "bufferSize":I
    .local v21, "bufferSize":I
    const-string v10, "Dropping: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v22, v11

    .end local v11    # "lastTrim":J
    .local v22, "lastTrim":J
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " > "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " bytes)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 515
    const/4 v0, 0x0

    .line 516
    .end local v2    # "temp":Ljava/io/File;
    .local v0, "temp":Ljava/io/File;
    move-object v2, v0

    goto :goto_6

    .line 511
    .end local v0    # "temp":Ljava/io/File;
    .end local v18    # "foutput":Ljava/io/FileOutputStream;
    .end local v21    # "bufferSize":I
    .end local v22    # "lastTrim":J
    .restart local v2    # "temp":Ljava/io/File;
    .restart local v9    # "foutput":Ljava/io/FileOutputStream;
    .restart local v10    # "bufferSize":I
    .restart local v11    # "lastTrim":J
    :cond_c
    move-object/from16 v18, v9

    move/from16 v21, v10

    move-wide/from16 v22, v11

    .line 518
    .end local v9    # "foutput":Ljava/io/FileOutputStream;
    .end local v10    # "bufferSize":I
    .end local v11    # "lastTrim":J
    .end local v16    # "len":J
    .end local v19    # "now":J
    .restart local v18    # "foutput":Ljava/io/FileOutputStream;
    .restart local v21    # "bufferSize":I
    .restart local v22    # "lastTrim":J
    if-gtz v15, :cond_1b

    .line 522
    :goto_6
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9, v14}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveSystemErrorData(Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    invoke-direct {v1, v2, v14, v8}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v9

    .line 526
    .local v9, "time":J
    const/4 v2, 0x0

    .line 532
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 534
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v0, v14, v9, v10}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->maybeDeferBroadcast(Ljava/lang/String;J)V

    goto :goto_7

    .line 536
    :cond_d
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v0, v14, v9, v10}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->sendBroadcast(Ljava/lang/String;J)V

    .line 539
    :goto_7
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v11, 0xb8

    const/4 v12, 0x0

    aput v11, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 543
    if-eqz v7, :cond_19

    .line 544
    new-instance v0, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v11, v0

    .line 545
    .local v11, "logFiles":[Ljava/io/File;
    const/4 v0, 0x0

    .line 546
    .local v0, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    if-eqz v11, :cond_18

    move-object/from16 v16, v0

    .end local v0    # "name":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    array-length v0, v11

    if-ge v12, v0, :cond_17

    .line 547
    aget-object v0, v11, v12

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 548
    .end local v16    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    move-wide/from16 v19, v5

    .end local v5    # "max":J
    .local v19, "max":J
    const-string v5, ".gz"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 549
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 551
    :cond_e
    const-string v5, ".lost"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 552
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_9

    .line 553
    :cond_f
    const-string v5, ".txt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 554
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_9

    .line 555
    :cond_10
    const-string v5, ".dat"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 556
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_9

    .line 555
    :cond_11
    move-object v5, v0

    .line 559
    .end local v0    # "name":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    :goto_9
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd-HH_mm_ss_SSS"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 560
    .local v6, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v16, v0

    .line 561
    .local v16, "curDate":Ljava/util/Date;
    move-wide/from16 v24, v9

    move-object/from16 v9, v16

    .end local v16    # "curDate":Ljava/util/Date;
    .local v9, "curDate":Ljava/util/Date;
    .local v24, "time":J
    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 563
    .local v10, "mDate":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v6

    .end local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .local v16, "formatter":Ljava/text/SimpleDateFormat;
    const-string v6, "@"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 565
    .local v6, "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    .end local v5    # "name":Ljava/lang/String;
    .local v17, "name":Ljava/lang/String;
    const-string v5, "/data/system/dropbox/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v11, v12

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    const-string v0, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v6

    .end local v6    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v26, "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "file :: /data/system/dropbox/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v11, v12

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    if-eqz v7, :cond_16

    .line 568
    const-string/jumbo v0, "wtf"

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "system_server"

    const/4 v5, 0x0

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_a

    :cond_12
    const/4 v5, 0x0

    :goto_a
    const-string/jumbo v0, "system_app_crash"

    .line 569
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "system_app_anr"

    .line 570
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "data_app_crash"

    .line 571
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "data_app_anr"

    .line 572
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 573
    :cond_13
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mObjEpitaphLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 574
    :try_start_a
    aget-object v0, v11, v12

    invoke-static {v0, v14, v8}, Lcom/oem/debug/OPAssertInjector;->epitaph(Ljava/io/File;Ljava/lang/String;I)Z

    .line 575
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 577
    :cond_14
    :try_start_b
    const-string v0, "DropBoxManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assertState="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_b

    .line 575
    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v2    # "temp":Ljava/io/File;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    .end local v7    # "assertState":Z
    .end local v14    # "tag":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "entry":Landroid/os/DropBoxManager$Entry;
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 563
    .end local v17    # "name":Ljava/lang/String;
    .end local v26    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "temp":Ljava/io/File;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "assertState":Z
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "entry":Landroid/os/DropBoxManager$Entry;
    :cond_15
    move-object/from16 v17, v5

    .line 546
    .end local v5    # "name":Ljava/lang/String;
    .end local v9    # "curDate":Ljava/util/Date;
    .end local v10    # "mDate":Ljava/lang/String;
    .end local v16    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v17    # "name":Ljava/lang/String;
    :cond_16
    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    move-wide/from16 v5, v19

    move-wide/from16 v9, v24

    goto/16 :goto_8

    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "max":J
    .end local v24    # "time":J
    .local v5, "max":J
    .local v9, "time":J
    .local v16, "name":Ljava/lang/String;
    :cond_17
    move-wide/from16 v19, v5

    move-wide/from16 v24, v9

    .end local v5    # "max":J
    .end local v9    # "time":J
    .restart local v19    # "max":J
    .restart local v24    # "time":J
    goto :goto_c

    .end local v16    # "name":Ljava/lang/String;
    .end local v19    # "max":J
    .end local v24    # "time":J
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v5    # "max":J
    .restart local v9    # "time":J
    :cond_18
    move-object/from16 v16, v0

    move-wide/from16 v19, v5

    move-wide/from16 v24, v9

    .end local v0    # "name":Ljava/lang/String;
    .end local v5    # "max":J
    .end local v9    # "time":J
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v19    # "max":J
    .restart local v24    # "time":J
    goto :goto_c

    .line 543
    .end local v11    # "logFiles":[Ljava/io/File;
    .end local v12    # "i":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v19    # "max":J
    .end local v24    # "time":J
    .restart local v5    # "max":J
    .restart local v9    # "time":J
    :cond_19
    move-wide/from16 v19, v5

    move-wide/from16 v24, v9

    .end local v5    # "max":J
    .end local v9    # "time":J
    .restart local v19    # "max":J
    .restart local v24    # "time":J
    goto :goto_c

    .line 539
    .end local v19    # "max":J
    .end local v24    # "time":J
    .restart local v5    # "max":J
    .restart local v9    # "time":J
    :cond_1a
    move-wide/from16 v19, v5

    move-wide/from16 v24, v9

    .line 586
    .end local v5    # "max":J
    .end local v8    # "flags":I
    .end local v9    # "time":J
    .end local v13    # "buffer":[B
    .end local v15    # "read":I
    .end local v18    # "foutput":Ljava/io/FileOutputStream;
    .end local v21    # "bufferSize":I
    .end local v22    # "lastTrim":J
    :goto_c
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 587
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 589
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    .line 518
    .restart local v5    # "max":J
    .restart local v8    # "flags":I
    .restart local v13    # "buffer":[B
    .restart local v15    # "read":I
    .restart local v18    # "foutput":Ljava/io/FileOutputStream;
    .restart local v21    # "bufferSize":I
    .restart local v22    # "lastTrim":J
    :cond_1b
    move-wide/from16 v19, v5

    .end local v5    # "max":J
    .restart local v19    # "max":J
    move v5, v15

    move-object/from16 v9, v18

    move-wide/from16 v17, v19

    move/from16 v6, v21

    move-wide/from16 v11, v22

    goto/16 :goto_3

    .line 586
    .end local v2    # "temp":Ljava/io/File;
    .end local v8    # "flags":I
    .end local v13    # "buffer":[B
    .end local v15    # "read":I
    .end local v18    # "foutput":Ljava/io/FileOutputStream;
    .end local v19    # "max":J
    .end local v21    # "bufferSize":I
    .end local v22    # "lastTrim":J
    .local v16, "temp":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object v5, v14

    move-object/from16 v2, v16

    goto :goto_f

    .line 583
    :catch_2
    move-exception v0

    move-object v5, v14

    move-object/from16 v2, v16

    goto :goto_d

    .line 586
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object v5, v14

    .end local v2    # "temp":Ljava/io/File;
    .restart local v16    # "temp":Ljava/io/File;
    goto :goto_f

    .line 583
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    :catch_3
    move-exception v0

    move-object/from16 v16, v2

    move-object v5, v14

    .end local v2    # "temp":Ljava/io/File;
    .restart local v16    # "temp":Ljava/io/File;
    goto :goto_d

    .line 435
    .end local v14    # "tag":Ljava/lang/String;
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    .local v5, "tag":Ljava/lang/String;
    .restart local v8    # "flags":I
    :cond_1c
    move-object/from16 v16, v2

    .end local v2    # "temp":Ljava/io/File;
    .restart local v16    # "temp":Ljava/io/File;
    :try_start_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v7    # "assertState":Z
    .end local v16    # "temp":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "entry":Landroid/os/DropBoxManager$Entry;
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 586
    .end local v8    # "flags":I
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v7    # "assertState":Z
    .restart local v16    # "temp":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "entry":Landroid/os/DropBoxManager$Entry;
    :catchall_4
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_f

    .line 583
    :catch_4
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_d

    .line 586
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    :catchall_5
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "temp":Ljava/io/File;
    .restart local v16    # "temp":Ljava/io/File;
    goto :goto_f

    .line 583
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    .line 584
    .local v0, "e":Ljava/io/IOException;
    :goto_d
    :try_start_f
    const-string v6, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t write: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 586
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 587
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 589
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 591
    :cond_1d
    move-object v14, v5

    .end local v5    # "tag":Ljava/lang/String;
    .restart local v14    # "tag":Ljava/lang/String;
    :cond_1e
    :goto_e
    return-void

    .line 586
    .end local v14    # "tag":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :catchall_6
    move-exception v0

    :goto_f
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 587
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 589
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 590
    :cond_1f
    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 28
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 681
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

    .line 684
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 689
    nop

    .line 693
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 694
    .local v4, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "doPrint":Z
    const/4 v5, 0x0

    .line 695
    .local v5, "doFile":Z
    const/4 v6, 0x0

    .line 696
    .local v6, "dumpProto":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v7, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    move/from16 v27, v5

    move v5, v0

    move v0, v8

    move v8, v6

    move/from16 v6, v27

    .local v0, "i":I
    .local v5, "doPrint":Z
    .local v6, "doFile":Z
    .local v8, "dumpProto":Z
    :goto_0
    if-eqz v3, :cond_9

    array-length v9, v3

    if-ge v0, v9, :cond_9

    .line 698
    aget-object v9, v3, v0

    const-string v10, "-p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    aget-object v9, v3, v0

    const-string v10, "--print"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_3

    .line 700
    :cond_1
    aget-object v9, v3, v0

    const-string v10, "-f"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    aget-object v9, v3, v0

    const-string v10, "--file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    .line 702
    :cond_2
    aget-object v9, v3, v0

    const-string v10, "--proto"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 703
    const/4 v8, 0x1

    goto :goto_4

    .line 704
    :cond_3
    aget-object v9, v3, v0

    const-string v10, "-h"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    aget-object v9, v3, v0

    const-string v10, "--help"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    .line 713
    :cond_4
    aget-object v9, v3, v0

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 714
    const-string v9, "Unknown argument: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 716
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_5
    aget-object v9, v3, v0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 705
    :cond_6
    :goto_1
    const-string v9, "Dropbox (dropbox) dump options:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    const-string v9, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    const-string v9, "    -h|--help: print this help"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    const-string v9, "    -p|--print: print full contents of each entry"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    const-string v9, "    -f|--file: print path of each entry\'s file"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    const-string v9, "    --proto: dump data to proto"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    const-string v9, "  [timestamp] optionally filters to only those entries."

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 712
    monitor-exit p0

    return-void

    .line 701
    :cond_7
    :goto_2
    const/4 v6, 0x1

    goto :goto_4

    .line 699
    :cond_8
    :goto_3
    const/4 v5, 0x1

    .line 697
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 720
    .end local v0    # "i":I
    :cond_9
    if-eqz v8, :cond_a

    .line 721
    move-object/from16 v9, p1

    :try_start_3
    invoke-direct {v1, v9, v7}, Lcom/android/server/DropBoxManagerService;->dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 722
    monitor-exit p0

    return-void

    .line 725
    :cond_a
    move-object/from16 v9, p1

    :try_start_4
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const-string v0, "Max entries: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const-string v0, "Low priority rate limit period: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    iget-wide v10, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string v0, "Low priority tags: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 733
    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, "a":Ljava/lang/String;
    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 735
    .end local v10    # "a":Ljava/lang/String;
    :cond_b
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_c
    const/4 v0, 0x0

    .line 739
    .local v0, "numFound":I
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v10, v10, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 741
    .local v11, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-direct {v1, v11, v7}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_d

    goto :goto_6

    .line 743
    :cond_d
    add-int/lit8 v12, v0, 0x1

    .line 744
    .end local v0    # "numFound":I
    .local v12, "numFound":I
    if-eqz v5, :cond_e

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_e
    iget-wide v13, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v13, v14}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 747
    .local v13, "date":Ljava/lang/String;
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, "(no tag)"

    goto :goto_7

    :cond_f
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v11, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v15, v0

    .line 750
    .local v15, "file":Ljava/io/File;
    if-nez v15, :cond_10

    .line 751
    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    move/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_16

    .line 753
    :cond_10
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    const/16 v20, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 754
    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    move/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_16

    .line 757
    :cond_11
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    :cond_12
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_13

    const-string/jumbo v0, "text"

    goto :goto_8

    :cond_13
    const-string v0, "data"

    :goto_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v7

    move/from16 v22, v8

    .end local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "dumpProto":Z
    .local v21, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v22, "dumpProto":Z
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    if-nez v6, :cond_14

    if-eqz v5, :cond_16

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_16

    .line 764
    :cond_14
    if-nez v5, :cond_15

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_15
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :cond_16
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_25

    if-nez v5, :cond_18

    if-nez v6, :cond_17

    goto :goto_9

    :cond_17
    move/from16 v23, v6

    goto/16 :goto_15

    .line 769
    :cond_18
    :goto_9
    const/4 v7, 0x0

    .line 770
    .local v7, "dbe":Landroid/os/DropBoxManager$Entry;
    const/4 v8, 0x0

    .line 772
    .local v8, "isr":Ljava/io/InputStreamReader;
    :try_start_5
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v14, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move/from16 v23, v6

    move-object/from16 v24, v7

    .end local v6    # "doFile":Z
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v23, "doFile":Z
    .local v24, "dbe":Landroid/os/DropBoxManager$Entry;
    :try_start_6
    iget-wide v6, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v25, v8

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .local v25, "isr":Ljava/io/InputStreamReader;
    :try_start_7
    iget v8, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v16, v14

    move-object v14, v0

    move-object/from16 v26, v15

    .end local v15    # "file":Ljava/io/File;
    .local v26, "file":Ljava/io/File;
    move-object/from16 v15, v16

    move-wide/from16 v16, v6

    move-object/from16 v18, v26

    move/from16 v19, v8

    :try_start_8
    invoke-direct/range {v14 .. v19}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v7, v0

    .line 775
    .end local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    const/4 v6, 0x0

    if-eqz v5, :cond_1d

    .line 776
    :try_start_9
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 777
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    const/16 v14, 0x1000

    :try_start_a
    new-array v14, v14, [C

    .line 778
    .local v14, "buf":[C
    const/4 v15, 0x0

    .line 780
    .local v15, "newline":Z
    :goto_a
    invoke-virtual {v8, v14}, Ljava/io/InputStreamReader;->read([C)I

    move-result v16

    move/from16 v17, v16

    .line 781
    .local v17, "n":I
    move/from16 v0, v17

    .end local v17    # "n":I
    .local v0, "n":I
    if-gtz v0, :cond_1a

    .line 791
    .end local v0    # "n":I
    if-nez v15, :cond_19

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .end local v14    # "buf":[C
    .end local v15    # "newline":Z
    :cond_19
    goto/16 :goto_f

    .line 782
    .restart local v0    # "n":I
    .restart local v14    # "buf":[C
    .restart local v15    # "newline":Z
    :cond_1a
    invoke-virtual {v4, v14, v6, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 783
    add-int/lit8 v17, v0, -0x1

    aget-char v6, v14, v17

    move/from16 v17, v0

    const/16 v0, 0xa

    .end local v0    # "n":I
    .restart local v17    # "n":I
    if-ne v6, v0, :cond_1b

    move/from16 v0, v20

    goto :goto_b

    :cond_1b
    const/4 v0, 0x0

    :goto_b
    move v15, v0

    .line 786
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/high16 v6, 0x10000

    if-le v0, v6, :cond_1c

    .line 787
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 788
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_c

    .line 786
    :cond_1c
    const/4 v0, 0x0

    .line 790
    .end local v17    # "n":I
    :goto_c
    move v6, v0

    goto :goto_a

    .line 808
    .end local v14    # "buf":[C
    .end local v15    # "newline":Z
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object/from16 v15, v26

    goto/16 :goto_13

    .line 804
    :catch_0
    move-exception v0

    goto/16 :goto_11

    .line 793
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    :cond_1d
    move v0, v6

    const/16 v6, 0x46

    :try_start_b
    invoke-virtual {v7, v6}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 794
    .local v8, "text":Ljava/lang/String;
    const-string v14, "    "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    if-nez v8, :cond_1e

    .line 796
    const-string v0, "[null]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 798
    :cond_1e
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v6, :cond_1f

    goto :goto_d

    :cond_1f
    move/from16 v20, v0

    :goto_d
    move/from16 v0, v20

    .line 799
    .local v0, "truncated":Z
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v14, 0x2f

    const/16 v15, 0xa

    invoke-virtual {v6, v15, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    if-eqz v0, :cond_20

    const-string v6, " ..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .end local v0    # "truncated":Z
    :cond_20
    :goto_e
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v8, v25

    .line 808
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    :goto_f
    :try_start_c
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 809
    if-eqz v8, :cond_21

    .line 811
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 813
    :goto_10
    move-object/from16 v15, v26

    goto/16 :goto_15

    .line 812
    :catch_1
    move-exception v0

    goto :goto_10

    .line 809
    :cond_21
    move-object/from16 v15, v26

    goto/16 :goto_15

    .line 808
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object/from16 v8, v25

    move-object/from16 v15, v26

    goto/16 :goto_13

    .line 804
    :catch_2
    move-exception v0

    move-object/from16 v8, v25

    goto :goto_11

    .line 808
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_2
    move-exception v0

    move-object v6, v0

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v15, v26

    goto/16 :goto_13

    .line 804
    :catch_3
    move-exception v0

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    goto :goto_11

    .line 808
    .end local v26    # "file":Ljava/io/File;
    .local v15, "file":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object v6, v0

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    .end local v15    # "file":Ljava/io/File;
    .restart local v26    # "file":Ljava/io/File;
    goto/16 :goto_13

    .line 804
    .end local v26    # "file":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object/from16 v26, v15

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    .end local v15    # "file":Ljava/io/File;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_11

    .line 808
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object/from16 v25, v8

    move-object v6, v0

    move-object/from16 v7, v24

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "file":Ljava/io/File;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_13

    .line 804
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v15

    move-object/from16 v7, v24

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "file":Ljava/io/File;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_11

    .line 808
    .end local v23    # "doFile":Z
    .end local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v6    # "doFile":Z
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catchall_5
    move-exception v0

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object v6, v0

    .end local v6    # "doFile":Z
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "file":Ljava/io/File;
    .restart local v23    # "doFile":Z
    .restart local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_13

    .line 804
    .end local v23    # "doFile":Z
    .end local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v6    # "doFile":Z
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catch_6
    move-exception v0

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v15

    .line 805
    .end local v6    # "doFile":Z
    .end local v15    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v23    # "doFile":Z
    .restart local v26    # "file":Ljava/io/File;
    :goto_11
    :try_start_e
    const-string v6, "*** "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const-string v6, "DropBoxManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t read: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object/from16 v15, v26

    .end local v26    # "file":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    :try_start_f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 808
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_22

    :try_start_10
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 809
    :cond_22
    if-eqz v8, :cond_26

    .line 811
    :try_start_11
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 813
    :goto_12
    goto :goto_15

    .line 812
    :catch_7
    move-exception v0

    goto :goto_12

    .line 808
    :catchall_6
    move-exception v0

    move-object v6, v0

    goto :goto_13

    .end local v15    # "file":Ljava/io/File;
    .restart local v26    # "file":Ljava/io/File;
    :catchall_7
    move-exception v0

    move-object/from16 v15, v26

    move-object v6, v0

    .end local v26    # "file":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    :goto_13
    if-eqz v7, :cond_23

    :try_start_12
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 809
    :cond_23
    if-eqz v8, :cond_24

    .line 811
    :try_start_13
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 813
    goto :goto_14

    .line 812
    :catch_8
    move-exception v0

    .line 815
    :cond_24
    :goto_14
    :try_start_14
    throw v6

    .line 768
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v23    # "doFile":Z
    .restart local v6    # "doFile":Z
    :cond_25
    move/from16 v23, v6

    .line 818
    .end local v6    # "doFile":Z
    .restart local v23    # "doFile":Z
    :cond_26
    :goto_15
    if-eqz v5, :cond_27

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .end local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "date":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    :cond_27
    nop

    .line 740
    .end local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dumpProto":Z
    .end local v23    # "doFile":Z
    .restart local v6    # "doFile":Z
    .local v7, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "dumpProto":Z
    :goto_16
    move v0, v12

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v6, v23

    .end local v6    # "doFile":Z
    .end local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "dumpProto":Z
    .restart local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "dumpProto":Z
    .restart local v23    # "doFile":Z
    goto/16 :goto_6

    .line 821
    .end local v12    # "numFound":I
    .end local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dumpProto":Z
    .end local v23    # "doFile":Z
    .local v0, "numFound":I
    .restart local v6    # "doFile":Z
    .restart local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "dumpProto":Z
    :cond_28
    move/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    .end local v6    # "doFile":Z
    .end local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "dumpProto":Z
    .restart local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "dumpProto":Z
    .restart local v23    # "doFile":Z
    if-nez v0, :cond_29

    const-string v6, "(No entries found.)\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_29
    if-eqz v3, :cond_2a

    array-length v6, v3

    if-nez v6, :cond_2c

    .line 824
    :cond_2a
    if-nez v5, :cond_2b

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_2b
    const-string v6, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 830
    monitor-exit p0

    return-void

    .line 685
    .end local v0    # "numFound":I
    .end local v4    # "out":Ljava/lang/StringBuilder;
    .end local v5    # "doPrint":Z
    .end local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dumpProto":Z
    .end local v23    # "doFile":Z
    :catch_9
    move-exception v0

    move-object/from16 v9, p1

    move-object v4, v0

    move-object v0, v4

    .line 686
    .local v0, "e":Ljava/io/IOException;
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t initialize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t init"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 688
    monitor-exit p0

    return-void

    .line 680
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

    .line 632
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

    .line 633
    monitor-exit p0

    return-object v4

    .line 637
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    nop

    .line 643
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

    .line 644
    .local v5, "list":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v5, :cond_2

    monitor-exit p0

    return-object v4

    .line 646
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

    .line 647
    .local v7, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    .line 648
    :cond_3
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 649
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v8, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v4, v8, v9}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 651
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_4
    :try_start_4
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v0

    .line 653
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

    .line 655
    :catch_0
    move-exception v0

    .line 656
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

    .line 659
    nop

    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v14    # "file":Ljava/io/File;
    goto :goto_1

    .line 661
    :cond_5
    monitor-exit p0

    return-object v4

    .line 638
    .end local v5    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 639
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    const-string v5, "DropBoxManagerService"

    const-string v6, "Can\'t init"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 640
    monitor-exit p0

    return-object v4

    .line 631
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

    .line 410
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 596
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

    .line 599
    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    return v2

    .line 599
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 600
    throw v2
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .line 384
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_0

    .line 386
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/DropBoxManagerService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V

    .line 400
    nop

    .line 406
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    const-string v1, "dropbox"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 380
    return-void
.end method
