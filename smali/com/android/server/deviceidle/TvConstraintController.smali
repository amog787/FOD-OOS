.class public Lcom/android/server/deviceidle/TvConstraintController;
.super Ljava/lang/Object;
.source "TvConstraintController.java"

# interfaces
.implements Lcom/android/server/deviceidle/ConstraintController;


# instance fields
.field private final mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/server/deviceidle/TvConstraintController;->mHandler:Landroid/os/Handler;

    .line 44
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 47
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    new-instance v1, Lcom/android/server/deviceidle/BluetoothConstraint;

    iget-object v2, p0, Lcom/android/server/deviceidle/TvConstraintController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/deviceidle/TvConstraintController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/deviceidle/BluetoothConstraint;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)V

    goto :goto_0

    .line 49
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 50
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    const/4 v2, 0x1

    const-string v3, "bluetooth"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/server/DeviceIdleInternal;->registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    .line 58
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    invoke-interface {v1, v0}, Lcom/android/server/DeviceIdleInternal;->unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    .line 65
    :cond_0
    return-void
.end method
