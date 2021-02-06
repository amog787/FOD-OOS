.class public abstract Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;
.super Landroid/os/HwBinder;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1023
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1026
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

    .line 1040
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1078
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1079
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1080
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1081
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1082
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

    .line 1052
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

    :array_1
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

    .line 1031
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    const-string v2, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

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

    .line 1046
    const-string v0, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1066
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1088
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1090
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

    .line 1118
    const-string v0, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1381
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->notifySyspropsChanged()V

    .line 1384
    goto/16 :goto_1

    .line 1370
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1373
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1374
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1375
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1376
    goto/16 :goto_1

    .line 1360
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->ping()V

    .line 1363
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1364
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1365
    goto/16 :goto_1

    .line 1347
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->setHALInstrumentation()V

    .line 1350
    goto/16 :goto_1

    .line 1313
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1316
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1318
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1320
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1321
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1322
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1323
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1324
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1326
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1327
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1329
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1333
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1334
    nop

    .line 1324
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1330
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1337
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1339
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1341
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1342
    goto/16 :goto_1

    .line 1302
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1306
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1308
    goto/16 :goto_1

    .line 1290
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1293
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1294
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1295
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1296
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1297
    goto/16 :goto_1

    .line 1279
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1282
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1283
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1284
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1285
    goto/16 :goto_1

    .line 1263
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1266
    .local v0, "modelHandle":I
    new-instance v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;-><init>()V

    .line 1267
    .local v1, "config":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;
    invoke-virtual {v1, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1268
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object v3

    .line 1269
    .local v3, "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1270
    .local v4, "cookie":I
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;I)I

    move-result v5

    .line 1271
    .local v5, "_hidl_out_retval":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1272
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1273
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1274
    goto/16 :goto_1

    .line 1244
    .end local v0    # "modelHandle":I
    .end local v1    # "config":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;
    .end local v3    # "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    .end local v4    # "cookie":I
    .end local v5    # "_hidl_out_retval":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 1247
    .local v0, "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1248
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object v1

    .line 1249
    .local v1, "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1250
    .local v2, "cookie":I
    new-instance v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$5;

    invoke-direct {v3, p0, p3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$5;-><init>(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadPhraseSoundModel_2_1Callback;)V

    .line 1258
    goto/16 :goto_1

    .line 1225
    .end local v0    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .end local v1    # "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    .end local v2    # "cookie":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    .line 1228
    .local v0, "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1229
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object v1

    .line 1230
    .restart local v1    # "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1231
    .restart local v2    # "cookie":I
    new-instance v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$4;

    invoke-direct {v3, p0, p3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$4;-><init>(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadSoundModel_2_1Callback;)V

    .line 1239
    goto/16 :goto_1

    .line 1214
    .end local v0    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .end local v1    # "callback":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
    .end local v2    # "cookie":I
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->stopAllRecognitions()I

    move-result v0

    .line 1217
    .local v0, "_hidl_out_retval":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1218
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1219
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1220
    goto/16 :goto_1

    .line 1202
    .end local v0    # "_hidl_out_retval":I
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1205
    .local v0, "modelHandle":I
    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->stopRecognition(I)I

    move-result v1

    .line 1206
    .local v1, "_hidl_out_retval":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1207
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1208
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1209
    goto/16 :goto_1

    .line 1186
    .end local v0    # "modelHandle":I
    .end local v1    # "_hidl_out_retval":I
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1189
    .restart local v0    # "modelHandle":I
    new-instance v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;-><init>()V

    .line 1190
    .local v1, "config":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
    invoke-virtual {v1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1191
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object v3

    .line 1192
    .local v3, "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1193
    .restart local v4    # "cookie":I
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;I)I

    move-result v5

    .line 1194
    .restart local v5    # "_hidl_out_retval":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1195
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1196
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1197
    goto :goto_1

    .line 1174
    .end local v0    # "modelHandle":I
    .end local v1    # "config":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
    .end local v3    # "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    .end local v4    # "cookie":I
    .end local v5    # "_hidl_out_retval":I
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1177
    .restart local v0    # "modelHandle":I
    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->unloadSoundModel(I)I

    move-result v1

    .line 1178
    .local v1, "_hidl_out_retval":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1179
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1180
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1181
    goto :goto_1

    .line 1155
    .end local v0    # "modelHandle":I
    .end local v1    # "_hidl_out_retval":I
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 1158
    .local v0, "soundModel":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object v1

    .line 1160
    .local v1, "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1161
    .restart local v2    # "cookie":I
    new-instance v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$3;

    invoke-direct {v3, p0, p3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$3;-><init>(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;)V

    .line 1169
    goto :goto_1

    .line 1136
    .end local v0    # "soundModel":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
    .end local v1    # "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    .end local v2    # "cookie":I
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;-><init>()V

    .line 1139
    .local v0, "soundModel":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1140
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object v1

    .line 1141
    .restart local v1    # "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1142
    .restart local v2    # "cookie":I
    new-instance v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$2;

    invoke-direct {v3, p0, p3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$2;-><init>(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;)V

    .line 1150
    goto :goto_1

    .line 1121
    .end local v0    # "soundModel":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;
    .end local v1    # "callback":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
    .end local v2    # "cookie":I
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub$1;-><init>(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->getProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;)V

    .line 1131
    nop

    .line 1393
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1072
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1100
    const-string v0, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    return-object p0

    .line 1103
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

    .line 1107
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->registerService(Ljava/lang/String;)V

    .line 1108
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1062
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1094
    const/4 v0, 0x1

    return v0
.end method
