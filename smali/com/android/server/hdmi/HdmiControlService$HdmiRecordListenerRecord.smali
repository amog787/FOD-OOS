.class Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiRecordListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiRecordListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    .line 1398
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1399
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;

    .line 1400
    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .line 1395
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1404
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1405
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2700(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$2702(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .line 1408
    :cond_0
    monitor-exit v0

    .line 1409
    return-void

    .line 1408
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
