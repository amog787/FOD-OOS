.class public Lcom/android/server/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GraphicsStatsService$HistoricalBuffer;,
        Lcom/android/server/GraphicsStatsService$ActiveBuffer;,
        Lcom/android/server/GraphicsStatsService$BufferInfo;
    }
.end annotation


# static fields
.field private static final DELETE_OLD:I = 0x2

.field public static final GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final SAVE_BUFFER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GraphicsStatsService"


# instance fields
.field private final ASHMEM_SIZE:I

.field private final ZERO_DATA:[B

.field private mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mFileAccessLock:Ljava/lang/Object;

.field private mGraphicsStatsDir:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mRotateIsScheduled:Z

.field private mWriteOutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    .line 83
    invoke-static {}, Lcom/android/server/GraphicsStatsService;->nGetAshmemSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    .line 84
    iget v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->ZERO_DATA:[B

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 97
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    .line 98
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 99
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v0, "systemDataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "graphicsstats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    .line 102
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 103
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    const-string v3, "GraphicsStats-disk"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v1, "bgthread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/android/server/GraphicsStatsService$1;

    invoke-direct {v4, p0}, Lcom/android/server/GraphicsStatsService$1;-><init>(Lcom/android/server/GraphicsStatsService;)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    .line 124
    return-void

    .line 104
    .end local v1    # "bgthread":Landroid/os/HandlerThread;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Graphics stats directory does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    .line 105
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;
    .param p1, "x1"    # Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->saveBuffer(Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GraphicsStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;

    .line 73
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->deleteOldBuffers()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/GraphicsStatsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;

    .line 73
    iget v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/GraphicsStatsService;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;

    .line 73
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->ZERO_DATA:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;
    .param p1, "x1"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method private addToSaveQueue(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 3
    .param p1, "buffer"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 280
    :try_start_0
    new-instance v0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    .line 281
    .local v0, "data":Lcom/android/server/GraphicsStatsService$HistoricalBuffer;
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalBuffer;
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy graphicsstats from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v2, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GraphicsStatsService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    .line 286
    return-void
.end method

.method private deleteOldBuffers()V
    .locals 11

    .line 253
    const-wide/32 v0, 0x80000

    const-string v2, "deleting old graphicsstats buffers"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 255
    :try_start_0
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 256
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_4

    array-length v4, v3

    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    goto :goto_3

    .line 259
    :cond_0
    array-length v4, v3

    new-array v4, v4, [J

    .line 260
    .local v4, "sortedDates":[J
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    array-length v8, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v7, v8, :cond_1

    .line 262
    :try_start_1
    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    goto :goto_1

    .line 263
    :catch_0
    move-exception v8

    .line 260
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 267
    .end local v7    # "i":I
    :cond_1
    :try_start_2
    array-length v7, v4

    if-gt v7, v5, :cond_2

    .line 268
    monitor-exit v2

    return-void

    .line 270
    :cond_2
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 271
    nop

    .local v6, "i":I
    :goto_2
    array-length v7, v4

    sub-int/2addr v7, v5

    if-ge v6, v7, :cond_3

    .line 272
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    aget-wide v9, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/android/server/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    .line 271
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 274
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "sortedDates":[J
    .end local v6    # "i":I
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 276
    return-void

    .line 257
    .restart local v3    # "files":[Ljava/io/File;
    :cond_4
    :goto_3
    :try_start_3
    monitor-exit v2

    return-void

    .line 274
    .end local v3    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private deleteRecursiveLocked(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 244
    .local v3, "child":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    .line 243
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphicsStatsService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    return-void
.end method

.method private dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;
    .locals 17
    .param p1, "dump"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/GraphicsStatsService$HistoricalBuffer;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 323
    .local p3, "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/GraphicsStatsService$HistoricalBuffer;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 324
    .local v0, "skipFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 325
    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    .line 326
    .local v3, "buffer":Lcom/android/server/GraphicsStatsService$HistoricalBuffer;
    iget-object v4, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    move-object/from16 v5, p0

    invoke-direct {v5, v4}, Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v4

    .line 327
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v9, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v10, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v12, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v14, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    move-object/from16 v16, v6

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v16}, Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V

    .line 324
    .end local v3    # "buffer":Lcom/android/server/GraphicsStatsService$HistoricalBuffer;
    .end local v4    # "path":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p0

    move-object/from16 v2, p3

    .line 332
    .end local v1    # "i":I
    return-object v0
.end method

.method private dumpHistoricalLocked(JLjava/util/HashSet;)V
    .locals 18
    .param p1, "dump"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 336
    .local p3, "skipFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 337
    .local v5, "date":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 338
    .local v9, "pkg":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_1

    aget-object v13, v10, v12

    .line 339
    .local v13, "version":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "total"

    invoke-direct {v14, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    .local v14, "data":Ljava/io/File;
    move-object/from16 v15, p3

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 341
    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    goto :goto_3

    .line 343
    :cond_0
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v3}, Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;)V

    .line 338
    .end local v13    # "version":Ljava/io/File;
    .end local v14    # "data":Ljava/io/File;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_2

    :cond_1
    move-object/from16 v15, p3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    .line 337
    .end local v9    # "pkg":Ljava/io/File;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_1

    :cond_2
    move-object/from16 v15, p3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    .line 336
    .end local v5    # "date":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_0

    .line 347
    :cond_3
    move-wide/from16 v0, p1

    move-object/from16 v15, p3

    return-void
.end method

.method private fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .locals 15
    .param p1, "token"    # Landroid/view/IGraphicsStatsCallback;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "versionCode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    move-object v9, p0

    iget-object v0, v9, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 298
    .local v10, "size":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 299
    .local v11, "today":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_3

    .line 300
    iget-object v1, v9, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 301
    .local v1, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget v2, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    move/from16 v13, p3

    if-ne v2, v13, :cond_1

    iget v2, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    move/from16 v14, p2

    if-ne v2, v14, :cond_2

    .line 304
    iget-object v2, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v2, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    cmp-long v2, v2, v11

    if-gez v2, :cond_0

    .line 305
    invoke-virtual {v1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->binderDied()V

    .line 306
    goto :goto_1

    .line 308
    :cond_0
    return-object v1

    .line 301
    :cond_1
    move/from16 v14, p2

    .line 299
    .end local v1    # "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move/from16 v14, p2

    move/from16 v13, p3

    .line 314
    .end local v0    # "i":I
    :goto_1
    :try_start_0
    new-instance v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)V

    .line 315
    .local v0, "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget-object v1, v9, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return-object v0

    .line 317
    .end local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to allocate space"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "file"    # Landroid/os/MemoryFile;

    .line 191
    :try_start_0
    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid file descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/GraphicsStatsService;
    .end local p1    # "file":Landroid/os/MemoryFile;
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .restart local p0    # "this":Lcom/android/server/GraphicsStatsService;
    .restart local p1    # "file":Landroid/os/MemoryFile;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get PFD from memory file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic lambda$2EDVu98hsJvSwNgKvijVLSR3IrQ(Lcom/android/server/GraphicsStatsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->onAlarm()V

    return-void
.end method

.method private static native nAddToDump(JLjava/lang/String;)V
.end method

.method private static native nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V
.end method

.method private static native nCreateDump(IZ)J
.end method

.method private static native nFinishDump(J)V
.end method

.method private static native nGetAshmemSize()I
.end method

.method private static native nSaveBuffer(Ljava/lang/String;Ljava/lang/String;JJJ[B)V
.end method

.method private normalizeDate(J)Ljava/util/Calendar;
    .locals 3
    .param p1, "timestamp"    # J

    .line 208
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 209
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 214
    return-object v0
.end method

.method private onAlarm()V
    .locals 9

    .line 147
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 149
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->scheduleRotateLocked()V

    .line 150
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    new-array v3, v1, [Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 151
    .local v2, "activeCopy":[Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    array-length v0, v2

    move v3, v1

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v0, :cond_0

    aget-object v5, v2, v3

    .line 154
    .local v5, "active":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :try_start_1
    iget-object v6, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v6}, Landroid/view/IGraphicsStatsCallback;->onRotateGraphicsStatsBuffer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    goto :goto_1

    .line 155
    :catch_0
    move-exception v6

    .line 156
    .local v6, "e":Landroid/os/RemoteException;
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v7, v7, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    aput-object v7, v4, v1

    iget v7, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    .line 157
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    .line 156
    const-string v7, "Failed to notify \'%s\' (pid=%d) to rotate buffers"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "GraphicsStatsService"

    invoke-static {v7, v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v5    # "active":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    return-void

    .line 151
    .end local v2    # "activeCopy":[Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;
    .locals 3
    .param p1, "info"    # Lcom/android/server/GraphicsStatsService$BufferInfo;

    .line 218
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    .line 219
    invoke-direct {p0, v1, v2}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 218
    const-string v1, "%d/%s/%d/total"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "subPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 289
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 291
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->addToSaveQueue(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    .line 293
    return-void

    .line 291
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "token"    # Landroid/view/IGraphicsStatsCallback;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "versionCode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-direct/range {p0 .. p6}, Lcom/android/server/GraphicsStatsService;->fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-result-object v0

    .line 203
    .local v0, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->scheduleRotateLocked()V

    .line 204
    iget-object v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-direct {p0, v1}, Lcom/android/server/GraphicsStatsService;->getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private saveBuffer(Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V
    .locals 14
    .param p1, "buffer"    # Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    .line 224
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saving graphicsstats for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v3, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 228
    :try_start_0
    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v3

    .line 229
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 230
    .local v4, "parent":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    const-string v0, "GraphicsStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create path: \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    monitor-exit v2

    return-void

    .line 235
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v6, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v7, v7, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    iget-object v9, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v9, v9, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v11, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v11, v11, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    iget-object v13, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    invoke-static/range {v5 .. v13}, Lcom/android/server/GraphicsStatsService;->nSaveBuffer(Ljava/lang/String;Ljava/lang/String;JJJ[B)V

    .line 237
    .end local v3    # "path":Ljava/io/File;
    .end local v4    # "parent":Ljava/io/File;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 239
    return-void

    .line 237
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private scheduleRotateLocked()V
    .locals 10

    .line 132
    iget-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    if-eqz v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v1

    .line 137
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 138
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    new-instance v8, Lcom/android/server/-$$Lambda$GraphicsStatsService$2EDVu98hsJvSwNgKvijVLSR3IrQ;

    invoke-direct {v8, p0}, Lcom/android/server/-$$Lambda$GraphicsStatsService$2EDVu98hsJvSwNgKvijVLSR3IrQ;-><init>(Lcom/android/server/GraphicsStatsService;)V

    iget-object v9, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const-string v7, "GraphicsStatsService"

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v1, "GraphicsStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    .line 353
    .local v0, "dumpProto":Z
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p3, v3

    .line 354
    .local v4, "str":Ljava/lang/String;
    const-string v5, "--proto"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    const/4 v0, 0x1

    .line 356
    goto :goto_1

    .line 353
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v3, "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/GraphicsStatsService$HistoricalBuffer;>;"
    nop

    .local v2, "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ge v2, v4, :cond_3

    .line 364
    :try_start_1
    new-instance v4, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    iget-object v5, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-direct {v4, p0, v5}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 367
    goto :goto_3

    .line 365
    :catch_0
    move-exception v4

    .line 362
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 369
    .end local v2    # "i":I
    :cond_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 370
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide v1

    .line 372
    .local v1, "dump":J
    :try_start_3
    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    :try_start_4
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v5

    .line 374
    .local v5, "skipList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 375
    invoke-direct {p0, v1, v2, v5}, Lcom/android/server/GraphicsStatsService;->dumpHistoricalLocked(JLjava/util/HashSet;)V

    .line 376
    .end local v5    # "skipList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 378
    invoke-static {v1, v2}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    .line 379
    nop

    .line 380
    return-void

    .line 376
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "dumpProto":Z
    .end local v1    # "dump":J
    .end local v3    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/GraphicsStatsService$HistoricalBuffer;>;"
    .end local p0    # "this":Lcom/android/server/GraphicsStatsService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "fout":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 378
    .restart local v0    # "dumpProto":Z
    .restart local v1    # "dump":J
    .restart local v3    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/GraphicsStatsService$HistoricalBuffer;>;"
    .restart local p0    # "this":Lcom/android/server/GraphicsStatsService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "fout":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v4

    invoke-static {v1, v2}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    throw v4

    .line 369
    .end local v1    # "dump":J
    .end local v3    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/GraphicsStatsService$HistoricalBuffer;>;"
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2
.end method

.method public requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/view/IGraphicsStatsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 168
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 169
    .local v11, "pid":I
    const/4 v12, 0x0

    .line 170
    .local v12, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 172
    .local v13, "callingIdentity":J
    :try_start_0
    iget-object v0, v8, Lcom/android/server/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v10, v9}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 173
    iget-object v0, v8, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 173
    invoke-virtual {v0, v9, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v15, v0

    .line 177
    .local v15, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v8, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 178
    nop

    .line 179
    :try_start_1
    invoke-virtual {v15}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v10

    move v4, v11

    move-object/from16 v5, p1

    move-object/from16 v18, v6

    move-wide/from16 v6, v16

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/android/server/GraphicsStatsService;->requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v12, v0

    .line 180
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .end local v15    # "info":Landroid/content/pm/PackageInfo;
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    nop

    .line 186
    return-object v12

    .line 180
    .restart local v15    # "info":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v18, v6

    :goto_0
    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v10    # "uid":I
    .end local v11    # "pid":I
    .end local v12    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v13    # "callingIdentity":J
    .end local p0    # "this":Lcom/android/server/GraphicsStatsService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "token":Landroid/view/IGraphicsStatsCallback;
    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 184
    .end local v15    # "info":Landroid/content/pm/PackageInfo;
    .restart local v10    # "uid":I
    .restart local v11    # "pid":I
    .restart local v12    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "callingIdentity":J
    .restart local p0    # "this":Lcom/android/server/GraphicsStatsService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "token":Landroid/view/IGraphicsStatsCallback;
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find package: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v10    # "uid":I
    .end local v11    # "pid":I
    .end local v12    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v13    # "callingIdentity":J
    .end local p0    # "this":Lcom/android/server/GraphicsStatsService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "token":Landroid/view/IGraphicsStatsCallback;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 184
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "uid":I
    .restart local v11    # "pid":I
    .restart local v12    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "callingIdentity":J
    .restart local p0    # "this":Lcom/android/server/GraphicsStatsService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "token":Landroid/view/IGraphicsStatsCallback;
    :goto_1
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
