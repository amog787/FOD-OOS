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

.field private final mLocalService:Lcom/android/server/DeviceIdleController$LocalService;

.field private volatile mMonitoring:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mTimeoutCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/deviceidle/BluetoothConstraint;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/DeviceIdleController$LocalService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "localService"    # Lcom/android/server/DeviceIdleController$LocalService;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 122
    new-instance v0, Lcom/android/server/deviceidle/BluetoothConstraint$1;

    invoke-direct {v0, p0}, Lcom/android/server/deviceidle/BluetoothConstraint$1;-><init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    iput-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v0, Lcom/android/server/deviceidle/-$$Lambda$BluetoothConstraint$ix_cz35TWbQB96MNXR8MW8BQtww;

    invoke-direct {v0, p0}, Lcom/android/server/deviceidle/-$$Lambda$BluetoothConstraint$ix_cz35TWbQB96MNXR8MW8BQtww;-><init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    iput-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p3, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleController$LocalService;

    .line 54
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    const-class v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/deviceidle/BluetoothConstraint;)Lcom/android/server/DeviceIdleController$LocalService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 37
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleController$LocalService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/deviceidle/BluetoothConstraint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 37
    invoke-direct {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->updateAndReportActiveLocked()V

    return-void
.end method

.method private declared-synchronized cancelMonitoringDueToTimeout()V
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 89
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/DeviceIdleController$LocalService;->onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local p0    # "this":Lcom/android/server/deviceidle/BluetoothConstraint;
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static isBluetoothConnected(Landroid/bluetooth/BluetoothManager;)Z
    .locals 3
    .param p0, "bluetoothManager"    # Landroid/bluetooth/BluetoothManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 113
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 116
    :cond_1
    return v1
.end method

.method private updateAndReportActiveLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/android/server/deviceidle/BluetoothConstraint;->isBluetoothConnected(Landroid/bluetooth/BluetoothManager;)Z

    move-result v0

    .line 100
    .local v0, "connected":Z
    iget-boolean v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    if-eq v0, v1, :cond_0

    .line 101
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 103
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleController$LocalService;

    iget-boolean v2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    invoke-virtual {v1, p0, v2}, Lcom/android/server/DeviceIdleController$LocalService;->onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$BluetoothConstraint()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->cancelMonitoringDueToTimeout()V

    return-void
.end method

.method public declared-synchronized startMonitoring()V
    .locals 5

    monitor-enter p0

    .line 60
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Ljava/lang/Runnable;

    .line 73
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x124f80

    .line 72
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 76
    invoke-direct {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->updateAndReportActiveLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 59
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

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 80
    .end local p0    # "this":Lcom/android/server/deviceidle/BluetoothConstraint;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
