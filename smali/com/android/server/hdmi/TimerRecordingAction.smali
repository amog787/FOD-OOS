.class public Lcom/android/server/hdmi/TimerRecordingAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "TimerRecordingAction.java"


# static fields
.field private static final STATE_WAITING_FOR_TIMER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimerRecordingAction"

.field private static final TIMER_STATUS_TIMEOUT_MS:I = 0x1d4c0


# instance fields
.field private final mRecordSource:[B

.field private final mRecorderAddress:I

.field private final mSourceType:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "recorderAddress"    # I
    .param p3, "sourceType"    # I
    .param p4, "recordSource"    # [B

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 49
    iput p2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    .line 50
    iput p3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    .line 51
    iput-object p4, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/TimerRecordingAction;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/TimerRecordingAction;

    .line 33
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    return v0
.end method

.method private static bytesToInt([B)I
    .locals 4
    .param p0, "data"    # [B

    .line 148
    array-length v0, p0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 153
    rsub-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 154
    .local v2, "shift":I
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    or-int/2addr v0, v3

    .line 152
    .end local v2    # "shift":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 149
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid data size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 128
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 129
    .local v0, "params":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    .line 130
    .local v2, "messageType":I
    const/16 v3, 0x34

    if-eq v2, v3, :cond_0

    const/16 v3, 0x97

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa2

    if-eq v2, v3, :cond_0

    .line 136
    return v1

    .line 134
    :cond_0
    nop

    .line 138
    const/4 v1, 0x1

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    .line 139
    .local v3, "reason":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Feature Abort] for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TimerRecordingAction"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    iget v5, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    invoke-virtual {v4, v5, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 143
    return v1
.end method

.method private handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 113
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 115
    .local v0, "timerStatusData":[B
    array-length v1, v0

    const-string v2, "TimerRecordingAction"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    array-length v1, v0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid [Timer Status Data]:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v4, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    invoke-static {v0}, Lcom/android/server/hdmi/TimerRecordingAction;->bytesToInt([B)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received [Timer Status Data]:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 124
    return v3
.end method

.method private sendTimerMessage()V
    .locals 4

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 79
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 74
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 70
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 66
    nop

    .line 81
    :goto_0
    new-instance v1, Lcom/android/server/hdmi/TimerRecordingAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/TimerRecordingAction$1;-><init>(Lcom/android/server/hdmi/TimerRecordingAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/TimerRecordingAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 94
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 3
    .param p1, "state"    # I

    .line 161
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    if-eq v0, p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout in invalid state:[Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimerRecordingAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 169
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 98
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 99
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x35

    if-eq v0, v2, :cond_1

    .line 109
    return v1

    .line 105
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/TimerRecordingAction;->handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 107
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/TimerRecordingAction;->handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 100
    :cond_3
    :goto_0
    return v1
.end method

.method start()Z
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->sendTimerMessage()V

    .line 57
    const/4 v0, 0x1

    return v0
.end method
