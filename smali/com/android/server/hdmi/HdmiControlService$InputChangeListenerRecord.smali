.class final Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
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
    name = "InputChangeListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .line 2559
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2560
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .line 2561
    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    .line 2556
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 2565
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2566
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$5900(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2567
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$5902(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    .line 2569
    :cond_0
    monitor-exit v0

    .line 2570
    return-void

    .line 2569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
