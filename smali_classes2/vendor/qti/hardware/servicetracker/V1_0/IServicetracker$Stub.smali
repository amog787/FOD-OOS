.class public abstract Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;
.super Landroid/os/HwBinder;
.source "IServicetracker.java"

# interfaces
.implements Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 689
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 692
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

    .line 705
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 742
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 743
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 744
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 745
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 746
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

    .line 717
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

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

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

    .line 711
    const-string v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 730
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 752
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 754
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

    .line 782
    const-string v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1186
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 1187
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2e

    .line 1188
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1190
    goto/16 :goto_7

    .line 1173
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    move v2, v3

    .line 1174
    .local v2, "_hidl_is_oneway":Z
    :cond_1
    if-eq v2, v3, :cond_2

    .line 1175
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1176
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1177
    goto/16 :goto_7

    .line 1178
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->notifySyspropsChanged()V

    .line 1181
    goto/16 :goto_7

    .line 1157
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 1158
    .local v3, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 1159
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1160
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1161
    goto/16 :goto_7

    .line 1162
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1165
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1166
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1168
    goto/16 :goto_7

    .line 1142
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    .line 1143
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 1144
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1145
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1146
    goto/16 :goto_7

    .line 1147
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->ping()V

    .line 1150
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1152
    goto/16 :goto_7

    .line 1132
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    move v0, v2

    .line 1133
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2e

    .line 1134
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1135
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1136
    goto/16 :goto_7

    .line 1119
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8

    move v2, v3

    .line 1120
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v2, v3, :cond_9

    .line 1121
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1122
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1123
    goto/16 :goto_7

    .line 1124
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->setHALInstrumentation()V

    .line 1127
    goto/16 :goto_7

    .line 1080
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    .line 1081
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v3, :cond_b

    .line 1082
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1083
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1084
    goto/16 :goto_7

    .line 1085
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1088
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1090
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1092
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1093
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1094
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1095
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1096
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v4, :cond_d

    .line 1098
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 1099
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1101
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 1105
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1106
    nop

    .line 1096
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1102
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1109
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1111
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1113
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1114
    goto/16 :goto_7

    .line 1064
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    .line 1065
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v3, :cond_f

    .line 1066
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1068
    goto/16 :goto_7

    .line 1069
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1073
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1075
    goto/16 :goto_7

    .line 1047
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    .line 1048
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v3, :cond_11

    .line 1049
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1050
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1051
    goto/16 :goto_7

    .line 1052
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1055
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1056
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1057
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1058
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1059
    goto/16 :goto_7

    .line 1031
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    .line 1032
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v3, :cond_13

    .line 1033
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1035
    goto/16 :goto_7

    .line 1036
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1039
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1040
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1041
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1042
    goto/16 :goto_7

    .line 1010
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_14

    move v2, v3

    .line 1011
    .local v2, "_hidl_is_oneway":Z
    :cond_14
    if-eqz v2, :cond_15

    .line 1012
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1013
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1014
    goto/16 :goto_7

    .line 1015
    :cond_15
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$8;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$8;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getServiceBCount(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getServiceBCountCallback;)V

    .line 1026
    goto/16 :goto_7

    .line 989
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_16

    move v2, v3

    .line 990
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_16
    if-eqz v2, :cond_17

    .line 991
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 992
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 993
    goto/16 :goto_7

    .line 994
    :cond_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$7;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$7;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->isServiceB(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$isServiceBCallback;)V

    .line 1005
    goto/16 :goto_7

    .line 968
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18

    move v2, v3

    .line 969
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_18
    if-eqz v2, :cond_19

    .line 970
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 972
    goto/16 :goto_7

    .line 973
    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 976
    .local v0, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$6;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$6;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getPids(Ljava/util/ArrayList;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getPidsCallback;)V

    .line 984
    goto/16 :goto_7

    .line 947
    .end local v0    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1a

    move v2, v3

    .line 948
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1a
    if-eqz v2, :cond_1b

    .line 949
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 950
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 951
    goto/16 :goto_7

    .line 952
    :cond_1b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "processName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$5;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$5;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getPid(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getPidCallback;)V

    .line 963
    goto/16 :goto_7

    .line 926
    .end local v0    # "processName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c

    move v2, v3

    .line 927
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1c
    if-eqz v2, :cond_1d

    .line 928
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 929
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 930
    goto/16 :goto_7

    .line 931
    :cond_1d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "clientName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getClientConnections(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getClientConnectionsCallback;)V

    .line 942
    goto/16 :goto_7

    .line 905
    .end local v0    # "clientName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e

    move v2, v3

    .line 906
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1e
    if-eqz v2, :cond_1f

    .line 907
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 909
    goto/16 :goto_7

    .line 910
    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$3;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$3;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getServiceConnections(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getServiceConnectionsCallback;)V

    .line 921
    goto/16 :goto_7

    .line 884
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20

    move v2, v3

    .line 885
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_20
    if-eqz v2, :cond_21

    .line 886
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 887
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 888
    goto/16 :goto_7

    .line 889
    :cond_21
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 892
    .restart local v0    # "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$2;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$2;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getserviceInfo(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getserviceInfoCallback;)V

    .line 900
    goto/16 :goto_7

    .line 863
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_22

    move v2, v3

    .line 864
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_22
    if-eqz v2, :cond_23

    .line 865
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 866
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 867
    goto/16 :goto_7

    .line 868
    :cond_23
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "clientName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getclientInfo(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getclientInfoCallback;)V

    .line 879
    goto/16 :goto_7

    .line 849
    .end local v0    # "clientName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_24

    move v2, v3

    .line 850
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_24
    if-eq v2, v3, :cond_25

    .line 851
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 853
    goto/16 :goto_7

    .line 854
    :cond_25
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 857
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->killProcess(I)V

    .line 858
    goto/16 :goto_7

    .line 834
    .end local v0    # "pid":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_26

    move v2, v3

    .line 835
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_26
    if-eq v2, v3, :cond_27

    .line 836
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 838
    goto/16 :goto_7

    .line 839
    :cond_27
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 842
    .local v0, "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 843
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->destroyService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V

    .line 844
    goto/16 :goto_7

    .line 817
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_28

    move v2, v3

    .line 818
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_28
    if-eq v2, v3, :cond_29

    .line 819
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 821
    goto :goto_7

    .line 822
    :cond_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 825
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 826
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v1}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 827
    .local v1, "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 828
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->unbindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V

    .line 829
    goto :goto_7

    .line 800
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2a

    move v2, v3

    .line 801
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2a
    if-eq v2, v3, :cond_2b

    .line 802
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 804
    goto :goto_7

    .line 805
    :cond_2b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 808
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 809
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v1}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 810
    .restart local v1    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 811
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->bindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V

    .line 812
    goto :goto_7

    .line 785
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2c

    move v2, v3

    .line 786
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2c
    if-eq v2, v3, :cond_2d

    .line 787
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 788
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 789
    goto :goto_7

    .line 790
    :cond_2d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 793
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 794
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->startService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V

    .line 795
    nop

    .line 1195
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_2e
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 736
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 764
    const-string v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    return-object p0

    .line 767
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

    .line 771
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->registerService(Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 726
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 758
    const/4 v0, 0x1

    return v0
.end method
