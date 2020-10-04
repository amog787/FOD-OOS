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


# instance fields
.field final mActualMode:I

.field final mOwnerPid:I

.field final mPackage:Ljava/lang/String;

.field final mRequestedMode:I

.field final mRequesterPid:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "requesterPid"    # I
    .param p3, "requestedMode"    # I
    .param p4, "ownerPid"    # I
    .param p5, "actualMode"    # I

    .line 35
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    .line 38
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    .line 39
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    .line 40
    iput p5, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    .line 41
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    invoke-static {v1}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ") from package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, " selected mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    invoke-static {v1}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " by pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    return-object v0
.end method
