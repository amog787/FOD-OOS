.class final Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NativeWrapperImpl"
.end annotation


# instance fields
.field private mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

.field private final mLock:Ljava/lang/Object;

.field private mPhysicalAddress:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mLock:Ljava/lang/Object;

    .line 753
    const v0, 0xffff

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mPhysicalAddress:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiCecController$1;

    .line 749
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;-><init>()V

    return-void
.end method


# virtual methods
.method connectToHal()Z
    .locals 4

    .line 762
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getService()Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 764
    const-wide/16 v2, 0x161

    :try_start_1
    invoke-interface {v1, p0, v2, v3}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 767
    goto :goto_0

    .line 765
    :catch_0
    move-exception v1

    .line 766
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "Couldn\'t link to death : "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 771
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 772
    const/4 v0, 0x1

    return v0

    .line 768
    :catch_1
    move-exception v1

    .line 769
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Couldn\'t get tv.cec service : "

    invoke-static {v3, v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 770
    return v0
.end method

.method public nativeAddLogicalAddress(I)I
    .locals 3
    .param p1, "logicalAddress"    # I

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->addLogicalAddress(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to add a logical address : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 807
    const/4 v1, 0x2

    return v1
.end method

.method public nativeClearLogicalAddress()V
    .locals 3

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->clearLogicalAddress()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to clear logical address : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 818
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public nativeEnableAudioReturnChannel(IZ)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "flag"    # Z

    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->enableAudioReturnChannel(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    goto :goto_0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to enable/disable ARC : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 899
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public nativeGetPhysicalAddress()I
    .locals 3

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v0, p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getPhysicalAddress(Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;)V

    .line 824
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mPhysicalAddress:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get physical address : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 827
    const v1, 0xffff

    return v1
.end method

.method public nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 13

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 855
    invoke-interface {v0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getPortInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 856
    .local v0, "hdmiPortInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/hdmi/HdmiPortInfo;

    .line 857
    .local v1, "hdmiPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    const/4 v2, 0x0

    .line 858
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    .line 859
    .local v4, "portInfo":Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;
    new-instance v12, Landroid/hardware/hdmi/HdmiPortInfo;

    iget v6, v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    iget v7, v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    iget-short v8, v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    iget-boolean v9, v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    const/4 v10, 0x0

    iget-boolean v11, v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    aput-object v12, v1, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    nop

    .end local v4    # "portInfo":Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;
    add-int/lit8 v2, v2, 0x1

    .line 866
    goto :goto_0

    .line 867
    :cond_0
    return-object v1

    .line 868
    .end local v0    # "hdmiPortInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;>;"
    .end local v1    # "hdmiPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get port information : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 870
    const/4 v1, 0x0

    return-object v1
.end method

.method public nativeGetVendorId()I
    .locals 3

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getVendorId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get vendor id : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 847
    const/4 v1, 0x1

    return v1
.end method

.method public nativeGetVersion()I
    .locals 3

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getCecVersion()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get cec version : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 837
    const/4 v1, 0x1

    return v1
.end method

.method public nativeInit()Ljava/lang/String;
    .locals 1

    .line 757
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->connectToHal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public nativeIsConnected(I)Z
    .locals 4
    .param p1, "port"    # I

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->isConnected(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Failed to get connection info : "

    invoke-static {v3, v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 907
    return v1
.end method

.method public nativeSendCecCommand(II[B)I
    .locals 7
    .param p1, "srcAddress"    # I
    .param p2, "dstAddress"    # I
    .param p3, "body"    # [B

    .line 786
    new-instance v0, Landroid/hardware/tv/cec/V1_0/CecMessage;

    invoke-direct {v0}, Landroid/hardware/tv/cec/V1_0/CecMessage;-><init>()V

    .line 787
    .local v0, "message":Landroid/hardware/tv/cec/V1_0/CecMessage;
    iput p1, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    .line 788
    iput p2, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    .line 789
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    .line 790
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p3, v3

    .line 791
    .local v4, "b":B
    iget-object v5, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 794
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v1, v0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->sendMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 795
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Landroid/os/RemoteException;
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to send CEC message : "

    invoke-static {v3, v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 797
    const/4 v2, 0x3

    return v2
.end method

.method public nativeSetLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .line 886
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    goto :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to set language : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 890
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public nativeSetOption(IZ)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "enabled"    # Z

    .line 877
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setOption(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    goto :goto_0

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to set option : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 881
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onValues(IS)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "addr"    # S

    .line 921
    if-nez p1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_0
    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v1}, Ljava/lang/Short;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mPhysicalAddress:I

    .line 924
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 926
    :cond_0
    :goto_0
    return-void
.end method

.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 913
    const-wide/16 v0, 0x161

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 914
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service died cokkie : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; reconnecting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "HdmiCecController"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 915
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->connectToHal()Z

    .line 917
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setCallback(Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Couldn\'t initialise tv.cec callback : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 782
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
