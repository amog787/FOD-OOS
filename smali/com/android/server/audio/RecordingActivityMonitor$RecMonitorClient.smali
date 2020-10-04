.class final Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RecordingActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecMonitorClient"
.end annotation


# static fields
.field static sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;


# instance fields
.field final mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

.field final mIsPrivileged:Z


# direct methods
.method constructor <init>(Landroid/media/IRecordingConfigDispatcher;Z)V
    .locals 0
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;
    .param p2, "isPrivileged"    # Z

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    .line 480
    iput-boolean p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    .line 481
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 484
    const-string v0, "AudioService.RecordingActivityMonitor"

    const-string v1, "client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 486
    return-void
.end method

.method init()Z
    .locals 4

    .line 490
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v1}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    const/4 v0, 0x1

    return v0

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioService.RecordingActivityMonitor"

    const-string v3, "Could not link to client death"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    return v0
.end method

.method release()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v0}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 500
    return-void
.end method
