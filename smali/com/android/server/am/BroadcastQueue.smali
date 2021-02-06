.class public final Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
    }
.end annotation


# static fields
.field static final BROADCAST_INTENT_MSG:I = 0xc8

.field static final BROADCAST_TIMEOUT_MSG:I = 0xc9

.field private static final IS_SUPPORT_VIP_BROADCAST:Z

.field static final MAX_BROADCAST_HISTORY:I = 0x1f4

.field static final MAX_BROADCAST_SUMMARY_HISTORY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_MU:Ljava/lang/String; = "BroadcastQueue_MU"


# instance fields
.field final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field final mBroadcastSummaryHistory:[Landroid/content/Intent;

.field mBroadcastsScheduled:Z

.field final mConstants:Lcom/android/server/am/BroadcastConstants;

.field final mDelayBehindServices:Z

.field mDelayCount:I

.field mDelayUntil:J

.field mDelayedAt:J

.field mDelayedBy:J

.field final mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

.field final mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

.field mHistoryNext:I

.field mLogLatencyMetrics:Z

.field private mNextToken:I

.field final mParallelBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

.field mPendingBroadcastRecvIndex:I

.field mPendingBroadcastTimeoutMessage:Z

.field final mQueueName:Ljava/lang/String;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSplitRefcounts:Landroid/util/SparseIntArray;

.field final mSummaryHistoryDispatchTime:[J

.field final mSummaryHistoryEnqueueTime:[J

.field final mSummaryHistoryFinishTime:[J

.field mSummaryHistoryNext:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x12d

    aput v2, v0, v1

    .line 203
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z

    .line 202
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Z)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "constants"    # Lcom/android/server/am/BroadcastConstants;
    .param p5, "allowDelayBehindServices"    # Z

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    .line 145
    const/16 v1, 0x1f4

    new-array v1, v1, [Lcom/android/server/am/BroadcastRecord;

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 146
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 152
    const/16 v1, 0xbb8

    new-array v2, v1, [Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    .line 153
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 160
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    .line 161
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    .line 162
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    .line 167
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    .line 231
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 232
    new-instance v0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    .line 233
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 234
    iput-boolean p5, p0, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    .line 236
    iput-object p4, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 237
    new-instance v1, Lcom/android/server/am/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, p0, p4, v0, v2}, Lcom/android/server/am/BroadcastDispatcher;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 238
    return-void
.end method

.method private createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;
    .locals 4
    .param p1, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "state"    # I

    .line 2190
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 2191
    if-nez p2, :cond_0

    const-string v1, "in queue"

    goto :goto_0

    :cond_0
    const-string v1, "dispatched"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 2192
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    :goto_1
    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2193
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_2

    const-string/jumbo v2, "process unknown"

    goto :goto_2

    :cond_2
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 2194
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    :goto_3
    aput-object v3, v0, v1

    .line 2190
    const-string v1, "Broadcast %s from %s (%s) %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 291
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const/4 v2, 0x0

    .line 293
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 292
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 296
    :cond_0
    return-void
.end method

.method private isAliveProcess(ILjava/lang/String;)Z
    .locals 7
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 750
    const-string v0, "BroadcastQueue"

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_7

    .line 753
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 756
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 757
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 758
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "line":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v5, :cond_1

    .line 760
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read cmdline: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_1
    if-nez v4, :cond_3

    .line 764
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v5, :cond_2

    .line 765
    const-string v5, "cmdline return null"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    :cond_2
    nop

    .line 788
    nop

    .line 790
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 793
    goto :goto_0

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 767
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return v1

    .line 769
    :cond_3
    :try_start_2
    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 771
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v5, :cond_4

    .line 772
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cmdline starts with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    :cond_4
    const/4 v0, 0x1

    .line 788
    nop

    .line 790
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 793
    goto :goto_1

    .line 791
    :catch_1
    move-exception v1

    .line 792
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 774
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return v0

    .line 776
    :cond_5
    :try_start_4
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v5, :cond_6

    .line 777
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cmdline starts not with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 779
    :cond_6
    nop

    .line 788
    nop

    .line 790
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 793
    goto :goto_2

    .line 791
    :catch_2
    move-exception v0

    .line 792
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 779
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return v1

    .line 783
    .end local v4    # "line":Ljava/lang/String;
    :cond_7
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cmdline not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 788
    if-eqz v3, :cond_8

    .line 790
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 793
    :goto_3
    goto :goto_4

    .line 791
    :catch_3
    move-exception v0

    .line 792
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 788
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 785
    :catch_4
    move-exception v4

    .line 786
    .local v4, "e":Ljava/io/IOException;
    :try_start_8
    const-string v5, "Failed to read process"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 788
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_8

    .line 790
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 796
    :cond_8
    :goto_4
    return v1

    .line 788
    :goto_5
    if-eqz v3, :cond_9

    .line 790
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 793
    goto :goto_6

    .line 791
    :catch_5
    move-exception v1

    .line 792
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 795
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9
    :goto_6
    throw v0

    .line 751
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "br":Ljava/io/BufferedReader;
    :cond_a
    :goto_7
    return v1
.end method

.method private maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 1953
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p2, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1956
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1959
    .local v0, "msgToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1961
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 1962
    return-void

    .line 1954
    .end local v0    # "msgToken":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private nextSplitTokenLocked()I
    .locals 1

    .line 511
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    add-int/lit8 v0, v0, 0x1

    .line 512
    .local v0, "next":I
    if-gtz v0, :cond_0

    .line 513
    const/4 v0, 0x1

    .line 515
    :cond_0
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    .line 516
    return v0
.end method

.method private postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "msgToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 527
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$BroadcastQueue$-Rc4kAs41vmqWweLcJR0YLxZ0dM;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/-$$Lambda$BroadcastQueue$-Rc4kAs41vmqWweLcJR0YLxZ0dM;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    iget-wide v3, p2, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v5, v5, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 532
    return-void
.end method

.method private final processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 23
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipOomAdj"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ": NOT STARTED!"

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    const-string v5, "Process cur broadcast "

    const-string v6, "BroadcastQueue"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for app "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_c

    .line 338
    iget-boolean v0, v3, Lcom/android/server/am/ProcessRecord;->inFullBackup:Z

    if-eqz v0, :cond_1

    .line 339
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 340
    return-void

    .line 343
    :cond_1
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 344
    iput-object v3, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 345
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 346
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 347
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v7, v8}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 348
    if-nez p3, :cond_2

    .line 349
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v9, "updateOomAdj_meh"

    invoke-virtual {v0, v3, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 353
    :cond_2
    iget-object v0, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v9, v2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 355
    const/4 v9, 0x0

    .line 377
    .local v9, "started":Z
    const/4 v0, 0x1

    .line 378
    .local v0, "isShouldGo":Z
    :try_start_0
    sget-boolean v10, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z

    if-eqz v10, :cond_3

    invoke-static {v1, v3, v2}, Lcom/android/server/am/OpBroadcastInjector;->skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 379
    const/4 v0, 0x0

    .line 382
    :cond_3
    if-eqz v0, :cond_7

    .line 384
    if-eqz v3, :cond_4

    .line 385
    iget v10, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 386
    iget v10, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v11, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v12, 0x1

    iget-object v13, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v10, v11, v7, v12, v13}, Lcom/android/server/am/OpBGFrozenInjector;->receiveBroadcastEvent(IIZZLandroid/content/Intent;)V

    .line 391
    :cond_4
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delivering to component "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_5
    iget-object v7, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v7, v10, v11}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 396
    iget-object v12, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v13, Landroid/content/Intent;

    iget-object v7, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v13, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v14, v2, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v7, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 397
    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v15

    iget v7, v2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v10, v2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v8, v2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v22, v0

    .end local v0    # "isShouldGo":Z
    .local v22, "isShouldGo":Z
    iget v0, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 399
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v21

    .line 396
    move/from16 v16, v7

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move/from16 v19, v8

    move/from16 v20, v0

    invoke-interface/range {v12 .. v21}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 400
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " DELIVERED for app "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_6
    const/4 v9, 0x1

    goto :goto_0

    .line 382
    .end local v22    # "isShouldGo":Z
    .restart local v0    # "isShouldGo":Z
    :cond_7
    move/from16 v22, v0

    .line 406
    .end local v0    # "isShouldGo":Z
    :goto_0
    if-nez v9, :cond_9

    .line 407
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_8
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 410
    iput-object v4, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 411
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 414
    :cond_9
    return-void

    .line 406
    :catchall_0
    move-exception v0

    if-nez v9, :cond_b

    .line 407
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_a
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 410
    iput-object v4, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 411
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 413
    :cond_b
    throw v0

    .line 336
    .end local v9    # "started":Z
    :cond_c
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .locals 5
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "typeForLogging"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 316
    .local p1, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    .line 318
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 319
    .local v2, "old":Lcom/android/server/am/BroadcastRecord;
    iget v3, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_0

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** DROPPING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-object v2

    .line 317
    .end local v2    # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z
    .locals 23
    .param p1, "receiverRecord"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "receivingPackageName"    # Ljava/lang/String;
    .param p3, "receivingUserId"    # I

    .line 1068
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 1070
    return v5

    .line 1073
    :cond_0
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 1074
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_0

    .line 1075
    :cond_2
    move v4, v5

    :goto_0
    nop

    .line 1078
    .local v4, "callerForeground":Z
    const-string/jumbo v7, "u"

    const-string v8, "BroadcastQueue"

    if-eqz v4, :cond_4

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1079
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v14, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-array v9, v5, [Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    aput-object v11, v9, v6

    new-array v5, v5, [Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1085
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1084
    invoke-virtual {v11, v6}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v5, v11

    const/high16 v21, 0x54000000

    const/16 v22, 0x0

    .line 1079
    const/4 v6, 0x1

    move v11, v6

    move-object/from16 v19, v9

    move-object/from16 v20, v5

    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v5

    .line 1089
    .local v5, "target":Landroid/content/IIntentSender;
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v9, 0x18800000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1093
    const-string v9, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v6, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    new-instance v9, Landroid/content/IntentSender;

    invoke-direct {v9, v5}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v10, "android.intent.extra.INTENT"

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1096
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v9, :cond_3

    .line 1097
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Launching permission review for package "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_3
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v8, Lcom/android/server/am/BroadcastQueue$1;

    invoke-direct {v8, v0, v6, v3}, Lcom/android/server/am/BroadcastQueue$1;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;I)V

    invoke-virtual {v7, v8}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->post(Ljava/lang/Runnable;)Z

    .line 1107
    .end local v5    # "target":Landroid/content/IIntentSender;
    .end local v6    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 1108
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Receiving a broadcast in package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " requires a permissions review"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :goto_1
    const/4 v5, 0x0

    return v5
.end method

.method private final ringAdvance(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "increment"    # I
    .param p3, "ringSize"    # I

    .line 2105
    add-int/2addr p1, p2

    .line 2106
    if-gez p1, :cond_0

    add-int/lit8 v0, p3, -0x1

    return v0

    .line 2107
    :cond_0
    if-lt p1, p3, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2108
    :cond_1
    return p1
.end method

.method private skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 484
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 486
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 487
    return-void
.end method


# virtual methods
.method final addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 6
    .param p1, "original"    # Lcom/android/server/am/BroadcastRecord;

    .line 2112
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-gez v0, :cond_0

    .line 2114
    return-void

    .line 2118
    :cond_0
    sget-boolean v0, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 2119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_1

    .line 2120
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OpBroadcastInjector;->speedMonitor(ZI)V

    .line 2124
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 2126
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 2127
    nop

    .line 2128
    invoke-direct {p0, p1, v3}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v2

    .line 2129
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 2127
    invoke-static {v0, v1, v2, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2134
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 2136
    .local v0, "historyRecord":Lcom/android/server/am/BroadcastRecord;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    aput-object v0, v1, v2

    .line 2137
    const/16 v1, 0x1f4

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 2139
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    aput-object v4, v1, v2

    .line 2140
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    aput-wide v4, v1, v2

    .line 2141
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v4, v1, v2

    .line 2142
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 2143
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    const/16 v2, 0xbb8

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 2144
    return-void
.end method

.method public backgroundServicesFinishedLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 667
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 668
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    .line 669
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 670
    const-string v1, "BroadcastQueue"

    const-string v2, "Resuming delayed broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 672
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 673
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 676
    :cond_0
    return-void
.end method

.method final broadcastTimeoutLocked(Z)V
    .locals 14
    .param p1, "fromMsg"    # Z

    .line 1980
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1981
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1984
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 1988
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1989
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    .line 1990
    .local v3, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz p1, :cond_6

    .line 1991
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_2

    .line 1994
    return-void

    .line 1998
    :cond_2
    iget-boolean v4, v3, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-eqz v4, :cond_4

    .line 1999
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_3

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast timeout but it\'s exempt: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2001
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2000
    const-string v4, "BroadcastQueue"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :cond_3
    return-void

    .line 2006
    :cond_4
    iget-wide v4, v3, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v6, v6, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    add-long/2addr v4, v6

    .line 2007
    .local v4, "timeoutTime":J
    cmp-long v6, v4, v1

    if-lez v6, :cond_6

    .line 2012
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Premature timeout ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] @ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ": resetting BROADCAST_TIMEOUT_MSG for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "BroadcastQueue"

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_5
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 2017
    return-void

    .line 2021
    .end local v4    # "timeoutTime":J
    :cond_6
    iget v4, v3, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne v4, v5, :cond_8

    .line 2026
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waited long enough for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_7

    .line 2027
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_7
    const-string v5, "(null)"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2026
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    iput-object v6, v3, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 2029
    iput v0, v3, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 2030
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 2031
    return-void

    .line 2037
    :cond_8
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v5

    .line 2039
    .local v0, "debugging":Z
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout of broadcast "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " - receiver="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", started "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v7, v1, v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms ago"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "BroadcastQueue"

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    iput-wide v1, v3, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 2042
    if-nez v0, :cond_a

    .line 2043
    iget v4, v3, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 2046
    sget-boolean v4, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z

    if-eqz v4, :cond_a

    .line 2047
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->updateAnrCount()V

    .line 2052
    :cond_a
    const/4 v4, 0x0

    .line 2053
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v7, 0x0

    .line 2056
    .local v7, "anrMessage":Ljava/lang/String;
    iget v8, v3, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v8, :cond_b

    .line 2057
    iget-object v8, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v9, v3, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 2058
    .local v8, "curReceiver":Ljava/lang/Object;
    iget-object v9, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iget v10, v3, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v10, v5

    const/4 v5, 0x3

    aput v5, v9, v10

    move-object v11, v8

    goto :goto_1

    .line 2060
    .end local v8    # "curReceiver":Ljava/lang/Object;
    :cond_b
    iget-object v8, v3, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    move-object v11, v8

    .line 2062
    .local v11, "curReceiver":Ljava/lang/Object;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receiver during timeout of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "BroadcastQueue"

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 2064
    if-eqz v11, :cond_d

    instance-of v5, v11, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_d

    .line 2065
    move-object v5, v11

    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    .line 2066
    .local v5, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v8, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v8, v8, Lcom/android/server/am/ReceiverList;->pid:I

    if-eqz v8, :cond_c

    iget-object v8, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v8, v8, Lcom/android/server/am/ReceiverList;->pid:I

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v9, :cond_c

    .line 2068
    iget-object v8, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v8

    .line 2069
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v10, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v10, v10, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    move-object v4, v9

    .line 2071
    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2073
    .end local v5    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_c
    :goto_2
    move-object v12, v4

    goto :goto_3

    .line 2074
    :cond_d
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    move-object v12, v4

    .line 2077
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    :goto_3
    if-eqz v12, :cond_e

    .line 2078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    goto :goto_4

    .line 2077
    :cond_e
    move-object v13, v7

    .line 2081
    .end local v7    # "anrMessage":Ljava/lang/String;
    .local v13, "anrMessage":Ljava/lang/String;
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-ne v4, v3, :cond_f

    .line 2082
    iput-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 2086
    :cond_f
    iget v6, v3, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v9, v3, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 2088
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 2090
    if-nez v0, :cond_11

    if-eqz v13, :cond_11

    .line 2093
    if-eqz v12, :cond_10

    .line 2094
    iget v4, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2095
    iget v4, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OpBGFrozenInjector;->broadcastTimeoutEvent(IILandroid/content/Intent;)V

    .line 2100
    :cond_10
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {v4, v12, v13}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 2102
    :cond_11
    return-void

    .line 1985
    .end local v0    # "debugging":Z
    .end local v1    # "now":J
    .end local v3    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v11    # "curReceiver":Ljava/lang/Object;
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "anrMessage":Ljava/lang/String;
    :cond_12
    :goto_5
    return-void
.end method

.method final cancelBroadcastTimeoutLocked()V
    .locals 2

    .line 1973
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1977
    :cond_0
    return-void
.end method

.method cancelDeferrals()V
    .locals 2

    .line 2205
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2206
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->cancelDeferralsLocked()V

    .line 2207
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 2208
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2209
    return-void

    .line 2208
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 2148
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2149
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2150
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2152
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 2153
    return v2

    .line 2149
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2157
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2160
    return v0
.end method

.method deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V
    .locals 30
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p3, "ordered"    # Z
    .param p4, "index"    # I

    .line 802
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    const/4 v0, 0x0

    .line 803
    .local v0, "skip":Z
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget v5, v13, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    const-string v2, " through "

    const-string v3, ") to "

    const-string v4, " from "

    const-string v5, ", uid="

    const-string v6, " (pid="

    const-string v15, "BroadcastQueue"

    if-nez v1, :cond_0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Association not allowed: broadcasting "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 806
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v0, 0x1

    .line 812
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v8, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v9, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget-object v10, v12, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move/from16 v22, v0

    .end local v0    # "skip":Z
    .local v22, "skip":Z
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v0, v0, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v16, v1

    move-object/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firewall blocked: broadcasting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 815
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v0, 0x1

    .end local v22    # "skip":Z
    .restart local v0    # "skip":Z
    goto :goto_0

    .line 812
    :cond_1
    move/from16 v22, v0

    .line 821
    .end local v0    # "skip":Z
    .restart local v22    # "skip":Z
    :cond_2
    move/from16 v0, v22

    .end local v22    # "skip":Z
    .restart local v0    # "skip":Z
    :goto_0
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    const-string v2, ") requires "

    const-string v3, ") requires appop "

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v1, :cond_5

    .line 822
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    iget v9, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v10, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v1, v9, v10, v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    .line 824
    .local v1, "perm":I
    const-string v9, " due to registered receiver "

    if-eqz v1, :cond_3

    .line 825
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: broadcasting "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 826
    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 825
    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 833
    :cond_3
    iget-object v8, v13, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-static {v8}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v8

    .line 834
    .local v8, "opCode":I
    if-eq v8, v7, :cond_4

    iget-object v10, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 835
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v17

    iget v10, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move/from16 v24, v0

    .end local v0    # "skip":Z
    .local v24, "skip":Z
    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    const-string v22, ""

    move/from16 v18, v8

    move/from16 v19, v10

    move-object/from16 v20, v7

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v22}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: broadcasting "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 839
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 842
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v0, 0x1

    .end local v24    # "skip":Z
    .restart local v0    # "skip":Z
    goto :goto_2

    .line 834
    :cond_4
    move/from16 v24, v0

    .end local v0    # "skip":Z
    .restart local v24    # "skip":Z
    goto :goto_1

    .line 821
    .end local v1    # "perm":I
    .end local v8    # "opCode":I
    .end local v24    # "skip":Z
    .restart local v0    # "skip":Z
    :cond_5
    move/from16 v24, v0

    .line 849
    .end local v0    # "skip":Z
    .restart local v24    # "skip":Z
    :cond_6
    :goto_1
    move/from16 v0, v24

    .end local v24    # "skip":Z
    .restart local v0    # "skip":Z
    :goto_2
    const-string v1, "Appop Denial: receiving "

    const-string v4, " due to sender "

    const-string v7, ")"

    const-string v8, " (uid "

    const-string v9, " to "

    if-nez v0, :cond_b

    iget-object v10, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v10, v10

    if-lez v10, :cond_b

    .line 850
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move/from16 v17, v0

    .end local v0    # "skip":Z
    .local v17, "skip":Z
    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-ge v10, v0, :cond_a

    .line 851
    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v0, v0, v10

    .line 852
    .local v0, "requiredPermission":Ljava/lang/String;
    iget-object v14, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v14, v14, Lcom/android/server/am/ReceiverList;->pid:I

    move/from16 v18, v10

    .end local v10    # "i":I
    .local v18, "i":I
    iget-object v10, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v10, v10, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v20, v1

    move-object/from16 v19, v3

    const/4 v1, 0x1

    const/4 v3, -0x1

    invoke-static {v0, v14, v10, v3, v1}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v10

    .line 854
    .local v10, "perm":I
    if-eqz v10, :cond_7

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: receiving "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 856
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 855
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/4 v1, 0x1

    .line 864
    .end local v17    # "skip":Z
    .local v1, "skip":Z
    move v0, v1

    move-object/from16 v14, v19

    move-object/from16 v3, v20

    goto/16 :goto_6

    .line 866
    .end local v1    # "skip":Z
    .restart local v17    # "skip":Z
    :cond_7
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 867
    .local v1, "appOp":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    iget v3, v12, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v1, v3, :cond_9

    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 868
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v24

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v14, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->featureId:Ljava/lang/String;

    const-string v29, ""

    move/from16 v25, v1

    move/from16 v26, v3

    move-object/from16 v27, v14

    move-object/from16 v28, v2

    invoke-virtual/range {v24 .. v29}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 872
    invoke-virtual {v14}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v14, v14, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v14, v14, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v14, v14, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v14, v19

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    move/from16 v19, v1

    .end local v1    # "appOp":I
    .local v19, "appOp":I
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 871
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v1, 0x1

    .line 881
    .end local v17    # "skip":Z
    .local v1, "skip":Z
    move v0, v1

    goto :goto_6

    .line 868
    .end local v19    # "appOp":I
    .local v1, "appOp":I
    .restart local v17    # "skip":Z
    :cond_8
    move-object/from16 v14, v19

    move-object/from16 v3, v20

    move/from16 v19, v1

    .end local v1    # "appOp":I
    .restart local v19    # "appOp":I
    goto :goto_4

    .line 867
    .end local v19    # "appOp":I
    .restart local v1    # "appOp":I
    :cond_9
    move-object/from16 v21, v2

    move-object/from16 v14, v19

    move-object/from16 v3, v20

    move/from16 v19, v1

    .line 850
    .end local v0    # "requiredPermission":Ljava/lang/String;
    .end local v1    # "appOp":I
    .end local v10    # "perm":I
    :goto_4
    add-int/lit8 v10, v18, 0x1

    move-object v1, v3

    move-object v3, v14

    move/from16 v0, v17

    move-object/from16 v2, v21

    move/from16 v14, p3

    .end local v18    # "i":I
    .local v10, "i":I
    goto/16 :goto_3

    :cond_a
    move-object v14, v3

    move/from16 v18, v10

    move-object v3, v1

    .end local v10    # "i":I
    .restart local v18    # "i":I
    goto :goto_5

    .line 849
    .end local v17    # "skip":Z
    .end local v18    # "i":I
    .local v0, "skip":Z
    :cond_b
    move/from16 v17, v0

    move-object v14, v3

    move-object v3, v1

    .line 885
    .end local v0    # "skip":Z
    .restart local v17    # "skip":Z
    :goto_5
    move/from16 v0, v17

    .end local v17    # "skip":Z
    .restart local v0    # "skip":Z
    :goto_6
    const-string v1, ") due to sender "

    const/4 v10, 0x0

    if-nez v0, :cond_e

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    move/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v14

    goto :goto_8

    .line 886
    :cond_d
    :goto_7
    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->pid:I

    move/from16 v17, v0

    .end local v0    # "skip":Z
    .restart local v17    # "skip":Z
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v0, v0, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v18, v4

    move-object/from16 v19, v14

    const/4 v4, -0x1

    const/4 v14, 0x1

    invoke-static {v10, v2, v0, v4, v14}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    .line 888
    .local v0, "perm":I
    if-eqz v0, :cond_f

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: security check failed when receiving "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 890
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 889
    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v2, 0x1

    move v0, v2

    .end local v17    # "skip":Z
    .local v2, "skip":Z
    goto :goto_9

    .line 885
    .end local v2    # "skip":Z
    .local v0, "skip":Z
    :cond_e
    move/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v14

    .line 899
    .end local v0    # "skip":Z
    .restart local v17    # "skip":Z
    :cond_f
    :goto_8
    move/from16 v0, v17

    .end local v17    # "skip":Z
    .restart local v0    # "skip":Z
    :goto_9
    if-nez v0, :cond_10

    iget v2, v12, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_10

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 900
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v20

    iget v2, v12, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v14, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget-object v10, v13, Lcom/android/server/am/BroadcastFilter;->featureId:Ljava/lang/String;

    const-string v25, ""

    move/from16 v21, v2

    move/from16 v22, v4

    move-object/from16 v23, v14

    move-object/from16 v24, v10

    invoke-virtual/range {v20 .. v25}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 904
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 908
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 903
    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v0, 0x1

    .line 914
    :cond_10
    if-nez v0, :cond_12

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_11

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v2, :cond_11

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 915
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 916
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping deliver ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": process gone or crashing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v0, 0x1

    .line 923
    :cond_12
    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 924
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_a

    :cond_13
    const/4 v2, 0x0

    :goto_a
    move v14, v2

    .line 926
    .local v14, "visibleToInstantApps":Z
    const-string v2, "Instant App Denial: receiving "

    if-nez v0, :cond_14

    if-nez v14, :cond_14

    iget-boolean v3, v13, Lcom/android/server/am/BroadcastFilter;->instantApp:Z

    if-eqz v3, :cond_14

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->uid:I

    iget v4, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v3, v4, :cond_14

    .line 928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 929
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") not specifying FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 928
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v0, 0x1

    .line 939
    :cond_14
    if-nez v0, :cond_15

    iget-boolean v1, v13, Lcom/android/server/am/BroadcastFilter;->visibleToInstantApp:Z

    if-nez v1, :cond_15

    iget-boolean v1, v12, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    if-eqz v1, :cond_15

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->uid:I

    iget v3, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v1, v3, :cond_15

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 942
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") requires receiver be visible to instant apps due to sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 941
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x1

    .line 953
    :cond_15
    sget-boolean v1, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z

    if-eqz v1, :cond_16

    if-nez v0, :cond_16

    .line 954
    move/from16 v10, p3

    invoke-static {v13, v12, v10}, Lcom/android/server/am/OpBroadcastInjector;->skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 955
    const/4 v0, 0x1

    goto :goto_b

    .line 953
    :cond_16
    move/from16 v10, p3

    .line 961
    :cond_17
    :goto_b
    if-nez v0, :cond_18

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-static {v12, v1}, Lcom/android/server/am/OpStartAppControlInjector;->canReceiverGo(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 962
    const/4 v0, 0x1

    move/from16 v18, v0

    goto :goto_c

    .line 966
    :cond_18
    move/from16 v18, v0

    .end local v0    # "skip":Z
    .local v18, "skip":Z
    :goto_c
    const/4 v0, 0x2

    if-eqz v18, :cond_19

    .line 967
    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v0, v1, p4

    .line 968
    return-void

    .line 975
    :cond_19
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget v2, v13, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-direct {v11, v12, v1, v2}, Lcom/android/server/am/BroadcastQueue;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 977
    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v0, v1, p4

    .line 978
    return-void

    .line 981
    :cond_1a
    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    const/4 v2, 0x1

    aput v2, v1, p4

    .line 986
    if-eqz v10, :cond_1b

    .line 987
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v12, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 988
    iput-object v13, v12, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 989
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v12, v1, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 990
    iput v0, v12, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 991
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1b

    .line 997
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v0, v12, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 998
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 999
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v2, "updateOomAdj_startReceiver"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 1004
    :cond_1b
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1c

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    .line 1047
    :catch_0
    move-exception v0

    move/from16 v16, v14

    const/4 v14, 0x0

    goto/16 :goto_10

    .line 1006
    :cond_1c
    :goto_d
    :try_start_2
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_1e

    :try_start_3
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->inFullBackup:Z

    if-eqz v0, :cond_1e

    .line 1009
    if-eqz v10, :cond_1d

    .line 1010
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v16, v14

    const/4 v14, 0x0

    goto/16 :goto_e

    .line 1009
    :cond_1d
    move/from16 v16, v14

    const/4 v14, 0x0

    goto/16 :goto_e

    .line 1013
    :cond_1e
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1014
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v11, v0, v12}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 1018
    sget-boolean v0, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v0, :cond_1f

    :try_start_5
    iget-boolean v0, v12, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_1f

    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1f

    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1f

    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1f

    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1022
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1023
    iget-wide v0, v12, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-wide v2, v12, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v0, v2

    .line 1024
    .local v0, "timeFromSendtorcv":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "r.dispatchTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v12, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " r.receiverTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v12, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " timeFromSendtorcv = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const/16 v19, 0x2

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1029
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x0

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 1030
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    iget-object v3, v12, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1031
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getQueueFlags()I

    move-result v27

    .line 1027
    move-object/from16 v20, v2

    move-wide/from16 v24, v0

    invoke-static/range {v19 .. v27}, Lcom/android/server/am/OpBroadcastInjector;->updateRcvInfo(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1035
    .end local v0    # "timeFromSendtorcv":J
    :cond_1f
    :try_start_6
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    new-instance v4, Landroid/content/Intent;

    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget v5, v12, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, v12, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v8, v12, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-boolean v9, v12, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iget v0, v12, Lcom/android/server/am/BroadcastRecord;->userId:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v1, p0

    move/from16 v16, v14

    const/4 v14, 0x0

    .end local v14    # "visibleToInstantApps":Z
    .local v16, "visibleToInstantApps":Z
    move v10, v0

    :try_start_7
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1040
    iget-boolean v0, v12, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-eqz v0, :cond_20

    iget-boolean v0, v12, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_20

    .line 1041
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v11, v0, v12}, Lcom/android/server/am/BroadcastQueue;->postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 1044
    :cond_20
    :goto_e
    if-eqz p3, :cond_21

    .line 1045
    const/4 v0, 0x3

    iput v0, v12, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_f

    .line 1047
    :catch_1
    move-exception v0

    goto :goto_10

    .line 1062
    :cond_21
    :goto_f
    goto :goto_11

    .line 1047
    .end local v16    # "visibleToInstantApps":Z
    .restart local v14    # "visibleToInstantApps":Z
    :catch_2
    move-exception v0

    move/from16 v16, v14

    const/4 v14, 0x0

    .line 1048
    .end local v14    # "visibleToInstantApps":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "visibleToInstantApps":Z
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure sending broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_22

    .line 1051
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 1052
    if-eqz p3, :cond_22

    .line 1053
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v1, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1057
    :cond_22
    if-eqz p3, :cond_23

    .line 1058
    iput-object v14, v12, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1059
    iput-object v14, v12, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1060
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v14, v1, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1063
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_11
    return-void
.end method

.method describeState()Ljava/lang/String;
    .locals 3

    .line 2212
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " parallel; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 2214
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastDispatcher;->describeStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2213
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 2215
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 20
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2219
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 2220
    .local v10, "token":J
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2222
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 2223
    .local v12, "N":I
    add-int/lit8 v1, v12, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2224
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, v9, v3, v4}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2223
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2226
    .end local v1    # "i":I
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/BroadcastDispatcher;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2227
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_1

    .line 2228
    const-wide v2, 0x10b00000004L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2231
    :cond_1
    iget v1, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 2232
    .local v1, "lastIndex":I
    move v2, v1

    .line 2236
    .local v2, "ringIndex":I
    :goto_1
    const/16 v3, 0x1f4

    const/4 v13, -0x1

    invoke-direct {v0, v2, v13, v3}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v2

    .line 2237
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v3, v3, v2

    .line 2238
    .local v3, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v3, :cond_2

    .line 2239
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2241
    .end local v3    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_2
    if-ne v2, v1, :cond_5

    .line 2243
    iget v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    move v2, v3

    move v14, v3

    .line 2245
    .end local v1    # "lastIndex":I
    .local v14, "lastIndex":I
    :goto_2
    const/16 v1, 0xbb8

    invoke-direct {v0, v2, v13, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v15

    .line 2246
    .end local v2    # "ringIndex":I
    .local v15, "ringIndex":I
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v16, v1, v15

    .line 2247
    .local v16, "intent":Landroid/content/Intent;
    if-nez v16, :cond_3

    .line 2248
    move/from16 v19, v14

    goto :goto_3

    .line 2250
    :cond_3
    const-wide v1, 0x20b00000006L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2251
    .local v7, "summaryToken":J
    const-wide v3, 0x10b00000001L

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v19, v14

    move-wide v13, v7

    .end local v7    # "summaryToken":J
    .end local v14    # "lastIndex":I
    .local v13, "summaryToken":J
    .local v19, "lastIndex":I
    move/from16 v7, v17

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 2253
    const-wide v1, 0x10300000002L

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v3, v3, v15

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2255
    const-wide v1, 0x10300000003L

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v3, v3, v15

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2257
    const-wide v1, 0x10300000004L

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v3, v3, v15

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2259
    invoke-virtual {v9, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2260
    .end local v13    # "summaryToken":J
    .end local v16    # "intent":Landroid/content/Intent;
    :goto_3
    move/from16 v3, v19

    .end local v19    # "lastIndex":I
    .local v3, "lastIndex":I
    if-ne v15, v3, :cond_4

    .line 2261
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2262
    return-void

    .line 2260
    :cond_4
    move v14, v3

    move v2, v15

    const/4 v13, -0x1

    goto :goto_2

    .line 2241
    .end local v3    # "lastIndex":I
    .end local v15    # "ringIndex":I
    .restart local v1    # "lastIndex":I
    .restart local v2    # "ringIndex":I
    :cond_5
    goto :goto_1
.end method

.method final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .locals 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "needSep"    # Z

    .line 2266
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2267
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, ":"

    const-string v6, " #"

    const-string v7, "]:"

    const-string v8, "    "

    const/4 v9, 0x1

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v4, p7

    goto/16 :goto_4

    .line 2269
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 2270
    .local v4, "printed":Z
    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v9

    move v11, v10

    move v10, v4

    move/from16 v4, p7

    .end local p7    # "needSep":Z
    .local v4, "needSep":Z
    .local v10, "printed":Z
    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_5

    .line 2271
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/BroadcastRecord;

    .line 2272
    .local v12, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v2, :cond_2

    iget-object v13, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 2273
    goto :goto_2

    .line 2275
    :cond_2
    if-nez v10, :cond_4

    .line 2276
    if-eqz v4, :cond_3

    .line 2277
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2279
    :cond_3
    const/4 v4, 0x1

    .line 2280
    const/4 v10, 0x1

    .line 2281
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Active broadcasts ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2283
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Active Broadcast "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2284
    invoke-virtual {v12, v1, v8, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 2270
    .end local v12    # "br":Lcom/android/server/am/BroadcastRecord;
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 2287
    .end local v11    # "i":I
    :cond_5
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v11, v1, v2, v12, v3}, Lcom/android/server/am/BroadcastDispatcher;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z

    .line 2289
    if-eqz v2, :cond_6

    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v11, :cond_8

    iget-object v11, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 2290
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2291
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2292
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Pending broadcast ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2293
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v11, :cond_7

    .line 2294
    invoke-virtual {v11, v1, v8, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_3

    .line 2296
    :cond_7
    const-string v11, "    (null)"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2298
    :goto_3
    const/4 v4, 0x1

    .line 2302
    .end local v10    # "printed":Z
    :cond_8
    :goto_4
    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {v10, v1}, Lcom/android/server/am/BroadcastConstants;->dump(Ljava/io/PrintWriter;)V

    .line 2305
    const/4 v10, 0x0

    .line 2307
    .restart local v10    # "printed":Z
    const/4 v11, -0x1

    .line 2308
    .restart local v11    # "i":I
    iget v12, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 2309
    .local v12, "lastIndex":I
    move v13, v12

    .line 2313
    .local v13, "ringIndex":I
    :goto_5
    const/16 v14, 0x1f4

    const/4 v15, -0x1

    invoke-direct {v0, v13, v15, v14}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v13

    .line 2314
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v14, v14, v13

    .line 2315
    .local v14, "r":Lcom/android/server/am/BroadcastRecord;
    const-string v15, "    extras: "

    const-string v9, ": "

    move/from16 v17, v12

    .end local v12    # "lastIndex":I
    .local v17, "lastIndex":I
    const-string v12, "  #"

    move/from16 v18, v13

    .end local v13    # "ringIndex":I
    .local v18, "ringIndex":I
    if-nez v14, :cond_9

    .line 2316
    move-object/from16 v21, v5

    goto/16 :goto_7

    .line 2319
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 2320
    if-eqz v2, :cond_a

    iget-object v13, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 2321
    move-object/from16 v21, v5

    goto/16 :goto_7

    .line 2323
    :cond_a
    if-nez v10, :cond_c

    .line 2324
    if-eqz v4, :cond_b

    .line 2325
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2327
    :cond_b
    const/4 v4, 0x1

    .line 2328
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    .end local v4    # "needSep":Z
    .local v20, "needSep":Z
    const-string v4, "  Historical broadcasts ["

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2329
    const/4 v10, 0x1

    move/from16 v4, v20

    .line 2331
    .end local v20    # "needSep":Z
    .restart local v4    # "needSep":Z
    :cond_c
    if-eqz p5, :cond_d

    .line 2332
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    .end local v4    # "needSep":Z
    .restart local v20    # "needSep":Z
    const-string v4, "  Historical Broadcast "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2333
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v14, v1, v8, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    move-object/from16 v21, v5

    goto :goto_6

    .line 2336
    .end local v20    # "needSep":Z
    .restart local v4    # "needSep":Z
    :cond_d
    move/from16 v20, v4

    .end local v4    # "needSep":Z
    .restart local v20    # "needSep":Z
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2337
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2338
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v5

    const/4 v5, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v5, v5, v13}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2339
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v4, :cond_e

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eq v4, v5, :cond_e

    .line 2340
    const-string v4, "    targetComp: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2342
    :cond_e
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 2343
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_f

    .line 2344
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2347
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v14    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_f
    :goto_6
    move/from16 v4, v20

    .end local v20    # "needSep":Z
    .local v4, "needSep":Z
    :goto_7
    move/from16 v5, v17

    move/from16 v13, v18

    .end local v17    # "lastIndex":I
    .end local v18    # "ringIndex":I
    .local v5, "lastIndex":I
    .restart local v13    # "ringIndex":I
    if-ne v13, v5, :cond_1a

    .line 2349
    if-nez v2, :cond_19

    .line 2350
    iget v6, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    move v13, v6

    .line 2351
    .end local v5    # "lastIndex":I
    .local v6, "lastIndex":I
    const/16 v14, 0xbb8

    if-eqz p5, :cond_10

    .line 2352
    const/4 v10, 0x0

    .line 2353
    const/4 v11, -0x1

    goto :goto_9

    .line 2356
    :cond_10
    move v5, v11

    .line 2357
    .local v5, "j":I
    :goto_8
    if-lez v5, :cond_12

    if-eq v13, v6, :cond_12

    .line 2358
    const/4 v2, -0x1

    invoke-direct {v0, v13, v2, v14}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v13

    .line 2359
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v2, v2, v13

    .line 2360
    .local v2, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v2, :cond_11

    .line 2361
    move-object/from16 v2, p6

    goto :goto_8

    .line 2363
    :cond_11
    nop

    .end local v2    # "r":Lcom/android/server/am/BroadcastRecord;
    add-int/lit8 v5, v5, -0x1

    .line 2364
    move-object/from16 v2, p6

    goto :goto_8

    .line 2369
    .end local v5    # "j":I
    :cond_12
    :goto_9
    const/4 v2, -0x1

    invoke-direct {v0, v13, v2, v14}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v13

    .line 2370
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v5, v5, v13

    .line 2371
    .local v5, "intent":Landroid/content/Intent;
    if-nez v5, :cond_13

    .line 2372
    move-object v14, v15

    const/4 v2, 0x0

    goto/16 :goto_b

    .line 2374
    :cond_13
    if-nez v10, :cond_15

    .line 2375
    if-eqz v4, :cond_14

    .line 2376
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2378
    :cond_14
    const/4 v4, 0x1

    .line 2379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Historical broadcasts summary ["

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2380
    const/4 v2, 0x1

    move v10, v2

    .line 2382
    :cond_15
    if-nez p5, :cond_16

    const/16 v2, 0x32

    if-lt v11, v2, :cond_16

    .line 2383
    const-string v2, "  ..."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2384
    move v12, v6

    goto/16 :goto_c

    .line 2386
    :cond_16
    add-int/lit8 v11, v11, 0x1

    .line 2387
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2388
    move/from16 v16, v4

    const/4 v2, 0x0

    const/4 v14, 0x1

    .end local v4    # "needSep":Z
    .local v16, "needSep":Z
    invoke-virtual {v5, v2, v14, v14, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2390
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v18, v4, v13

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v20, v4, v13

    move-object/from16 v22, v15

    sub-long v14, v18, v20

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2392
    const-string v4, " dispatch "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2393
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v14, v4, v13

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v18, v4, v13

    sub-long v14, v14, v18

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2395
    const-string v4, " finish"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2396
    const-string v4, "    enq="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2397
    new-instance v4, Ljava/util/Date;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v14, v14, v13

    invoke-direct {v4, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2398
    const-string v4, " disp="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2399
    new-instance v4, Ljava/util/Date;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v14, v14, v13

    invoke-direct {v4, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2400
    const-string v4, " fin="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2401
    new-instance v4, Ljava/util/Date;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v14, v14, v13

    invoke-direct {v4, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 2403
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_17

    .line 2404
    move-object/from16 v14, v22

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 2403
    :cond_17
    move-object/from16 v14, v22

    .line 2406
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_a
    move/from16 v4, v16

    .end local v16    # "needSep":Z
    .local v4, "needSep":Z
    :goto_b
    if-ne v13, v6, :cond_18

    move v12, v6

    goto :goto_c

    :cond_18
    move-object v15, v14

    const/16 v14, 0xbb8

    goto/16 :goto_9

    .line 2349
    .end local v6    # "lastIndex":I
    .local v5, "lastIndex":I
    :cond_19
    move v12, v5

    .line 2409
    .end local v5    # "lastIndex":I
    .restart local v12    # "lastIndex":I
    :goto_c
    return v4

    .line 2347
    .end local v12    # "lastIndex":I
    .restart local v5    # "lastIndex":I
    :cond_1a
    move-object/from16 v2, p6

    move v12, v5

    move-object/from16 v5, v21

    const/4 v9, 0x1

    goto/16 :goto_5
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 272
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastDispatcher;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    .line 277
    sget-boolean v0, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->mHasSpilt:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OpBroadcastInjector;->speedMonitor(ZI)V

    .line 282
    :cond_0
    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 257
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->isEnableFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->isEnableDelayStrategy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    .line 263
    sget-boolean v0, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->mHasSpilt:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_2

    .line 265
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OpBroadcastInjector;->speedMonitor(ZI)V

    .line 266
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/am/OpBroadcastInjector;->enqueueBroadcastLocked(ZLcom/android/server/am/BroadcastRecord;)V

    .line 269
    :cond_2
    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .locals 19
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "resultAbort"    # Z
    .param p6, "waitForServices"    # Z

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 537
    .local v3, "state":I
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 538
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 539
    .local v5, "finishTime":J
    iget-wide v7, v1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v7, v5, v7

    .line 540
    .local v7, "elapsed":J
    const/4 v14, 0x0

    iput v14, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 544
    sget-boolean v9, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_0

    iget-boolean v9, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v9, :cond_0

    .line 547
    const/4 v9, 0x1

    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 548
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v15, 0x0

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 549
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->getQueueFlags()I

    move-result v18

    .line 547
    move-wide v12, v7

    move-wide v14, v15

    move-object/from16 v16, v17

    move/from16 v17, v18

    invoke-static/range {v9 .. v17}, Lcom/android/server/am/OpBroadcastInjector;->updateRcvInfo(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    .line 553
    :cond_0
    const-string v9, "BroadcastQueue"

    if-nez v3, :cond_1

    .line 554
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "finishReceiver ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] called but state is IDLE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_1
    iget-boolean v10, v1, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-eqz v10, :cond_3

    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_3

    .line 558
    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v10, v10, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    cmp-long v10, v7, v10

    if-lez v10, :cond_2

    .line 561
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v1}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_0

    .line 564
    :cond_2
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v0, v10, v1}, Lcom/android/server/am/BroadcastQueue;->postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 569
    :cond_3
    :goto_0
    iget v10, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v14, 0x1

    if-lez v10, :cond_4

    .line 570
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->duration:[J

    iget v11, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v11, v14

    aput-wide v7, v10, v11

    .line 575
    :cond_4
    iget-boolean v10, v1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v10, :cond_7

    .line 579
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v10, v10, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_8

    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v10, v10, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    cmp-long v10, v7, v10

    if-lez v10, :cond_8

    .line 586
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const-string v11, " br="

    if-eqz v10, :cond_6

    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 588
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v10, :cond_5

    .line 589
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Broadcast receiver "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v12, v14

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " was slow: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_5
    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/BroadcastDispatcher;->startDeferring(I)V

    goto :goto_1

    .line 594
    :cond_6
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v10, :cond_8

    .line 595
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Core uid "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " receiver was slow but not deferring: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 602
    :cond_7
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v10, :cond_8

    .line 603
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Finished broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is exempt from deferral policy"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_8
    :goto_1
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 609
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 610
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_9

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 611
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 613
    :cond_9
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v11, :cond_a

    .line 614
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    iget-object v11, v11, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v10, v11, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 616
    :cond_a
    iput-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 617
    iput-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 618
    iput-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 619
    iput-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 621
    move/from16 v11, p2

    iput v11, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 622
    move-object/from16 v12, p3

    iput-object v12, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 623
    move-object/from16 v13, p4

    iput-object v13, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 624
    if-eqz v2, :cond_b

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getFlags()I

    move-result v15

    const/high16 v16, 0x8000000

    and-int v15, v15, v16

    if-nez v15, :cond_b

    .line 625
    iput-boolean v2, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v15, 0x0

    goto :goto_2

    .line 627
    :cond_b
    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 632
    :goto_2
    if-eqz p6, :cond_12

    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v14, :cond_12

    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-boolean v14, v14, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    if-eqz v14, :cond_12

    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v14, v14, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 633
    invoke-virtual {v14}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v14

    if-ne v14, v1, :cond_11

    .line 635
    iget v14, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v14, v10, :cond_d

    .line 636
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v14, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 637
    .local v10, "obj":Ljava/lang/Object;
    instance-of v14, v10, Landroid/content/pm/ActivityInfo;

    if-eqz v14, :cond_c

    move-object v14, v10

    check-cast v14, Landroid/content/pm/ActivityInfo;

    goto :goto_3

    :cond_c
    const/4 v14, 0x0

    :goto_3
    move-object v10, v14

    .line 638
    .local v10, "nextReceiver":Landroid/content/pm/ActivityInfo;
    goto :goto_4

    .line 639
    .end local v10    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :cond_d
    const/4 v10, 0x0

    .line 642
    .restart local v10    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :goto_4
    if-eqz v4, :cond_f

    if-eqz v10, :cond_f

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v14, v15, :cond_f

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v15, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 644
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    goto :goto_5

    :cond_e
    const/4 v9, 0x0

    goto :goto_6

    .line 649
    :cond_f
    :goto_5
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v14, v15}, Lcom/android/server/am/ActiveServices;->hasBackgroundServicesLocked(I)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 650
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Delay finish: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v9, 0x4

    iput v9, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 652
    const/4 v9, 0x0

    return v9

    .line 649
    :cond_10
    const/4 v9, 0x0

    goto :goto_6

    .line 633
    .end local v10    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :cond_11
    move v9, v15

    goto :goto_6

    .line 632
    :cond_12
    move v9, v15

    .line 657
    :goto_6
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 662
    const/4 v10, 0x1

    if-eq v3, v10, :cond_14

    const/4 v14, 0x3

    if-ne v3, v14, :cond_13

    goto :goto_7

    :cond_13
    move v14, v9

    goto :goto_8

    :cond_14
    :goto_7
    move v14, v10

    :goto_8
    return v14
.end method

.method public getMatchingOrderedReceiver(Landroid/os/IBinder;)Lcom/android/server/am/BroadcastRecord;
    .locals 2
    .param p1, "receiver"    # Landroid/os/IBinder;

    .line 502
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 503
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    .line 504
    return-object v0

    .line 506
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method isIdle()Z
    .locals 1

    .line 2198
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPendingBroadcastProcessLocked(I)Z
    .locals 1
    .param p1, "pid"    # I

    .line 251
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isSignaturePerm([Ljava/lang/String;)Z
    .locals 7
    .param p1, "perms"    # [Ljava/lang/String;

    .line 1147
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1148
    return v0

    .line 1150
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v1

    .line 1151
    .local v1, "pm":Landroid/permission/IPermissionManager;
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1153
    :try_start_0
    aget-object v4, p1, v2

    const-string v5, "android"

    invoke-interface {v1, v4, v5, v0}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 1154
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    if-nez v4, :cond_1

    .line 1157
    return v0

    .line 1159
    :cond_1
    iget v5, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1164
    return v0

    .line 1168
    .end local v4    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_2
    nop

    .line 1151
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1166
    :catch_0
    move-exception v3

    .line 1167
    .local v3, "e":Landroid/os/RemoteException;
    return v0

    .line 1170
    .end local v2    # "i":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    return v3
.end method

.method public synthetic lambda$postActivityStartTokenRemoval$0$BroadcastQueue(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 528
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 529
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 530
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 531
    return-void

    .line 530
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 2164
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2165
    .local v0, "logIndex":I
    const/16 v2, 0x7549

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-ltz v0, :cond_1

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 2166
    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 2167
    .local v8, "curReceiver":Ljava/lang/Object;
    instance-of v9, v8, Lcom/android/server/am/BroadcastFilter;

    if-eqz v9, :cond_0

    .line 2168
    move-object v2, v8

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    .line 2169
    .local v2, "bf":Lcom/android/server/am/BroadcastFilter;
    const/16 v9, 0x7548

    new-array v7, v7, [Ljava/lang/Object;

    iget v10, v2, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    .line 2170
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v1

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2171
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    .line 2169
    invoke-static {v9, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2172
    .end local v2    # "bf":Lcom/android/server/am/BroadcastFilter;
    goto :goto_0

    .line 2173
    :cond_0
    move-object v9, v8

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 2174
    .local v9, "ri":Landroid/content/pm/ResolveInfo;
    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2175
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    .line 2176
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v1

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    .line 2174
    invoke-static {v2, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2178
    .end local v8    # "curReceiver":Ljava/lang/Object;
    .end local v9    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_0
    goto :goto_1

    .line 2179
    :cond_1
    if-gez v0, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discarding broadcast before first receiver is invoked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BroadcastQueue"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    :cond_2
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, -0x1

    .line 2182
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v1

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2183
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 2184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    const-string v1, "NONE"

    aput-object v1, v7, v3

    .line 2181
    invoke-static {v2, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2187
    :goto_1
    return-void
.end method

.method performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "receiver"    # Landroid/content/IIntentReceiver;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "ordered"    # Z
    .param p8, "sticky"    # Z
    .param p9, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_3

    .line 684
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 687
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v4, 0x0

    move-object/from16 v15, p3

    move/from16 v14, p7

    invoke-static {v0, v3, v4, v14, v15}, Lcom/android/server/am/OpBGFrozenInjector;->receiveBroadcastEvent(IIZZLandroid/content/Intent;)V

    goto :goto_0

    .line 687
    :cond_0
    move-object/from16 v15, p3

    move/from16 v14, p7

    .line 700
    :goto_0
    :try_start_0
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 701
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v0

    .line 700
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move v14, v0

    invoke-interface/range {v5 .. v14}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    goto/16 :goto_2

    .line 707
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 709
    .local v3, "ex":Landroid/os/RemoteException;
    iget-object v4, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 710
    const-string v0, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t deliver broadcast to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "). Crashing it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-direct {v1, v0, v5}, Lcom/android/server/am/BroadcastQueue;->isAliveProcess(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    const-string v0, "can\'t deliver broadcast"

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    goto :goto_1

    .line 720
    :cond_1
    const-string v0, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") has died. Do not schedule crash."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 725
    throw v3

    .line 724
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 729
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2
    move-object/from16 v15, p3

    new-instance v0, Landroid/os/RemoteException;

    const-string v3, "app.thread must not be null"

    invoke-direct {v0, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_3
    move-object/from16 v15, p3

    invoke-interface/range {p2 .. p9}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 738
    :goto_2
    sget-boolean v0, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z

    if-eqz v0, :cond_4

    .line 739
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->updateReceiverCount()V

    .line 742
    :cond_4
    return-void
.end method

.method final processNextBroadcast(Z)V
    .locals 2
    .param p1, "fromMsg"    # Z

    .line 1174
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1175
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcastLocked(ZZ)V

    .line 1176
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1177
    return-void

    .line 1176
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final processNextBroadcastLocked(ZZ)V
    .locals 39
    .param p1, "fromMsg"    # Z
    .param p2, "skipOomAdj"    # Z

    .line 1182
    move-object/from16 v11, p0

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processNextBroadcast ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    .line 1184
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parallel broadcasts; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 1185
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->describeStateLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1182
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_0
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1189
    const/4 v12, 0x0

    if-eqz p1, :cond_1

    .line 1190
    iput-boolean v12, v11, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 1195
    :cond_1
    sget-boolean v0, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z

    const-wide/16 v13, 0x40

    const/4 v15, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->isEnableFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1196
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->isEnableDelayStrategy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1197
    const-string v0, "BroadcastQueue"

    const-string/jumbo v1, "processNextBroadcastLocked ams"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->processParallelBroadcastLocked()V

    goto/16 :goto_2

    .line 1202
    :cond_2
    :goto_0
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1203
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 1204
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1207
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1208
    nop

    .line 1209
    invoke-direct {v11, v0, v12}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1208
    invoke-static {v13, v14, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1210
    nop

    .line 1211
    invoke-direct {v11, v0, v15}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v1

    .line 1212
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1210
    invoke-static {v13, v14, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1215
    :cond_3
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1216
    .local v1, "N":I
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v2, :cond_4

    .line 1217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing parallel broadcast ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 1219
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1220
    .local v3, "target":Ljava/lang/Object;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_5

    .line 1221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivering non-ordered on ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] to registered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BroadcastQueue"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_5
    move-object v4, v3

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v11, v0, v4, v12, v2}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    .line 1218
    .end local v3    # "target":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1225
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v11, v0}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1226
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v2, :cond_7

    .line 1227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done with parallel broadcast ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    .end local v1    # "N":I
    :cond_7
    goto/16 :goto_0

    .line 1237
    .end local v0    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_8
    :goto_2
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v10, 0x0

    if-eqz v0, :cond_10

    .line 1238
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processNextBroadcast ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: waiting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_9
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_c

    .line 1244
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 1245
    :try_start_0
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1247
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    move v2, v12

    goto :goto_4

    :cond_b
    :goto_3
    move v2, v15

    :goto_4
    move v0, v2

    .line 1248
    .local v0, "isDead":Z
    monitor-exit v1

    goto :goto_7

    .end local v0    # "isDead":Z
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1250
    :cond_c
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1252
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_e

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    move v1, v12

    goto :goto_6

    :cond_e
    :goto_5
    move v1, v15

    :goto_6
    move v0, v1

    .line 1254
    .local v0, "isDead":Z
    :goto_7
    if-nez v0, :cond_f

    .line 1256
    return-void

    .line 1258
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pending app  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " died before responding to broadcast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iput v12, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1262
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget v2, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v2, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1263
    iput-object v10, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1267
    .end local v0    # "isDead":Z
    :cond_10
    const/4 v0, 0x0

    move/from16 v16, v0

    .line 1270
    .local v16, "looped":Z
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1271
    .local v8, "now":J
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/BroadcastDispatcher;->getNextBroadcastLocked(J)Lcom/android/server/am/BroadcastRecord;

    move-result-object v7

    .line 1273
    .local v7, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v7, :cond_13

    .line 1275
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v12}, Lcom/android/server/am/BroadcastDispatcher;->scheduleDeferralCheckLocked(Z)V

    .line 1276
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 1277
    if-eqz v16, :cond_11

    .line 1281
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_startReceiver"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 1285
    :cond_11
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-boolean v0, v0, Lcom/android/server/am/UserController;->mBootCompleted:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v11, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    if-eqz v0, :cond_12

    .line 1286
    iput-boolean v12, v11, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    .line 1289
    :cond_12
    return-void

    .line 1292
    :cond_13
    const/4 v0, 0x0

    .line 1301
    .local v0, "forceReceive":Z
    iget-object v1, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v1, :cond_14

    iget-object v1, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_9

    :cond_14
    move v1, v12

    :goto_9
    move v6, v1

    .line 1305
    .local v6, "numReceivers":I
    sget-boolean v1, Lcom/android/server/am/BroadcastQueue;->IS_SUPPORT_VIP_BROADCAST:Z

    if-eqz v1, :cond_15

    .line 1306
    invoke-static {v7, v6}, Lcom/android/server/am/OpBroadcastInjector;->processOrderedBroadcastForPriorityLocked(Lcom/android/server/am/BroadcastRecord;I)V

    .line 1309
    :cond_15
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const-wide/16 v17, 0x0

    if-eqz v1, :cond_16

    iget-boolean v1, v7, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v1, :cond_16

    iget-wide v1, v7, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    cmp-long v1, v1, v17

    if-lez v1, :cond_16

    .line 1310
    if-lez v6, :cond_16

    iget-wide v1, v7, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v3, 0x2

    iget-object v5, v11, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v13, v5, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    mul-long/2addr v13, v3

    int-to-long v3, v6

    mul-long/2addr v13, v3

    add-long/2addr v1, v13

    cmp-long v1, v8, v1

    if-lez v1, :cond_16

    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hung broadcast ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] discarded after timeout failure: now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " dispatchTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v7, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v7, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " numReceivers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nextReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-virtual {v11, v12}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 1322
    const/4 v0, 0x1

    .line 1323
    iput v12, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    move v13, v0

    goto :goto_a

    .line 1327
    :cond_16
    move v13, v0

    .end local v0    # "forceReceive":Z
    .local v13, "forceReceive":Z
    :goto_a
    iget v0, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v0, :cond_18

    .line 1328
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processNextBroadcast("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") called when not idle (state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_17
    return-void

    .line 1336
    :cond_18
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v14, 0x2

    const/high16 v20, 0x40000000    # 2.0f

    if-eqz v0, :cond_23

    iget v0, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v0, v6, :cond_23

    iget-boolean v0, v7, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v0, :cond_23

    if-eqz v13, :cond_19

    goto/16 :goto_e

    .line 1411
    :cond_19
    iget-boolean v0, v7, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    if-nez v0, :cond_22

    .line 1412
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v1, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v0

    .line 1413
    .local v0, "receiverUid":I
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastDispatcher;->isDeferringLocked(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1414
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v1, :cond_1a

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next receiver in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is under deferral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_1a
    iget v1, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/2addr v1, v15

    if-ne v1, v6, :cond_1c

    .line 1423
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v1, :cond_1b

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sole receiver of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is under deferral; setting aside and proceeding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_1b
    move-object v1, v7

    .line 1428
    .local v1, "defer":Lcom/android/server/am/BroadcastRecord;
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v2, v7}, Lcom/android/server/am/BroadcastDispatcher;->retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto/16 :goto_d

    .line 1435
    .end local v1    # "defer":Lcom/android/server/am/BroadcastRecord;
    :cond_1c
    iget v1, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/BroadcastRecord;->splitRecipientsLocked(II)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 1436
    .restart local v1    # "defer":Lcom/android/server/am/BroadcastRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_1e

    .line 1437
    const-string v2, "BroadcastQueue"

    const-string v3, "Post split:"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const-string v2, "BroadcastQueue"

    const-string v3, "Original broadcast receivers:"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b
    iget-object v3, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 1440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1442
    .end local v2    # "i":I
    :cond_1d
    const-string v2, "BroadcastQueue"

    const-string v3, "Split receivers:"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 1444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1448
    .end local v2    # "i":I
    :cond_1e
    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v2, :cond_21

    .line 1449
    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    .line 1450
    .local v2, "token":I
    if-nez v2, :cond_1f

    .line 1452
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->nextSplitTokenLocked()I

    move-result v3

    iput v3, v1, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    iput v3, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    .line 1453
    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v4, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1454
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v3, :cond_21

    .line 1455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast needs split refcount; using new token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1461
    :cond_1f
    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1462
    .local v3, "curCount":I
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v4, :cond_20

    .line 1463
    if-nez v3, :cond_20

    .line 1464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Split refcount is zero with token for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BroadcastQueue"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_20
    iget-object v4, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1469
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v4, :cond_21

    .line 1470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New split count for token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BroadcastQueue"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    .end local v2    # "token":I
    .end local v3    # "curCount":I
    :cond_21
    :goto_d
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/BroadcastDispatcher;->addDeferredBroadcast(ILcom/android/server/am/BroadcastRecord;)V

    .line 1477
    const/4 v7, 0x0

    .line 1478
    const/4 v2, 0x1

    .line 1479
    .end local v16    # "looped":Z
    .local v2, "looped":Z
    move/from16 v16, v2

    move-object v8, v7

    move-object v15, v10

    goto/16 :goto_14

    .line 1482
    .end local v0    # "receiverUid":I
    .end local v1    # "defer":Lcom/android/server/am/BroadcastRecord;
    .end local v2    # "looped":Z
    .end local v6    # "numReceivers":I
    .end local v8    # "now":J
    .end local v13    # "forceReceive":Z
    .restart local v16    # "looped":Z
    :cond_22
    move-object v8, v7

    move-object v15, v10

    goto/16 :goto_14

    .line 1339
    .restart local v6    # "numReceivers":I
    .restart local v8    # "now":J
    .restart local v13    # "forceReceive":Z
    :cond_23
    :goto_e
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_2a

    .line 1340
    const/4 v0, 0x1

    .line 1344
    .local v0, "sendResult":Z
    iget v1, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    if-eqz v1, :cond_27

    .line 1345
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sub-int/2addr v1, v15

    .line 1346
    .local v1, "newCount":I
    if-nez v1, :cond_25

    .line 1348
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_24

    .line 1349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending broadcast completion for split token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1351
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1349
    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_24
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v3, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_f

    .line 1357
    :cond_25
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_26

    .line 1358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result refcount now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for split token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1360
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - not sending completion yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1358
    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_26
    const/4 v0, 0x0

    .line 1364
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v3, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    move/from16 v21, v0

    goto :goto_10

    .line 1367
    .end local v1    # "newCount":I
    :cond_27
    :goto_f
    move/from16 v21, v0

    .end local v0    # "sendResult":Z
    .local v21, "sendResult":Z
    :goto_10
    if-eqz v21, :cond_29

    .line 1369
    :try_start_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_28

    .line 1370
    :try_start_2
    const-string v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing broadcast ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1371
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1370
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_11

    .line 1379
    :catch_0
    move-exception v0

    move/from16 v26, v6

    move-object v14, v7

    move-wide/from16 v27, v8

    move-object v15, v10

    goto :goto_12

    .line 1373
    :cond_28
    :goto_11
    :try_start_3
    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v7, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    new-instance v4, Landroid/content/Intent;

    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget v5, v7, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v22, 0x0

    const/16 v23, 0x0

    :try_start_4
    iget v10, v7, Lcom/android/server/am/BroadcastRecord;->userId:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v25, v1

    move-object/from16 v1, p0

    move/from16 v26, v6

    .end local v6    # "numReceivers":I
    .local v26, "numReceivers":I
    move-object v6, v0

    move-object v14, v7

    .end local v7    # "r":Lcom/android/server/am/BroadcastRecord;
    .local v14, "r":Lcom/android/server/am/BroadcastRecord;
    move-object/from16 v7, v25

    move-wide/from16 v27, v8

    .end local v8    # "now":J
    .local v27, "now":J
    move/from16 v8, v22

    move/from16 v9, v23

    const/4 v15, 0x0

    :try_start_5
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1378
    iput-object v15, v14, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1384
    goto :goto_13

    .line 1379
    :catch_1
    move-exception v0

    goto :goto_12

    .end local v14    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v26    # "numReceivers":I
    .end local v27    # "now":J
    .restart local v6    # "numReceivers":I
    .restart local v7    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v8    # "now":J
    :catch_2
    move-exception v0

    move/from16 v26, v6

    move-object v14, v7

    move-wide/from16 v27, v8

    const/4 v15, 0x0

    goto :goto_12

    :catch_3
    move-exception v0

    move/from16 v26, v6

    move-object v14, v7

    move-wide/from16 v27, v8

    move-object v15, v10

    .line 1380
    .end local v6    # "numReceivers":I
    .end local v7    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v8    # "now":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v14    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v26    # "numReceivers":I
    .restart local v27    # "now":J
    :goto_12
    iput-object v15, v14, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 1381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] sending broadcast result of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 1367
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v14    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v26    # "numReceivers":I
    .end local v27    # "now":J
    .restart local v6    # "numReceivers":I
    .restart local v7    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v8    # "now":J
    :cond_29
    move/from16 v26, v6

    move-object v14, v7

    move-wide/from16 v27, v8

    move-object v15, v10

    .end local v6    # "numReceivers":I
    .end local v7    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v8    # "now":J
    .restart local v14    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v26    # "numReceivers":I
    .restart local v27    # "now":J
    goto :goto_13

    .line 1339
    .end local v14    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v21    # "sendResult":Z
    .end local v26    # "numReceivers":I
    .end local v27    # "now":J
    .restart local v6    # "numReceivers":I
    .restart local v7    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v8    # "now":J
    :cond_2a
    move/from16 v26, v6

    move-object v14, v7

    move-wide/from16 v27, v8

    move-object v15, v10

    .line 1388
    .end local v6    # "numReceivers":I
    .end local v7    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v8    # "now":J
    .restart local v14    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v26    # "numReceivers":I
    .restart local v27    # "now":J
    :goto_13
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_2b

    const-string v0, "BroadcastQueue"

    const-string v1, "Cancelling BROADCAST_TIMEOUT_MSG"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    .line 1391
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished with ordered broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_2c
    invoke-virtual {v11, v14}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1396
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1397
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int v0, v0, v20

    if-nez v0, :cond_2d

    .line 1399
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iget v5, v14, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iget-wide v6, v14, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v8, v14, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1402
    :cond_2d
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v14}, Lcom/android/server/am/BroadcastDispatcher;->retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1403
    const/4 v7, 0x0

    .line 1404
    .end local v14    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v7    # "r":Lcom/android/server/am/BroadcastRecord;
    const/4 v0, 0x1

    .line 1405
    .end local v16    # "looped":Z
    .local v0, "looped":Z
    move/from16 v16, v0

    move-object v8, v7

    .line 1482
    .end local v0    # "looped":Z
    .end local v7    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v13    # "forceReceive":Z
    .end local v26    # "numReceivers":I
    .end local v27    # "now":J
    .local v8, "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v16    # "looped":Z
    :goto_14
    if-eqz v8, :cond_5f

    .line 1485
    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move v9, v0

    .line 1489
    .local v9, "recIdx":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1490
    if-nez v9, :cond_30

    .line 1491
    iget-wide v0, v8, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, v8, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1494
    iget-boolean v0, v11, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    if-eqz v0, :cond_2e

    .line 1495
    const/16 v0, 0x8e

    iget-wide v1, v8, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-wide v3, v8, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 1500
    :cond_2e
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1501
    nop

    .line 1502
    invoke-direct {v11, v8, v12}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v0

    .line 1503
    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1501
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1504
    nop

    .line 1505
    const/4 v3, 0x1

    invoke-direct {v11, v8, v3}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v0

    .line 1506
    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1504
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1508
    :cond_2f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing ordered broadcast ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_30
    iget-boolean v0, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v0, :cond_32

    .line 1512
    iget-wide v0, v8, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    add-long/2addr v0, v2

    .line 1513
    .local v0, "timeoutTime":J
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Submitting BROADCAST_TIMEOUT_MSG ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_31
    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 1519
    .end local v0    # "timeoutTime":J
    :cond_32
    iget-object v10, v8, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1520
    .local v10, "brOptions":Landroid/app/BroadcastOptions;
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1522
    .local v13, "nextReceiver":Ljava/lang/Object;
    instance-of v0, v13, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_39

    .line 1525
    move-object v0, v13

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 1526
    .local v0, "filter":Lcom/android/server/am/BroadcastFilter;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering ordered ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] to registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_33
    iget-boolean v1, v8, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v11, v8, v0, v1, v9}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    .line 1531
    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v1, :cond_36

    iget-boolean v1, v8, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v1, :cond_34

    goto :goto_15

    .line 1540
    :cond_34
    iget-object v1, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v1, :cond_35

    .line 1541
    iget-object v1, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v11, v1, v8}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 1545
    :cond_35
    if-eqz v10, :cond_38

    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v1

    cmp-long v1, v1, v17

    if-lez v1, :cond_38

    .line 1546
    iget v1, v0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    .line 1547
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v2

    .line 1546
    invoke-virtual {v11, v1, v2, v3, v8}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V

    goto :goto_16

    .line 1534
    :cond_36
    :goto_15
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quick finishing ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: ordered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " receiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_37
    iput v12, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1550
    :cond_38
    :goto_16
    return-void

    .line 1556
    .end local v0    # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_39
    move-object v14, v13

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1558
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    .line 1562
    .local v7, "component":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 1563
    .local v0, "skip":Z
    if-eqz v10, :cond_3b

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1565
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getMinManifestReceiverApiLevel()I

    move-result v2

    if-lt v1, v2, :cond_3a

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1567
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getMaxManifestReceiverApiLevel()I

    move-result v2

    if-le v1, v2, :cond_3b

    .line 1568
    :cond_3a
    const/4 v0, 0x1

    .line 1570
    :cond_3b
    if-nez v0, :cond_3c

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1571
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1570
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Association not allowed: broadcasting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1573
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1572
    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const/4 v0, 0x1

    .line 1578
    :cond_3c
    if-nez v0, :cond_3d

    .line 1579
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move/from16 v32, v6

    invoke-virtual/range {v27 .. v32}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    move v0, v1

    .line 1581
    if-eqz v0, :cond_3d

    .line 1582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firewall blocked: broadcasting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1583
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1582
    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_3d
    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    .line 1591
    .local v1, "perm":I
    const/4 v2, -0x1

    if-nez v0, :cond_3f

    if-eqz v1, :cond_3f

    .line 1592
    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_3e

    .line 1593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1594
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is not exported from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " due to receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1593
    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1600
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1601
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due to receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1600
    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :goto_17
    const/4 v0, 0x1

    move v3, v0

    goto/16 :goto_18

    .line 1608
    :cond_3f
    if-nez v0, :cond_40

    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v3, :cond_40

    .line 1609
    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 1610
    .local v3, "opCode":I
    if-eq v3, v2, :cond_40

    iget-object v4, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1611
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v27

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v6, v8, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    const-string v32, ""

    move/from16 v28, v3

    move/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    invoke-virtual/range {v27 .. v32}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_40

    .line 1613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appop Denial: broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1614
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") requires appop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1617
    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to registered receiver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1613
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const/4 v0, 0x1

    move v3, v0

    goto :goto_18

    .line 1624
    .end local v3    # "opCode":I
    :cond_40
    move v3, v0

    .end local v0    # "skip":Z
    .local v3, "skip":Z
    :goto_18
    const/16 v4, 0x3e8

    if-nez v3, :cond_44

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v4, :cond_44

    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_44

    .line 1626
    const/4 v0, 0x0

    move v5, v1

    move v1, v0

    .local v1, "i":I
    .local v5, "perm":I
    :goto_19
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_43

    .line 1627
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v6, v0, v1

    .line 1629
    .local v6, "requiredPermission":Ljava/lang/String;
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1633
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1630
    invoke-interface {v0, v6, v15, v12}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1636
    .end local v5    # "perm":I
    .local v0, "perm":I
    move v5, v0

    goto :goto_1a

    .line 1634
    .end local v0    # "perm":I
    .restart local v5    # "perm":I
    :catch_4
    move-exception v0

    .line 1635
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v5, -0x1

    .line 1637
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    if-eqz v5, :cond_41

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission Denial: receiving "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " requires "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " due to sender "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " (uid "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1638
    const-string v12, "BroadcastQueue"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const/4 v3, 0x1

    .line 1645
    move v12, v5

    goto/16 :goto_1b

    .line 1647
    :cond_41
    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 1648
    .local v0, "appOp":I
    if-eq v0, v2, :cond_42

    iget v12, v8, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v0, v12, :cond_42

    iget-object v12, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1649
    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v27

    iget-object v12, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v31, 0x0

    const-string v32, ""

    move/from16 v28, v0

    move/from16 v29, v12

    move-object/from16 v30, v15

    invoke-virtual/range {v27 .. v32}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_42

    .line 1653
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Appop Denial: receiving "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " requires appop "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " due to sender "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " (uid "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1653
    const-string v15, "BroadcastQueue"

    invoke-static {v15, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const/4 v3, 0x1

    .line 1661
    move v12, v5

    goto :goto_1b

    .line 1626
    .end local v0    # "appOp":I
    .end local v6    # "requiredPermission":Ljava/lang/String;
    :cond_42
    add-int/lit8 v1, v1, 0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    goto/16 :goto_19

    :cond_43
    move v12, v5

    goto :goto_1b

    .line 1665
    .end local v5    # "perm":I
    .local v1, "perm":I
    :cond_44
    move v12, v1

    .end local v1    # "perm":I
    .local v12, "perm":I
    :goto_1b
    if-nez v3, :cond_45

    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v0, v2, :cond_45

    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1666
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v27

    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v31, 0x0

    const-string v32, ""

    move/from16 v28, v0

    move/from16 v29, v1

    move-object/from16 v30, v2

    invoke-virtual/range {v27 .. v32}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_45

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appop Denial: receiving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires appop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 1673
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to sender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1670
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const/4 v3, 0x1

    .line 1678
    :cond_45
    const/4 v1, 0x0

    .line 1680
    .local v1, "isSingleton":Z
    :try_start_7
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v15, v15, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {v0, v2, v5, v6, v15}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_5

    move v1, v0

    .line 1686
    move v15, v1

    goto :goto_1c

    .line 1683
    :catch_5
    move-exception v0

    .line 1684
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v5, "BroadcastQueue"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    const/4 v3, 0x1

    move v15, v1

    .line 1687
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "isSingleton":Z
    .local v15, "isSingleton":Z
    :goto_1c
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int v0, v0, v20

    if-eqz v0, :cond_46

    .line 1688
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_46

    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: Receiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requests FLAG_SINGLE_USER, but app does not hold "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const/4 v3, 0x1

    .line 1698
    :cond_46
    if-nez v3, :cond_47

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_47

    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_47

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant App Denial: receiving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to sender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") Instant Apps do not support manifest receivers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1700
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const/4 v3, 0x1

    .line 1708
    :cond_47
    if-nez v3, :cond_48

    iget-boolean v0, v8, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    if-eqz v0, :cond_48

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_48

    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_48

    .line 1711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant App Denial: receiving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires receiver have visibleToInstantApps set due to sender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1711
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    const/4 v3, 0x1

    .line 1719
    :cond_48
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_49

    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping deliver ordered ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": process crashing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const/4 v3, 0x1

    .line 1725
    :cond_49
    if-nez v3, :cond_4b

    .line 1726
    const/4 v1, 0x0

    .line 1728
    .local v1, "isAvailable":Z
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1730
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1728
    invoke-interface {v0, v2, v5}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move v1, v0

    .line 1735
    goto :goto_1d

    .line 1731
    :catch_6
    move-exception v0

    .line 1733
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception getting recipient info for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "BroadcastQueue"

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1736
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    if-nez v1, :cond_4b

    .line 1737
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping delivery to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : package no longer available"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_4a
    const/4 v3, 0x1

    .line 1749
    .end local v1    # "isAvailable":Z
    :cond_4b
    if-nez v3, :cond_4c

    .line 1750
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1751
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1750
    invoke-direct {v11, v8, v0, v1}, Lcom/android/server/am/BroadcastQueue;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1753
    const/4 v3, 0x1

    .line 1759
    :cond_4c
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1761
    .local v6, "receiverUid":I
    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v0, v4, :cond_4d

    if-eqz v15, :cond_4d

    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1762
    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1763
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1765
    :cond_4d
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1766
    .local v5, "targetProcess":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 1769
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v3, :cond_50

    .line 1770
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v19, v3

    .end local v3    # "skip":Z
    .local v19, "skip":Z
    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v31, -0x1

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v0

    move/from16 v28, v1

    move-object/from16 v29, v2

    move/from16 v30, v3

    invoke-virtual/range {v27 .. v34}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLocked(ILjava/lang/String;IIZZZ)I

    move-result v0

    .line 1773
    .local v0, "allowed":I
    if-eqz v0, :cond_51

    .line 1778
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4e

    .line 1779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background execution disabled: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1779
    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const/4 v3, 0x1

    .end local v19    # "skip":Z
    .restart local v3    # "skip":Z
    goto :goto_1e

    .line 1783
    .end local v3    # "skip":Z
    .restart local v19    # "skip":Z
    :cond_4e
    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_4f

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1784
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_51

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1785
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_51

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1786
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-nez v1, :cond_51

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 1788
    invoke-virtual {v11, v1}, Lcom/android/server/am/BroadcastQueue;->isSignaturePerm([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1789
    :cond_4f
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1790
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1789
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->addBackgroundCheckViolationLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background execution not allowed: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1791
    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    const/4 v3, 0x1

    .end local v19    # "skip":Z
    .restart local v3    # "skip":Z
    goto :goto_1e

    .line 1769
    .end local v0    # "allowed":I
    :cond_50
    move/from16 v19, v3

    .line 1799
    .end local v3    # "skip":Z
    .restart local v19    # "skip":Z
    :cond_51
    move/from16 v3, v19

    .end local v19    # "skip":Z
    .restart local v3    # "skip":Z
    :goto_1e
    if-nez v3, :cond_52

    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1801
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1803
    const/4 v3, 0x1

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping delivery to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : user is not running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v3

    goto :goto_1f

    .line 1809
    :cond_52
    move/from16 v19, v3

    .end local v3    # "skip":Z
    .restart local v19    # "skip":Z
    :goto_1f
    if-eqz v19, :cond_54

    .line 1810
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping delivery of ordered ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for reason described above"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_53
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    const/4 v1, 0x2

    aput v1, v0, v9

    .line 1814
    const/4 v3, 0x0

    iput-object v3, v8, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1815
    iput-object v3, v8, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1816
    const/4 v1, 0x0

    iput v1, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1817
    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 1818
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1819
    return-void

    .line 1821
    :cond_54
    const/4 v1, 0x1

    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 1823
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v1, v0, v9

    .line 1824
    iput v1, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1825
    iput-object v7, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1826
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, v8, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 1827
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_55

    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const v2, 0x186a0

    if-le v0, v2, :cond_55

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated broadcast record activity info for secondary user, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BroadcastQueue_MU"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    :cond_55
    if-eqz v10, :cond_56

    .line 1834
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v2

    cmp-long v0, v2, v17

    if-lez v0, :cond_56

    move v3, v1

    goto :goto_20

    :cond_56
    const/4 v3, 0x0

    :goto_20
    move/from16 v17, v3

    .line 1835
    .local v17, "isActivityCapable":Z
    if-eqz v17, :cond_57

    .line 1836
    nop

    .line 1837
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v2

    .line 1836
    invoke-virtual {v11, v6, v2, v3, v8}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V

    .line 1842
    :cond_57
    :try_start_9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1843
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 1842
    const/4 v1, 0x0

    invoke-interface {v0, v2, v1, v3}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_21

    .line 1845
    :catch_7
    move-exception v0

    .line 1846
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed trying to unstop package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1847
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1846
    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1844
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v0

    .line 1848
    :goto_21
    nop

    .line 1851
    :goto_22
    if-eqz v4, :cond_58

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_58

    iget-boolean v0, v4, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v0, :cond_58

    .line 1853
    :try_start_a
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_c

    :try_start_b
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1855
    invoke-direct {v11, v4, v8}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_c

    .line 1856
    move/from16 v3, p2

    :try_start_c
    invoke-direct {v11, v8, v4, v3}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_9

    .line 1857
    return-void

    .line 1861
    :catch_9
    move-exception v0

    goto :goto_24

    .line 1858
    :catch_a
    move-exception v0

    goto :goto_23

    :catch_b
    move-exception v0

    move/from16 v3, p2

    :goto_23
    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move-object/from16 v20, v7

    move-object/from16 v23, v10

    move v10, v6

    goto :goto_25

    .line 1861
    :catch_c
    move-exception v0

    move/from16 v3, p2

    .line 1862
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed sending broadcast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1869
    invoke-virtual {v11, v8}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1870
    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    .local v18, "e":Ljava/lang/RuntimeException;
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move/from16 v20, v6

    .end local v6    # "receiverUid":I
    .local v20, "receiverUid":I
    iget-boolean v6, v8, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/16 v21, 0x0

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    move/from16 v23, v2

    move-object v2, v8

    move/from16 v3, v23

    move-object/from16 v37, v4

    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .local v37, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v4, v22

    move-object/from16 v38, v5

    .end local v5    # "targetProcess":Ljava/lang/String;
    .local v38, "targetProcess":Ljava/lang/String;
    move-object v5, v0

    move-object/from16 v23, v10

    move/from16 v10, v20

    .end local v20    # "receiverUid":I
    .local v10, "receiverUid":I
    .local v23, "brOptions":Landroid/app/BroadcastOptions;
    move-object/from16 v20, v7

    .end local v7    # "component":Landroid/content/ComponentName;
    .local v20, "component":Landroid/content/ComponentName;
    move/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1872
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1874
    const/4 v1, 0x0

    iput v1, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1875
    return-void

    .line 1858
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .end local v20    # "component":Landroid/content/ComponentName;
    .end local v23    # "brOptions":Landroid/app/BroadcastOptions;
    .end local v37    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "targetProcess":Ljava/lang/String;
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "targetProcess":Ljava/lang/String;
    .restart local v6    # "receiverUid":I
    .restart local v7    # "component":Landroid/content/ComponentName;
    .local v10, "brOptions":Landroid/app/BroadcastOptions;
    :catch_d
    move-exception v0

    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move-object/from16 v20, v7

    move-object/from16 v23, v10

    move v10, v6

    .line 1859
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "targetProcess":Ljava/lang/String;
    .end local v6    # "receiverUid":I
    .end local v7    # "component":Landroid/content/ComponentName;
    .local v0, "e":Landroid/os/RemoteException;
    .local v10, "receiverUid":I
    .restart local v20    # "component":Landroid/content/ComponentName;
    .restart local v23    # "brOptions":Landroid/app/BroadcastOptions;
    .restart local v37    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "targetProcess":Ljava/lang/String;
    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when sending broadcast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1876
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_26

    .line 1851
    .end local v20    # "component":Landroid/content/ComponentName;
    .end local v23    # "brOptions":Landroid/app/BroadcastOptions;
    .end local v37    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "targetProcess":Ljava/lang/String;
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "targetProcess":Ljava/lang/String;
    .restart local v6    # "receiverUid":I
    .restart local v7    # "component":Landroid/content/ComponentName;
    .local v10, "brOptions":Landroid/app/BroadcastOptions;
    :cond_58
    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move-object/from16 v20, v7

    move-object/from16 v23, v10

    move v10, v6

    .line 1883
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "targetProcess":Ljava/lang/String;
    .end local v6    # "receiverUid":I
    .end local v7    # "component":Landroid/content/ComponentName;
    .local v10, "receiverUid":I
    .restart local v20    # "component":Landroid/content/ComponentName;
    .restart local v23    # "brOptions":Landroid/app/BroadcastOptions;
    .restart local v37    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "targetProcess":Ljava/lang/String;
    :goto_26
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Need to start app ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v38

    .end local v38    # "targetProcess":Ljava/lang/String;
    .local v7, "targetProcess":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .end local v7    # "targetProcess":Ljava/lang/String;
    .restart local v38    # "targetProcess":Ljava/lang/String;
    :cond_59
    move-object/from16 v7, v38

    .line 1889
    .end local v38    # "targetProcess":Ljava/lang/String;
    .restart local v7    # "targetProcess":Ljava/lang/String;
    :goto_27
    move-object/from16 v6, v37

    .end local v37    # "app":Lcom/android/server/am/ProcessRecord;
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    invoke-static {v8, v6}, Lcom/android/server/am/OpStartAppControlInjector;->canReceiverGo(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1890
    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v0, v8, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v21, v6

    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .local v21, "app":Lcom/android/server/am/ProcessRecord;
    move v6, v0

    move-object/from16 v24, v7

    .end local v7    # "targetProcess":Ljava/lang/String;
    .local v24, "targetProcess":Ljava/lang/String;
    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1891
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1892
    const/4 v1, 0x0

    iput v1, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1893
    return-void

    .line 1921
    .end local v21    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v24    # "targetProcess":Ljava/lang/String;
    .restart local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "targetProcess":Ljava/lang/String;
    :cond_5a
    move-object/from16 v21, v6

    move-object/from16 v24, v7

    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "targetProcess":Ljava/lang/String;
    .restart local v21    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v24    # "targetProcess":Ljava/lang/String;
    invoke-static {v11, v14, v8}, Lcom/android/server/am/OpBGFrozenInjector;->checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1922
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v30, 0x1

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1924
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    or-int/lit8 v31, v2, 0x4

    new-instance v2, Lcom/android/server/am/HostingRecord;

    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    const-string v4, "broadcast"

    invoke-direct {v2, v4, v3}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1926
    if-eqz v17, :cond_5b

    const/16 v33, 0x1

    goto :goto_28

    :cond_5b
    const/16 v33, 0x0

    :goto_28
    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1927
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5c

    const/16 v34, 0x1

    goto :goto_29

    :cond_5c
    const/16 v34, 0x0

    :goto_29
    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 1922
    move-object/from16 v27, v0

    move-object/from16 v28, v24

    move-object/from16 v29, v1

    move-object/from16 v32, v2

    invoke-virtual/range {v27 .. v36}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_5d

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": process is bad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    invoke-virtual {v11, v8}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1936
    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v6, v8, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1938
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1939
    const/4 v4, 0x0

    iput v4, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1940
    return-void

    .line 1947
    :cond_5d
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v11, v0, v8}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 1948
    iput-object v8, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1949
    iput v9, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    .line 1950
    return-void

    .line 1943
    :cond_5e
    return-void

    .line 1482
    .end local v9    # "recIdx":I
    .end local v10    # "receiverUid":I
    .end local v12    # "perm":I
    .end local v13    # "nextReceiver":Ljava/lang/Object;
    .end local v14    # "info":Landroid/content/pm/ResolveInfo;
    .end local v15    # "isSingleton":Z
    .end local v17    # "isActivityCapable":Z
    .end local v19    # "skip":Z
    .end local v20    # "component":Landroid/content/ComponentName;
    .end local v21    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v23    # "brOptions":Landroid/app/BroadcastOptions;
    .end local v24    # "targetProcess":Ljava/lang/String;
    :cond_5f
    move v4, v12

    move-object v3, v15

    const-wide/16 v1, 0x40

    const/4 v5, 0x1

    move-wide v13, v1

    move-object v10, v3

    move v15, v5

    goto/16 :goto_8
.end method

.method public final replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 311
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    const-string v1, "ORDERED"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    return-object v0
.end method

.method public final replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 303
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    const-string v1, "PARALLEL"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueue;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    return-object v0
.end method

.method resetDelay()V
    .locals 3

    .line 2418
    monitor-enter p0

    .line 2419
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayCount:I

    .line 2420
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/BroadcastQueue;->mDelayUntil:J

    .line 2421
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 2422
    iput-wide v1, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedAt:J

    .line 2423
    iput-wide v1, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedBy:J

    .line 2424
    monitor-exit p0

    .line 2425
    return-void

    .line 2424
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleBroadcastsLocked()V
    .locals 2

    .line 490
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule broadcasts ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_1

    .line 495
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessage(Landroid/os/Message;)Z

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 499
    return-void
.end method

.method final scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "duration"    # J
    .param p4, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 1116
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 1117
    const-wide/32 p2, 0x7fffffff

    .line 1125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1126
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "broadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    iget v1, p4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1128
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1130
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1131
    :cond_1
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1132
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 1133
    :cond_2
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1134
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1136
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_4

    .line 1137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast temp whitelist uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistUidLocked(IJLjava/lang/String;)V

    .line 1141
    return-void
.end method

.method public sendPendingBroadcastsLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "didSomething":Z
    iget-object v8, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 419
    .local v8, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v8, :cond_2

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v1, :cond_2

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, v2, :cond_2

    .line 420
    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const-string v2, "BroadcastQueue"

    const/4 v9, 0x0

    if-eq v1, p1, :cond_0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App mismatch when sending pending broadcast to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", intended target is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return v9

    .line 426
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 427
    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    const/4 v0, 0x1

    .line 445
    goto :goto_1

    .line 429
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 432
    .local v10, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in new application when starting receiver "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v8

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-static {v2, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    invoke-virtual {p0, v8}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 439
    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v6, v8, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 441
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 443
    iput v9, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 444
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return v0
.end method

.method final setBroadcastTimeoutLocked(J)V
    .locals 2
    .param p1, "timeoutTime"    # J

    .line 1965
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1967
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1968
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1970
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 464
    .local v1, "curActive":Lcom/android/server/am/BroadcastRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_0

    .line 466
    move-object v0, v1

    .line 471
    :cond_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_2

    .line 472
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] skip & discard pending app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 477
    :cond_2
    if-eqz v0, :cond_3

    .line 478
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 480
    :cond_3
    return-void
.end method

.method public skipPendingBroadcastLocked(I)V
    .locals 2
    .param p1, "pid"    # I

    .line 451
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 452
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, p1, :cond_0

    .line 453
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 454
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 456
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 458
    :cond_0
    return-void
.end method

.method start(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 241
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->start()V

    .line 242
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    return-object v0
.end method
