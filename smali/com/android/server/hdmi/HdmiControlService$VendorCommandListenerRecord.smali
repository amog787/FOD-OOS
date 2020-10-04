.class Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VendorCommandListenerRecord"
.end annotation


# instance fields
.field private final mDeviceType:I

.field private final mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p3, "deviceType"    # I

    .line 1382
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    .line 1384
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mDeviceType:I

    .line 1385
    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .line 1378
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mDeviceType:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .line 1378
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1389
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1390
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2600(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1391
    monitor-exit v0

    .line 1392
    return-void

    .line 1391
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
