.class public Lcom/android/server/DynamicSystemService;
.super Landroid/os/image/IDynamicSystemService$Stub;
.source "DynamicSystemService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final GSID_ROUGH_TIMEOUT_MS:I = 0x2000

.field private static final NO_SERVICE_ERROR:Ljava/lang/String; = "no gsiservice"

.field private static final PATH_DEFAULT:Ljava/lang/String; = "/data/gsi"

.field private static final TAG:Ljava/lang/String; = "DynamicSystemService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mGsiService:Landroid/gsi/IGsiService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Landroid/os/image/IDynamicSystemService$Stub;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private checkPermission()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_DYNAMIC_SYSTEM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static connect(Landroid/os/IBinder$DeathRecipient;)Landroid/gsi/IGsiService;
    .locals 2
    .param p0, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const-string v0, "gsiservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 57
    const/4 v1, 0x0

    return-object v1

    .line 63
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 64
    invoke-static {v0}, Landroid/gsi/IGsiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;

    move-result-object v1

    return-object v1
.end method

.method private getGsiService()Landroid/gsi/IGsiService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->checkPermission()V

    .line 79
    const-string v0, "init.svc.gsid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "running"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-string v0, "ctl.start"

    const-string v1, "gsid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    const/16 v0, 0x40

    .local v0, "sleepMs":I
    :goto_0
    const/16 v1, 0x4000

    if-gt v0, v1, :cond_3

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    if-nez v1, :cond_1

    .line 86
    invoke-static {p0}, Lcom/android/server/DynamicSystemService;->connect(Landroid/os/IBinder$DeathRecipient;)Landroid/gsi/IGsiService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    monitor-exit p0

    return-object v1

    .line 91
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    const-string v1, "DynamicSystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsiService is not ready, wait for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    nop

    .line 83
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "DynamicSystemService"

    const-string v3, "Interrupted when waiting for GSID"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v2, 0x0

    return-object v2

    .line 91
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 102
    .end local v0    # "sleepMs":I
    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "no gsiservice"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abort()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    move-result v0

    return v0
.end method

.method public binderDied()V
    .locals 2

    .line 70
    const-string v0, "DynamicSystemService"

    const-string v1, "gsiservice died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    monitor-enter p0

    .line 72
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/gsi/IGsiService;->setGsiBootable(Z)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getInstallationProgress()Landroid/gsi/GsiProgress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    move-result v0

    return v0
.end method

.method public isInUse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    const-string v0, "gsid"

    const-string v1, "ctl.stop"

    const-string v2, "init.svc.gsid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "running"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 156
    .local v2, "gsidWasRunning":Z
    const/4 v3, 0x0

    .line 159
    .local v3, "isInUse":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v4

    invoke-interface {v4}, Landroid/gsi/IGsiService;->isGsiRunning()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    .line 161
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 162
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    return v3

    .line 161
    :catchall_0
    move-exception v4

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 162
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    throw v4
.end method

.method public isInstalled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->isGsiInstalled()Z

    move-result v0

    return v0
.end method

.method public remove()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->removeGsiInstall()Z

    move-result v0

    return v0
.end method

.method public setEnable(Z)Z
    .locals 6
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 187
    .local v0, "gsiService":Landroid/gsi/IGsiService;
    if-eqz p1, :cond_2

    .line 188
    invoke-interface {v0}, Landroid/gsi/IGsiService;->getGsiBootStatus()I

    move-result v1

    .line 189
    .local v1, "status":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 190
    .local v2, "singleBoot":Z
    :goto_0
    invoke-interface {v0, v2}, Landroid/gsi/IGsiService;->setGsiBootable(Z)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3

    .line 192
    .end local v1    # "status":I
    .end local v2    # "singleBoot":Z
    :cond_2
    invoke-interface {v0}, Landroid/gsi/IGsiService;->disableGsiInstall()Z

    move-result v1

    return v1
.end method

.method public startInstallation(JJ)Z
    .locals 9
    .param p1, "systemSize"    # J
    .param p3, "userdataSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const-string/jumbo v0, "os.aot.path"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 118
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 119
    .local v1, "userId":I
    const/16 v3, 0x100

    .line 120
    invoke-static {v1, v3}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 121
    .local v3, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 122
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mounted"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v7

    .line 126
    .local v7, "sdCard":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 127
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 128
    goto :goto_2

    .line 121
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    .end local v7    # "sdCard":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 131
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 132
    const-string v0, "/data/gsi"

    .line 134
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startInstallation -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DynamicSystemService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v1    # "userId":I
    .end local v3    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_6
    new-instance v1, Landroid/gsi/GsiInstallParams;

    invoke-direct {v1}, Landroid/gsi/GsiInstallParams;-><init>()V

    .line 137
    .local v1, "installParams":Landroid/gsi/GsiInstallParams;
    iput-object v0, v1, Landroid/gsi/GsiInstallParams;->installDir:Ljava/lang/String;

    .line 138
    iput-wide p1, v1, Landroid/gsi/GsiInstallParams;->gsiSize:J

    .line 139
    iput-wide p3, v1, Landroid/gsi/GsiInstallParams;->userdataSize:J

    .line 140
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/gsi/IGsiService;->beginGsiInstall(Landroid/gsi/GsiInstallParams;)I

    move-result v3

    if-nez v3, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method public write([B)Z
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/gsi/IGsiService;->commitGsiChunkFromMemory([B)Z

    move-result v0

    return v0
.end method
