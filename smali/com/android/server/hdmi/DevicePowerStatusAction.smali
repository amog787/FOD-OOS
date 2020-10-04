.class final Lcom/android/server/hdmi/DevicePowerStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DevicePowerStatusAction.java"


# static fields
.field private static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DevicePowerStatusAction"


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/IHdmiControlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetAddress:I


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mCallbacks:Ljava/util/List;

    .line 57
    iput p2, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    .line 58
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/DevicePowerStatusAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 59
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;
    .locals 2
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p1, "targetAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 47
    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/DevicePowerStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-object v0

    .line 48
    :cond_1
    :goto_0
    const-string v0, "DevicePowerStatusAction"

    const-string v1, "Wrong arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method private invokeCallback(I)V
    .locals 3
    .param p1, "result"    # I

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 108
    .local v1, "callback":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "callback":Landroid/hardware/hdmi/IHdmiControlCallback;
    goto :goto_0

    .line 112
    :cond_0
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DevicePowerStatusAction"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private queryDevicePowerStatus()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 72
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 102
    iget-object v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method handleTimerEvent(I)V
    .locals 1
    .param p1, "state"    # I

    .line 91
    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    if-eq v0, p1, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 96
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->invokeCallback(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finish()V

    .line 99
    :cond_1
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 76
    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    .line 77
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    .line 82
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->invokeCallback(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finish()V

    .line 84
    return v1

    .line 86
    .end local v0    # "status":I
    :cond_1
    return v2

    .line 78
    :cond_2
    :goto_0
    return v2
.end method

.method start()Z
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->queryDevicePowerStatus()V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    .line 65
    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/DevicePowerStatusAction;->addTimer(II)V

    .line 66
    return v0
.end method
