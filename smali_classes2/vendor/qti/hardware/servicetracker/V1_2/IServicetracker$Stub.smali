.class public abstract Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;
.super Landroid/os/HwBinder;
.source "IServicetracker.java"

# interfaces
.implements Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 774
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 777
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

    .line 792
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 831
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 832
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 833
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 834
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 835
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

    .line 804
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

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

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x24t
        -0x7dt
        -0x77t
        0x39t
        0x1ct
        -0x1ct
        -0x79t
        -0x6bt
        -0x2ft
        0x17t
        0x17t
        -0xat
        -0x69t
        0x3ft
        -0x72t
        -0x6et
        -0x5ft
        -0xat
        0x60t
        -0x3t
        0x6dt
        0x5bt
        -0x3at
        0xet
        0x5dt
        -0x18t
        -0x52t
        0x19t
        -0x3ft
        -0x2ft
        0x61t
        0x3t
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.servicetracker@1.2::IServicetracker"

    const-string v2, "vendor.qti.hardware.servicetracker@1.1::IServicetracker"

    const-string v3, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 798
    const-string v0, "vendor.qti.hardware.servicetracker@1.2::IServicetracker"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 819
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 841
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 843
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

    .line 871
    const-string v0, "vendor.qti.hardware.servicetracker@1.2::IServicetracker"

    const/4 v1, 0x0

    const-string v2, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1212
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->notifySyspropsChanged()V

    .line 1215
    goto/16 :goto_1

    .line 1201
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1204
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1205
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1206
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1207
    goto/16 :goto_1

    .line 1191
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->ping()V

    .line 1194
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1195
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1196
    goto/16 :goto_1

    .line 1178
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->setHALInstrumentation()V

    .line 1181
    goto/16 :goto_1

    .line 1144
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1147
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1149
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1151
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1152
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1153
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1154
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1155
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1157
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1158
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1160
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1164
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1165
    nop

    .line 1155
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1161
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1168
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1170
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1172
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1173
    goto/16 :goto_1

    .line 1133
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1137
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1139
    goto/16 :goto_1

    .line 1121
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1124
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1125
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1126
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1128
    goto/16 :goto_1

    .line 1110
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1113
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1114
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1115
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1116
    goto/16 :goto_1

    .line 1096
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1099
    .local v0, "aState":I
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;

    invoke-direct {v1}, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;-><init>()V

    .line 1100
    .local v1, "aDetails":Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1101
    new-instance v2, Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;

    invoke-direct {v2}, Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;-><init>()V

    .line 1102
    .local v2, "aStats":Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1103
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1104
    .local v3, "early_notify":Z
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->OnActivityStateChange(ILvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;Z)V

    .line 1105
    goto/16 :goto_1

    .line 1084
    .end local v0    # "aState":I
    .end local v1    # "aDetails":Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;
    .end local v2    # "aStats":Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;
    .end local v3    # "early_notify":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/servicetracker/V1_2/IActivityEventInfoCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/servicetracker/V1_2/IActivityEventInfoCallback;

    move-result-object v0

    .line 1087
    .local v0, "callback":Lvendor/qti/hardware/servicetracker/V1_2/IActivityEventInfoCallback;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->unregisterCallback(Lvendor/qti/hardware/servicetracker/V1_2/IActivityEventInfoCallback;)I

    move-result v2

    .line 1088
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1091
    goto/16 :goto_1

    .line 1070
    .end local v0    # "callback":Lvendor/qti/hardware/servicetracker/V1_2/IActivityEventInfoCallback;
    .end local v2    # "_hidl_out_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/servicetracker/V1_2/IActivityEventInfoCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/servicetracker/V1_2/IActivityEventInfoCallback;

    move-result-object v0

    .line 1073
    .restart local v0    # "callback":Lvendor/qti/hardware/servicetracker/V1_2/IActivityEventInfoCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1074
    .local v2, "aNotify":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1075
    .local v3, "userdata":I
    invoke-virtual {p0, v0, v2, v3}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->registerCallback(Lvendor/qti/hardware/servicetracker/V1_2/IActivityEventInfoCallback;II)I

    move-result v4

    .line 1076
    .local v4, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1077
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1079
    goto/16 :goto_1

    .line 1055
    .end local v0    # "callback":Lvendor/qti/hardware/servicetracker/V1_2/IActivityEventInfoCallback;
    .end local v2    # "aNotify":I
    .end local v3    # "userdata":I
    .end local v4    # "_hidl_out_result":I
    :pswitch_3
    const-string v0, "vendor.qti.hardware.servicetracker@1.1::IServicetracker"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$9;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$9;-><init>(Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->getRunningServicePid(Lvendor/qti/hardware/servicetracker/V1_1/IServicetracker$getRunningServicePidCallback;)V

    .line 1065
    goto/16 :goto_1

    .line 1039
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$8;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$8;-><init>(Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->getServiceBCount(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getServiceBCountCallback;)V

    .line 1050
    goto/16 :goto_1

    .line 1023
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$7;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$7;-><init>(Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->isServiceB(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$isServiceBCallback;)V

    .line 1034
    goto/16 :goto_1

    .line 1007
    .end local v0    # "serviceName":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1010
    .local v0, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$6;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$6;-><init>(Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->getPids(Ljava/util/ArrayList;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getPidsCallback;)V

    .line 1018
    goto/16 :goto_1

    .line 991
    .end local v0    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "processName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$5;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$5;-><init>(Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->getPid(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getPidCallback;)V

    .line 1002
    goto/16 :goto_1

    .line 975
    .end local v0    # "processName":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, "clientName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$4;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$4;-><init>(Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->getClientConnections(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getClientConnectionsCallback;)V

    .line 986
    goto/16 :goto_1

    .line 959
    .end local v0    # "clientName":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$3;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$3;-><init>(Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->getServiceConnections(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getServiceConnectionsCallback;)V

    .line 970
    goto/16 :goto_1

    .line 943
    .end local v0    # "serviceName":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 946
    .restart local v0    # "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$2;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$2;-><init>(Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->getserviceInfo(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getserviceInfoCallback;)V

    .line 954
    goto :goto_1

    .line 927
    .end local v0    # "serviceName":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "clientName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub$1;-><init>(Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->getclientInfo(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getclientInfoCallback;)V

    .line 938
    goto :goto_1

    .line 918
    .end local v0    # "clientName":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 921
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->killProcess(I)V

    .line 922
    goto :goto_1

    .line 908
    .end local v0    # "pid":I
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 911
    .local v0, "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 912
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->destroyService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V

    .line 913
    goto :goto_1

    .line 896
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 899
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 900
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v1}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 901
    .local v1, "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 902
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->unbindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V

    .line 903
    goto :goto_1

    .line 884
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 887
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 888
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v1}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 889
    .restart local v1    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 890
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->bindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V

    .line 891
    goto :goto_1

    .line 874
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1    # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 877
    .restart local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 878
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->startService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V

    .line 879
    nop

    .line 1224
    .end local v0    # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

    .line 825
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 853
    const-string v0, "vendor.qti.hardware.servicetracker@1.2::IServicetracker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    return-object p0

    .line 856
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

    .line 860
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->registerService(Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 815
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 847
    const/4 v0, 0x1

    return v0
.end method
