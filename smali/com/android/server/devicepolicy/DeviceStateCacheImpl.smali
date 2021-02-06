.class public Lcom/android/server/devicepolicy/DeviceStateCacheImpl;
.super Landroid/app/admin/DeviceStateCache;
.source "DeviceStateCacheImpl.java"


# instance fields
.field private mIsDeviceProvisioned:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/admin/DeviceStateCache;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mLock:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mIsDeviceProvisioned:Z

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 52
    const-string v0, "Device state cache:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device provisioned: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mIsDeviceProvisioned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 56
    return-void
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mIsDeviceProvisioned:Z

    return v0
.end method

.method public setDeviceProvisioned(Z)V
    .locals 2
    .param p1, "provisioned"    # Z

    .line 45
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mIsDeviceProvisioned:Z

    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
