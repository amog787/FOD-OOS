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

    .line 70
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAntennaStateChange$3(ZLandroid/hardware/radio/ITunerCallback;)V
    .locals 0
    .param p0, "connected"    # Z
    .param p1, "cb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method static synthetic lambda$onCurrentProgramInfoChanged$1(Landroid/hardware/radio/RadioManager$ProgramInfo;Landroid/hardware/radio/ITunerCallback;)V
    .locals 0
    .param p0, "programInfo"    # Landroid/hardware/radio/RadioManager$ProgramInfo;
    .param p1, "cb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method static synthetic lambda$onParametersUpdated$4(Ljava/util/ArrayList;Landroid/hardware/radio/ITunerCallback;)V
    .locals 1
    .param p0, "parameters"    # Ljava/util/ArrayList;
    .param p1, "cb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/hardware/radio/ITunerCallback;->onParametersUpdated(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$onProgramListUpdated$2(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;Landroid/hardware/radio/ITunerCallback;)V
    .locals 1
    .param p0, "programListChunk"    # Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;
    .param p1, "cb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programListChunkFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)Landroid/hardware/radio/ProgramList$Chunk;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method static synthetic lambda$onTuneFailed$0(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;Landroid/hardware/radio/ITunerCallback;)V
    .locals 1
    .param p0, "result"    # I
    .param p1, "programSelector"    # Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    .param p2, "cb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Landroid/hardware/radio/ITunerCallback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method


# virtual methods
.method public onAntennaStateChange(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .line 96
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$302(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 98
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$Il3YL_GY-lSXSqyVm7T1v5PU1Jw;

    invoke-direct {v2, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$Il3YL_GY-lSXSqyVm7T1v5PU1Jw;-><init>(Z)V

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$200(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .locals 4
    .param p1, "halProgramInfo"    # Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 79
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v0

    .line 80
    .local v0, "programInfo":Landroid/hardware/radio/RadioManager$ProgramInfo;
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v2, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$102(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 82
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v3, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CPvxVTMuuEdr8ub7dRnQQCFjgaE;

    invoke-direct {v3, v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CPvxVTMuuEdr8ub7dRnQQCFjgaE;-><init>(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-static {v2, v3}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$200(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
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

    .line 104
    .local p1, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$hCMwC8ZH5YWygc7mHLA0OrP-COQ;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$hCMwC8ZH5YWygc7mHLA0OrP-COQ;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 105
    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 2
    .param p1, "programListChunk"    # Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    .line 90
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$LyKBrtj8y1r69Iz5HNDKUaybxJA;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$LyKBrtj8y1r69Iz5HNDKUaybxJA;-><init>(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 92
    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "programSelector"    # Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 73
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$qVWy9L5lVOu1LVVYEh7TytYQ5vc;

    invoke-direct {v1, p1, p2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$qVWy9L5lVOu1LVVYEh7TytYQ5vc;-><init>(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 75
    return-void
.end method
