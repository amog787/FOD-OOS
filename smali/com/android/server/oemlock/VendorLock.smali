.class Lcom/android/server/oemlock/VendorLock;
.super Lcom/android/server/oemlock/OemLock;
.source "VendorLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/oemlock/V1_0/IOemLock;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oemLock"    # Landroid/hardware/oemlock/V1_0/IOemLock;

    .line 50
    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/oemlock/VendorLock;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    .line 53
    return-void
.end method

.method static getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;
    .locals 3

    .line 41
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/hardware/oemlock/V1_0/IOemLock;->getService(Z)Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 42
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 43
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "OemLock"

    const-string v2, "OemLock HAL not present on device"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$getLockName$0([Ljava/lang/Integer;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "requestStatus"    # [Ljava/lang/Integer;
    .param p1, "lockName"    # [Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 64
    aput-object p3, p1, v1

    .line 65
    return-void
.end method

.method static synthetic lambda$isOemUnlockAllowedByCarrier$1([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .locals 2
    .param p0, "requestStatus"    # [Ljava/lang/Integer;
    .param p1, "allowedByCarrier"    # [Ljava/lang/Boolean;
    .param p2, "status"    # I
    .param p3, "allowed"    # Z

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 122
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    .line 123
    return-void
.end method

.method static synthetic lambda$isOemUnlockAllowedByDevice$2([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .locals 2
    .param p0, "requestStatus"    # [Ljava/lang/Integer;
    .param p1, "allowedByDevice"    # [Ljava/lang/Boolean;
    .param p2, "status"    # I
    .param p3, "allowed"    # Z

    .line 169
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 170
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    .line 171
    return-void
.end method

.method private toByteArrayList([B)Ljava/util/ArrayList;
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    .line 196
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_1
    return-object v0
.end method


# virtual methods
.method getLockName()Ljava/lang/String;
    .locals 6

    .line 58
    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    .line 59
    .local v2, "requestStatus":[Ljava/lang/Integer;
    new-array v3, v1, [Ljava/lang/String;

    .line 62
    .local v3, "lockName":[Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v5, Lcom/android/server/oemlock/-$$Lambda$VendorLock$mE2wEMNMcvqMft72oSVABYa_mYs;

    invoke-direct {v5, v2, v3}, Lcom/android/server/oemlock/-$$Lambda$VendorLock$mE2wEMNMcvqMft72oSVABYa_mYs;-><init>([Ljava/lang/Integer;[Ljava/lang/String;)V

    invoke-interface {v4, v5}, Landroid/hardware/oemlock/V1_0/IOemLock;->getName(Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .line 71
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    if-eq v5, v1, :cond_0

    .line 81
    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v4

    .line 77
    :cond_0
    const-string v1, "Failed to get OEM lock name."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v4

    .line 74
    :cond_1
    aget-object v0, v3, v4

    return-object v0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to get name from HAL"

    invoke-static {v0, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method isOemUnlockAllowedByCarrier()Z
    .locals 6

    .line 116
    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    .line 117
    .local v2, "requestStatus":[Ljava/lang/Integer;
    new-array v3, v1, [Ljava/lang/Boolean;

    .line 120
    .local v3, "allowedByCarrier":[Ljava/lang/Boolean;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v5, Lcom/android/server/oemlock/-$$Lambda$VendorLock$HjegvthxXAHFarV_FukbaMGePGU;

    invoke-direct {v5, v2, v3}, Lcom/android/server/oemlock/-$$Lambda$VendorLock$HjegvthxXAHFarV_FukbaMGePGU;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .line 129
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_1

    if-eq v5, v1, :cond_0

    .line 135
    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get carrier OEM unlock state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    aget-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to get carrier state from HAL"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method isOemUnlockAllowedByDevice()Z
    .locals 6

    .line 164
    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    .line 165
    .local v2, "requestStatus":[Ljava/lang/Integer;
    new-array v3, v1, [Ljava/lang/Boolean;

    .line 168
    .local v3, "allowedByDevice":[Ljava/lang/Boolean;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v5, Lcom/android/server/oemlock/-$$Lambda$VendorLock$8zNsLj4Jt-s5XEEk_KIC2zQR29g;

    invoke-direct {v5, v2, v3}, Lcom/android/server/oemlock/-$$Lambda$VendorLock$8zNsLj4Jt-s5XEEk_KIC2zQR29g;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    nop

    .line 177
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_1

    if-eq v5, v1, :cond_0

    .line 183
    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get device OEM unlock state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    aget-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to get devie state from HAL"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method setOemUnlockAllowedByCarrier(Z[B)V
    .locals 4
    .param p1, "allowed"    # Z
    .param p2, "signature"    # [B

    .line 89
    const-string v0, "OemLock"

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/oemlock/VendorLock;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    .line 90
    .local v1, "signatureBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {v2, p1, v1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Signature required for carrier unlock"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .end local p1    # "allowed":Z
    .end local p2    # "signature":[B
    throw v2

    .line 99
    .restart local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .restart local p1    # "allowed":Z
    .restart local p2    # "signature":[B
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Invalid signature used in attempt to carrier unlock"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .end local p1    # "allowed":Z
    .end local p2    # "signature":[B
    throw v2

    .line 103
    .restart local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .restart local p1    # "allowed":Z
    .restart local p2    # "signature":[B
    :cond_1
    const-string v2, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to set carrier OEM unlock state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .end local p1    # "allowed":Z
    .end local p2    # "signature":[B
    throw v2

    .line 92
    .restart local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .restart local p1    # "allowed":Z
    .restart local p2    # "signature":[B
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated carrier allows OEM lock state to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 108
    .end local v1    # "signatureBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to set carrier state with HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method setOemUnlockAllowedByDevice(Z)V
    .locals 3
    .param p1, "allowedByDevice"    # Z

    .line 145
    const-string v0, "OemLock"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {v1, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByDevice(Z)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 151
    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to set device OEM unlock state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .end local p1    # "allowedByDevice":Z
    throw v1

    .line 147
    .restart local p0    # "this":Lcom/android/server/oemlock/VendorLock;
    .restart local p1    # "allowedByDevice":Z
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated device allows OEM lock state to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to set device state with HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
