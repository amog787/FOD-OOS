.class final Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DuckEvent"
.end annotation


# instance fields
.field private final mClientPid:I

.field private final mClientUid:I

.field private final mPlayerIId:I

.field private final mSkipRamp:Z


# direct methods
.method constructor <init>(Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 1
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "skipRamp"    # Z

    .line 946
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 947
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mPlayerIId:I

    .line 948
    iput-boolean p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mSkipRamp:Z

    .line 949
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mClientUid:I

    .line 950
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mClientPid:I

    .line 951
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ducking player piid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mPlayerIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 956
    const-string v1, " uid/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mClientUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mClientPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 957
    const-string v1, " skip ramp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mSkipRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    return-object v0
.end method
