.class Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHdmiControlStatusChangeListenerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 8778
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 8778
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onStatusChange(ZZ)V
    .locals 3
    .param p1, "isCecEnabled"    # Z
    .param p2, "isCecAvailable"    # Z

    .line 8781
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$9900(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 8783
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    if-eqz p1, :cond_1

    move v2, p2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$10000(Lcom/android/server/audio/AudioService;Z)V

    .line 8784
    monitor-exit v0

    .line 8785
    return-void

    .line 8784
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
