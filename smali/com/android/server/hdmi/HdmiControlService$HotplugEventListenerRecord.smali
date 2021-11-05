.class final Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotplugEventListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 1488
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1489
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 1490
    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 1485
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1494
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1495
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2400(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1496
    monitor-exit v0

    .line 1497
    return-void

    .line 1496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1501
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1502
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 1503
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 1504
    .local v2, "other":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    if-ne v3, v4, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1509
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
