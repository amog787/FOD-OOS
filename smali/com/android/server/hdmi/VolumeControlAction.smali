.class final Lcom/android/server/hdmi/VolumeControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "VolumeControlAction.java"


# static fields
.field private static final MAX_VOLUME:I = 0x64

.field private static final STATE_WAIT_FOR_NEXT_VOLUME_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VolumeControlAction"

.field private static final UNKNOWN_AVR_VOLUME:I = -0x1


# instance fields
.field private final mAvrAddress:I

.field private mIsVolumeUp:Z

.field private mLastAvrMute:Z

.field private mLastAvrVolume:I

.field private mLastKeyUpdateTime:J

.field private mSentKeyPressed:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "isVolumeUp"    # Z

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 75
    iput p2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    .line 76
    iput-boolean p3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    .line 81
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->updateLastKeyUpdateTime()V

    .line 82
    return-void
.end method

.method private handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 174
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 177
    .local v0, "originalOpcode":I
    const/16 v2, 0x44

    if-ne v0, v2, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->finish()V

    .line 179
    const/4 v1, 0x1

    return v1

    .line 181
    :cond_0
    return v1
.end method

.method private handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 141
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 142
    .local v0, "params":[B
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    .line 143
    .local v1, "mute":Z
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v2

    .line 144
    .local v2, "volume":I
    iput v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    .line 145
    iput-boolean v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    .line 146
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/VolumeControlAction;->shouldUpdateAudioVolume(Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 147
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "Force volume change[mute:%b, volume=%d]"

    invoke-static {v5, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    .line 149
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    .line 150
    iput-boolean v6, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    .line 152
    :cond_0
    return v4
.end method

.method private resetTimer()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 105
    const/4 v0, 0x1

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/VolumeControlAction;->addTimer(II)V

    .line 106
    return-void
.end method

.method public static scaleToCecVolume(II)I
    .locals 1
    .param p0, "volume"    # I
    .param p1, "scale"    # I

    .line 59
    mul-int/lit8 v0, p0, 0x64

    div-int/2addr v0, p1

    return v0
.end method

.method public static scaleToCustomVolume(II)I
    .locals 1
    .param p0, "cecVolume"    # I
    .param p1, "scale"    # I

    .line 70
    mul-int v0, p0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private sendVolumeKeyPressed()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    .line 98
    iget-boolean v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x41

    goto :goto_0

    .line 99
    :cond_0
    const/16 v2, 0x42

    .line 97
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/VolumeControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    .line 101
    return-void
.end method

.method private sendVolumeKeyReleased()V
    .locals 2

    .line 120
    nop

    .line 121
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    .line 120
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/VolumeControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    .line 123
    return-void
.end method

.method private shouldUpdateAudioVolume(Z)Z
    .locals 6
    .param p1, "mute"    # Z

    .line 157
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 158
    return v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    .line 164
    .local v1, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 165
    .local v3, "currentVolume":I
    iget-boolean v4, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 166
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 167
    .local v2, "maxVolume":I
    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    return v0

    .line 169
    .end local v2    # "maxVolume":I
    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    return v0
.end method

.method private updateLastKeyUpdateTime()V
    .locals 2

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    .line 86
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 4

    .line 186
    invoke-super {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->clear()V

    .line 187
    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyReleased()V

    .line 190
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    iget v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    .line 192
    iput v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    .line 195
    :cond_1
    return-void
.end method

.method handleTimerEvent(I)V
    .locals 4
    .param p1, "state"    # I

    .line 199
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->finish()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    .line 207
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->resetTimer()V

    .line 209
    :goto_0
    return-void
.end method

.method handleVolumeChange(Z)V
    .locals 3
    .param p1, "isVolumeUp"    # Z

    .line 109
    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    if-eq v0, p1, :cond_0

    .line 110
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Volume Key Status Changed[old:%b new:%b]"

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyReleased()V

    .line 112
    iput-boolean p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    .line 113
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    .line 114
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->resetTimer()V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->updateLastKeyUpdateTime()V

    .line 117
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 127
    iget v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    iget v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_1

    .line 137
    return v1

    .line 133
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/VolumeControlAction;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 135
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/VolumeControlAction;->handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 128
    :cond_3
    :goto_0
    return v1
.end method

.method start()Z
    .locals 1

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mState:I

    .line 91
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    .line 92
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->resetTimer()V

    .line 93
    return v0
.end method
