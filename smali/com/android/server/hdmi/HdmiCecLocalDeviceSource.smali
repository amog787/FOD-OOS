.class abstract Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDeviceSource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceSource"


# instance fields
.field protected mIsActiveSource:Z

.field protected mIsSwitchDevice:Z

.field protected mLocalActivePort:I

.field protected mRoutingControlFeatureEnabled:Z

.field private mRoutingPort:I


# direct methods
.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "deviceType"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsActiveSource:Z

    .line 47
    const-string/jumbo v1, "ro.hdmi.property_is_device_hdmi_cec_switch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsSwitchDevice:Z

    .line 55
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingPort:I

    .line 65
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLocalActivePort:I

    .line 75
    return-void
.end method


# virtual methods
.method protected getLocalActivePort()I
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLocalActivePort:I

    monitor-exit v0

    return v1

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getRoutingPort()I
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingPort:I

    monitor-exit v0

    return v1

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 122
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 123
    .local v0, "logicalAddress":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v1

    .line 124
    .local v1, "physicalAddress":I
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    .line 125
    .local v2, "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setIsActiveSource(Z)V

    .line 129
    invoke-virtual {p0, v0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->updateDevicePowerStatus(II)V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->switchInputOnReceivingNewActivePath(I)V

    .line 133
    :cond_2
    return v4
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 140
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 164
    return v1

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    .line 168
    .local v0, "newPath":I
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsSwitchDevice:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 169
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 170
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 173
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 174
    return v1
.end method

.method protected handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 0
    .param p1, "physicalAddress"    # I
    .param p2, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 207
    return-void
.end method

.method protected handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 183
    return v1

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 187
    .local v0, "physicalAddress":I
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsSwitchDevice:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 188
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 189
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 192
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 193
    return v1
.end method

.method protected handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 148
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 151
    .local v0, "physicalAddress":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 154
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->switchInputOnReceivingNewActivePath(I)V

    .line 155
    const/4 v1, 0x1

    return v1
.end method

.method isRoutingControlFeatureEnabled()Z
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingControlFeatureEnabled:Z

    monitor-exit v0

    return v1

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isSwitchingToTheSameInput(I)Z
    .locals 1
    .param p1, "activePort"    # I

    .line 306
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected maySendActiveSource(I)V
    .locals 1
    .param p1, "dest"    # I

    .line 241
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsActiveSource:Z

    if-nez v0, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/ActiveSourceAction;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/ActiveSourceAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 245
    return-void
.end method

.method onHotplug(IZ)V
    .locals 2
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 81
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    .line 85
    :cond_0
    if-eqz p2, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 88
    :cond_1
    return-void
.end method

.method oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 103
    const-class v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/OneTouchPlayAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "HdmiCecLocalDeviceSource"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 105
    const-string/jumbo v1, "oneTouchPlay already in progress"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-static {p0, v3, p1}, Lcom/android/server/hdmi/OneTouchPlayAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;

    move-result-object v1

    .line 111
    .local v1, "action":Lcom/android/server/hdmi/OneTouchPlayAction;
    if-nez v1, :cond_1

    .line 112
    const-string v3, "Cannot initiate oneTouchPlay"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, 0x5

    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 114
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 117
    return-void
.end method

.method protected sendStandby(I)V
    .locals 3
    .param p1, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "targetAddress":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mAddress:I

    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 98
    return-void
.end method

.method protected setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "physicalAddress"    # I

    .line 221
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 222
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    .line 221
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(III)V

    .line 223
    return-void
.end method

.method setIsActiveSource(Z)V
    .locals 0
    .param p1, "on"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->assertRunOnServiceThread()V

    .line 228
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsActiveSource:Z

    .line 229
    return-void
.end method

.method protected setLocalActivePort(I)V
    .locals 2
    .param p1, "activePort"    # I

    .line 292
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLocalActivePort:I

    .line 294
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setRoutingPort(I)V
    .locals 2
    .param p1, "portId"    # I

    .line 255
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingPort:I

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected switchInputOnReceivingNewActivePath(I)V
    .locals 0
    .param p1, "physicalAddress"    # I

    .line 200
    return-void
.end method

.method protected updateDevicePowerStatus(II)V
    .locals 0
    .param p1, "logicalAddress"    # I
    .param p2, "newPowerStatus"    # I

    .line 214
    return-void
.end method

.method protected wakeUpIfActiveSource()V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsActiveSource:Z

    if-nez v0, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 237
    return-void
.end method
