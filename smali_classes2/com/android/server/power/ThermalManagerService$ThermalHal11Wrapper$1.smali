.class Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;
.super Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;


# direct methods
.method constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    .line 795
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(ZLandroid/hardware/thermal/V1_0/Temperature;)V
    .locals 5
    .param p1, "isThrottling"    # Z
    .param p2, "temperature"    # Landroid/hardware/thermal/V1_0/Temperature;

    .line 799
    new-instance v0, Landroid/os/Temperature;

    iget v1, p2, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v2, p2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object v3, p2, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    .line 801
    if-eqz p1, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    .line 802
    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 803
    .local v0, "thermalSvcTemp":Landroid/os/Temperature;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 805
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    iget-object v3, v3, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    invoke-interface {v3, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 808
    nop

    .line 809
    return-void

    .line 807
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 808
    throw v3
.end method
