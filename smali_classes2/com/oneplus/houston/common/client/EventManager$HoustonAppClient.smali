.class Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;
.super Lcom/oneplus/houston/common/client/HoustonServiceNative;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/common/client/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoustonAppClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/common/client/EventManager;


# direct methods
.method private constructor <init>(Lcom/oneplus/houston/common/client/EventManager;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-direct {p0}, Lcom/oneplus/houston/common/client/HoustonServiceNative;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/EventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/houston/common/client/EventManager;
    .param p2, "x1"    # Lcom/oneplus/houston/common/client/EventManager$1;

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;-><init>(Lcom/oneplus/houston/common/client/EventManager;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oneplus/houston/common/client/Event;)V
    .locals 5
    .param p1, "event"    # Lcom/oneplus/houston/common/client/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    monitor-enter p0

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/common/client/AbsEventCallback;

    .line 81
    .local v1, "callback":Lcom/oneplus/houston/common/client/AbsEventCallback;
    if-eqz v1, :cond_1

    .line 83
    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v2, v1, p1}, Lcom/oneplus/houston/common/client/EventManager;->access$100(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/AbsEventCallback;Lcom/oneplus/houston/common/client/Event;)Z

    move-result v2

    .line 84
    .local v2, "isTrans":Z
    if-eqz v2, :cond_0

    .line 85
    iget-object v3, v1, Lcom/oneplus/houston/common/client/AbsEventCallback;->mObserver:Lcom/oneplus/houston/common/client/observer/EventCallback;

    invoke-virtual {v3, p1}, Lcom/oneplus/houston/common/client/observer/EventCallback;->onResult(Lcom/oneplus/houston/common/client/Event;)V

    goto :goto_1

    .line 87
    :cond_0
    const-string v3, "EventManager"

    const-string v4, "Have not reached the threshold"

    invoke-static {v3, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v1    # "callback":Lcom/oneplus/houston/common/client/AbsEventCallback;
    .end local v2    # "isTrans":Z
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendCommand(I)V
    .locals 0
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public sendCommand(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public sendCommand(Lcom/oneplus/houston/common/client/Event;)V
    .locals 0
    .param p1, "data"    # Lcom/oneplus/houston/common/client/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method
