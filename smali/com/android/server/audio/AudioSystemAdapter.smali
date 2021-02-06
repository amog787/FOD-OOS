.class public Lcom/android/server/audio/AudioSystemAdapter;
.super Ljava/lang/Object;
.source "AudioSystemAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;
    .locals 1

    .line 37
    new-instance v0, Lcom/android/server/audio/AudioSystemAdapter;

    invoke-direct {v0}, Lcom/android/server/audio/AudioSystemAdapter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDeviceConnectionState(ILjava/lang/String;)I
    .locals 1
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 62
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "deviceName"    # Ljava/lang/String;
    .param p4, "codecFormat"    # I

    .line 75
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isMicrophoneMuted()Z
    .locals 1

    .line 113
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isStreamActive(II)Z
    .locals 1
    .param p1, "stream"    # I
    .param p2, "inPastMs"    # I

    .line 140
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public muteMicrophone(Z)I
    .locals 1
    .param p1, "on"    # Z

    .line 125
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    move-result v0

    return v0
.end method

.method public removePreferredDeviceForStrategy(I)I
    .locals 1
    .param p1, "strategy"    # I

    .line 95
    invoke-static {p1}, Landroid/media/AudioSystem;->removePreferredDeviceForStrategy(I)I

    move-result v0

    return v0
.end method

.method public setCurrentImeUid(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 133
    invoke-static {p1}, Landroid/media/AudioSystem;->setCurrentImeUid(I)I

    move-result v0

    return v0
.end method

.method public setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "deviceAddress"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "codecFormat"    # I

    .line 51
    invoke-static {p1, p2, p3, p4, p5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setParameters(Ljava/lang/String;)I
    .locals 1
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 104
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setPreferredDeviceForStrategy(ILandroid/media/AudioDeviceAttributes;)I
    .locals 1
    .param p1, "strategy"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 86
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setPreferredDeviceForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v0

    return v0
.end method
