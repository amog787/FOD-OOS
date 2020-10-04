.class Lcom/android/server/content/SyncLogger$RotatingFileLogger;
.super Lcom/android/server/content/SyncLogger;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotatingFileLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;
    }
.end annotation


# static fields
.field private static final DO_LOGCAT:Z

.field private static final sFilenameDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sTimestampFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mCachedDate:Ljava/util/Date;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mCurrentLogFileDayTimestamp:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mErrorShown:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

.field private final mKeepAgeMs:J

.field private final mLock:Ljava/lang/Object;

.field private final mLogPath:Ljava/io/File;

.field private mLogWriter:Ljava/io/Writer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mStringBuilder:Ljava/lang/StringBuilder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sTimestampFormat:Ljava/text/SimpleDateFormat;

    .line 132
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sFilenameDateFormat:Ljava/text/SimpleDateFormat;

    .line 152
    const-string v0, "SyncLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->DO_LOGCAT:Z

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncLogger;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    .line 127
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mKeepAgeMs:J

    .line 135
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "syncmanager-log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    .line 158
    new-instance v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;-><init>(Lcom/android/server/content/SyncLogger$RotatingFileLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mHandler:Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

    .line 159
    return-void
.end method

.method private closeCurrentLogLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    .line 248
    return-void
.end method

.method private dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "file"    # Ljava/io/File;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dumping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const v0, 0x8000

    new-array v0, v0, [C

    .line 281
    .local v0, "buffer":[C
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .local v1, "in":Ljava/io/Reader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    move v3, v2

    .local v3, "read":I
    if-ltz v2, :cond_1

    .line 284
    if-lez v3, :cond_0

    .line 285
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/PrintWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    .end local v3    # "read":I
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 289
    .end local v1    # "in":Ljava/io/Reader;
    goto :goto_2

    .line 281
    .restart local v1    # "in":Ljava/io/Reader;
    :catchall_0
    move-exception v2

    .end local v0    # "buffer":[C
    .end local v1    # "in":Ljava/io/Reader;
    .end local p0    # "this":Lcom/android/server/content/SyncLogger$RotatingFileLogger;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "file":Ljava/io/File;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 288
    .restart local v0    # "buffer":[C
    .restart local v1    # "in":Ljava/io/Reader;
    .restart local p0    # "this":Lcom/android/server/content/SyncLogger$RotatingFileLogger;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "buffer":[C
    .end local p0    # "this":Lcom/android/server/content/SyncLogger$RotatingFileLogger;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "file":Ljava/io/File;
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "in":Ljava/io/Reader;
    .restart local v0    # "buffer":[C
    .restart local p0    # "this":Lcom/android/server/content/SyncLogger$RotatingFileLogger;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 290
    :goto_2
    return-void
.end method

.method private handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 167
    iget-boolean v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    if-nez v0, :cond_0

    .line 168
    const-string v0, "SyncLogger"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    .line 171
    :cond_0
    return-void
.end method

.method private openLogLocked(J)V
    .locals 7
    .param p1, "now"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 221
    const-wide/32 v0, 0x5265c00

    rem-long v0, p1, v0

    .line 222
    .local v0, "day":J
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCurrentLogFileDayTimestamp:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 223
    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->closeCurrentLogLocked()V

    .line 229
    iput-wide v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCurrentLogFileDayTimestamp:J

    .line 231
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v2, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "synclog-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sFilenameDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 235
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 238
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v4

    .line 240
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open log file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 242
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 264
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "files":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 271
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 272
    .local v4, "file":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v5}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 271
    .end local v4    # "file":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "files":[Ljava/lang/String;
    :cond_1
    monitor-exit v0

    .line 275
    return-void

    .line 267
    .restart local v1    # "files":[Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    .line 274
    .end local v1    # "files":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enabled()Z
    .locals 1

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 259
    invoke-static {p1}, Lcom/android/server/content/SyncJobService;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # [Ljava/lang/Object;

    .line 175
    if-nez p1, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mHandler:Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;->log(J[Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method logInner(J[Ljava/lang/Object;)V
    .locals 6
    .param p1, "now"    # J
    .param p3, "message"    # [Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->openLogLocked(J)V

    .line 185
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 186
    monitor-exit v0

    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 190
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v1, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 191
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sTimestampFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 199
    .local v1, "messageStart":I
    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p3, v2

    .line 200
    .local v4, "o":Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    nop

    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :try_start_1
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 206
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 209
    sget-boolean v2, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->DO_LOGCAT:Z

    if-eqz v2, :cond_2

    .line 210
    const-string v2, "SyncLogger"

    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :cond_2
    goto :goto_1

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "Failed to write log"

    invoke-direct {p0, v3, v2}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 215
    .end local v1    # "messageStart":I
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public purgeOldLogs()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mKeepAgeMs:J

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->deleteOlderFiles(Ljava/io/File;IJ)Z

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
