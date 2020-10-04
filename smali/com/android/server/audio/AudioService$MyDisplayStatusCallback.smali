.class Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDisplayStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 7522
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 7522
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 4
    .param p1, "status"    # I

    .line 7524
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7525
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$9900(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7526
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$10002(Lcom/android/server/audio/AudioService;Z)Z

    .line 7528
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$10000(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    const/16 v2, 0x400

    if-eqz v1, :cond_1

    .line 7530
    const-string v1, "AS.AudioService"

    const-string v3, "CEC sink: setting HDMI as full vol device"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7532
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    or-int/2addr v3, v2

    iput v3, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    goto :goto_1

    .line 7535
    :cond_1
    const-string v1, "AS.AudioService"

    const-string v3, "TV, no CEC: setting HDMI as regular vol device"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7539
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 7541
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "HdmiPlaybackClient.DisplayStatusCallback"

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$10100(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    .line 7544
    :cond_2
    monitor-exit v0

    .line 7545
    return-void

    .line 7544
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
