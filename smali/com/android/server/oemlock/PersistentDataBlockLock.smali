.class Lcom/android/server/oemlock/PersistentDataBlockLock;
.super Lcom/android/server/oemlock/OemLock;
.source "PersistentDataBlockLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private disallowUnlockIfNotUnlocked()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    .line 101
    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 102
    .local v0, "pdbm":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-nez v0, :cond_0

    .line 103
    const-string v1, "OemLock"

    const-string v2, "PersistentDataBlock is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    .line 109
    :cond_1
    return-void
.end method


# virtual methods
.method getLockName()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, ""

    return-object v0
.end method

.method isOemUnlockAllowedByCarrier()Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 67
    const-string/jumbo v2, "no_oem_unlock"

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 66
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isOemUnlockAllowedByDevice()Z
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    .line 86
    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 87
    .local v0, "pdbm":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-nez v0, :cond_0

    .line 88
    const-string v1, "OemLock"

    const-string v2, "PersistentDataBlock is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    return v1

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    return v1
.end method

.method setOemUnlockAllowedByCarrier(Z[B)V
    .locals 4
    .param p1, "allowed"    # Z
    .param p2, "signature"    # [B

    .line 51
    if-eqz p2, :cond_0

    .line 52
    const-string v0, "OemLock"

    const-string v1, "Signature provided but is not being used"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v3, "no_oem_unlock"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 59
    if-nez p1, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/android/server/oemlock/PersistentDataBlockLock;->disallowUnlockIfNotUnlocked()V

    .line 62
    :cond_1
    return-void
.end method

.method setOemUnlockAllowedByDevice(Z)V
    .locals 3
    .param p1, "allowedByDevice"    # Z

    .line 74
    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    .line 75
    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 76
    .local v0, "pdbm":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-nez v0, :cond_0

    .line 77
    const-string v1, "OemLock"

    const-string v2, "PersistentDataBlock is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    .line 81
    return-void
.end method
