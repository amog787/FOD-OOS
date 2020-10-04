.class Lcom/android/server/connectivity/FiveGStatusListener$3;
.super Lorg/codeaurora/internal/NetworkCallbackBase;
.source "FiveGStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/FiveGStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/FiveGStatusListener;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/FiveGStatusListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/FiveGStatusListener;

    .line 218
    iput-object p1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-direct {p0}, Lorg/codeaurora/internal/NetworkCallbackBase;-><init>()V

    return-void
.end method


# virtual methods
.method public on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrConfigType"    # Lorg/codeaurora/internal/NrConfigType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on5gConfigInfo: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " NrConfigType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getCurrentServiceState(I)Lcom/android/server/connectivity/FiveGServiceState;

    move-result-object v0

    .line 274
    .local v0, "state":Lcom/android/server/connectivity/FiveGServiceState;
    invoke-virtual {p4}, Lorg/codeaurora/internal/NrConfigType;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setNrConfigType(I)V

    .line 275
    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v1, v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$900(Lcom/android/server/connectivity/FiveGStatusListener;Lcom/android/server/connectivity/FiveGServiceState;I)V

    .line 277
    .end local v0    # "state":Lcom/android/server/connectivity/FiveGServiceState;
    :cond_0
    return-void
.end method

.method public on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "enableStatus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on5gStatus: slotId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " enableStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "bearerStatus"    # Lorg/codeaurora/internal/BearerAllocationStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnyNrBearerAllocation bearerStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getCurrentServiceState(I)Lcom/android/server/connectivity/FiveGServiceState;

    move-result-object v0

    .line 249
    .local v0, "state":Lcom/android/server/connectivity/FiveGServiceState;
    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setBearerAllocationStatus(I)V

    .line 250
    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v1, v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$900(Lcom/android/server/connectivity/FiveGStatusListener;Lcom/android/server/connectivity/FiveGServiceState;I)V

    .line 252
    .end local v0    # "state":Lcom/android/server/connectivity/FiveGServiceState;
    :cond_0
    return-void
.end method

.method public onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "dcParam"    # Lorg/codeaurora/internal/DcParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNrDcParam: slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " dcParam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getCurrentServiceState(I)Lcom/android/server/connectivity/FiveGServiceState;

    move-result-object v0

    .line 231
    .local v0, "state":Lcom/android/server/connectivity/FiveGServiceState;
    invoke-virtual {p4}, Lorg/codeaurora/internal/DcParam;->getDcnr()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setDcnr(I)V

    .line 232
    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v1, v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$900(Lcom/android/server/connectivity/FiveGStatusListener;Lcom/android/server/connectivity/FiveGServiceState;I)V

    .line 234
    .end local v0    # "state":Lcom/android/server/connectivity/FiveGServiceState;
    :cond_0
    return-void
.end method

.method public onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrIconType"    # Lorg/codeaurora/internal/NrIconType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNrIconType: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " NrIconType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getCurrentServiceState(I)Lcom/android/server/connectivity/FiveGServiceState;

    move-result-object v0

    .line 286
    .local v0, "state":Lcom/android/server/connectivity/FiveGServiceState;
    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setNrIconType(I)V

    .line 287
    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v1, v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$900(Lcom/android/server/connectivity/FiveGStatusListener;Lcom/android/server/connectivity/FiveGServiceState;I)V

    .line 289
    .end local v0    # "state":Lcom/android/server/connectivity/FiveGServiceState;
    :cond_0
    return-void
.end method

.method public onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "signalStrength"    # Lorg/codeaurora/internal/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrength: slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " signalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "uilInfo"    # Lorg/codeaurora/internal/UpperLayerIndInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpperLayerIndInfo plmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " upperLayerIndInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getCurrentServiceState(I)Lcom/android/server/connectivity/FiveGServiceState;

    move-result-object v0

    .line 261
    .local v0, "state":Lcom/android/server/connectivity/FiveGServiceState;
    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setPlmn(I)V

    .line 262
    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setUpperLayerInd(I)V

    .line 263
    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener$3;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v1, v0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$900(Lcom/android/server/connectivity/FiveGStatusListener;Lcom/android/server/connectivity/FiveGServiceState;I)V

    .line 265
    .end local v0    # "state":Lcom/android/server/connectivity/FiveGServiceState;
    :cond_0
    return-void
.end method
