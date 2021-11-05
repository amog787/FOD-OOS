.class final Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerOpPlayAudioEvent"
.end annotation


# instance fields
.field final mHasOp:Z

.field final mPlayerIId:I

.field final mUid:I


# direct methods
.method constructor <init>(IZI)V
    .locals 0
    .param p1, "piid"    # I
    .param p2, "hasOp"    # Z
    .param p3, "uid"    # I

    .line 902
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 903
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mPlayerIId:I

    .line 904
    iput-boolean p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mHasOp:Z

    .line 905
    iput p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mUid:I

    .line 906
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "player piid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mPlayerIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 911
    const-string v1, " has OP_PLAY_AUDIO:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mHasOp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 912
    const-string v1, " in uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    return-object v0
.end method
