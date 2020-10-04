.class final Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;
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
    name = "RecorderDeathHandler"
.end annotation


# static fields
.field static sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;


# instance fields
.field private final mRecorderToken:Landroid/os/IBinder;

.field final mRiid:I


# direct methods
.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "riid"    # I
    .param p2, "recorderToken"    # Landroid/os/IBinder;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRiid:I

    .line 513
    iput-object p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRecorderToken:Landroid/os/IBinder;

    .line 514
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 517
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRiid:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->releaseRecorder(I)V

    .line 518
    return-void
.end method

.method init()Z
    .locals 4

    .line 522
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRecorderToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    const/4 v0, 0x1

    return v0

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioService.RecordingActivityMonitor"

    const-string v3, "Could not link to recorder death"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    return v0
.end method

.method release()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRecorderToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 532
    return-void
.end method
