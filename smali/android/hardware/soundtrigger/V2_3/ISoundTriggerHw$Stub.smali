.class public abstract Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;
.super Landroid/os/HwBinder;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 861
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 864
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

    .line 880
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 920
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 921
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 922
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 923
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 924
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

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

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

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x4dt
        0x7ft
        0x78t
        -0x1dt
        -0x3t
        -0x39t
        -0x66t
        -0x8t
        -0x4dt
        0x2at
        0x54t
        0x5bt
        0x2bt
        0x42t
        0x6ft
        0x1ft
        -0x2ft
        0x35t
        0x5bt
        0x35t
        -0x63t
        -0x62t
        0x78t
        0x35t
        -0xdt
        -0x41t
        0x1et
        -0x30t
        -0x56t
        0x45t
        0x18t
        -0x28t
    .end array-data

    :array_1
    .array-data 1
        -0x32t
        0x4bt
        -0x68t
        0x21t
        0x19t
        0x59t
        0x44t
        -0x6dt
        0x61t
        0x14t
        0x6dt
        0x4bt
        0x1et
        0x55t
        0x54t
        -0x24t
        -0x7ct
        0x1ct
        -0x15t
        0x4dt
        0x45t
        0x77t
        0x15t
        0x4dt
        0x7bt
        0x2ft
        -0x4at
        -0x2ft
        -0x15t
        0x50t
        0x4ft
        0x76t
    .end array-data

    :array_2
    .array-data 1
        -0x4ct
        -0xbt
        0x7t
        -0x4ct
        -0x24t
        -0x65t
        0x5ct
        -0x2bt
        -0x10t
        -0x1ct
        0x44t
        0x59t
        0x26t
        -0x54t
        -0x49t
        -0x27t
        0x45t
        0x25t
        -0x52t
        0x60t
        -0x24t
        0x30t
        0x7bt
        0x39t
        0x51t
        0x14t
        0x22t
        -0x7dt
        0x63t
        0x22t
        0x7t
        -0x4at
    .end array-data

    :array_3
    .array-data 1
        0x5bt
        -0x11t
        -0x40t
        0x19t
        -0x35t
        -0x17t
        0x49t
        0x53t
        0x66t
        0x1et
        0x2ct
        -0x25t
        -0x6bt
        -0x1dt
        -0x31t
        0x64t
        -0xbt
        -0x1bt
        0x65t
        -0x3et
        -0x6ct
        0x3t
        -0x1ft
        -0x3et
        -0x26t
        -0x14t
        -0x3et
        -0x42t
        0x44t
        -0x20t
        -0x5bt
        0x5ct
    .end array-data

    :array_4
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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.soundtrigger@2.3::ISoundTriggerHw"

    const-string v2, "android.hardware.soundtrigger@2.2::ISoundTriggerHw"

    const-string v3, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    const-string v4, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 886
    const-string v0, "android.hardware.soundtrigger@2.3::ISoundTriggerHw"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 908
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 930
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 932
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

    .line 960
    const-string v0, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    const-string v1, "android.hardware.soundtrigger@2.3::ISoundTriggerHw"

    const-string v2, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1312
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->notifySyspropsChanged()V

    .line 1315
    goto/16 :goto_1

    .line 1301
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1304
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1305
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1306
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1307
    goto/16 :goto_1

    .line 1291
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->ping()V

    .line 1294
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1295
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1296
    goto/16 :goto_1

    .line 1278
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->setHALInstrumentation()V

    .line 1281
    goto/16 :goto_1

    .line 1244
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1247
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1249
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1251
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1252
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1253
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1254
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1255
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1257
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1258
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1260
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1264
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1265
    nop

    .line 1255
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1261
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1268
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1270
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1272
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1273
    goto/16 :goto_1

    .line 1233
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1237
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1239
    goto/16 :goto_1

    .line 1221
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1224
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1225
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1226
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1227
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1228
    goto/16 :goto_1

    .line 1210
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1213
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1214
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1215
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1216
    goto/16 :goto_1

    .line 1193
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1196
    .local v0, "modelHandle":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1197
    .local v1, "modelParam":I
    new-instance v2, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$8;

    invoke-direct {v2, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$8;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->queryParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$queryParameterCallback;)V

    .line 1205
    goto/16 :goto_1

    .line 1176
    .end local v0    # "modelHandle":I
    .end local v1    # "modelParam":I
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1179
    .restart local v0    # "modelHandle":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1180
    .restart local v1    # "modelParam":I
    new-instance v2, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$7;

    invoke-direct {v2, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$7;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->getParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getParameterCallback;)V

    .line 1188
    goto/16 :goto_1

    .line 1162
    .end local v0    # "modelHandle":I
    .end local v1    # "modelParam":I
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1165
    .restart local v0    # "modelHandle":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1166
    .restart local v1    # "modelParam":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1167
    .local v2, "value":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->setParameter(III)I

    move-result v4

    .line 1168
    .local v4, "_hidl_out_status":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1169
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1171
    goto/16 :goto_1

    .line 1148
    .end local v0    # "modelHandle":I
    .end local v1    # "modelParam":I
    .end local v2    # "value":I
    .end local v4    # "_hidl_out_status":I
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1151
    .restart local v0    # "modelHandle":I
    new-instance v1, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    invoke-direct {v1}, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;-><init>()V

    .line 1152
    .local v1, "config":Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    invoke-virtual {v1, p2}, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1153
    invoke-virtual {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->startRecognition_2_3(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)I

    move-result v2

    .line 1154
    .local v2, "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1155
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1156
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1157
    goto/16 :goto_1

    .line 1133
    .end local v0    # "modelHandle":I
    .end local v1    # "config":Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .end local v2    # "_hidl_out_retval":I
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$6;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$6;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->getProperties_2_3(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getProperties_2_3Callback;)V

    .line 1143
    goto/16 :goto_1

    .line 1121
    :pswitch_5
    const-string v0, "android.hardware.soundtrigger@2.2::ISoundTriggerHw"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1124
    .restart local v0    # "modelHandle":I
    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->getModelState(I)I

    move-result v1

    .line 1125
    .local v1, "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1126
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1128
    goto/16 :goto_1

    .line 1105
    .end local v0    # "modelHandle":I
    .end local v1    # "_hidl_out_retval":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1108
    .restart local v0    # "modelHandle":I
    new-instance v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;-><init>()V

    .line 1109
    .local v1, "config":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;
    invoke-virtual {v1, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1110
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object v2

    .line 1111
    .local v2, "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1112
    .local v4, "cookie":I
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;I)I

    move-result v5

    .line 1113
    .local v5, "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1114
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1115
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1116
    goto/16 :goto_1

    .line 1086
    .end local v0    # "modelHandle":I
    .end local v1    # "config":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;
    .end local v2    # "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    .end local v4    # "cookie":I
    .end local v5    # "_hidl_out_retval":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 1089
    .local v0, "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1090
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object v1

    .line 1091
    .local v1, "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1092
    .local v2, "cookie":I
    new-instance v3, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$5;

    invoke-direct {v3, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$5;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadPhraseSoundModel_2_1Callback;)V

    .line 1100
    goto/16 :goto_1

    .line 1067
    .end local v0    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .end local v1    # "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    .end local v2    # "cookie":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    .line 1070
    .local v0, "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1071
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object v1

    .line 1072
    .restart local v1    # "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1073
    .restart local v2    # "cookie":I
    new-instance v3, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$4;

    invoke-direct {v3, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$4;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadSoundModel_2_1Callback;)V

    .line 1081
    goto/16 :goto_1

    .line 1056
    .end local v0    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .end local v1    # "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    .end local v2    # "cookie":I
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->stopAllRecognitions()I

    move-result v0

    .line 1059
    .local v0, "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1060
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1062
    goto/16 :goto_1

    .line 1044
    .end local v0    # "_hidl_out_retval":I
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1047
    .local v0, "modelHandle":I
    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->stopRecognition(I)I

    move-result v1

    .line 1048
    .local v1, "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1049
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1050
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1051
    goto/16 :goto_1

    .line 1028
    .end local v0    # "modelHandle":I
    .end local v1    # "_hidl_out_retval":I
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1031
    .restart local v0    # "modelHandle":I
    new-instance v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;-><init>()V

    .line 1032
    .local v1, "config":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
    invoke-virtual {v1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1033
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object v2

    .line 1034
    .local v2, "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1035
    .restart local v4    # "cookie":I
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;I)I

    move-result v5

    .line 1036
    .restart local v5    # "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1037
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1038
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1039
    goto :goto_1

    .line 1016
    .end local v0    # "modelHandle":I
    .end local v1    # "config":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
    .end local v2    # "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    .end local v4    # "cookie":I
    .end local v5    # "_hidl_out_retval":I
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1019
    .restart local v0    # "modelHandle":I
    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->unloadSoundModel(I)I

    move-result v1

    .line 1020
    .local v1, "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1021
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1022
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1023
    goto :goto_1

    .line 997
    .end local v0    # "modelHandle":I
    .end local v1    # "_hidl_out_retval":I
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 1000
    .local v0, "soundModel":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object v1

    .line 1002
    .local v1, "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1003
    .local v2, "cookie":I
    new-instance v3, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$3;

    invoke-direct {v3, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$3;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;)V

    .line 1011
    goto :goto_1

    .line 978
    .end local v0    # "soundModel":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
    .end local v1    # "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    .end local v2    # "cookie":I
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;-><init>()V

    .line 981
    .local v0, "soundModel":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object v1

    .line 983
    .restart local v1    # "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 984
    .restart local v2    # "cookie":I
    new-instance v3, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$2;

    invoke-direct {v3, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$2;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;)V

    .line 992
    goto :goto_1

    .line 963
    .end local v0    # "soundModel":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;
    .end local v1    # "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    .end local v2    # "cookie":I
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$1;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->getProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;)V

    .line 973
    nop

    .line 1324
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 914
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 942
    const-string v0, "android.hardware.soundtrigger@2.3::ISoundTriggerHw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    return-object p0

    .line 945
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

    .line 949
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->registerService(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 904
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 936
    const/4 v0, 0x1

    return v0
.end method
