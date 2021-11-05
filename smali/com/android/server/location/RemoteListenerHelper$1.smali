.class Lcom/android/server/location/RemoteListenerHelper$1;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field registrationState:I

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/RemoteListenerHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/location/RemoteListenerHelper;

    .line 213
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$1;, "Lcom/android/server/location/RemoteListenerHelper$1;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$RemoteListenerHelper$1()V
    .locals 4

    .line 224
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$1;, "Lcom/android/server/location/RemoteListenerHelper$1;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v0, v0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget v3, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    invoke-virtual {v2, v3}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/location/RemoteListenerHelper;->access$300(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 2

    .line 217
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$1;, "Lcom/android/server/location/RemoteListenerHelper$1;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$200(Lcom/android/server/location/RemoteListenerHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-virtual {v0}, Lcom/android/server/location/RemoteListenerHelper;->registerWithService()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    .line 219
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/location/RemoteListenerHelper;->access$202(Lcom/android/server/location/RemoteListenerHelper;Z)Z

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$200(Lcom/android/server/location/RemoteListenerHelper;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v0, v0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$1$zm4ubOjPyd7USwEJsdJwj1QLhgw;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$1$zm4ubOjPyd7USwEJsdJwj1QLhgw;-><init>(Lcom/android/server/location/RemoteListenerHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_2
    return-void
.end method
