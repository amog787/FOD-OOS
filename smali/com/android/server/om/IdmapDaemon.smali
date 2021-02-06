.class Lcom/android/server/om/IdmapDaemon;
.super Ljava/lang/Object;
.source "IdmapDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/IdmapDaemon$Connection;
    }
.end annotation


# static fields
.field private static final IDMAP_DAEMON:Ljava/lang/String; = "idmap2d"

.field private static final SERVICE_CONNECT_INTERVAL_SLEEP_MS:I = 0x5

.field private static final SERVICE_CONNECT_TIMEOUT_MS:I = 0x1388

.field private static final SERVICE_TIMEOUT_MS:I = 0x2710

.field private static sInstance:Lcom/android/server/om/IdmapDaemon;


# instance fields
.field private final mIdmapToken:Ljava/lang/Object;

.field private final mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mService:Landroid/os/IIdmap2;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/IdmapDaemon;

    .line 41
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/IdmapDaemon;

    .line 41
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/IdmapDaemon;

    .line 41
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)Landroid/os/IIdmap2;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/om/IdmapDaemon;
    .param p1, "x1"    # Landroid/os/IIdmap2;

    .line 41
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-object p1
.end method

.method static synthetic access$300()V
    .locals 0

    .line 41
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->stopIdmapService()V

    return-void
.end method

.method private connect()Lcom/android/server/om/IdmapDaemon$Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 171
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/IdmapDaemon$1;)V

    monitor-exit v0

    return-object v1

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->getIdmapService()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IIdmap2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 175
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/IdmapDaemon$1;)V

    monitor-exit v0

    return-object v1

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIdmapService()Landroid/os/IBinder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    const-string v0, "idmap2d"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 142
    .local v0, "endMillis":J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    const-string v3, "idmap"

    const/4 v4, 0x0

    if-gtz v2, :cond_1

    .line 143
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 144
    .local v2, "binder":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 145
    sget-object v3, Lcom/android/server/om/-$$Lambda$IdmapDaemon$PJzhiOHnyxvsKcpF_77d27eStZs;->INSTANCE:Lcom/android/server/om/-$$Lambda$IdmapDaemon$PJzhiOHnyxvsKcpF_77d27eStZs;

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 147
    return-object v2

    .line 151
    :cond_0
    const-wide/16 v3, 0x5

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_1

    .line 152
    :catch_0
    move-exception v3

    .line 154
    .end local v2    # "binder":Landroid/os/IBinder;
    :goto_1
    goto :goto_0

    .line 156
    :cond_1
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    const/4 v3, 0x1

    const/16 v4, 0x1388

    .line 158
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    .line 157
    const-string v3, "Failed to connect to \'%s\' in %d milliseconds"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getInstance()Lcom/android/server/om/IdmapDaemon;
    .locals 1

    .line 101
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/server/om/IdmapDaemon;

    invoke-direct {v0}, Lcom/android/server/om/IdmapDaemon;-><init>()V

    sput-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 104
    :cond_0
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    return-object v0
.end method

.method static synthetic lambda$getIdmapService$0()V
    .locals 3

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "idmap"

    aput-object v2, v0, v1

    const-string/jumbo v1, "service \'%s\' died"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static stopIdmapService()V
    .locals 1

    .line 162
    const-string v0, "idmap2d"

    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 163
    return-void
.end method


# virtual methods
.method createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;
    .locals 7
    .param p1, "targetPath"    # Ljava/lang/String;
    .param p2, "overlayPath"    # Ljava/lang/String;
    .param p3, "policies"    # I
    .param p4, "enforce"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0

    .line 110
    .local v0, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/IIdmap2;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 110
    :cond_0
    return-object v1

    .line 109
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method idmapExists(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "overlayPath"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .local v0, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-interface {v2, p1, p2}, Landroid/os/IIdmap2;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    :cond_0
    return v1

    .line 129
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .end local p1    # "overlayPath":Ljava/lang/String;
    .end local p2    # "userId":I
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 131
    .end local v0    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .restart local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .restart local p1    # "overlayPath":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to check if idmap exists for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v2, "OverlayManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x0

    return v1
.end method

.method removeIdmap(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "overlayPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0

    .line 116
    .local v0, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-interface {v1, p1, p2}, Landroid/os/IIdmap2;->removeIdmap(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 116
    :cond_0
    return v1

    .line 115
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method verifyIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Z
    .locals 7
    .param p1, "targetPath"    # Ljava/lang/String;
    .param p2, "overlayPath"    # Ljava/lang/String;
    .param p3, "policies"    # I
    .param p4, "enforce"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0

    .line 124
    .local v0, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/IIdmap2;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 124
    :cond_0
    return v1

    .line 123
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
