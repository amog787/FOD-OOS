.class final Lcom/android/server/IpSecService$TransformRecord;
.super Lcom/android/server/IpSecService$OwnedResourceRecord;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransformRecord"
.end annotation


# instance fields
.field private final mConfig:Landroid/net/IpSecConfig;

.field private final mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

.field private final mSpi:Lcom/android/server/IpSecService$SpiRecord;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILandroid/net/IpSecConfig;Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    .locals 0
    .param p2, "resourceId"    # I
    .param p3, "config"    # Landroid/net/IpSecConfig;
    .param p4, "spi"    # Lcom/android/server/IpSecService$SpiRecord;
    .param p5, "socket"    # Lcom/android/server/IpSecService$EncapSocketRecord;

    .line 601
    iput-object p1, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    .line 602
    invoke-direct {p0, p1, p2}, Lcom/android/server/IpSecService$OwnedResourceRecord;-><init>(Lcom/android/server/IpSecService;I)V

    .line 603
    iput-object p3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 604
    iput-object p4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    .line 605
    iput-object p5, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

    .line 607
    invoke-virtual {p4}, Lcom/android/server/IpSecService$SpiRecord;->setOwnedByTransform()V

    .line 608
    return-void
.end method


# virtual methods
.method public freeUnderlyingResources()V
    .locals 9

    .line 625
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v0

    .line 627
    .local v0, "spi":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-static {v1}, Lcom/android/server/IpSecService;->access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    move-result-object v1

    .line 628
    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService$TransformRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 631
    invoke-virtual {v3}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 632
    invoke-virtual {v4}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 634
    invoke-virtual {v5}, Landroid/net/IpSecConfig;->getMarkValue()I

    move-result v6

    iget-object v5, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 635
    invoke-virtual {v5}, Landroid/net/IpSecConfig;->getMarkMask()I

    move-result v7

    iget-object v5, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 636
    invoke-virtual {v5}, Landroid/net/IpSecConfig;->getXfrmInterfaceId()I

    move-result v8

    .line 629
    move v5, v0

    invoke-interface/range {v1 .. v8}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    goto :goto_0

    .line 637
    :catch_0
    move-exception v1

    .line 638
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete SA with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IpSecService"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TransformRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IpSecService$ResourceTracker;->give()V

    .line 642
    return-void
.end method

.method public getConfig()Landroid/net/IpSecConfig;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method protected getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TransformRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-object v0
.end method

.method public getSocketRecord()Lcom/android/server/IpSecService$EncapSocketRecord;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

    return-object v0
.end method

.method public getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    return-object v0
.end method

.method public invalidate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TransformRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserRecord;->removeTransformRecord(I)V

    .line 647
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    nop

    .line 658
    const-string/jumbo v1, "{super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-super {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v1, ", mSocket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    const-string v1, ", mSpi.mResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    iget v1, v1, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 664
    const-string v1, ", mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 666
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
