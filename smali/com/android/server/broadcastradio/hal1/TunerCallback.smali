.class Lcom/android/server/broadcastradio/hal1/TunerCallback;
.super Ljava/lang/Object;
.source "TunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadioService.TunerCallback"


# instance fields
.field private final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field private mInitialConfigurationDone:Z

.field private final mNativeContext:J

.field private final mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/radio/ProgramList$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal1/Tuner;Landroid/hardware/radio/ITunerCallback;I)V
    .locals 2
    .param p1, "tuner"    # Lcom/android/server/broadcastradio/hal1/Tuner;
    .param p2, "clientCallback"    # Landroid/hardware/radio/ITunerCallback;
    .param p3, "halRev"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 54
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    .line 55
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 56
    invoke-direct {p0, p1, p3}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    .line 57
    return-void
.end method

.method private dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V
    .locals 3
    .param p1, "func"    # Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;

    .line 79
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadioService.TunerCallback"

    const-string v2, "client died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handleHwFailure()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->onError(I)V

    .line 88
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    .line 89
    return-void
.end method

.method private native nativeDetach(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J
.end method

.method private sendProgramListUpdate()V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramList$Filter;

    .line 159
    .local v0, "filter":Landroid/hardware/radio/ProgramList$Filter;
    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getVendorFilter()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->getProgramList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v1, "modified":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    nop

    .line 168
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 169
    .local v2, "modifiedSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    new-instance v3, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v5, v5, v2, v4}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    .line 170
    .local v3, "chunk":Landroid/hardware/radio/ProgramList$Chunk;
    new-instance v4, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$C_-9BcvTpHXxQ-jC-hu9LBHT0XU;

    invoke-direct {v4, p0, v3}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$C_-9BcvTpHXxQ-jC-hu9LBHT0XU;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-direct {p0, v4}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 171
    return-void

    .line 164
    .end local v1    # "modified":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    .end local v2    # "modifiedSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    .end local v3    # "chunk":Landroid/hardware/radio/ProgramList$Chunk;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "BroadcastRadioService.TunerCallback"

    const-string v3, "Program list not ready yet"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not a binder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeDetach(J)V

    .line 71
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeFinalize(J)V

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    return-void
.end method

.method isInitialConfigurationDone()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    return v0
.end method

.method public synthetic lambda$onAntennaState$5$TunerCallback(Z)V
    .locals 1
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method public synthetic lambda$onBackgroundScanAvailabilityChange$6$TunerCallback(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method public synthetic lambda$onBackgroundScanComplete$7$TunerCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method

.method public synthetic lambda$onConfigurationChanged$1$TunerCallback(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public synthetic lambda$onCurrentProgramInfoChanged$2$TunerCallback(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public synthetic lambda$onEmergencyAnnouncement$4$TunerCallback(Z)V
    .locals 1
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method public synthetic lambda$onError$0$TunerCallback(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V

    return-void
.end method

.method public synthetic lambda$onProgramListChanged$8$TunerCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0}, Landroid/hardware/radio/ITunerCallback;->onProgramListChanged()V

    return-void
.end method

.method public synthetic lambda$onProgramListUpdated$10$TunerCallback(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 1
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public synthetic lambda$onTrafficAnnouncement$3$TunerCallback(Z)V
    .locals 1
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method public synthetic lambda$sendProgramListUpdate$9$TunerCallback(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 1
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public onAntennaState(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .line 138
    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QNBMPvImBEGMe4jaw6iOF4QPjns;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QNBMPvImBEGMe4jaw6iOF4QPjns;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 139
    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .line 143
    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$ndOBpfBmClsz77tzZfe3mvcA1lI;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$ndOBpfBmClsz77tzZfe3mvcA1lI;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 144
    return-void
.end method

.method public onBackgroundScanComplete()V
    .locals 1

    .line 148
    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$YlDkqdeYbHPdKcgZh23aJ5Yw8mg;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$YlDkqdeYbHPdKcgZh23aJ5Yw8mg;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 149
    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 118
    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$qR-bdRNnpcaEQYaUWeumt5lHhtY;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$qR-bdRNnpcaEQYaUWeumt5lHhtY;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 119
    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 123
    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yDfY5pWuRHaQpNiYhPjLkNUUrc0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yDfY5pWuRHaQpNiYhPjLkNUUrc0;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 124
    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 133
    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$-h4udaDmWtN-rprVGi_U0x7oSJc;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$-h4udaDmWtN-rprVGi_U0x7oSJc;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 134
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "status"    # I

    .line 107
    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QwopTG5nMx1CO2s6KecqSuCqviA;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QwopTG5nMx1CO2s6KecqSuCqviA;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 108
    return-void
.end method

.method public onParametersUpdated(Ljava/util/Map;)V
    .locals 2
    .param p1, "parameters"    # Ljava/util/Map;

    .line 180
    const-string v0, "BroadcastRadioService.TunerCallback"

    const-string v1, "Not applicable for HAL 1.x"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method public onProgramListChanged()V
    .locals 1

    .line 153
    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$mdqODkiuJlYCJRXqdXBC-d6vdp4;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$mdqODkiuJlYCJRXqdXBC-d6vdp4;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 154
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    .line 155
    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 1
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;

    .line 175
    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yVJR7oPW6kDozlkthdDAOaT7L-4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$yVJR7oPW6kDozlkthdDAOaT7L-4;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 176
    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 128
    new-instance v0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$nm8WiKzJMmmFFCbXZdjr71O3V8Q;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$nm8WiKzJMmmFFCbXZdjr71O3V8Q;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 129
    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 112
    const-string v0, "BroadcastRadioService.TunerCallback"

    const-string v1, "Not applicable for HAL 1.x"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 1
    .param p1, "filter"    # Landroid/hardware/radio/ProgramList$Filter;

    .line 92
    if-nez p1, :cond_0

    new-instance v0, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    move-object p1, v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 94
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    .line 95
    return-void
.end method

.method stopProgramListUpdates()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 99
    return-void
.end method
