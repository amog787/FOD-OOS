.class final Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 629
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 632
    const-wide/16 v0, 0x15ec

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 633
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thermal HAL service died cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    .line 637
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->resendCurrentTemperatures()V

    .line 638
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 640
    :cond_0
    :goto_0
    return-void
.end method
