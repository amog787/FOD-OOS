.class Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 57
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRegistration("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BcRadio2Srv"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$000(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$100(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 65
    .local v1, "moduleId":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 66
    .local v2, "newService":Z
    if-nez v1, :cond_0

    .line 67
    const/4 v2, 0x1

    .line 68
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, v3

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->tryLoadingModule(ILjava/lang/String;)Lcom/android/server/broadcastradio/hal2/RadioModule;

    move-result-object v3

    .line 72
    .local v3, "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    if-nez v3, :cond_1

    .line 73
    monitor-exit v0

    return-void

    .line 75
    :cond_1
    const-string v4, "BcRadio2Srv"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loaded broadcast radio module "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (HAL 2.0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v4}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$300(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 78
    .local v4, "prevModule":Lcom/android/server/broadcastradio/hal2/RadioModule;
    if-eqz v4, :cond_2

    .line 79
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/broadcastradio/hal2/RadioModule;->closeSessions(Ljava/lang/Integer;)V

    .line 82
    :cond_2
    if-eqz v2, :cond_3

    .line 83
    iget-object v5, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v5}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$100(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v5, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v5}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$208(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/broadcastradio/hal2/RadioModule;->getService()Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v6}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$400(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Landroid/os/IHwBinder$DeathRecipient;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-interface {v5, v6, v7, v8}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    goto :goto_0

    .line 89
    :catch_0
    move-exception v5

    .line 91
    .local v5, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v6}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$300(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v2    # "newService":Z
    .end local v3    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    .end local v4    # "prevModule":Lcom/android/server/broadcastradio/hal2/RadioModule;
    .end local v5    # "ex":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 94
    return-void

    .line 93
    .end local v1    # "moduleId":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
