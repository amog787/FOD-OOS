.class public Lcom/android/server/deviceidle/BluetoothConstraint;
.super Ljava/lang/Object;
.source "BluetoothConstraint.java"

# interfaces
.implements Lcom/android/server/deviceidle/IDeviceIdleConstraint;


# static fields
.field private static final INACTIVITY_TIMEOUT_MS:J = 0x124f80L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private volatile mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLocalService:Lcom/android/server/DeviceIdleInternal;

.field private volatile mMonitoring:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeoutCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/deviceidle/BluetoothConstraint;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "localService"    # Lcom/android/server/DeviceIdleInternal;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 124
    new-instance v0, Lcom/android/server/deviceidle/BluetoothConstraint$1;

    invoke-direct {v0, p0}, Lcom/android/server/deviceidle/BluetoothConstraint$1;-><init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    iput-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    new-instance v0, Lcom/android/server/deviceidle/-$$Lambda$BluetoothConstraint$ix_cz35TWbQB96MNXR8MW8BQtww;

    invoke-direct {v0, p0}, Lcom/android/server/deviceidle/-$$Lambda$BluetoothConstraint$ix_cz35TWbQB96MNXR8MW8BQtww;-><init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    iput-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p3, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    .line 56
    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/deviceidle/BluetoothConstraint;)Lcom/android/server/DeviceIdleInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 39
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/deviceidle/BluetoothConstraint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 39
    invoke-direct {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->updateAndReportActiveLocked()V

    return-void
.end method

.method private declared-synchronized cancelMonitoringDueToTimeout()V
    .locals 2

    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 91
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    invoke-interface {v1, p0, v0}, Lcom/android/server/DeviceIdleInternal;->onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local p0    # "this":Lcom/android/server/deviceidle/BluetoothConstraint;
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static isBluetoothConnected(Landroid/bluetooth/BluetoothManager;)Z
    .locals 3
    .param p0, "bluetoothManager"    # Landroid/bluetooth/BluetoothManager;

    .line 114
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 115
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 118
    :cond_1
    return v1
.end method

.method private updateAndReportActiveLocked()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/android/server/deviceidle/BluetoothConstraint;->isBluetoothConnected(Landroid/bluetooth/BluetoothManager;)Z

    move-result v0

    .line 102
    .local v0, "connected":Z
    iget-boolean v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    if-eq v0, v1, :cond_0

    .line 103
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 105
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    iget-boolean v2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    invoke-interface {v1, p0, v2}, Lcom/android/server/DeviceIdleInternal;->onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$BluetoothConstraint()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->cancelMonitoringDueToTimeout()V

    return-void
.end method

.method public declared-synchronized startMonitoring()V
    .locals 5

    monitor-enter p0

    .line 62
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Ljava/lang/Runnable;

    .line 75
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x124f80

    .line 74
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 78
    invoke-direct {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->updateAndReportActiveLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 61
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local p0    # "this":Lcom/android/server/deviceidle/BluetoothConstraint;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopMonitoring()V
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lcom/android/server/deviceidle/BluetoothConstraint;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
