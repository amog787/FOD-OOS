.class public Lcom/android/server/DynamicSystemService;
.super Landroid/os/image/IDynamicSystemService$Stub;
.source "DynamicSystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    }
.end annotation


# static fields
.field private static final GSID_ROUGH_TIMEOUT_MS:I = 0x2000

.field private static final PATH_DEFAULT:Ljava/lang/String; = "/data/gsi/"

.field private static final TAG:Ljava/lang/String; = "DynamicSystemService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDsuSlot:Ljava/lang/String;

.field private volatile mGsiService:Landroid/gsi/IGsiService;

.field private mInstallPath:Ljava/lang/String;


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

    .line 63
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_DYNAMIC_SYSTEM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getGsiService()Landroid/gsi/IGsiService;
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->checkPermission()V

    .line 56
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    return-object v0

    .line 59
    :cond_0
    const-string v0, "gsiservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/gsi/IGsiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abort()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    move-result v0

    return v0
.end method

.method public createPartition(Ljava/lang/String;JZ)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 121
    .local v0, "service":Landroid/gsi/IGsiService;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/gsi/IGsiService;->createPartition(Ljava/lang/String;JZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to install "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicSystemService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    return v1

    .line 125
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public finishInstallation()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 131
    .local v0, "service":Landroid/gsi/IGsiService;
    invoke-interface {v0}, Landroid/gsi/IGsiService;->closeInstall()I

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "DynamicSystemService"

    const-string v2, "Failed to finish installation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x0

    return v1

    .line 135
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z
    .locals 3
    .param p1, "dst"    # Landroid/gsi/AvbPublicKey;

    .line 224
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/gsi/IGsiService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInstallationProgress()Landroid/gsi/GsiProgress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
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

    .line 162
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    move-result v0

    return v0
.end method

.method public isInUse()Z
    .locals 2

    .line 150
    const-string/jumbo v0, "ro.gsid.image_running"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .locals 3

    .line 155
    const-string v0, "gsid.image_installed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 156
    .local v0, "installed":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isInstalled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicSystemService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v0
.end method

.method public remove()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    invoke-direct {v1, p0}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>(Lcom/android/server/DynamicSystemService;)V

    .line 169
    .local v1, "callback":Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/gsi/IGsiService;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    .line 171
    const-wide/16 v2, 0x2000

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 172
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->getResult()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 172
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/DynamicSystemService;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 174
    .end local v1    # "callback":Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    .restart local p0    # "this":Lcom/android/server/DynamicSystemService;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "DynamicSystemService"

    const-string/jumbo v3, "remove() was interrupted"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v0
.end method

.method public setAshmem(Landroid/os/ParcelFileDescriptor;J)Z
    .locals 3
    .param p1, "ashmem"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J

    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/gsi/IGsiService;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setEnable(ZZ)Z
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "oneShot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 183
    .local v0, "gsiService":Landroid/gsi/IGsiService;
    if-eqz p1, :cond_2

    .line 185
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 186
    invoke-interface {v0}, Landroid/gsi/IGsiService;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 188
    :cond_0
    new-instance v2, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    invoke-direct {v2, p0}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>(Lcom/android/server/DynamicSystemService;)V

    .line 189
    .local v2, "callback":Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    invoke-interface {v0, p2, v3, v2}, Landroid/gsi/IGsiService;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    .line 191
    const-wide/16 v3, 0x2000

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 192
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->getResult()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 192
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "gsiService":Landroid/gsi/IGsiService;
    .end local p0    # "this":Lcom/android/server/DynamicSystemService;
    .end local p1    # "enable":Z
    .end local p2    # "oneShot":Z
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 194
    .end local v2    # "callback":Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    .restart local v0    # "gsiService":Landroid/gsi/IGsiService;
    .restart local p0    # "this":Lcom/android/server/DynamicSystemService;
    .restart local p1    # "enable":Z
    .restart local p2    # "oneShot":Z
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "DynamicSystemService"

    const-string/jumbo v4, "setEnable() was interrupted"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return v1

    .line 199
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    invoke-interface {v0}, Landroid/gsi/IGsiService;->disableGsi()Z

    move-result v1

    return v1
.end method

.method public startInstallation(Ljava/lang/String;)Z
    .locals 11
    .param p1, "dsuSlot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 86
    .local v0, "service":Landroid/gsi/IGsiService;
    iput-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    .line 88
    const-string/jumbo v1, "os.aot.path"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "DynamicSystemService"

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 90
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 91
    .local v2, "userId":I
    const/16 v5, 0x100

    .line 92
    invoke-static {v2, v5}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 93
    .local v5, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v6, v5

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 94
    .local v8, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v9

    .line 98
    .local v9, "sdCard":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 99
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 100
    goto :goto_2

    .line 93
    .end local v8    # "volume":Landroid/os/storage/StorageVolume;
    .end local v9    # "sdCard":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 103
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/gsi/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startInstallation -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v2    # "userId":I
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_6
    iput-object v1, p0, Lcom/android/server/DynamicSystemService;->mInstallPath:Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 110
    invoke-interface {v0, v1}, Landroid/gsi/IGsiService;->openInstall(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v4

    .line 114
    :cond_7
    const/4 v2, 0x1

    return v2
.end method

.method public submitFromAshmem(J)Z
    .locals 3
    .param p1, "size"    # J

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/gsi/IGsiService;->commitGsiChunkFromAshmem(J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
