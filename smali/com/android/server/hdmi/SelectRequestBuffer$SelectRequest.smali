.class public abstract Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;
.super Ljava/lang/Object;
.source "SelectRequestBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/SelectRequestBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SelectRequest"
.end annotation


# instance fields
.field protected final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field protected final mId:I

.field protected final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "id"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 51
    iput p2, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mId:I

    .line 52
    iput-object p3, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 53
    return-void
.end method

.method private invokeCallback(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking callback failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SelectRequestBuffer"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    return-object v0
.end method

.method protected isLocalDeviceReady()Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "SelectRequestBuffer"

    const-string v1, "Local tv device not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->invokeCallback(I)V

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract process()V
.end method

.method protected tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    return-object v0
.end method
