.class public abstract Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;
.super Landroid/os/HwBinder;
.source "IServicetracker.java"

# interfaces
.implements Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 682
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 685
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 699
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 737
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 738
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 739
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 740
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 741
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x1ft
        0x11t
        0x2et
        -0x67t
        -0x13t
        -0x7ct
        0x4ft
        0x2et
        0x3dt
        -0x63t
        0x65t
        0x3at
        -0x34t
        -0x7ft
        -0x7dt
        -0x6ft
        -0x24t
        0x4t
        0x70t
        -0x48t
        0x10t
        0x70t
        0x4ft
        0x59t
        -0x6et
        -0x75t
        0x2t
        0x1at
        0x11t
        -0x14t
        -0x5at
        0x75t
    .end array-data

    :array_1
    .array-data 1
        -0x45t
        -0x59t
        0x35t
        -0x7t
        0x59t
        -0x2bt
        -0x39t
        -0x5dt
        0x61t
        -0x6at
        -0x22t
        0x65t
        0x48t
        -0x5bt
        -0x9t
        0x40t
        -0x70t
        0x51t
        0x2bt
        -0x3ct
        -0x17t
        -0x27t
        0x2at
        -0x3et
        -0x6et
        0x79t
        -0x4et
        -0x23t
        0x78t
        0x6et
        -0x45t
        -0x76t
    .end array-data

    :array_2
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.servicetracker@1.1::IServicetracker"

    const-string v2, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 705
    const-string v0, "vendor.qti.hardware.servicetracker@1.1::IServicetracker"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 725
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 747
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 749
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    const-string v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1078
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->notifySyspropsChanged()V

    .line 1081
    goto/16 :goto_1

    .line 1067
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 1070
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1071
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1073
    goto/16 :goto_1

    .line 1057
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->ping()V

    .line 1060
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1062
    goto/16 :goto_1

    .line 1044
    :sswitch_3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->setHALInstrumentation()V

    .line 1047
    goto/16 :goto_1

    .line 1010
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1013
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1015
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1017
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1018
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1019
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1020
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1021
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1023
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1024
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1026
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1030
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1031
    nop

    .line 1021
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1027
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1034
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1036
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1038
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1039
    goto/16 :goto_1

    .line 999
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1003
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1005
    goto/16 :goto_1

    .line 987
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 990
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 991
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 992
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 994
    goto/16 :goto_1

    .line 976
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 979
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 980
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 981
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 982
    goto/16 :goto_1

    .line 961
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    const-string v0, "vendor.qti.hardware.servicetracker@1.1::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$9;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$9;-><init>(Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->getRunningServicePid(Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$getRunningServicePidCallback;)V

    .line 971
    goto/16 :goto_1

    .line 945
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$8;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$8;-><init>(Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->getServiceBCount(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getServiceBCountCallback;)V

    .line 956
    goto/16 :goto_1

    .line 929
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$7;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$7;-><init>(Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->isServiceB(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$isServiceBCallback;)V

    .line 940
    goto/16 :goto_1

    .line 913
    .end local v0    # "serviceName":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 916
    .local v0, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$6;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$6;-><init>(Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->getPids(Ljava/util/ArrayList;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getPidsCallback;)V

    .line 924
    goto/16 :goto_1

    .line 897
    .end local v0    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "processName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$5;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$5;-><init>(Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->getPid(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getPidCallback;)V

    .line 908
    goto/16 :goto_1

    .line 881
    .end local v0    # "processName":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "clientName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$4;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$4;-><init>(Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->getClientConnections(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getClientConnectionsCallback;)V

    .line 892
    goto/16 :goto_1

    .line 865
    .end local v0    # "clientName":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$3;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$3;-><init>(Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->getServiceConnections(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getServiceConnectionsCallback;)V

    .line 876
    goto/16 :goto_1

    .line 849
    .end local v0    # "serviceName":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 852
    .restart local v0    # "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$2;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$2;-><init>(Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->getserviceInfo(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getserviceInfoCallback;)V

    .line 860
    goto :goto_1

    .line 833
    .end local v0    # "serviceName":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "clientName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub$1;-><init>(Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->getclientInfo(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getclientInfoCallback;)V

    .line 844
    goto :goto_1

    .line 824
    .end local v0    # "clientName":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 827
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->killProcess(I)V

    .line 828
    goto :goto_1

    .line 814
    .end local v0    # "pid":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 817
    .local v0, "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 818
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->destroyService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V

    .line 819
    goto :goto_1

    .line 802
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 805
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 806
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v1}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 807
    .local v1, "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 808
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->unbindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V

    .line 809
    goto :goto_1

    .line 790
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 793
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 794
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v1}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 795
    .restart local v1    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 796
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->bindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V

    .line 797
    goto :goto_1

    .line 780
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 783
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 784
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->startService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V

    .line 785
    nop

    .line 1090
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 731
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 759
    const-string v0, "vendor.qti.hardware.servicetracker@1.1::IServicetracker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    return-object p0

    .line 762
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->registerService(Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 721
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 753
    const/4 v0, 0x1

    return v0
.end method
