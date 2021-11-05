.class public abstract Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFace.java"

# interfaces
.implements Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 919
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 922
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

    .line 935
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 972
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 973
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 974
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 975
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 976
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

    .line 947
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
        -0x1ft
        -0x71t
        -0xdt
        0x18t
        -0xdt
        -0x4t
        0x43t
        -0x25t
        0x37t
        -0xbt
        0x54t
        0x69t
        0x6dt
        -0x3ct
        -0x1bt
        0x51t
        -0x55t
        -0x47t
        -0x4ft
        0x19t
        -0x43t
        -0x1bt
        0x39t
        0x50t
        -0x9t
        0x3et
        0x28t
        -0x32t
        0x33t
        -0x57t
        0x7at
        0x40t
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

    .line 927
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

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

    .line 941
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 960
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 982
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 984
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

    .line 1012
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1287
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->notifySyspropsChanged()V

    .line 1290
    goto/16 :goto_1

    .line 1276
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1279
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1280
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1281
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1282
    goto/16 :goto_1

    .line 1266
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->ping()V

    .line 1269
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1270
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1271
    goto/16 :goto_1

    .line 1253
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setHALInstrumentation()V

    .line 1256
    goto/16 :goto_1

    .line 1219
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1222
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1224
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1226
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1227
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1228
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1229
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1230
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1232
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1233
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1235
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1239
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1240
    nop

    .line 1230
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1236
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1243
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1245
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1247
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1248
    goto/16 :goto_1

    .line 1208
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1212
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1214
    goto/16 :goto_1

    .line 1196
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1199
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1200
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1201
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1202
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1203
    goto/16 :goto_1

    .line 1185
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1188
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1189
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1191
    goto/16 :goto_1

    .line 1173
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1176
    .local v0, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->resetLockout(Ljava/util/ArrayList;)I

    move-result v2

    .line 1177
    .local v2, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1178
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1179
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1180
    goto/16 :goto_1

    .line 1162
    .end local v0    # "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_out_status":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->userActivity()I

    move-result v0

    .line 1165
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1166
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1168
    goto/16 :goto_1

    .line 1150
    .end local v0    # "_hidl_out_status":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1153
    .local v2, "operationId":J
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->authenticate(J)I

    move-result v0

    .line 1154
    .restart local v0    # "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1155
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1156
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1157
    goto/16 :goto_1

    .line 1138
    .end local v0    # "_hidl_out_status":I
    .end local v2    # "operationId":J
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1141
    .local v0, "faceId":I
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->remove(I)I

    move-result v2

    .line 1142
    .local v2, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1143
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1144
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1145
    goto/16 :goto_1

    .line 1127
    .end local v0    # "faceId":I
    .end local v2    # "_hidl_out_status":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->enumerate()I

    move-result v0

    .line 1130
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1131
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1132
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1133
    goto/16 :goto_1

    .line 1116
    .end local v0    # "_hidl_out_status":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->cancel()I

    move-result v0

    .line 1119
    .restart local v0    # "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1120
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1121
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1122
    goto/16 :goto_1

    .line 1105
    .end local v0    # "_hidl_out_status":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    .line 1108
    .local v0, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1109
    invoke-virtual {v0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1110
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1111
    goto/16 :goto_1

    .line 1092
    .end local v0    # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1095
    .local v0, "feature":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1096
    .local v2, "faceId":I
    invoke-virtual {p0, v0, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object v3

    .line 1097
    .local v3, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1098
    invoke-virtual {v3, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1100
    goto/16 :goto_1

    .line 1077
    .end local v0    # "feature":I
    .end local v2    # "faceId":I
    .end local v3    # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1080
    .restart local v0    # "feature":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1081
    .local v2, "enabled":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 1082
    .local v3, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1083
    .local v4, "faceId":I
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setFeature(IZLjava/util/ArrayList;I)I

    move-result v5

    .line 1084
    .local v5, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1085
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1086
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1087
    goto/16 :goto_1

    .line 1066
    .end local v0    # "feature":I
    .end local v2    # "enabled":Z
    .end local v3    # "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "faceId":I
    .end local v5    # "_hidl_out_status":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->revokeChallenge()I

    move-result v0

    .line 1069
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1070
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1071
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1072
    goto :goto_1

    .line 1052
    .end local v0    # "_hidl_out_status":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1055
    .local v0, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1056
    .local v2, "timeoutSec":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 1057
    .local v3, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result v4

    .line 1058
    .local v4, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1059
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1060
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1061
    goto :goto_1

    .line 1040
    .end local v0    # "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "timeoutSec":I
    .end local v3    # "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "_hidl_out_status":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1043
    .local v0, "challengeTimeoutSec":I
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v2

    .line 1044
    .local v2, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1045
    invoke-virtual {v2, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1046
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1047
    goto :goto_1

    .line 1027
    .end local v0    # "challengeTimeoutSec":I
    .end local v2    # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1030
    .local v0, "userId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    .local v2, "storePath":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setActiveUser(ILjava/lang/String;)I

    move-result v3

    .line 1032
    .local v3, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1033
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1035
    goto :goto_1

    .line 1015
    .end local v0    # "userId":I
    .end local v2    # "storePath":Ljava/lang/String;
    .end local v3    # "_hidl_out_status":I
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    move-result-object v0

    .line 1018
    .local v0, "clientCallback":Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v2

    .line 1019
    .local v2, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1020
    invoke-virtual {v2, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1021
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1022
    nop

    .line 1299
    .end local v0    # "clientCallback":Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;
    .end local v2    # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :goto_1
    return-void

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

    .line 966
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 994
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    return-object p0

    .line 997
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

    .line 1001
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->registerService(Ljava/lang/String;)V

    .line 1002
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 956
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 988
    const/4 v0, 0x1

    return v0
.end method
