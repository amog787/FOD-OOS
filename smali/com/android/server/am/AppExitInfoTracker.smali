.class public final Lcom/android/server/am/AppExitInfoTracker;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;,
        Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;,
        Lcom/android/server/am/AppExitInfoTracker$KillHandler;,
        Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;,
        Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;,
        Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;
    }
.end annotation


# static fields
.field static final APP_EXIT_INFO_FILE:Ljava/lang/String; = "procexitinfo"

.field private static final APP_EXIT_INFO_PERSIST_INTERVAL:J

.field private static final APP_EXIT_RAW_INFO_POOL_SIZE:I = 0x8

.field static final APP_EXIT_STORE_DIR:Ljava/lang/String; = "procexitstore"

.field private static final APP_TRACE_FILE_SUFFIX:Ljava/lang/String; = ".gz"

.field private static final FOREACH_ACTION_NONE:I = 0x0

.field private static final FOREACH_ACTION_REMOVE_ITEM:I = 0x1

.field private static final FOREACH_ACTION_STOP_ITERATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mActiveAppStateSummary:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "[B>;>;"
        }
    .end annotation
.end field

.field final mActiveAppTraces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppExitInfoHistoryListSize:I

.field mAppExitInfoLoaded:Z

.field private mAppExitInfoPersistTask:Ljava/lang/Runnable;

.field final mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field final mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field final mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

.field private final mData:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;"
        }
    .end annotation
.end field

.field final mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

.field private mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

.field private mLastAppExitInfoPersistTimestamp:J

.field private final mLock:Ljava/lang/Object;

.field mProcExitInfoFile:Ljava/io/File;

.field mProcExitStoreDir:Ljava/io/File;

.field private final mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field final mTmpInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpInfoList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 136
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 193
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 199
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    const-string/jumbo v2, "zygote"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 205
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 206
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "lmkd"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 229
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 235
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    .line 238
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 239
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    .line 240
    return-void
.end method

.method static synthetic access$100(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/util/SparseArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 92
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;

    .line 92
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;

    .line 92
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$400(J)Z
    .locals 1
    .param p0, "x0"    # J

    .line 92
    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppExitInfoTracker;IILjava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Integer;
    .param p4, "x4"    # Ljava/lang/Integer;

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    return-object v0
.end method

.method private addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "info"    # Landroid/app/ApplicationExitInfo;

    .line 821
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 822
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-nez v0, :cond_2

    .line 823
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    move-object v0, v1

    .line 824
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 826
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 827
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->access$002(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)I

    .line 829
    .end local v1    # "k":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 830
    :cond_1
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->access$002(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)I

    .line 832
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)V

    .line 835
    return-void
.end method

.method private addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;
    .locals 5
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 417
    iget-boolean v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    if-nez v0, :cond_0

    .line 418
    const-string v0, "ActivityManager"

    const-string v1, "Skipping saving the exit info due to ongoing loading from storage"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v0, 0x0

    return-object v0

    .line 422
    :cond_0
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationExitInfo;-><init>(Landroid/app/ApplicationExitInfo;)V

    .line 423
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "packages":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v2

    .line 425
    .local v2, "uid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 426
    aget-object v4, v1, v3

    invoke-direct {p0, v4, v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 431
    return-object v0
.end method

.method private static copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z
    .locals 10
    .param p0, "inFile"    # Ljava/io/File;
    .param p1, "outFile"    # Ljava/io/File;
    .param p2, "start"    # J
    .param p4, "length"    # J

    .line 1058
    move-wide v0, p4

    .line 1060
    .local v0, "remaining":J
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1063
    .local v4, "out":Ljava/util/zip/GZIPOutputStream;
    const/16 v5, 0x2000

    :try_start_2
    new-array v5, v5, [B

    .line 1064
    .local v5, "buffer":[B
    invoke-virtual {v3, p2, p3}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 1065
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-lez v8, :cond_1

    .line 1066
    array-length v8, v5

    int-to-long v8, v8

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v3, v5, v2, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 1067
    .local v8, "t":I
    if-gez v8, :cond_0

    .line 1068
    goto :goto_1

    .line 1070
    :cond_0
    invoke-virtual {v4, v5, v2, v8}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1071
    int-to-long v6, v8

    sub-long/2addr v0, v6

    .line 1072
    .end local v8    # "t":I
    goto :goto_0

    .line 1073
    .end local v5    # "buffer":[B
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1078
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    nop

    .line 1079
    cmp-long v3, v0, v6

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 1059
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "remaining":J
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local p0    # "inFile":Ljava/io/File;
    .end local p1    # "outFile":Ljava/io/File;
    .end local p2    # "start":J
    .end local p4    # "length":J
    :goto_2
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "remaining":J
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local p0    # "inFile":Ljava/io/File;
    .restart local p1    # "outFile":Ljava/io/File;
    .restart local p2    # "start":J
    .restart local p4    # "length":J
    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v5

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "remaining":J
    .end local p0    # "inFile":Ljava/io/File;
    .end local p1    # "outFile":Ljava/io/File;
    .end local p2    # "start":J
    .end local p4    # "length":J
    :goto_3
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1073
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v0    # "remaining":J
    .restart local p0    # "inFile":Ljava/io/File;
    .restart local p1    # "outFile":Ljava/io/File;
    .restart local p2    # "start":J
    .restart local p4    # "length":J
    :catch_0
    move-exception v3

    .line 1074
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v4, :cond_3

    .line 1075
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in copying ANR trace from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1077
    :cond_3
    return v2
.end method

.method private dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "sdf"    # Landroid/icu/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;",
            "Landroid/icu/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 811
    .local p4, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 813
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Historical Process Exit for userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .locals 5
    .param p1, "outerKey"    # I
    .param p2, "innerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;II)TU;"
        }
    .end annotation

    .line 1198
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1199
    .local v0, "idx":I
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 1200
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1201
    .local v2, "p":Landroid/util/SparseArray;, "TT;"
    if-nez v2, :cond_0

    .line 1202
    return-object v1

    .line 1204
    :cond_0
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 1205
    .local v3, "innerIdx":I
    if-ltz v3, :cond_2

    .line 1206
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 1207
    .local v1, "ret":Ljava/lang/Object;, "TU;"
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1208
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1209
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1211
    :cond_1
    return-object v1

    .line 1214
    .end local v1    # "ret":Ljava/lang/Object;, "TU;"
    .end local v2    # "p":Landroid/util/SparseArray;, "TT;"
    .end local v3    # "innerIdx":I
    :cond_2
    return-object v1
.end method

.method private forEachPackageLocked(Ljava/util/function/BiFunction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 840
    .local p1, "callback":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_3

    .line 841
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 842
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 843
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_2

    .line 852
    :cond_0
    const/4 v1, 0x0

    .line 853
    goto :goto_2

    .line 845
    :cond_1
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 846
    .local v3, "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_2

    .line 847
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 846
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 849
    .end local v4    # "j":I
    :cond_2
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 850
    nop

    .line 842
    .end local v3    # "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 860
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private static forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1153
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    if-eqz p1, :cond_2

    .line 1154
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1155
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1156
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-nez v1, :cond_0

    .line 1157
    goto :goto_2

    .line 1159
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_1

    .line 1160
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1159
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1154
    .end local v1    # "innerArray":Landroid/util/SparseArray;, "TT;"
    .end local v2    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1164
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterUid"    # I
    .param p3, "filterPid"    # I

    .line 553
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 554
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 555
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V

    .line 557
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 558
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 559
    return-object v0
.end method

.method private static isFresh(J)Z
    .locals 4
    .param p0, "timestamp"    # J

    .line 1575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1577
    .local v0, "now":J
    const-wide/32 v2, 0x493e0

    add-long/2addr v2, p0

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic lambda$getExitInfo$4(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .locals 4
    .param p0, "a"    # Landroid/app/ApplicationExitInfo;
    .param p1, "b"    # Landroid/app/ApplicationExitInfo;

    .line 530
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static synthetic lambda$handleLogAnrTrace$11(Ljava/io/File;)V
    .locals 0
    .param p0, "v"    # Ljava/io/File;

    .line 1041
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic lambda$persistProcessExitInfo$5(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 7
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 710
    const-wide v0, 0x20b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 711
    .local v2, "token":J
    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 712
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 713
    .local v4, "uidArraySize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 714
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v6, p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 713
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 716
    .end local v5    # "j":I
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 717
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$12(Landroid/util/ArraySet;Ljava/io/File;)Z
    .locals 2
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "f"    # Ljava/io/File;

    .line 1089
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1090
    .local v0, "name":Ljava/lang/String;
    const-string v1, "anr_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1091
    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1092
    .local v1, "trace":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1093
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_1
    return v1
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$13(Landroid/util/ArraySet;Ljava/lang/Integer;Landroid/app/ApplicationExitInfo;)Ljava/lang/Integer;
    .locals 2
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "pid"    # Ljava/lang/Integer;
    .param p2, "info"    # Landroid/app/ApplicationExitInfo;

    .line 1105
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v0

    .line 1106
    .local v0, "traceFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1109
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$14(Landroid/util/ArraySet;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 3
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 1102
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1103
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 1104
    .local v1, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    new-instance v2, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Q3GtkIfPxcC3Upjekif3W0ekKvY;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Q3GtkIfPxcC3Upjekif3W0ekKvY;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->forEachRecordLocked(Ljava/util/function/BiFunction;)V

    .line 1102
    .end local v1    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1112
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$15(Landroid/util/ArraySet;Ljava/io/File;)V
    .locals 1
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "v"    # Ljava/io/File;

    .line 1115
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$removeByUserIdLocked$10(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 913
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 914
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 915
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 916
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 917
    goto :goto_1

    .line 913
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 920
    .end local v0    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$removeByUserIdLocked$7(ILjava/lang/Integer;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "v"    # Ljava/lang/Integer;

    .line 909
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeByUserIdLocked$8(ILjava/lang/Integer;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "v"    # Ljava/lang/Integer;

    .line 911
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeByUserIdLocked$9(Ljava/io/File;)V
    .locals 0
    .param p0, "v"    # Ljava/io/File;

    .line 911
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic lambda$setLmkdKillListener$1(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "listener"    # Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;
    .param p1, "pid"    # Ljava/lang/Integer;
    .param p2, "uid"    # Ljava/lang/Integer;

    .line 334
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;->onLmkdKillOccurred(II)V

    return-void
.end method

.method private loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 8
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 674
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 675
    .local v0, "token":J
    const-string v2, ""

    .line 676
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    .line 677
    .local v3, "next":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 679
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 684
    :cond_0
    new-instance v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 686
    .local v4, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->readFromProto(Landroid/util/proto/ProtoInputStream;J)I

    move-result v5

    .line 687
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 688
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7, v2, v5, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 689
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 681
    .end local v4    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    .end local v5    # "uid":I
    :cond_1
    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 682
    nop

    .line 678
    :goto_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    goto :goto_0

    .line 693
    .end local v3    # "next":I
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 694
    return-void
.end method

.method private pruneAnrTracesIfNecessaryLocked()V
    .locals 6

    .line 1087
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1088
    .local v0, "allFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$JduFGZz0nH2A0BHWR2JObNY-HIA;

    invoke-direct {v2, v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$JduFGZz0nH2A0BHWR2JObNY-HIA;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1097
    .local v1, "files":[Ljava/io/File;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1098
    return-void

    .line 1101
    :cond_0
    new-instance v2, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$pGj1RV5EdCXTSGnbNiqDUSduYTk;

    invoke-direct {v2, v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$pGj1RV5EdCXTSGnbNiqDUSduYTk;-><init>(Landroid/util/ArraySet;)V

    invoke-direct {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 1115
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Du2pQ0u67kwpa3kgguj5fWqQfXM;

    invoke-direct {v3, v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Du2pQ0u67kwpa3kgguj5fWqQfXM;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1118
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1119
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1118
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1121
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private static putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 3
    .param p1, "outerKey"    # I
    .param p2, "innerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;IITU;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1129
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TU;"
    .local p4, "newInstance":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p5, "actionToOldValue":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1130
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 1131
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-gez v0, :cond_0

    .line 1132
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/util/SparseArray;

    .line 1133
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1135
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/util/SparseArray;

    .line 1137
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1138
    if-ltz v0, :cond_2

    .line 1139
    if-eqz p5, :cond_1

    .line 1140
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1142
    :cond_1
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_1

    .line 1144
    :cond_2
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1146
    :goto_1
    return-void
.end method

.method private registerForPackageRemoval()V
    .locals 5

    .line 605
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 606
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$2;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 622
    return-void
.end method

.method private registerForUserRemoval()V
    .locals 5

    .line 592
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 593
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$1;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 602
    return-void
.end method

.method private removeByUserIdLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 901
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 903
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 904
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 905
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 906
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$vzdjnEjW-9gbfxjIkvPxuQNiFW0;

    invoke-direct {v1, p1}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$vzdjnEjW-9gbfxjIkvPxuQNiFW0;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 910
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$XP9Dt_b6q1v_FLyDNEaaEtbN2tI;

    invoke-direct {v1, p1}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$XP9Dt_b6q1v_FLyDNEaaEtbN2tI;-><init>(I)V

    sget-object v3, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Y37hrsxr0wudP-NPU4f6GLWVNsM;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Y37hrsxr0wudP-NPU4f6GLWVNsM;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 912
    new-instance v0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$ZY9TAD2R71ar3yQbfwDIrtpb_VY;

    invoke-direct {v0, p1}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$ZY9TAD2R71ar3yQbfwDIrtpb_VY;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 922
    return-void
.end method

.method private static removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1172
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "outerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .local p2, "innerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_7

    .line 1173
    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1174
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1175
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-nez v1, :cond_1

    .line 1176
    goto :goto_2

    .line 1178
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_5

    .line 1179
    if-eqz p2, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1180
    :cond_2
    if-eqz p3, :cond_3

    .line 1181
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1183
    :cond_3
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1178
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1186
    .end local v2    # "j":I
    :cond_5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 1187
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1172
    .end local v1    # "innerArray":Landroid/util/SparseArray;, "TT;"
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1191
    .end local v0    # "i":I
    :cond_7
    return-void
.end method

.method private removePackageLocked(Ljava/lang/String;IZI)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "removeUid"    # Z
    .param p4, "userId"    # I

    .line 864
    if-eqz p3, :cond_1

    .line 865
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 866
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 867
    .local v0, "idx":I
    if-ltz v0, :cond_1

    .line 868
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 869
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/io/File;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 870
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 869
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 872
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 875
    .end local v0    # "idx":I
    .end local v1    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/io/File;>;"
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 876
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 877
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    if-nez v1, :cond_2

    .line 878
    return-void

    .line 880
    :cond_2
    const/4 v2, -0x1

    if-ne p4, v2, :cond_4

    .line 881
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 882
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 881
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 884
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 886
    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_6

    .line 887
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p4, :cond_5

    .line 888
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 889
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 890
    goto :goto_3

    .line 886
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 893
    .end local v2    # "i":I
    :cond_6
    :goto_3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 894
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    :cond_7
    :goto_4
    return-void
.end method

.method private scheduleChildProcDied(III)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # I

    .line 345
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 347
    return-void
.end method

.method private updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;
    .param p2, "status"    # Ljava/lang/Integer;
    .param p3, "reason"    # Ljava/lang/Integer;

    .line 440
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 444
    :cond_0
    if-eqz p2, :cond_3

    .line 445
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->WIFEXITED(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 447
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->WEXITSTATUS(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->WIFSIGNALED(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    if-nez v0, :cond_2

    .line 450
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 451
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_0

    .line 452
    :cond_2
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 453
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 457
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 458
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 460
    :cond_4
    return-void

    .line 442
    :cond_5
    :goto_1
    return-void
.end method

.method private updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # Ljava/lang/Integer;
    .param p4, "reason"    # Ljava/lang/Integer;

    .line 470
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    .line 471
    .local v0, "k":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 474
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 475
    .local v8, "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 476
    move v3, p2

    .line 477
    .local v3, "targetUid":I
    new-instance v9, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$xUd65bpeb_3cGXv8w6rHG0fu89U;

    move-object v1, v9

    move-object v2, p0

    move-object v4, v8

    move v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$xUd65bpeb_3cGXv8w6rHG0fu89U;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {p0, v9}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 497
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method clearHistoryProcessExitInfo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 773
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 776
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/high16 v2, 0x20000

    invoke-virtual {v0, p1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 780
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 781
    :try_start_1
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 782
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 784
    .end local v0    # "uid":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 785
    return-void

    .line 782
    .restart local v0    # "uid":I
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method clearProcessExitInfo(Z)V
    .locals 3
    .param p1, "removeFile"    # Z

    .line 754
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 756
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 759
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 762
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 763
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 764
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 765
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 766
    monitor-exit v0

    .line 767
    return-void

    .line 766
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpHistoryProcessExitInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 788
    const-string v0, "ACTIVITY MANAGER PROCESS EXIT INFO (dumpsys activity exit-info)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 790
    .local v0, "sdf":Landroid/icu/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 791
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last Timestamp of Persistence Into Persistent Storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 792
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    new-instance v2, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$ykvdMbwZILd9oyb6cyIe3GfomwU;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$ykvdMbwZILd9oyb6cyIe3GfomwU;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    invoke-direct {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    goto :goto_0

    .line 799
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move-object v8, v2

    .line 800
    .local v8, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    if-eqz v8, :cond_1

    .line 801
    const-string v4, "  "

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v8

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 804
    .end local v8    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    :cond_1
    :goto_0
    monitor-exit v1

    .line 805
    return-void

    .line 804
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterUid"    # I
    .param p3, "filterPid"    # I
    .param p4, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 508
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 509
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 510
    .local v3, "emptyPackageName":Z
    if-nez v3, :cond_1

    .line 512
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 513
    .local v4, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v4, :cond_0

    .line 514
    invoke-virtual {v4, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    .line 516
    .end local v4    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    :cond_0
    goto :goto_1

    .line 518
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 519
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 521
    new-instance v5, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;

    invoke-direct {v5, p0, p2, v4, p3}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v5}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 530
    sget-object v5, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$DgW09rn1xYgswF2bIX-IptVkNqg;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$DgW09rn1xYgswF2bIX-IptVkNqg;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 531
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 532
    .local v5, "size":I
    if-lez p4, :cond_2

    .line 533
    invoke-static {v5, p4}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 535
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 536
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 538
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 540
    .end local v3    # "emptyPackageName":Z
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    .end local v5    # "size":I
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    nop

    .line 544
    return-void

    .line 540
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPid":I
    .end local p4    # "maxNum":I
    .end local p5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 542
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPid":I
    .restart local p4    # "maxNum":I
    .restart local p5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    throw v2
.end method

.method getProcessStateSummary(II)[B
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 977
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 979
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 980
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move p1, v2

    .line 982
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 983
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 984
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 986
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    monitor-exit v0

    return-object v3

    .line 987
    .end local v1    # "k":Ljava/lang/Integer;
    .end local v2    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .locals 19
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "traceFile"    # Ljava/io/File;
    .param p5, "startOff"    # J
    .param p7, "endOff"    # J

    .line 1006
    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v2, p2

    goto/16 :goto_7

    .line 1009
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 1010
    .local v10, "size":J
    sub-long v12, p7, p5

    .line 1011
    .local v12, "length":J
    cmp-long v0, p5, v10

    if-gez v0, :cond_8

    cmp-long v0, p7, v10

    if-gtz v0, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v0, v12, v2

    if-gtz v0, :cond_1

    move/from16 v2, p2

    goto/16 :goto_6

    .line 1015
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".gz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v0

    .line 1018
    .local v14, "outFile":Ljava/io/File;
    move-object/from16 v2, p4

    move-object v3, v14

    move-wide/from16 v4, p5

    move-wide v6, v12

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1020
    iget-object v15, v1, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1021
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move/from16 v2, p2

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1022
    .local v0, "k":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 1023
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v2, v3

    move v7, v2

    .end local p2    # "uid":I
    .local v2, "uid":I
    goto :goto_0

    .line 1022
    .end local v2    # "uid":I
    .restart local p2    # "uid":I
    :cond_2
    move v7, v2

    .line 1025
    .end local p2    # "uid":I
    .local v7, "uid":I
    :goto_0
    :try_start_2
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 1026
    :try_start_3
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stored ANR traces of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1028
    :cond_3
    const/4 v2, 0x1

    .line 1030
    .local v2, "pending":Z
    const/4 v3, 0x0

    move/from16 v16, v2

    .end local v2    # "pending":Z
    .local v3, "i":I
    .local v16, "pending":Z
    :goto_1
    :try_start_4
    array-length v2, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ge v3, v2, :cond_5

    .line 1031
    :try_start_5
    iget-object v2, v1, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    aget-object v4, v9, v3

    invoke-virtual {v2, v4, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 1033
    .local v2, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v2, :cond_4

    invoke-virtual {v2, v8, v14}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->appendTraceIfNecessaryLocked(ILjava/io/File;)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v4, :cond_4

    .line 1035
    const/4 v4, 0x0

    move/from16 v16, v4

    .line 1030
    .end local v2    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1038
    .end local v3    # "i":I
    :cond_5
    if-eqz v16, :cond_6

    .line 1040
    :try_start_6
    iget-object v2, v1, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    sget-object v6, Lcom/android/server/am/-$$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY;->INSTANCE:Lcom/android/server/am/-$$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY;

    sget-object v17, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v3, v7

    move/from16 v4, p1

    move-object v5, v14

    move/from16 v18, v7

    .end local v7    # "uid":I
    .local v18, "uid":I
    move-object/from16 v7, v17

    :try_start_7
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 1038
    .end local v18    # "uid":I
    .restart local v7    # "uid":I
    :cond_6
    move/from16 v18, v7

    .line 1043
    .end local v0    # "k":Ljava/lang/Integer;
    .end local v7    # "uid":I
    .end local v16    # "pending":Z
    .restart local v18    # "uid":I
    :goto_2
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v2, v18

    goto :goto_5

    :catchall_0
    move-exception v0

    move/from16 v7, v18

    goto :goto_4

    .end local v18    # "uid":I
    .restart local v7    # "uid":I
    :catchall_1
    move-exception v0

    move/from16 v18, v7

    .end local v7    # "uid":I
    .restart local v18    # "uid":I
    goto :goto_4

    .end local v18    # "uid":I
    .restart local p2    # "uid":I
    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move/from16 v2, p2

    :goto_3
    move v7, v2

    .end local p2    # "uid":I
    .restart local v7    # "uid":I
    :goto_4
    :try_start_8
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_4

    .line 1018
    .end local v7    # "uid":I
    .restart local p2    # "uid":I
    :cond_7
    move/from16 v2, p2

    .line 1045
    .end local p2    # "uid":I
    .local v2, "uid":I
    :goto_5
    return-void

    .line 1011
    .end local v2    # "uid":I
    .end local v14    # "outFile":Ljava/io/File;
    .restart local p2    # "uid":I
    :cond_8
    move/from16 v2, p2

    .line 1012
    :goto_6
    return-void

    .line 1006
    .end local v10    # "size":J
    .end local v12    # "length":J
    :cond_9
    move/from16 v2, p2

    .line 1007
    :goto_7
    return-void
.end method

.method handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 3
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 400
    nop

    .line 401
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 400
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 403
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    if-nez v0, :cond_0

    .line 404
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 408
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 409
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 411
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 413
    :goto_0
    return-void
.end method

.method handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 5
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 365
    if-eqz p1, :cond_3

    .line 366
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update process exit info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 371
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 375
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 376
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    .line 375
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v1

    .line 377
    .local v1, "zygote":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 378
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    .line 377
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v2

    .line 379
    .local v2, "lmkd":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeIsolatedUidLocked(I)I

    .line 381
    if-nez v0, :cond_1

    .line 382
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 385
    :cond_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 386
    const/4 v4, 0x3

    .line 387
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 386
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 388
    :cond_2
    if-eqz v1, :cond_3

    .line 389
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 392
    .end local v0    # "info":Landroid/app/ApplicationExitInfo;
    .end local v1    # "zygote":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    .end local v2    # "lmkd":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    :cond_3
    :goto_0
    return-void
.end method

.method handleZygoteSigChld(III)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # I

    .line 351
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got SIGCHLD from zygote: pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleChildProcDied(III)V

    .line 356
    return-void
.end method

.method init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 243
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 244
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "ActivityManager:killHandler"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 246
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 247
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;-><init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 249
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "procexitstore"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 250
    invoke-static {v1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 254
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    const-string/jumbo v3, "procexitinfo"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    .line 256
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    .line 258
    return-void
.end method

.method public synthetic lambda$dumpHistoryProcessExitInfo$6$AppExitInfoTracker(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Landroid/icu/text/SimpleDateFormat;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "records"    # Landroid/util/SparseArray;

    .line 795
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 796
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getExitInfo$3$AppExitInfoTracker(ILjava/util/ArrayList;ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 2
    .param p1, "filterUid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "filterPid"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "records"    # Landroid/util/SparseArray;

    .line 522
    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 523
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v0, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 525
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->toListLocked(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 527
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$onSystemReady$0$AppExitInfoTracker()V
    .locals 2

    .line 265
    nop

    .line 266
    const-string/jumbo v0, "sys.lmk.reportkills"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string/jumbo v1, "persist.sys.lmk.reportkills"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->loadExistingProcessExitInfo()V

    .line 268
    return-void
.end method

.method public synthetic lambda$updateExitInfoIfNecessaryLocked$2$AppExitInfoTracker(ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 4
    .param p1, "targetUid"    # I
    .param p2, "tlist"    # Ljava/util/ArrayList;
    .param p3, "pid"    # I
    .param p4, "status"    # Ljava/lang/Integer;
    .param p5, "reason"    # Ljava/lang/Integer;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "records"    # Landroid/util/SparseArray;

    .line 478
    invoke-virtual {p7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 479
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    const/4 v1, 0x0

    .line 480
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 479
    if-nez v0, :cond_0

    .line 480
    return-object v2

    .line 482
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 483
    const/4 v3, 0x1

    invoke-virtual {v0, p3, v3, p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    .line 484
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 485
    return-object v2

    .line 487
    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 488
    .local v1, "info":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    if-eq v3, p1, :cond_2

    .line 489
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 490
    return-object v2

    .line 493
    :cond_2
    invoke-direct {p0, v1, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 495
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method loadExistingProcessExitInfo()V
    .locals 8

    .line 629
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    .line 632
    monitor-exit v0

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 636
    :cond_0
    const/4 v0, 0x0

    .line 638
    .local v0, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 639
    .local v2, "af":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v0, v3

    .line 640
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v3, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 641
    .local v3, "proto":Landroid/util/proto/ProtoInputStream;
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    .line 642
    .local v4, "next":I
    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 644
    if-eq v4, v1, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 652
    :cond_1
    int-to-long v5, v4

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/am/AppExitInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_1

    .line 646
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 647
    const-wide v6, 0x10300000001L

    .line 648
    :try_start_2
    invoke-virtual {v3, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 649
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 650
    nop

    .line 643
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v4, v5

    goto :goto_0

    .line 649
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "fin":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 659
    .end local v2    # "af":Landroid/util/AtomicFile;
    .end local v3    # "proto":Landroid/util/proto/ProtoInputStream;
    .end local v4    # "next":I
    .restart local v0    # "fin":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :cond_3
    if-eqz v0, :cond_4

    .line 661
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 663
    :goto_2
    goto :goto_3

    .line 662
    :catch_0
    move-exception v2

    goto :goto_2

    .line 666
    :cond_4
    :goto_3
    move-object v2, v0

    goto :goto_4

    .line 659
    :catchall_2
    move-exception v1

    goto :goto_5

    .line 656
    :catch_1
    move-exception v2

    .line 657
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in loading historical app exit info from persistent storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 659
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_4

    .line 661
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 662
    :catch_2
    move-exception v2

    goto :goto_2

    .line 666
    .end local v0    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    :goto_4
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 667
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 668
    iput-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    .line 669
    monitor-exit v3

    .line 670
    return-void

    .line 669
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 659
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "fin":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v0, :cond_5

    .line 661
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 663
    goto :goto_6

    .line 662
    :catch_3
    move-exception v2

    .line 665
    :cond_5
    :goto_6
    throw v1
.end method

.method obtainRawRecordLocked(Lcom/android/server/am/ProcessRecord;)Landroid/app/ApplicationExitInfo;
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 927
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 928
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    if-nez v0, :cond_0

    .line 929
    new-instance v1, Landroid/app/ApplicationExitInfo;

    invoke-direct {v1}, Landroid/app/ApplicationExitInfo;-><init>()V

    move-object v0, v1

    .line 932
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 933
    .local v1, "definingUid":I
    :goto_0
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    .line 934
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    .line 935
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    .line 936
    if-lez v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    .line 937
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 938
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setConnectionGroup(I)V

    .line 939
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 941
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 942
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 943
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    .line 944
    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    .line 945
    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->mLastRss:J

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 948
    return-object v0
.end method

.method onPackageRemoved(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "allUsers"    # Z

    .line 575
    if-eqz p1, :cond_2

    .line 576
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 577
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 578
    .local v0, "removeUid":Z
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    if-eqz v0, :cond_0

    .line 580
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 581
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 582
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUid(IZ)V

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 584
    :cond_0
    :goto_0
    nop

    .line 585
    if-eqz p3, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 584
    :goto_1
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 586
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 587
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 589
    .end local v0    # "removeUid":Z
    :cond_2
    :goto_3
    return-void
.end method

.method onSystemReady()V
    .locals 2

    .line 261
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForUserRemoval()V

    .line 262
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForPackageRemoval()V

    .line 263
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Yc6vluAEWPBi2TSflPrFu351ztU;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Yc6vluAEWPBi2TSflPrFu351ztU;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 564
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 565
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 566
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeByUserId(I)V

    .line 567
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 569
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 570
    monitor-exit v0

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method persistProcessExitInfo()V
    .locals 7

    .line 701
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 702
    .local v0, "af":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 703
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 705
    .local v2, "now":J
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v1, v4

    .line 706
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 707
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v5, 0x10300000001L

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 708
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :try_start_1
    new-instance v6, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$M7pmR3pU58DetrzQsI3M2-go5XU;

    invoke-direct {v6, v4}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$M7pmR3pU58DetrzQsI3M2-go5XU;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-direct {p0, v6}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 719
    iput-wide v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 720
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    :try_start_2
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 722
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 726
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_0

    .line 720
    .restart local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "now":J
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 723
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v0    # "af":Landroid/util/AtomicFile;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "now":J
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :catch_0
    move-exception v4

    .line 724
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write historical app exit info into persistent storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 727
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 728
    const/4 v5, 0x0

    :try_start_5
    iput-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 729
    monitor-exit v4

    .line 730
    return-void

    .line 729
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5
.end method

.method recycleRawRecordLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;

    .line 954
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 959
    return-void
.end method

.method scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .locals 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "traceFile"    # Ljava/io/File;
    .param p5, "startOff"    # J
    .param p7, "endOff"    # J

    .line 995
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$VSkN0NYXfJkOHZPqzFU-0f4s4R4;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$VSkN0NYXfJkOHZPqzFU-0f4s4R4;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    .line 996
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 997
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 995
    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->sendMessage(Landroid/os/Message;)Z

    .line 998
    return-void
.end method

.method scheduleNoteAppKill(IIIILjava/lang/String;)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "subReason"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    if-nez v1, :cond_0

    .line 307
    monitor-exit v0

    return-void

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 312
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    if-nez v2, :cond_1

    .line 314
    :try_start_2
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_2

    .line 315
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping saving the kill reason for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "(uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") since its process record is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0, v2, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 321
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 322
    return-void

    .line 312
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .end local p1    # "pid":I
    .end local p2    # "uid":I
    .end local p3    # "reason":I
    .end local p4    # "subReason":I
    .end local p5    # "msg":Ljava/lang/String;
    :try_start_4
    throw v2

    .line 321
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .restart local p1    # "pid":I
    .restart local p2    # "uid":I
    .restart local p3    # "reason":I
    .restart local p4    # "subReason":I
    .restart local p5    # "msg":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # I
    .param p3, "subReason"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    if-nez v1, :cond_0

    .line 289
    monitor-exit v0

    return-void

    .line 291
    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecordLocked(Lcom/android/server/am/ProcessRecord;)Landroid/app/ApplicationExitInfo;

    move-result-object v1

    .line 296
    .local v1, "raw":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v1, p2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 297
    invoke-virtual {v1, p3}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 298
    invoke-virtual {v1, p4}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v3, 0x1008

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 300
    .end local v1    # "raw":Landroid/app/ApplicationExitInfo;
    monitor-exit v0

    .line 301
    return-void

    .line 292
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method scheduleNoteLmkdProcKilled(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 340
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 342
    return-void
.end method

.method scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 272
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    if-nez v1, :cond_1

    .line 278
    monitor-exit v0

    return-void

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v2, 0x1007

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecordLocked(Lcom/android/server/am/ProcessRecord;)Landroid/app/ApplicationExitInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 273
    :cond_2
    :goto_0
    return-void
.end method

.method schedulePersistProcessExitInfo(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .line 737
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    .line 739
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 740
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 742
    :cond_1
    new-instance v1, Lcom/android/server/am/-$$Lambda$nvO8eEA3_tju6oGhhJ2BoQfYghg;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$nvO8eEA3_tju6oGhhJ2BoQfYghg;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 743
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 744
    if-eqz p1, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    sget-wide v3, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 743
    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 746
    :cond_3
    monitor-exit v0

    .line 747
    return-void

    .line 746
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setLmkdKillListener(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;

    .line 332
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    new-instance v2, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$LrV5fgRdrB2bonNSZZAbUAXpryI;

    invoke-direct {v2, p1}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$LrV5fgRdrB2bonNSZZAbUAXpryI;-><init>(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->setOnProcDiedListener(Ljava/util/function/BiConsumer;)V

    .line 335
    monitor-exit v0

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setProcessStateSummary(II[B)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "data"    # [B

    .line 966
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 968
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 969
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move p1, v2

    .line 971
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    sget-object v6, Lcom/android/server/am/-$$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY;->INSTANCE:Lcom/android/server/am/-$$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY;

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 972
    .end local v1    # "k":Ljava/lang/Integer;
    monitor-exit v0

    .line 973
    return-void

    .line 972
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
