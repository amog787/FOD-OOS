.class public abstract Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;
.super Landroid/os/HwBinder;
.source "IOneplusBrain.java"

# interfaces
.implements Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 410
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

    .line 423
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 460
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 461
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 462
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 463
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 464
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

    .line 435
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
        -0x2bt
        0x37t
        0x6ct
        0x13t
        0x3t
        -0x6t
        0x14t
        0x45t
        -0x70t
        -0x77t
        -0xet
        0x32t
        0x34t
        0x5ct
        0x5bt
        0x7bt
        0x48t
        0x5et
        0x4t
        0x7et
        0x6ct
        -0x56t
        0x73t
        0x74t
        -0x59t
        -0x7et
        0xat
        -0x21t
        -0x4et
        0x57t
        -0x5dt
        -0x1at
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

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.oneplus.hardware.brain@1.0::IOneplusBrain"

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

    .line 429
    const-string v0, "vendor.oneplus.hardware.brain@1.0::IOneplusBrain"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 470
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 472
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

    .line 500
    const-string v0, "vendor.oneplus.hardware.brain@1.0::IOneplusBrain"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1d

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_17

    const/4 v4, 0x4

    if-eq p1, v4, :cond_14

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_b

    .line 728
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 729
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_20

    .line 730
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 731
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 732
    goto/16 :goto_b

    .line 715
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    move v2, v3

    .line 716
    .local v2, "_hidl_is_oneway":Z
    :cond_1
    if-eq v2, v3, :cond_2

    .line 717
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 718
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 719
    goto/16 :goto_b

    .line 720
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->notifySyspropsChanged()V

    .line 723
    goto/16 :goto_b

    .line 699
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 700
    .local v3, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 701
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 702
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 703
    goto/16 :goto_b

    .line 704
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 707
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 708
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 709
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 710
    goto/16 :goto_b

    .line 684
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    .line 685
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 686
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 687
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 688
    goto/16 :goto_b

    .line 689
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->ping()V

    .line 692
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 693
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 694
    goto/16 :goto_b

    .line 674
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    move v0, v2

    .line 675
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_20

    .line 676
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 677
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 678
    goto/16 :goto_b

    .line 661
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8

    move v2, v3

    .line 662
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v2, v3, :cond_9

    .line 663
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 664
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 665
    goto/16 :goto_b

    .line 666
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->setHALInstrumentation()V

    .line 669
    goto/16 :goto_b

    .line 622
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    .line 623
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v3, :cond_b

    .line 624
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 626
    goto/16 :goto_b

    .line 627
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 630
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 632
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 634
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 635
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 636
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 637
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 638
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v4, :cond_d

    .line 640
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 641
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 643
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 647
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 648
    nop

    .line 638
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 644
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 651
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 653
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 655
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 656
    goto/16 :goto_b

    .line 606
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    .line 607
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v3, :cond_f

    .line 608
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 610
    goto/16 :goto_b

    .line 611
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 615
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 617
    goto/16 :goto_b

    .line 589
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    .line 590
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v3, :cond_11

    .line 591
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 592
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 593
    goto/16 :goto_b

    .line 594
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 597
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 598
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 599
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 600
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 601
    goto/16 :goto_b

    .line 573
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    .line 574
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v3, :cond_13

    .line 575
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 577
    goto/16 :goto_b

    .line 578
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 581
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 583
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 584
    goto/16 :goto_b

    .line 554
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :cond_14
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_15

    goto :goto_7

    :cond_15
    move v3, v2

    .line 555
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v3, :cond_16

    .line 556
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 557
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 558
    goto/16 :goto_b

    .line 559
    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "param1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "param2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v4}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->dumpsys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 565
    .local v5, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 566
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 567
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 568
    goto/16 :goto_b

    .line 537
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "param1":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    .end local v4    # "param2":Ljava/lang/String;
    .end local v5    # "_hidl_out_status":I
    :cond_17
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18

    goto :goto_8

    :cond_18
    move v3, v2

    .line 538
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v3, :cond_19

    .line 539
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 541
    goto :goto_b

    .line 542
    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 546
    .local v1, "pid":I
    invoke-virtual {p0, v0, v1}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->notifyAppDied(Ljava/lang/String;I)V

    .line 547
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 548
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 549
    goto :goto_b

    .line 520
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "pid":I
    .end local v3    # "_hidl_is_oneway":Z
    :cond_1a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1b

    goto :goto_9

    :cond_1b
    move v3, v2

    .line 521
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v3, :cond_1c

    .line 522
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 523
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 524
    goto :goto_b

    .line 525
    :cond_1c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 528
    .restart local v0    # "pkgName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 529
    .restart local v1    # "pid":I
    invoke-virtual {p0, v0, v1}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->notifyAppPause(Ljava/lang/String;I)V

    .line 530
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 532
    goto :goto_b

    .line 503
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "pid":I
    .end local v3    # "_hidl_is_oneway":Z
    :cond_1d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e

    goto :goto_a

    :cond_1e
    move v3, v2

    .line 504
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v3, :cond_1f

    .line 505
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 506
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 507
    goto :goto_b

    .line 508
    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .restart local v0    # "pkgName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 512
    .restart local v1    # "pid":I
    invoke-virtual {p0, v0, v1}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->notifyAppResume(Ljava/lang/String;I)V

    .line 513
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 514
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 515
    nop

    .line 737
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "pid":I
    .end local v3    # "_hidl_is_oneway":Z
    :cond_20
    :goto_b
    return-void

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

    .line 454
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 482
    const-string v0, "vendor.oneplus.hardware.brain@1.0::IOneplusBrain"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    return-object p0

    .line 485
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

    .line 489
    invoke-virtual {p0, p1}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->registerService(Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 444
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 476
    const/4 v0, 0x1

    return v0
.end method
