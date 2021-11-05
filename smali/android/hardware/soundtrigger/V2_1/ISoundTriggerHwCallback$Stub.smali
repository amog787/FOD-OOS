.class public abstract Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISoundTriggerHwCallback.java"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 842
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 845
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

    .line 859
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 897
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 898
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 899
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 900
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 901
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

    .line 871
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
        -0x6et
        -0x3et
        -0x34t
        0xft
        0x6t
        -0x11t
        0x74t
        0x4ct
        0x5bt
        -0x26t
        0x21t
        -0xft
        -0x2at
        0x60t
        0x25t
        -0x71t
        0x79t
        0x37t
        0x20t
        0x31t
        0x9t
        -0x4ct
        -0x6dt
        -0x12t
        -0x1et
        0x2ct
        0x3ft
        0x3et
        0x2dt
        -0x45t
        0xdt
        0x3et
    .end array-data

    :array_1
    .array-data 1
        0x1at
        0x6et
        0x2bt
        -0x2et
        -0x77t
        -0xet
        0x29t
        0x31t
        -0x3bt
        0x26t
        -0x4et
        0x19t
        0x16t
        -0x6ft
        0xft
        0x1dt
        0x4ct
        0x43t
        0x6bt
        0x7at
        -0x35t
        -0x6bt
        0x56t
        -0x1ct
        0x24t
        0x3dt
        -0x1ct
        -0x32t
        -0x72t
        0x6ct
        -0x3et
        -0x1ct
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

    .line 850
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.soundtrigger@2.1::ISoundTriggerHwCallback"

    const-string v2, "android.hardware.soundtrigger@2.0::ISoundTriggerHwCallback"

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

    .line 865
    const-string v0, "android.hardware.soundtrigger@2.1::ISoundTriggerHwCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 885
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 907
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 909
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

    .line 937
    const-string v0, "android.hardware.soundtrigger@2.1::ISoundTriggerHwCallback"

    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHwCallback"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1120
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->notifySyspropsChanged()V

    .line 1123
    goto/16 :goto_1

    .line 1109
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1112
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1113
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1114
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1115
    goto/16 :goto_1

    .line 1099
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->ping()V

    .line 1102
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1104
    goto/16 :goto_1

    .line 1086
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->setHALInstrumentation()V

    .line 1089
    goto/16 :goto_1

    .line 1052
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1055
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1057
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1059
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1060
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1061
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1062
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1063
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1065
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1066
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1068
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1072
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1073
    nop

    .line 1063
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1069
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1076
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1078
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1080
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1081
    goto/16 :goto_1

    .line 1041
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1045
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1047
    goto/16 :goto_1

    .line 1029
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1032
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1033
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1034
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1035
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1036
    goto/16 :goto_1

    .line 1018
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1021
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1022
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1024
    goto/16 :goto_1

    .line 1005
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$ModelEvent;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$ModelEvent;-><init>()V

    .line 1008
    .local v0, "event":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$ModelEvent;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$ModelEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1010
    .local v1, "cookie":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->soundModelCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$ModelEvent;I)V

    .line 1011
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1012
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1013
    goto/16 :goto_1

    .line 992
    .end local v0    # "event":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$ModelEvent;
    .end local v1    # "cookie":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;-><init>()V

    .line 995
    .local v0, "event":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 996
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 997
    .restart local v1    # "cookie":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->phraseRecognitionCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V

    .line 998
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 999
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1000
    goto :goto_1

    .line 979
    .end local v0    # "event":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;
    .end local v1    # "cookie":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;-><init>()V

    .line 982
    .local v0, "event":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 983
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 984
    .restart local v1    # "cookie":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->recognitionCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;I)V

    .line 985
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 987
    goto :goto_1

    .line 966
    .end local v0    # "event":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;
    .end local v1    # "cookie":I
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;-><init>()V

    .line 969
    .local v0, "event":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 970
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 971
    .restart local v1    # "cookie":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->soundModelCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;I)V

    .line 972
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 973
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 974
    goto :goto_1

    .line 953
    .end local v0    # "event":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;
    .end local v1    # "cookie":I
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;-><init>()V

    .line 956
    .local v0, "event":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 958
    .restart local v1    # "cookie":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->phraseRecognitionCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V

    .line 959
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 961
    goto :goto_1

    .line 940
    .end local v0    # "event":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;
    .end local v1    # "cookie":I
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;-><init>()V

    .line 943
    .local v0, "event":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 945
    .restart local v1    # "cookie":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->recognitionCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;I)V

    .line 946
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 947
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 948
    nop

    .line 1132
    .end local v0    # "event":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;
    .end local v1    # "cookie":I
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 891
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 919
    const-string v0, "android.hardware.soundtrigger@2.1::ISoundTriggerHwCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    return-object p0

    .line 922
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

    .line 926
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 927
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 881
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 913
    const/4 v0, 0x1

    return v0
.end method
