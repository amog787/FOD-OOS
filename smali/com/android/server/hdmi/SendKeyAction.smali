.class final Lcom/android/server/hdmi/SendKeyAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SendKeyAction.java"


# static fields
.field private static final AWAIT_LONGPRESS_MS:I = 0x190

.field private static final AWAIT_RELEASE_KEY_MS:I = 0x3e8

.field private static final STATE_CHECKING_LONGPRESS:I = 0x1

.field private static final STATE_PROCESSING_KEYCODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SendKeyAction"


# instance fields
.field private mLastKeycode:I

.field private mLastSendKeyTime:J

.field private final mTargetAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "keycode"    # I

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 79
    iput p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    .line 80
    iput p3, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    .line 81
    return-void
.end method

.method private getCurrentTime()J
    .locals 2

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private sendKeyDown(I)V
    .locals 3
    .param p1, "keycode"    # I

    .line 147
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object v0

    .line 148
    .local v0, "cecKeycodeAndParams":[B
    if-nez v0, :cond_0

    .line 149
    return-void

    .line 154
    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/SendKeyAction$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/SendKeyAction$1;-><init>(Lcom/android/server/hdmi/SendKeyAction;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 171
    :goto_0
    return-void
.end method

.method private sendKeyUp()V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 176
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .locals 3
    .param p1, "state"    # I

    .line 186
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    .line 201
    const-string v0, "SendKeyAction"

    const-string v1, "Not in a valid state"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 199
    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 190
    iput v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    .line 191
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 192
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 193
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    .line 194
    nop

    .line 204
    :goto_0
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method processKeyEvent(IZ)V
    .locals 4
    .param p1, "keycode"    # I
    .param p2, "isPressed"    # Z

    .line 109
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 110
    const-string v0, "SendKeyAction"

    const-string v1, "Not in a valid state"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 113
    :cond_0
    if-eqz p2, :cond_3

    .line 116
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-eq p1, v0, :cond_1

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 118
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 119
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 122
    return-void

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 134
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    .line 135
    iput p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    goto :goto_0

    .line 139
    :cond_3
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-ne p1, v0, :cond_4

    .line 140
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 144
    :cond_4
    :goto_0
    return-void
.end method

.method public start()Z
    .locals 3

    .line 85
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 86
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 88
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 91
    return v1

    .line 93
    :cond_0
    iput v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    .line 94
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v2, 0x190

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    .line 95
    return v1
.end method
