.class public abstract Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;
.super Landroid/os/HwBinder;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 724
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 727
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

    .line 740
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 777
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 778
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 779
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 780
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 781
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

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x44t
        0x7bt
        0x0t
        0x30t
        0x6bt
        -0x37t
        0x5at
        0x7at
        -0x51t
        -0x14t
        0x1dt
        0x66t
        0xft
        0x6ft
        0x3et
        -0x61t
        0x76t
        -0x54t
        -0x75t
        -0x40t
        0x35t
        0x31t
        -0x6dt
        0x43t
        0x5et
        0x55t
        0x79t
        -0x55t
        -0x7dt
        0x3dt
        -0x5at
        0x19t
    .end array-data

    :array_1
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 746
    const-string v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 765
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 787
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 789
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 11
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    const-string v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1148
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 1149
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_24

    .line 1150
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1152
    goto/16 :goto_7

    .line 1135
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    move v2, v3

    .line 1136
    .local v2, "_hidl_is_oneway":Z
    :cond_1
    if-eq v2, v3, :cond_2

    .line 1137
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1138
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1139
    goto/16 :goto_7

    .line 1140
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->notifySyspropsChanged()V

    .line 1143
    goto/16 :goto_7

    .line 1119
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 1120
    .local v3, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 1121
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1122
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1123
    goto/16 :goto_7

    .line 1124
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1127
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1128
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1129
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1130
    goto/16 :goto_7

    .line 1104
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    .line 1105
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 1106
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1107
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1108
    goto/16 :goto_7

    .line 1109
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->ping()V

    .line 1112
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1113
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1114
    goto/16 :goto_7

    .line 1094
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    move v0, v2

    .line 1095
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_24

    .line 1096
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1098
    goto/16 :goto_7

    .line 1081
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8

    move v2, v3

    .line 1082
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v2, v3, :cond_9

    .line 1083
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1084
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1085
    goto/16 :goto_7

    .line 1086
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setHALInstrumentation()V

    .line 1089
    goto/16 :goto_7

    .line 1042
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    .line 1043
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v3, :cond_b

    .line 1044
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1046
    goto/16 :goto_7

    .line 1047
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1050
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1052
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1054
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1055
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1056
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1057
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1058
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v4, :cond_d

    .line 1060
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 1061
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1063
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 1067
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1068
    nop

    .line 1058
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1064
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1071
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1073
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1075
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1076
    goto/16 :goto_7

    .line 1026
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    .line 1027
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v3, :cond_f

    .line 1028
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1029
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1030
    goto/16 :goto_7

    .line 1031
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1035
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1037
    goto/16 :goto_7

    .line 1009
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    .line 1010
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v3, :cond_11

    .line 1011
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1012
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1013
    goto/16 :goto_7

    .line 1014
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1017
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1018
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1019
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1021
    goto/16 :goto_7

    .line 993
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    .line 994
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v3, :cond_13

    .line 995
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 996
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 997
    goto/16 :goto_7

    .line 998
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1001
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1002
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1003
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1004
    goto/16 :goto_7

    .line 971
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_14

    move v2, v3

    .line 972
    .local v2, "_hidl_is_oneway":Z
    :cond_14
    if-eqz v2, :cond_15

    .line 973
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 974
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 975
    goto/16 :goto_7

    .line 976
    :cond_15
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 980
    .local v1, "prefix":Ljava/lang/String;
    new-instance v3, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;

    invoke-direct {v3, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V

    .line 988
    goto/16 :goto_7

    .line 949
    .end local v0    # "iface":Ljava/lang/String;
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_16

    move v2, v3

    .line 950
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_16
    if-eqz v2, :cond_17

    .line 951
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 952
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 953
    goto/16 :goto_7

    .line 954
    :cond_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 957
    .restart local v0    # "iface":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 958
    .restart local v1    # "prefix":Ljava/lang/String;
    new-instance v3, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;

    invoke-direct {v3, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V

    .line 966
    goto/16 :goto_7

    .line 925
    .end local v0    # "iface":Ljava/lang/String;
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18

    move v2, v3

    .line 926
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_18
    if-eqz v2, :cond_19

    .line 927
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 928
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 929
    goto/16 :goto_7

    .line 930
    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 933
    .restart local v0    # "iface":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, "v4Addr":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 935
    .local v9, "v4Gw":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v10

    .line 936
    .local v10, "v6Gws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$6;

    invoke-direct {v8, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$6;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v9

    move-object v7, v10

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V

    .line 944
    goto/16 :goto_7

    .line 903
    .end local v0    # "iface":Ljava/lang/String;
    .end local v1    # "v4Addr":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v9    # "v4Gw":Ljava/lang/String;
    .end local v10    # "v6Gws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1a

    move v2, v3

    .line 904
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1a
    if-eqz v2, :cond_1b

    .line 905
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 907
    goto/16 :goto_7

    .line 908
    :cond_1b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "upstream":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 912
    .local v3, "limit":J
    new-instance v1, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$5;

    invoke-direct {v1, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$5;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v3, v4, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V

    .line 920
    goto/16 :goto_7

    .line 882
    .end local v0    # "upstream":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "limit":J
    :pswitch_4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c

    move v2, v3

    .line 883
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1c
    if-eqz v2, :cond_1d

    .line 884
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 885
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 886
    goto/16 :goto_7

    .line 887
    :cond_1d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 890
    .restart local v0    # "upstream":Ljava/lang/String;
    new-instance v1, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;

    invoke-direct {v1, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V

    .line 898
    goto :goto_7

    .line 861
    .end local v0    # "upstream":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e

    move v2, v3

    .line 862
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1e
    if-eqz v2, :cond_1f

    .line 863
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 864
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 865
    goto :goto_7

    .line 866
    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 869
    .local v0, "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$3;

    invoke-direct {v1, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$3;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V

    .line 877
    goto :goto_7

    .line 841
    .end local v0    # "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20

    move v2, v3

    .line 842
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_20
    if-eqz v2, :cond_21

    .line 843
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 844
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 845
    goto :goto_7

    .line 846
    :cond_21
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    new-instance v0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$2;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V

    .line 856
    goto :goto_7

    .line 820
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_22

    move v2, v3

    .line 821
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_22
    if-eqz v2, :cond_23

    .line 822
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 824
    goto :goto_7

    .line 825
    :cond_23
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;

    move-result-object v0

    .line 828
    .local v0, "cb":Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;
    new-instance v1, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$1;

    invoke-direct {v1, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$1;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V

    .line 836
    nop

    .line 1157
    .end local v0    # "cb":Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_24
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 771
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 799
    const-string v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    return-object p0

    .line 802
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

    .line 806
    invoke-virtual {p0, p1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->registerService(Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 761
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 793
    const/4 v0, 0x1

    return v0
.end method
