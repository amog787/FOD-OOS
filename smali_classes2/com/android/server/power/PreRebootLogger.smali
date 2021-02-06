.class final Lcom/android/server/power/PreRebootLogger;
.super Ljava/lang/Object;
.source "PreRebootLogger.java"


# static fields
.field private static final BUFFERS_TO_DUMP:[Ljava/lang/String;

.field private static final MAX_DUMP_TIME:J

.field private static final PREREBOOT_DIR:Ljava/lang/String; = "prereboot"

.field private static final SERVICES_TO_DUMP:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PreRebootLogger"

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    const-string v0, "system"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PreRebootLogger;->BUFFERS_TO_DUMP:[Ljava/lang/String;

    .line 49
    const-string v0, "rollback"

    const-string v1, "package"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PreRebootLogger;->SERVICES_TO_DUMP:[Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/PreRebootLogger;->sLock:Ljava/lang/Object;

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/PreRebootLogger;->MAX_DUMP_TIME:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dump(Ljava/io/File;J)V
    .locals 5
    .param p0, "dumpDir"    # Ljava/io/File;
    .param p1, "maxWaitTime"    # J

    .line 80
    const-string v0, "PreRebootLogger"

    const-string v1, "Dumping pre-reboot information..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 82
    .local v1, "done":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/power/-$$Lambda$PreRebootLogger$p8FewhqoJ8SIfUcoA5y2K00i1I4;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/-$$Lambda$PreRebootLogger$p8FewhqoJ8SIfUcoA5y2K00i1I4;-><init>(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 96
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "Failed to dump pre-reboot information due to interrupted"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    const-string v3, "Failed to dump pre-reboot information due to timeout"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method

.method private static dumpLogsLocked(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p0, "dumpDir"    # Ljava/io/File;
    .param p1, "buffer"    # Ljava/lang/String;

    .line 126
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v0, "dumpFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    goto :goto_0

    .line 131
    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 134
    :goto_0
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "logcat"

    aput-object v4, v1, v2

    const-string v2, "-d"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "-b"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, "-f"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 136
    .local v1, "cmdline":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .end local v0    # "dumpFile":Ljava/io/File;
    .end local v1    # "cmdline":[Ljava/lang/String;
    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PreRebootLogger"

    const-string v2, "Failed to dump system log buffer before reboot"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static dumpServiceLocked(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p0, "dumpDir"    # Ljava/io/File;
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 144
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 145
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 146
    return-void

    .line 150
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v1, "dumpFile":Ljava/io/File;
    const/high16 v2, 0x2c000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 154
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "dumpFile":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Failed to dump %s service before reboot"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreRebootLogger"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static getDumpDir()Ljava/io/File;
    .locals 3

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "prereboot"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v0, "dumpDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    return-object v0

    .line 118
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Pre-reboot dump directory not found"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$dump$0(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 6
    .param p0, "dumpDir"    # Ljava/io/File;
    .param p1, "done"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    sget-object v0, Lcom/android/server/power/PreRebootLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/android/server/power/PreRebootLogger;->BUFFERS_TO_DUMP:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 85
    .local v5, "buffer":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/android/server/power/PreRebootLogger;->dumpLogsLocked(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .end local v5    # "buffer":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_0
    sget-object v1, Lcom/android/server/power/PreRebootLogger;->SERVICES_TO_DUMP:[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 88
    .local v4, "service":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/server/power/PreRebootLogger;->dumpServiceLocked(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .end local v4    # "service":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static log(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    invoke-static {}, Lcom/android/server/power/PreRebootLogger;->getDumpDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/PreRebootLogger;->log(Landroid/content/Context;Ljava/io/File;)V

    .line 61
    return-void
.end method

.method static log(Landroid/content/Context;Ljava/io/File;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dumpDir"    # Ljava/io/File;

    .line 65
    invoke-static {p0}, Lcom/android/server/power/PreRebootLogger;->needDump(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-wide v0, Lcom/android/server/power/PreRebootLogger;->MAX_DUMP_TIME:J

    invoke-static {p1, v0, v1}, Lcom/android/server/power/PreRebootLogger;->dump(Ljava/io/File;J)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/android/server/power/PreRebootLogger;->wipe(Ljava/io/File;)V

    .line 70
    :goto_0
    return-void
.end method

.method private static needDump(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getActiveStagedSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    nop

    .line 73
    :goto_0
    return v2
.end method

.method private static wipe(Ljava/io/File;)V
    .locals 5
    .param p0, "dumpDir"    # Ljava/io/File;

    .line 107
    const-string v0, "PreRebootLogger"

    const-string v1, "Wiping pre-reboot information..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/android/server/power/PreRebootLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 110
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 109
    nop

    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_0
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
