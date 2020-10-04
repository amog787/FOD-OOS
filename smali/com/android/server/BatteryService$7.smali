.class Lcom/android/server/BatteryService$7;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->processValuesLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;

.field final synthetic val$fastChargeStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .line 531
    iput-object p1, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$7;->val$fastChargeStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlugState()I
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)I

    move-result v0

    return v0
.end method

.method public resetParamForOPCS()Z
    .locals 5

    .line 534
    iget-object v0, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$1102(Lcom/android/server/BatteryService;Z)Z

    .line 536
    iget-object v1, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService$7;->val$fastChargeStatus:Z

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->initPlugState(ZIZ)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$1102(Lcom/android/server/BatteryService;Z)Z

    .line 537
    iget-object v1, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 538
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
