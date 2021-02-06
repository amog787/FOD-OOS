.class public abstract Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;
.super Landroid/os/HwBinder;
.source "IGoodixFingerprintDaemonCallback.java"

# interfaces
.implements Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 332
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

    .line 345
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 382
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 383
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 384
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 385
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 386
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

    .line 357
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
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
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

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemonCallback"

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

    .line 351
    const-string v0, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemonCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 392
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 394
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "android.hidl.base@1.0::IBase"

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    move-object v12, p0

    goto/16 :goto_7

    .line 597
    :sswitch_0
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    move v2, v4

    .line 598
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_1

    .line 599
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 601
    move-object v12, p0

    goto/16 :goto_7

    .line 598
    :cond_1
    move-object v12, p0

    goto/16 :goto_7

    .line 584
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_2

    move v4, v5

    .line 585
    .local v4, "_hidl_is_oneway":Z
    :cond_2
    if-eq v4, v5, :cond_3

    .line 586
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 588
    move-object v12, p0

    goto/16 :goto_7

    .line 589
    :cond_3
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->notifySyspropsChanged()V

    .line 592
    move-object v12, p0

    goto/16 :goto_7

    .line 568
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    move v5, v4

    .line 569
    .local v5, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v5, :cond_5

    .line 570
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 572
    move-object v12, p0

    goto/16 :goto_7

    .line 573
    :cond_5
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v2

    .line 576
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 577
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 579
    move-object v12, p0

    goto/16 :goto_7

    .line 553
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v5    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    move v5, v4

    .line 554
    .restart local v5    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v5, :cond_7

    .line 555
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 557
    move-object v12, p0

    goto/16 :goto_7

    .line 558
    :cond_7
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->ping()V

    .line 561
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 563
    move-object v12, p0

    goto/16 :goto_7

    .line 543
    .end local v5    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_8

    move v4, v5

    :cond_8
    move v2, v4

    .line 544
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_9

    .line 545
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 547
    move-object v12, p0

    goto/16 :goto_7

    .line 544
    :cond_9
    move-object v12, p0

    goto/16 :goto_7

    .line 530
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_a

    move v4, v5

    .line 531
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_a
    if-eq v4, v5, :cond_b

    .line 532
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 534
    move-object v12, p0

    goto/16 :goto_7

    .line 535
    :cond_b
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->setHALInstrumentation()V

    .line 538
    move-object v12, p0

    goto/16 :goto_7

    .line 491
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_c

    goto :goto_2

    :cond_c
    move v5, v4

    .line 492
    .restart local v5    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v5, :cond_d

    .line 493
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 495
    move-object v12, p0

    goto/16 :goto_7

    .line 496
    :cond_d
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 499
    .local v2, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 501
    new-instance v3, Landroid/os/HwBlob;

    const/16 v6, 0x10

    invoke-direct {v3, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 503
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 504
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x8

    invoke-virtual {v3, v7, v8, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 505
    const-wide/16 v7, 0xc

    invoke-virtual {v3, v7, v8, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 506
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v7, v6, 0x20

    invoke-direct {v4, v7}, Landroid/os/HwBlob;-><init>(I)V

    .line 507
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v7, 0x0

    .local v7, "_hidl_index_0":I
    :goto_3
    if-ge v7, v6, :cond_f

    .line 509
    mul-int/lit8 v8, v7, 0x20

    int-to-long v8, v8

    .line 510
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 512
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_e

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_e

    .line 516
    invoke-virtual {v4, v8, v9, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 517
    nop

    .line 507
    .end local v8    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 513
    .restart local v8    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_e
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 520
    .end local v7    # "_hidl_index_0":I
    .end local v8    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_f
    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 522
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 524
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 525
    move-object v12, p0

    goto/16 :goto_7

    .line 475
    .end local v2    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v5    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_10

    goto :goto_4

    :cond_10
    move v5, v4

    .line 476
    .restart local v5    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v5, :cond_11

    .line 477
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 479
    move-object v12, p0

    goto/16 :goto_7

    .line 480
    :cond_11
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 484
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 486
    move-object v12, p0

    goto/16 :goto_7

    .line 458
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v5    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_12

    goto :goto_5

    :cond_12
    move v5, v4

    .line 459
    .restart local v5    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v5, :cond_13

    .line 460
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 462
    move-object v12, p0

    goto/16 :goto_7

    .line 463
    :cond_13
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v2

    .line 466
    .local v2, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 467
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v12, p0

    invoke-virtual {p0, v2, v3}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 468
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 470
    goto :goto_7

    .line 442
    .end local v2    # "fd":Landroid/os/NativeHandle;
    .end local v3    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "_hidl_is_oneway":Z
    :sswitch_9
    move-object v12, p0

    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_14

    goto :goto_6

    :cond_14
    move v5, v4

    .line 443
    .restart local v5    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v5, :cond_15

    .line 444
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 446
    goto :goto_7

    .line 447
    :cond_15
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 450
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 451
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 453
    goto :goto_7

    .line 425
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "_hidl_is_oneway":Z
    :sswitch_a
    move-object v12, p0

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_16

    move v4, v5

    :cond_16
    move v2, v4

    .line 426
    .local v2, "_hidl_is_oneway":Z
    if-eq v2, v5, :cond_17

    .line 427
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 429
    goto :goto_7

    .line 430
    :cond_17
    const-string v3, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemonCallback"

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 433
    .local v3, "a":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 434
    .local v5, "b":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 435
    .local v13, "c":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v14

    .line 436
    .local v14, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object v6, p0

    move-wide v7, v3

    move v9, v5

    move v10, v13

    move-object v11, v14

    invoke-virtual/range {v6 .. v11}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->onDaemonMessage(JIILjava/util/ArrayList;)V

    .line 437
    nop

    .line 606
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "a":J
    .end local v5    # "b":I
    .end local v13    # "c":I
    .end local v14    # "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
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

    .line 376
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 404
    const-string v0, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemonCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    return-object p0

    .line 407
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

    .line 411
    invoke-virtual {p0, p1}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 366
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 398
    const/4 v0, 0x1

    return v0
.end method
