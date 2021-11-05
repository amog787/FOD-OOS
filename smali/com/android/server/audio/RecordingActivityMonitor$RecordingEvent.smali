.class final Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "RecordingActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RecordingActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecordingEvent"
.end annotation


# instance fields
.field private final mClientUid:I

.field private final mPackName:Ljava/lang/String;

.field private final mRIId:I

.field private final mRecEvent:I

.field private final mSession:I

.field private final mSource:I


# direct methods
.method constructor <init>(IILandroid/media/AudioRecordingConfiguration;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "riid"    # I
    .param p3, "config"    # Landroid/media/AudioRecordingConfiguration;

    .line 609
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 610
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRecEvent:I

    .line 611
    iput p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRIId:I

    .line 612
    if-eqz p3, :cond_0

    .line 613
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    .line 614
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    .line 615
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSource()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    .line 616
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    goto :goto_0

    .line 618
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    .line 619
    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    .line 620
    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    .line 623
    :goto_0
    return-void
.end method

.method private static recordEventToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "recEvent"    # I

    .line 626
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 634
    :cond_0
    const-string/jumbo v0, "release"

    return-object v0

    .line 630
    :cond_1
    const-string/jumbo v0, "update"

    return-object v0

    .line 632
    :cond_2
    const-string/jumbo v0, "stop"

    return-object v0

    .line 628
    :cond_3
    const-string/jumbo v0, "start"

    return-object v0
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 3

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rec "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRecEvent:I

    invoke-static {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->recordEventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v1, " riid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 645
    const-string v1, " session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    invoke-static {v1}, Landroid/media/MediaRecorder;->toLogFriendlyAudioSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    return-object v0
.end method
