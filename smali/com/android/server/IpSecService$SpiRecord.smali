.class final Lcom/android/server/IpSecService$SpiRecord;
.super Lcom/android/server/IpSecService$OwnedResourceRecord;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpiRecord"
.end annotation


# instance fields
.field private final mDestinationAddress:Ljava/lang/String;

.field private mOwnedByTransform:Z

.field private final mSourceAddress:Ljava/lang/String;

.field private mSpi:I

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "resourceId"    # I
    .param p3, "sourceAddress"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "spi"    # I

    .line 683
    iput-object p1, p0, Lcom/android/server/IpSecService$SpiRecord;->this$0:Lcom/android/server/IpSecService;

    .line 684
    invoke-direct {p0, p1, p2}, Lcom/android/server/IpSecService$OwnedResourceRecord;-><init>(Lcom/android/server/IpSecService;I)V

    .line 681
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    .line 685
    iput-object p3, p0, Lcom/android/server/IpSecService$SpiRecord;->mSourceAddress:Ljava/lang/String;

    .line 686
    iput-object p4, p0, Lcom/android/server/IpSecService$SpiRecord;->mDestinationAddress:Ljava/lang/String;

    .line 687
    iput p5, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    .line 688
    return-void
.end method


# virtual methods
.method public freeUnderlyingResources()V
    .locals 9

    .line 694
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/server/IpSecService$SpiRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-static {v0}, Lcom/android/server/IpSecService;->access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    move-result-object v0

    .line 696
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService$SpiRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/IpSecService$SpiRecord;->mSourceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/IpSecService$SpiRecord;->mDestinationAddress:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 697
    invoke-interface/range {v1 .. v8}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :cond_0
    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete SPI reservation with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IpSecService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    .line 707
    invoke-virtual {p0}, Lcom/android/server/IpSecService$SpiRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->give()V

    .line 708
    return-void
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mDestinationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnedByTransform()Z
    .locals 1

    .line 728
    iget-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    return v0
.end method

.method protected getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
    .locals 1

    .line 738
    invoke-virtual {p0}, Lcom/android/server/IpSecService$SpiRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-object v0
.end method

.method public getSpi()I
    .locals 1

    .line 711
    iget v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    return v0
.end method

.method public invalidate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    invoke-virtual {p0}, Lcom/android/server/IpSecService$SpiRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserRecord;->removeSpiRecord(I)V

    .line 734
    return-void
.end method

.method public setOwnedByTransform()V
    .locals 2

    .line 719
    iget-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    if-nez v0, :cond_0

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    .line 725
    return-void

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot own an SPI twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    nop

    .line 745
    const-string/jumbo v1, "{super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-super {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    const-string v1, ", mSpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    const-string v1, ", mSourceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$SpiRecord;->mSourceAddress:Ljava/lang/String;

    .line 750
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string v1, ", mDestinationAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$SpiRecord;->mDestinationAddress:Ljava/lang/String;

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    const-string v1, ", mOwnedByTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 755
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
