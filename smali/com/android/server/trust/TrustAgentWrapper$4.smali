.class Lcom/android/server/trust/TrustAgentWrapper$4;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .line 368
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 371
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustAgent started : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p2}, Landroid/service/trust/ITrustAgentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1602(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)Landroid/service/trust/ITrustAgentService;

    .line 374
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/trust/TrustArchive;->logAgentConnected(ILandroid/content/ComponentName;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1800(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1900(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentServiceCallback;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    .line 378
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$2000(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$2002(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    .line 388
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 392
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustAgent disconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1602(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)Landroid/service/trust/ITrustAgentService;

    .line 394
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$1502(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 395
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1302(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 396
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/trust/TrustArchive;->logAgentDied(ILandroid/content/ComponentName;)V

    .line 397
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 398
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$2100(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$2200(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 402
    :cond_1
    return-void
.end method
