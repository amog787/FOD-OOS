.class Lcom/android/server/locksettings/RebootEscrowManager;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;,
        Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;,
        Lcom/android/server/locksettings/RebootEscrowManager$Injector;,
        Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;
    }
.end annotation


# static fields
.field private static final BOOT_COUNT_TOLERANCE:I = 0x5

.field public static final REBOOT_ESCROW_ARMED_KEY:Ljava/lang/String; = "reboot_escrow_armed_count"

.field private static final TAG:Ljava/lang/String; = "RebootEscrowManager"


# instance fields
.field private final mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

.field private final mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

.field private final mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

.field private final mKeyGenerationLock:Ljava/lang/Object;

.field private mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

.field private mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

.field private mRebootEscrowReady:Z

.field private mRebootEscrowWanted:Z

.field private final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;
    .param p3, "storage"    # Lcom/android/server/locksettings/LockSettingsStorage;

    .line 157
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V

    .line 158
    return-void
.end method

.method constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .locals 1
    .param p1, "injector"    # Lcom/android/server/locksettings/RebootEscrowManager$Injector;
    .param p2, "callbacks"    # Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;
    .param p3, "storage"    # Lcom/android/server/locksettings/LockSettingsStorage;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    .line 163
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 164
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    .line 165
    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 166
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    .line 167
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getEventLog()Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 168
    return-void
.end method

.method private clearRebootEscrowIfNeeded()V
    .locals 6

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 331
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 333
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v1

    .line 334
    .local v1, "rebootEscrow":Landroid/hardware/rebootescrow/IRebootEscrow;
    if-nez v1, :cond_0

    .line 335
    return-void

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v3, "reboot_escrow_armed_count"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 341
    const/16 v0, 0x20

    :try_start_0
    new-array v0, v0, [B

    invoke-interface {v1, v0}, Landroid/hardware/rebootescrow/IRebootEscrow;->storeKey([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RebootEscrowManager"

    const-string v3, "Could not call RebootEscrow HAL to shred key"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 347
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 348
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    .line 349
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    .line 352
    return-void
.end method

.method private generateEscrowKeyIfNeeded()Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 318
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKey;->generate()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    .local v1, "key":Lcom/android/server/locksettings/RebootEscrowKey;
    nop

    .line 324
    :try_start_2
    iput-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 325
    monitor-exit v0

    return-object v1

    .line 319
    .end local v1    # "key":Lcom/android/server/locksettings/RebootEscrowKey;
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "RebootEscrowManager"

    const-string v3, "Could not generate reboot escrow key"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 326
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getAndClearRebootEscrowKey()Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 8

    .line 213
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v0

    .line 214
    .local v0, "rebootEscrow":Landroid/hardware/rebootescrow/IRebootEscrow;
    const/4 v1, 0x0

    const-string v2, "RebootEscrowManager"

    if-nez v0, :cond_0

    .line 215
    const-string v3, "Had reboot escrow data for users, but RebootEscrow HAL is unavailable"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-object v1

    .line 220
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/rebootescrow/IRebootEscrow;->retrieveKey()[B

    move-result-object v3

    .line 221
    .local v3, "escrowKeyBytes":[B
    if-nez v3, :cond_1

    .line 222
    const-string v4, "Had reboot escrow data for users, but could not retrieve key"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-object v1

    .line 224
    :cond_1
    array-length v4, v3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IRebootEscrow returned key of incorrect size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-object v1

    .line 231
    :cond_2
    const/4 v4, 0x0

    .line 232
    .local v4, "zero":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_3

    .line 233
    aget-byte v7, v3, v6

    or-int/2addr v4, v7

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 235
    .end local v6    # "i":I
    :cond_3
    if-nez v4, :cond_4

    .line 236
    const-string v5, "IRebootEscrow returned an all-zeroes key"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-object v1

    .line 241
    :cond_4
    new-array v5, v5, [B

    invoke-interface {v0, v5}, Landroid/hardware/rebootescrow/IRebootEscrow;->storeKey([B)V

    .line 243
    iget-object v5, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    .line 244
    invoke-static {v3}, Lcom/android/server/locksettings/RebootEscrowKey;->fromKeyBytes([B)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 248
    .end local v3    # "escrowKeyBytes":[B
    .end local v4    # "zero":I
    :catch_0
    move-exception v3

    .line 249
    .local v3, "e":Landroid/os/ServiceSpecificException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got service-specific exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-object v1

    .line 245
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v3

    .line 246
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Could not retrieve escrow data"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object v1
.end method

.method private onEscrowRestoreComplete(Z)V
    .locals 5
    .param p1, "success"    # Z

    .line 203
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_armed_count"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v0

    .line 204
    .local v0, "previousBootCount":I
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 206
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getBootCount()I

    move-result v1

    sub-int/2addr v1, v0

    .line 207
    .local v1, "bootCountDelta":I
    if-nez p1, :cond_0

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->reportMetric(Z)V

    .line 210
    :cond_1
    return-void
.end method

.method private restoreRebootEscrowForUser(ILcom/android/server/locksettings/RebootEscrowKey;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "key"    # Lcom/android/server/locksettings/RebootEscrowKey;

    .line 255
    const-string v0, "RebootEscrowManager"

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 256
    return v2

    .line 260
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readRebootEscrow(I)[B

    move-result-object v1

    .line 261
    .local v1, "blob":[B
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    .line 263
    invoke-static {p2, v1}, Lcom/android/server/locksettings/RebootEscrowData;->fromEncryptedData(Lcom/android/server/locksettings/RebootEscrowKey;[B)Lcom/android/server/locksettings/RebootEscrowData;

    move-result-object v3

    .line 265
    .local v3, "escrowData":Lcom/android/server/locksettings/RebootEscrowData;
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowData;->getSpVersion()B

    move-result v5

    .line 266
    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowData;->getSyntheticPassword()[B

    move-result-object v6

    .line 265
    invoke-interface {v4, v5, v6, p1}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->onRebootEscrowRestored(B[BI)V

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restored reboot escrow data for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    const/4 v0, 0x1

    return v0

    .line 270
    .end local v1    # "blob":[B
    .end local v3    # "escrowData":Lcom/android/server/locksettings/RebootEscrowData;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load reboot escrow data for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    return v2
.end method

.method private setRebootEscrowReady(Z)V
    .locals 1
    .param p1, "ready"    # Z

    .line 393
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    if-eq v0, p1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/RebootEscrowListener;->onPreparedForReboot(Z)V

    .line 396
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    .line 397
    return-void
.end method


# virtual methods
.method armRebootEscrowIfNeeded()Z
    .locals 7

    .line 355
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 356
    return v1

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v0

    .line 360
    .local v0, "rebootEscrow":Landroid/hardware/rebootescrow/IRebootEscrow;
    if-nez v0, :cond_1

    .line 361
    const-string v2, "RebootEscrowManager"

    const-string v3, "Escrow marked as ready, but RebootEscrow HAL is unavailable"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v1

    .line 366
    :cond_1
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 367
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 368
    .local v3, "escrowKey":Lcom/android/server/locksettings/RebootEscrowKey;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    if-nez v3, :cond_2

    .line 371
    const-string v2, "RebootEscrowManager"

    const-string v4, "Escrow key is null, but escrow was marked as ready"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return v1

    .line 375
    :cond_2
    const/4 v2, 0x0

    .line 377
    .local v2, "armedRebootEscrow":Z
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowKey;->getKeyBytes()[B

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/hardware/rebootescrow/IRebootEscrow;->storeKey([B)V

    .line 378
    const/4 v2, 0x1

    .line 379
    const-string v4, "RebootEscrowManager"

    const-string v5, "Reboot escrow key stored with RebootEscrow HAL"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v4

    .line 381
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "RebootEscrowManager"

    const-string v6, "Failed escrow secret to RebootEscrow HAL"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_3

    .line 385
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v5, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v5}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getBootCount()I

    move-result v5

    const-string/jumbo v6, "reboot_escrow_armed_count"

    invoke-virtual {v4, v6, v5, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    .line 386
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    .line 389
    :cond_3
    return v2

    .line 368
    .end local v2    # "armedRebootEscrow":Z
    .end local v3    # "escrowKey":Lcom/android/server/locksettings/RebootEscrowKey;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method callToRebootEscrowIfNeeded(IB[B)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "spVersion"    # B
    .param p3, "syntheticPassword"    # [B

    .line 278
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    if-nez v0, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v0

    .line 283
    .local v0, "rebootEscrow":Landroid/hardware/rebootescrow/IRebootEscrow;
    const-string v1, "RebootEscrowManager"

    if-nez v0, :cond_1

    .line 284
    const-string v2, "Reboot escrow requested, but RebootEscrow HAL is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->generateEscrowKeyIfNeeded()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v2

    .line 289
    .local v2, "escrowKey":Lcom/android/server/locksettings/RebootEscrowKey;
    if-nez v2, :cond_2

    .line 290
    const-string v3, "Could not generate escrow key"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void

    .line 296
    :cond_2
    :try_start_0
    invoke-static {v2, p2, p3}, Lcom/android/server/locksettings/RebootEscrowData;->fromSyntheticPassword(Lcom/android/server/locksettings/RebootEscrowKey;B[B)Lcom/android/server/locksettings/RebootEscrowData;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .local v1, "escrowData":Lcom/android/server/locksettings/RebootEscrowData;
    nop

    .line 304
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowData;->getBlob()[B

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->writeRebootEscrow(I[B)V

    .line 305
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(II)V

    .line 307
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 308
    return-void

    .line 298
    .end local v1    # "escrowData":Lcom/android/server/locksettings/RebootEscrowData;
    :catch_0
    move-exception v3

    .line 299
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 300
    const-string v4, "Could not escrow reboot data"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    return-void
.end method

.method clearRebootEscrow()Z
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x0

    return v0

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 517
    const-string/jumbo v0, "mRebootEscrowWanted="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 518
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 520
    const-string/jumbo v0, "mRebootEscrowReady="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 521
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 523
    const-string/jumbo v0, "mRebootEscrowListener="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 529
    .local v1, "keySet":Z
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    const-string/jumbo v0, "mPendingRebootEscrowKey is "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 532
    if-eqz v1, :cond_1

    const-string/jumbo v0, "set"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "not set"

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 535
    const-string v0, "Event log:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 537
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 538
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 539
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 540
    return-void

    .line 529
    .end local v1    # "keySet":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method loadRebootEscrowDataIfAvailable()V
    .locals 7

    .line 171
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "rebootEscrowUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 174
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->isUserSecure(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 179
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    return-void

    .line 183
    :cond_2
    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->getAndClearRebootEscrowKey()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v2

    .line 184
    .local v2, "escrowKey":Lcom/android/server/locksettings/RebootEscrowKey;
    if-nez v2, :cond_4

    .line 185
    const-string v3, "RebootEscrowManager"

    const-string v4, "Had reboot escrow data for users, but no key; removing escrow storage."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 187
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    .line 188
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 189
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(Z)V

    .line 190
    return-void

    .line 193
    :cond_4
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    .line 195
    const/4 v3, 0x1

    .line 196
    .local v3, "allUsersUnlocked":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 197
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->restoreRebootEscrowForUser(ILcom/android/server/locksettings/RebootEscrowKey;)Z

    move-result v6

    and-int/2addr v3, v6

    .line 198
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    goto :goto_2

    .line 199
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(Z)V

    .line 200
    return-void
.end method

.method prepareRebootEscrow()Z
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    return v0

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 406
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    .line 407
    return v0
.end method

.method setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/RebootEscrowListener;

    .line 420
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    .line 421
    return-void
.end method
