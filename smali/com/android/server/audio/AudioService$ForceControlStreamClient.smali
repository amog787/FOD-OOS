.class Lcom/android/server/audio/AudioService$ForceControlStreamClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceControlStreamClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .locals 2
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 3356
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3357
    if-eqz p2, :cond_0

    .line 3359
    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3364
    goto :goto_0

    .line 3360
    :catch_0
    move-exception p1

    .line 3362
    .local p1, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceControlStreamClient() could not link to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " binder death"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    const/4 p2, 0x0

    .line 3366
    .end local p1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    .line 3367
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 3370
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$1500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3371
    :try_start_0
    const-string v1, "AS.AudioService"

    const-string v2, "SCO client died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$1600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 3373
    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "unregistered control stream client died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3375
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$1602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 3376
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$1702(Lcom/android/server/audio/AudioService;I)I

    .line 3377
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$1802(Lcom/android/server/audio/AudioService;Z)Z

    .line 3379
    :goto_0
    monitor-exit v0

    .line 3380
    return-void

    .line 3379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 3390
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 3383
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 3384
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    .line 3387
    :cond_0
    return-void
.end method
