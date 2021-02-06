.class final Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioServiceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioServiceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhoneStateEvent"
.end annotation


# static fields
.field static final MODE_IN_COMMUNICATION_TIMEOUT:I = 0x1

.field static final MODE_SET:I = 0x0

.field private static final mMetricsId:Ljava/lang/String; = "audio.mode"


# instance fields
.field final mActualMode:I

.field final mOp:I

.field final mOwnerPid:I

.field final mPackage:Ljava/lang/String;

.field final mRequestedMode:I

.field final mRequesterPid:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "ownerPid"    # I

    .line 53
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    .line 55
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    .line 58
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    .line 59
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    .line 60
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->logMetricEvent()V

    .line 61
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "requesterPid"    # I
    .param p3, "requestedMode"    # I
    .param p4, "ownerPid"    # I
    .param p5, "actualMode"    # I

    .line 42
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    .line 44
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    .line 46
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    .line 47
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    .line 48
    iput p5, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    .line 49
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->logMetricEvent()V

    .line 50
    return-void
.end method

.method private logMetricEvent()V
    .locals 3

    .line 88
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    const-string v1, "audio.mode"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 104
    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 100
    const-string v2, "inCommunicationTimeout"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 103
    return-void

    .line 90
    :cond_1
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 91
    const-string/jumbo v2, "set"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->REQUESTED_MODE:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    .line 93
    invoke-static {v2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    .line 94
    invoke-static {v2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 97
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 3

    .line 65
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    const-string v1, " pid="

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FIXME invalid op:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mode IN COMMUNICATION timeout"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v2, " for package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setMode("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    .line 68
    invoke-static {v2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v2, ") from package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, " selected mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    .line 72
    invoke-static {v1}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " by pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method
