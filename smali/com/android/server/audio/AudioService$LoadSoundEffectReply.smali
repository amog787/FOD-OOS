.class final Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadSoundEffectReply"
.end annotation


# static fields
.field private static final SOUND_EFFECTS_ERROR:I = -0x1

.field private static final SOUND_EFFECTS_LOADED:I = 0x0

.field private static final SOUND_EFFECTS_LOADING:I = 0x1

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388


# instance fields
.field private mStatus:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4732
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService$1;

    .line 4725
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run(Z)V
    .locals 1
    .param p1, "success"    # Z

    monitor-enter p0

    .line 4736
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    :try_start_0
    iput v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 4737
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4738
    monitor-exit p0

    return-void

    .line 4735
    .end local p0    # "this":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    .end local p1    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitForLoaded(I)Z
    .locals 3
    .param p1, "attempts"    # I

    monitor-enter p0

    .line 4741
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p1, -0x1

    .end local p1    # "attempts":I
    .local v0, "attempts":I
    if-lez p1, :cond_0

    .line 4743
    const-wide/16 v1, 0x1388

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4746
    goto :goto_1

    .line 4744
    .end local p0    # "this":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :catch_0
    move-exception p1

    .line 4745
    .local p1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AS.AudioService"

    const-string v2, "Interrupted while waiting sound pool loaded."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    nop

    .line 4741
    .end local p1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 4748
    .end local v0    # "attempts":I
    .local p1, "attempts":I
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    monitor-exit p0

    return v1

    .line 4740
    .end local p1    # "attempts":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
