.class Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;
.super Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;


# direct methods
.method constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    .line 929
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(Landroid/hardware/thermal/V2_0/Temperature;)V
    .locals 5
    .param p1, "temperature"    # Landroid/hardware/thermal/V2_0/Temperature;

    .line 933
    new-instance v0, Landroid/os/Temperature;

    iget v1, p1, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    iget v2, p1, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    iget-object v3, p1, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    iget v4, p1, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 936
    .local v0, "thermalSvcTemp":Landroid/os/Temperature;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 938
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    iget-object v3, v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    invoke-interface {v3, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    nop

    .line 942
    return-void

    .line 940
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    throw v3
.end method
