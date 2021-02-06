.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;

.field private final mHasNativeHal:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    .line 43
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 45
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ConsumerIrService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 48
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    .line 49
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.consumerir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-boolean v1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-nez v1, :cond_2

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native halGetCarrierFrequencies()[I
.end method

.method private static native halOpen()Z
.end method

.method private static native halTransmit(I[I)I
.end method

.method private throwIfNoIrEmitter()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 111
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasIrEmitter()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    return v0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "carrierFrequency"    # I
    .param p3, "pattern"    # [I

    .line 72
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 77
    const-wide/16 v0, 0x0

    .line 79
    .local v0, "totalXmitTime":J
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p3, v3

    .line 80
    .local v4, "slice":I
    if-lez v4, :cond_0

    .line 83
    int-to-long v5, v4

    add-long/2addr v0, v5

    .line 79
    .end local v4    # "slice":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .restart local v4    # "slice":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Non-positive IR slice"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v4    # "slice":I
    :cond_1
    const-wide/32 v2, 0x1e8480

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 90
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 93
    iget-object v2, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(I[I)I

    move-result v3

    .line 96
    .local v3, "err":I
    if-gez v3, :cond_2

    .line 97
    const-string v4, "ConsumerIrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error transmitting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v3    # "err":I
    :cond_2
    monitor-exit v2

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 87
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "IR pattern too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    .end local v0    # "totalXmitTime":J
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
