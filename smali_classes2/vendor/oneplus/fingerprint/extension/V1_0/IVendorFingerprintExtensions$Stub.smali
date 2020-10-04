.class public abstract Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;
.super Landroid/os/HwBinder;
.source "IVendorFingerprintExtensions.java"

# interfaces
.implements Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 525
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 528
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

    .line 541
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 578
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 579
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 580
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 581
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 582
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

    .line 553
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
        0x6ct
        0x3ft
        -0x62t
        0x8t
        -0x6dt
        -0x28t
        -0x11t
        -0x48t
        -0x56t
        -0x65t
        -0x54t
        0x4dt
        -0x10t
        -0x2bt
        0x1et
        0x64t
        -0x4dt
        0x23t
        0x4et
        -0x1t
        0x29t
        0x78t
        -0x3et
        0xet
        -0x33t
        -0x1t
        0x36t
        0xat
        -0x4dt
        -0x5et
        0x59t
        0x60t
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

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

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

    .line 547
    const-string v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 566
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 588
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 590
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

    .line 618
    const-string v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_f

    .line 909
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 910
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_24

    .line 911
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 912
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 913
    goto/16 :goto_f

    .line 896
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    move v2, v3

    .line 897
    .local v2, "_hidl_is_oneway":Z
    :cond_1
    if-eq v2, v3, :cond_2

    .line 898
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 899
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 900
    goto/16 :goto_f

    .line 901
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->notifySyspropsChanged()V

    .line 904
    goto/16 :goto_f

    .line 880
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 881
    .local v3, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 882
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 883
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 884
    goto/16 :goto_f

    .line 885
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 888
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 889
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 890
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 891
    goto/16 :goto_f

    .line 865
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    .line 866
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 867
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 868
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 869
    goto/16 :goto_f

    .line 870
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->ping()V

    .line 873
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 874
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 875
    goto/16 :goto_f

    .line 855
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    move v0, v2

    .line 856
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_24

    .line 857
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 859
    goto/16 :goto_f

    .line 842
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8

    move v2, v3

    .line 843
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v2, v3, :cond_9

    .line 844
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 845
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 846
    goto/16 :goto_f

    .line 847
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->setHALInstrumentation()V

    .line 850
    goto/16 :goto_f

    .line 803
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    .line 804
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v3, :cond_b

    .line 805
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 806
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 807
    goto/16 :goto_f

    .line 808
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 811
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 815
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 816
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 817
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 818
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 819
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v4, :cond_d

    .line 821
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 822
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 824
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 828
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 829
    nop

    .line 819
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 825
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 832
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 834
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 836
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 837
    goto/16 :goto_f

    .line 787
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    .line 788
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v3, :cond_f

    .line 789
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 791
    goto/16 :goto_f

    .line 792
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 796
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 798
    goto/16 :goto_f

    .line 770
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    .line 771
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v3, :cond_11

    .line 772
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 774
    goto/16 :goto_f

    .line 775
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 778
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 779
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 780
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 781
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 782
    goto/16 :goto_f

    .line 754
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    .line 755
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v3, :cond_13

    .line 756
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 757
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 758
    goto/16 :goto_f

    .line 759
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 762
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 763
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto/16 :goto_f

    .line 737
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_14

    goto :goto_7

    :cond_14
    move v3, v2

    .line 738
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v3, :cond_15

    .line 739
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 740
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 741
    goto/16 :goto_f

    .line 742
    :cond_15
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 745
    .local v0, "level":I
    invoke-virtual {p0, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->setParam(I)I

    move-result v1

    .line 746
    .local v1, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 747
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 748
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 749
    goto/16 :goto_f

    .line 721
    .end local v0    # "level":I
    .end local v1    # "_hidl_out_debugErrno":I
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_16

    goto :goto_8

    :cond_16
    move v3, v2

    .line 722
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v3, :cond_17

    .line 723
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 724
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 725
    goto/16 :goto_f

    .line 726
    :cond_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->stopAllEngTest()I

    move-result v0

    .line 729
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 730
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 731
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 732
    goto/16 :goto_f

    .line 704
    .end local v0    # "_hidl_out_debugErrno":I
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18

    goto :goto_9

    :cond_18
    move v3, v2

    .line 705
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v3, :cond_19

    .line 706
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 707
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 708
    goto/16 :goto_f

    .line 709
    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 712
    .local v0, "cmdId":I
    invoke-virtual {p0, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->stopEngTest(I)I

    move-result v1

    .line 713
    .restart local v1    # "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 714
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 715
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 716
    goto/16 :goto_f

    .line 687
    .end local v0    # "cmdId":I
    .end local v1    # "_hidl_out_debugErrno":I
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1a

    goto :goto_a

    :cond_1a
    move v3, v2

    .line 688
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v3, :cond_1b

    .line 689
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 690
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 691
    goto/16 :goto_f

    .line 692
    :cond_1b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 695
    .restart local v0    # "cmdId":I
    invoke-virtual {p0, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->startEngTest(I)I

    move-result v1

    .line 696
    .restart local v1    # "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 697
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 698
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 699
    goto/16 :goto_f

    .line 670
    .end local v0    # "cmdId":I
    .end local v1    # "_hidl_out_debugErrno":I
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c

    goto :goto_b

    :cond_1c
    move v3, v2

    .line 671
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v3, :cond_1d

    .line 672
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 673
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 674
    goto/16 :goto_f

    .line 675
    :cond_1d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensionsCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensionsCallback;

    move-result-object v0

    .line 678
    .local v0, "Callback":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensionsCallback;
    invoke-virtual {p0, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->setEngCallback(Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensionsCallback;)I

    move-result v1

    .line 679
    .restart local v1    # "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 680
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 681
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 682
    goto/16 :goto_f

    .line 654
    .end local v0    # "Callback":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensionsCallback;
    .end local v1    # "_hidl_out_debugErrno":I
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e

    goto :goto_c

    :cond_1e
    move v3, v2

    .line 655
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v3, :cond_1f

    .line 656
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 657
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 658
    goto :goto_f

    .line 659
    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->getEngTest()Ljava/util/ArrayList;

    move-result-object v0

    .line 662
    .local v0, "_hidl_out_FpTests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oneplus/fingerprint/extension/V1_0/FpTest;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    invoke-static {p3, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/FpTest;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 664
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 665
    goto :goto_f

    .line 638
    .end local v0    # "_hidl_out_FpTests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oneplus/fingerprint/extension/V1_0/FpTest;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20

    goto :goto_d

    :cond_20
    move v3, v2

    .line 639
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v3, :cond_21

    .line 640
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 641
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 642
    goto :goto_f

    .line 643
    :cond_21
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->getStatus()I

    move-result v0

    .line 646
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 647
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 648
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 649
    goto :goto_f

    .line 621
    .end local v0    # "_hidl_out_debugErrno":I
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_22

    goto :goto_e

    :cond_22
    move v3, v2

    .line 622
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v3, :cond_23

    .line 623
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 624
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 625
    goto :goto_f

    .line 626
    :cond_23
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 629
    .local v0, "status":I
    invoke-virtual {p0, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->updateStatus(I)I

    move-result v1

    .line 630
    .restart local v1    # "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 631
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 632
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 633
    nop

    .line 918
    .end local v0    # "status":I
    .end local v1    # "_hidl_out_debugErrno":I
    .end local v3    # "_hidl_is_oneway":Z
    :cond_24
    :goto_f
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

    .line 572
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 600
    const-string v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    return-object p0

    .line 603
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

    .line 607
    invoke-virtual {p0, p1}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->registerService(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 562
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 594
    const/4 v0, 0x1

    return v0
.end method
