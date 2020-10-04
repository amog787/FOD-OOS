.class final Lcom/android/server/gpu/GpuService$DeviceConfigListener;
.super Ljava/lang/Object;
.source "GpuService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gpu/GpuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceConfigListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .locals 1

    .line 143
    iput-object p1, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    nop

    .line 146
    invoke-static {p1}, Lcom/android/server/gpu/GpuService;->access$400(Lcom/android/server/gpu/GpuService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 145
    const-string v0, "game_driver"

    invoke-static {v0, p1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 150
    iget-object v0, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v0}, Lcom/android/server/gpu/GpuService;->access$500(Lcom/android/server/gpu/GpuService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    const-string v2, "game_driver_blacklists"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    const-string v2, "game_driver_blacklists"

    const-string v3, ""

    .line 153
    invoke-virtual {p1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v1, v2}, Lcom/android/server/gpu/GpuService;->access$600(Lcom/android/server/gpu/GpuService;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v1}, Lcom/android/server/gpu/GpuService;->access$300(Lcom/android/server/gpu/GpuService;)V

    .line 156
    :cond_0
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
