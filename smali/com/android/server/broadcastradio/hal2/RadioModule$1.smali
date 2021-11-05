.class Lcom/android/server/broadcastradio/hal2/RadioModule$1;
.super Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/RadioModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 81
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAntennaStateChange$5(ZLandroid/hardware/radio/ITunerCallback;)V
    .locals 0
    .param p0, "connected"    # Z
    .param p1, "cb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method static synthetic lambda$onParametersUpdated$7(Ljava/util/Map;Landroid/hardware/radio/ITunerCallback;)V
    .locals 0
    .param p0, "cparam"    # Ljava/util/Map;
    .param p1, "cb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onParametersUpdated(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$onTuneFailed$0(ILandroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ITunerCallback;)V
    .locals 0
    .param p0, "result"    # I
    .param p1, "csel"    # Landroid/hardware/radio/ProgramSelector;
    .param p2, "cb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    invoke-interface {p2, p0, p1}, Landroid/hardware/radio/ITunerCallback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAntennaStateChange$6$RadioModule$1(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .line 115
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$202(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 116
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$9BTBKKHgjgdB708VSt0TZ7v6eaQ;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$9BTBKKHgjgdB708VSt0TZ7v6eaQ;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 117
    return-void
.end method

.method public synthetic lambda$onCurrentProgramInfoChanged$2$RadioModule$1(Landroid/hardware/radio/ITunerCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$500(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public synthetic lambda$onCurrentProgramInfoChanged$3$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .locals 2
    .param p1, "halProgramInfo"    # Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 94
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$502(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 95
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iKwhPFaskH3rDDMX9COUVaItuzk;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iKwhPFaskH3rDDMX9COUVaItuzk;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 96
    return-void
.end method

.method public synthetic lambda$onParametersUpdated$8$RadioModule$1(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "parameters"    # Ljava/util/ArrayList;

    .line 123
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 124
    .local v0, "cparam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$x698a0D6TrXUq_pmZydNJ1RNU7E;

    invoke-direct {v2, v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$x698a0D6TrXUq_pmZydNJ1RNU7E;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 125
    return-void
.end method

.method public synthetic lambda$onProgramListUpdated$4$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 3
    .param p1, "programListChunk"    # Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    .line 102
    nop

    .line 103
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programListChunkFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)Landroid/hardware/radio/ProgramList$Chunk;

    move-result-object v0

    .line 104
    .local v0, "chunk":Landroid/hardware/radio/ProgramList$Chunk;
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$300(Lcom/android/server/broadcastradio/hal2/RadioModule;)Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndApplyChunk(Landroid/hardware/radio/ProgramList$Chunk;)Ljava/util/List;

    .line 106
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$400(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 107
    .local v2, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    invoke-virtual {v2, v0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->onMergedProgramListUpdateFromHal(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 108
    .end local v2    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public synthetic lambda$onTuneFailed$1$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V
    .locals 3
    .param p1, "programSelector"    # Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    .param p2, "result"    # I

    .line 85
    nop

    .line 86
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    .line 87
    .local v0, "csel":Landroid/hardware/radio/ProgramSelector;
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$59H6y7GZA-_7GDPEgL2E26h7WiE;

    invoke-direct {v2, p2, v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$59H6y7GZA-_7GDPEgL2E26h7WiE;-><init>(ILandroid/hardware/radio/ProgramSelector;)V

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 88
    return-void
.end method

.method public onAntennaStateChange(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .line 114
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$Ww9WbwXtHkvUYLPjJrKd8ZUbLi8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$Ww9WbwXtHkvUYLPjJrKd8ZUbLi8;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Z)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .locals 2
    .param p1, "halProgramInfo"    # Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 93
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$DJu-ip-lyw364IIvgG3EXOTSGvY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$DJu-ip-lyw364IIvgG3EXOTSGvY;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public onParametersUpdated(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p1, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$kba0y1l8j_kbzfkV_fSYCbVt6AQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$kba0y1l8j_kbzfkV_fSYCbVt6AQ;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 2
    .param p1, "programListChunk"    # Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    .line 101
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$Q9In82r88efLEVUPMv89BQpdOKw;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$Q9In82r88efLEVUPMv89BQpdOKw;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "programSelector"    # Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 84
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
