.class final Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;
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
    name = "HdmiControlStatusChangeListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 1457
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1458
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 1459
    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 1454
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1463
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1464
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1465
    monitor-exit v0

    .line 1466
    return-void

    .line 1465
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

    .line 1470
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1471
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 1472
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 1474
    .local v2, "other":Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    if-ne v3, v4, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
