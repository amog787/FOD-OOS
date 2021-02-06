.class public final Landroid/hardware/audio/common/V2_0/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# static fields
.field public static final AAC:I = 0x4000000

.field public static final AAC_ADIF:I = 0x14000000

.field public static final AAC_ADTS:I = 0x1e000000

.field public static final AAC_ADTS_ELD:I = 0x1e000200

.field public static final AAC_ADTS_ERLC:I = 0x1e000040

.field public static final AAC_ADTS_HE_V1:I = 0x1e000010

.field public static final AAC_ADTS_HE_V2:I = 0x1e000100

.field public static final AAC_ADTS_LC:I = 0x1e000002

.field public static final AAC_ADTS_LD:I = 0x1e000080

.field public static final AAC_ADTS_LTP:I = 0x1e000008

.field public static final AAC_ADTS_MAIN:I = 0x1e000001

.field public static final AAC_ADTS_SCALABLE:I = 0x1e000020

.field public static final AAC_ADTS_SSR:I = 0x1e000004

.field public static final AAC_ELD:I = 0x4000200

.field public static final AAC_ERLC:I = 0x4000040

.field public static final AAC_HE_V1:I = 0x4000010

.field public static final AAC_HE_V2:I = 0x4000100

.field public static final AAC_LC:I = 0x4000002

.field public static final AAC_LD:I = 0x4000080

.field public static final AAC_LTP:I = 0x4000008

.field public static final AAC_MAIN:I = 0x4000001

.field public static final AAC_SCALABLE:I = 0x4000020

.field public static final AAC_SSR:I = 0x4000004

.field public static final AAC_SUB_ELD:I = 0x200

.field public static final AAC_SUB_ERLC:I = 0x40

.field public static final AAC_SUB_HE_V1:I = 0x10

.field public static final AAC_SUB_HE_V2:I = 0x100

.field public static final AAC_SUB_LC:I = 0x2

.field public static final AAC_SUB_LD:I = 0x80

.field public static final AAC_SUB_LTP:I = 0x8

.field public static final AAC_SUB_MAIN:I = 0x1

.field public static final AAC_SUB_SCALABLE:I = 0x20

.field public static final AAC_SUB_SSR:I = 0x4

.field public static final AC3:I = 0x9000000

.field public static final AC4:I = 0x22000000

.field public static final ALAC:I = 0x1c000000

.field public static final AMR_NB:I = 0x2000000

.field public static final AMR_SUB_NONE:I = 0x0

.field public static final AMR_WB:I = 0x3000000

.field public static final AMR_WB_PLUS:I = 0x17000000

.field public static final APE:I = 0x1d000000

.field public static final APTX:I = 0x20000000

.field public static final APTX_HD:I = 0x21000000

.field public static final DEFAULT:I = 0x0

.field public static final DOLBY_TRUEHD:I = 0xe000000

.field public static final DSD:I = 0x1a000000

.field public static final DTS:I = 0xb000000

.field public static final DTS_HD:I = 0xc000000

.field public static final EVRC:I = 0x10000000

.field public static final EVRCB:I = 0x11000000

.field public static final EVRCNW:I = 0x13000000

.field public static final EVRCWB:I = 0x12000000

.field public static final E_AC3:I = 0xa000000

.field public static final FLAC:I = 0x1b000000

.field public static final HE_AAC_V1:I = 0x5000000

.field public static final HE_AAC_V2:I = 0x6000000

.field public static final IEC61937:I = 0xd000000

.field public static final INVALID:I = -0x1

.field public static final LDAC:I = 0x23000000

.field public static final MAIN_MASK:I = -0x1000000

.field public static final MP2:I = 0x18000000

.field public static final MP3:I = 0x1000000

.field public static final MP3_SUB_NONE:I = 0x0

.field public static final OPUS:I = 0x8000000

.field public static final PCM:I = 0x0

.field public static final PCM_16_BIT:I = 0x1

.field public static final PCM_24_BIT_PACKED:I = 0x6

.field public static final PCM_32_BIT:I = 0x3

.field public static final PCM_8_24_BIT:I = 0x4

.field public static final PCM_8_BIT:I = 0x2

.field public static final PCM_FLOAT:I = 0x5

.field public static final PCM_SUB_16_BIT:I = 0x1

.field public static final PCM_SUB_24_BIT_PACKED:I = 0x6

.field public static final PCM_SUB_32_BIT:I = 0x3

.field public static final PCM_SUB_8_24_BIT:I = 0x4

.field public static final PCM_SUB_8_BIT:I = 0x2

.field public static final PCM_SUB_FLOAT:I = 0x5

.field public static final QCELP:I = 0x19000000

.field public static final SBC:I = 0x1f000000

.field public static final SUB_MASK:I = 0xffffff

.field public static final VORBIS:I = 0x7000000

.field public static final VORBIS_SUB_NONE:I = 0x0

.field public static final WMA:I = 0x15000000

.field public static final WMA_PRO:I = 0x16000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 10
    .param p0, "o"    # I

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 372
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 373
    const-string v2, "INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    or-int/lit8 v1, v1, -0x1

    .line 376
    :cond_0
    const-string v2, "DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v2, "PCM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    const/high16 v2, 0x1000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    .line 379
    const-string v3, "MP3"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    or-int/2addr v1, v2

    .line 382
    :cond_1
    const/high16 v2, 0x2000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    .line 383
    const-string v3, "AMR_NB"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    or-int/2addr v1, v2

    .line 386
    :cond_2
    const/high16 v2, 0x3000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    .line 387
    const-string v3, "AMR_WB"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    or-int/2addr v1, v2

    .line 390
    :cond_3
    const/high16 v2, 0x4000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    .line 391
    const-string v3, "AAC"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    or-int/2addr v1, v2

    .line 394
    :cond_4
    const/high16 v2, 0x5000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_5

    .line 395
    const-string v3, "HE_AAC_V1"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    or-int/2addr v1, v2

    .line 398
    :cond_5
    const/high16 v2, 0x6000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_6

    .line 399
    const-string v3, "HE_AAC_V2"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    or-int/2addr v1, v2

    .line 402
    :cond_6
    const/high16 v2, 0x7000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_7

    .line 403
    const-string v3, "VORBIS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    or-int/2addr v1, v2

    .line 406
    :cond_7
    const/high16 v2, 0x8000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_8

    .line 407
    const-string v3, "OPUS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    or-int/2addr v1, v2

    .line 410
    :cond_8
    const/high16 v2, 0x9000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_9

    .line 411
    const-string v3, "AC3"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    or-int/2addr v1, v2

    .line 414
    :cond_9
    const/high16 v2, 0xa000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_a

    .line 415
    const-string v3, "E_AC3"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    or-int/2addr v1, v2

    .line 418
    :cond_a
    const/high16 v2, 0xb000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_b

    .line 419
    const-string v3, "DTS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    or-int/2addr v1, v2

    .line 422
    :cond_b
    const/high16 v2, 0xc000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_c

    .line 423
    const-string v3, "DTS_HD"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    or-int/2addr v1, v2

    .line 426
    :cond_c
    const/high16 v2, 0xd000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_d

    .line 427
    const-string v3, "IEC61937"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    or-int/2addr v1, v2

    .line 430
    :cond_d
    const/high16 v2, 0xe000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_e

    .line 431
    const-string v3, "DOLBY_TRUEHD"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    or-int/2addr v1, v2

    .line 434
    :cond_e
    const/high16 v2, 0x10000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_f

    .line 435
    const-string v3, "EVRC"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    or-int/2addr v1, v2

    .line 438
    :cond_f
    const/high16 v2, 0x11000000

    and-int/2addr v2, p0

    const/high16 v3, 0x11000000

    if-ne v2, v3, :cond_10

    .line 439
    const-string v2, "EVRCB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    const/high16 v2, 0x11000000

    or-int/2addr v1, v2

    .line 442
    :cond_10
    const/high16 v2, 0x12000000

    and-int/2addr v2, p0

    const/high16 v3, 0x12000000

    if-ne v2, v3, :cond_11

    .line 443
    const-string v2, "EVRCWB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    const/high16 v2, 0x12000000

    or-int/2addr v1, v2

    .line 446
    :cond_11
    const/high16 v2, 0x13000000

    and-int/2addr v2, p0

    const/high16 v3, 0x13000000

    if-ne v2, v3, :cond_12

    .line 447
    const-string v2, "EVRCNW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    const/high16 v2, 0x13000000

    or-int/2addr v1, v2

    .line 450
    :cond_12
    const/high16 v2, 0x14000000

    and-int/2addr v2, p0

    const/high16 v3, 0x14000000

    if-ne v2, v3, :cond_13

    .line 451
    const-string v2, "AAC_ADIF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    const/high16 v2, 0x14000000

    or-int/2addr v1, v2

    .line 454
    :cond_13
    const/high16 v2, 0x15000000

    and-int/2addr v2, p0

    const/high16 v3, 0x15000000

    if-ne v2, v3, :cond_14

    .line 455
    const-string v2, "WMA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    const/high16 v2, 0x15000000

    or-int/2addr v1, v2

    .line 458
    :cond_14
    const/high16 v2, 0x16000000

    and-int/2addr v2, p0

    const/high16 v3, 0x16000000

    if-ne v2, v3, :cond_15

    .line 459
    const-string v2, "WMA_PRO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    const/high16 v2, 0x16000000

    or-int/2addr v1, v2

    .line 462
    :cond_15
    const/high16 v2, 0x17000000

    and-int/2addr v2, p0

    const/high16 v3, 0x17000000

    if-ne v2, v3, :cond_16

    .line 463
    const-string v2, "AMR_WB_PLUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    const/high16 v2, 0x17000000

    or-int/2addr v1, v2

    .line 466
    :cond_16
    const/high16 v2, 0x18000000

    and-int/2addr v2, p0

    const/high16 v3, 0x18000000

    if-ne v2, v3, :cond_17

    .line 467
    const-string v2, "MP2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const/high16 v2, 0x18000000

    or-int/2addr v1, v2

    .line 470
    :cond_17
    const/high16 v2, 0x19000000

    and-int/2addr v2, p0

    const/high16 v3, 0x19000000

    if-ne v2, v3, :cond_18

    .line 471
    const-string v2, "QCELP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    const/high16 v2, 0x19000000

    or-int/2addr v1, v2

    .line 474
    :cond_18
    const/high16 v2, 0x1a000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1a000000

    if-ne v2, v3, :cond_19

    .line 475
    const-string v2, "DSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const/high16 v2, 0x1a000000

    or-int/2addr v1, v2

    .line 478
    :cond_19
    const/high16 v2, 0x1b000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1b000000

    if-ne v2, v3, :cond_1a

    .line 479
    const-string v2, "FLAC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    const/high16 v2, 0x1b000000

    or-int/2addr v1, v2

    .line 482
    :cond_1a
    const/high16 v2, 0x1c000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1c000000

    if-ne v2, v3, :cond_1b

    .line 483
    const-string v2, "ALAC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    const/high16 v2, 0x1c000000

    or-int/2addr v1, v2

    .line 486
    :cond_1b
    const/high16 v2, 0x1d000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1d000000

    if-ne v2, v3, :cond_1c

    .line 487
    const-string v2, "APE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    const/high16 v2, 0x1d000000

    or-int/2addr v1, v2

    .line 490
    :cond_1c
    const/high16 v2, 0x1e000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1e000000

    if-ne v2, v3, :cond_1d

    .line 491
    const-string v2, "AAC_ADTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const/high16 v2, 0x1e000000

    or-int/2addr v1, v2

    .line 494
    :cond_1d
    const/high16 v2, 0x1f000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1f000000

    if-ne v2, v3, :cond_1e

    .line 495
    const-string v2, "SBC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    const/high16 v2, 0x1f000000

    or-int/2addr v1, v2

    .line 498
    :cond_1e
    const/high16 v2, 0x20000000

    and-int/2addr v2, p0

    const/high16 v3, 0x20000000

    if-ne v2, v3, :cond_1f

    .line 499
    const-string v2, "APTX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    .line 502
    :cond_1f
    const/high16 v2, 0x21000000

    and-int/2addr v2, p0

    const/high16 v3, 0x21000000

    if-ne v2, v3, :cond_20

    .line 503
    const-string v2, "APTX_HD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    const/high16 v2, 0x21000000

    or-int/2addr v1, v2

    .line 506
    :cond_20
    const/high16 v2, 0x22000000

    and-int/2addr v2, p0

    const/high16 v3, 0x22000000

    if-ne v2, v3, :cond_21

    .line 507
    const-string v2, "AC4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    const/high16 v2, 0x22000000

    or-int/2addr v1, v2

    .line 510
    :cond_21
    const/high16 v2, 0x23000000

    and-int/2addr v2, p0

    const/high16 v3, 0x23000000

    if-ne v2, v3, :cond_22

    .line 511
    const-string v2, "LDAC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    const/high16 v2, 0x23000000

    or-int/2addr v1, v2

    .line 514
    :cond_22
    const/high16 v2, -0x1000000

    and-int/2addr v2, p0

    const/high16 v3, -0x1000000

    if-ne v2, v3, :cond_23

    .line 515
    const-string v2, "MAIN_MASK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    .line 518
    :cond_23
    const v2, 0xffffff

    and-int/2addr v2, p0

    const v3, 0xffffff

    if-ne v2, v3, :cond_24

    .line 519
    const-string v2, "SUB_MASK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    const v2, 0xffffff

    or-int/2addr v1, v2

    .line 522
    :cond_24
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 523
    const-string v2, "PCM_SUB_16_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    or-int/lit8 v1, v1, 0x1

    .line 526
    :cond_25
    and-int/lit8 v2, p0, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_26

    .line 527
    const-string v2, "PCM_SUB_8_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    or-int/lit8 v1, v1, 0x2

    .line 530
    :cond_26
    and-int/lit8 v2, p0, 0x3

    const/4 v5, 0x3

    if-ne v2, v5, :cond_27

    .line 531
    const-string v2, "PCM_SUB_32_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    or-int/lit8 v1, v1, 0x3

    .line 534
    :cond_27
    and-int/lit8 v2, p0, 0x4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_28

    .line 535
    const-string v2, "PCM_SUB_8_24_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    or-int/lit8 v1, v1, 0x4

    .line 538
    :cond_28
    and-int/lit8 v2, p0, 0x5

    const/4 v7, 0x5

    if-ne v2, v7, :cond_29

    .line 539
    const-string v2, "PCM_SUB_FLOAT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    or-int/lit8 v1, v1, 0x5

    .line 542
    :cond_29
    and-int/lit8 v2, p0, 0x6

    const/4 v8, 0x6

    if-ne v2, v8, :cond_2a

    .line 543
    const-string v2, "PCM_SUB_24_BIT_PACKED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    or-int/lit8 v1, v1, 0x6

    .line 546
    :cond_2a
    const-string v2, "MP3_SUB_NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    const-string v2, "AMR_SUB_NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    and-int/lit8 v2, p0, 0x1

    if-ne v2, v3, :cond_2b

    .line 549
    const-string v2, "AAC_SUB_MAIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    or-int/lit8 v1, v1, 0x1

    .line 552
    :cond_2b
    and-int/lit8 v2, p0, 0x2

    if-ne v2, v4, :cond_2c

    .line 553
    const-string v2, "AAC_SUB_LC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    or-int/lit8 v1, v1, 0x2

    .line 556
    :cond_2c
    and-int/lit8 v2, p0, 0x4

    if-ne v2, v6, :cond_2d

    .line 557
    const-string v2, "AAC_SUB_SSR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    or-int/lit8 v1, v1, 0x4

    .line 560
    :cond_2d
    and-int/lit8 v2, p0, 0x8

    const/16 v9, 0x8

    if-ne v2, v9, :cond_2e

    .line 561
    const-string v2, "AAC_SUB_LTP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    or-int/lit8 v1, v1, 0x8

    .line 564
    :cond_2e
    and-int/lit8 v2, p0, 0x10

    const/16 v9, 0x10

    if-ne v2, v9, :cond_2f

    .line 565
    const-string v2, "AAC_SUB_HE_V1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    or-int/lit8 v1, v1, 0x10

    .line 568
    :cond_2f
    and-int/lit8 v2, p0, 0x20

    const/16 v9, 0x20

    if-ne v2, v9, :cond_30

    .line 569
    const-string v2, "AAC_SUB_SCALABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    or-int/lit8 v1, v1, 0x20

    .line 572
    :cond_30
    and-int/lit8 v2, p0, 0x40

    const/16 v9, 0x40

    if-ne v2, v9, :cond_31

    .line 573
    const-string v2, "AAC_SUB_ERLC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    or-int/lit8 v1, v1, 0x40

    .line 576
    :cond_31
    and-int/lit16 v2, p0, 0x80

    const/16 v9, 0x80

    if-ne v2, v9, :cond_32

    .line 577
    const-string v2, "AAC_SUB_LD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    or-int/lit16 v1, v1, 0x80

    .line 580
    :cond_32
    and-int/lit16 v2, p0, 0x100

    const/16 v9, 0x100

    if-ne v2, v9, :cond_33

    .line 581
    const-string v2, "AAC_SUB_HE_V2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    or-int/lit16 v1, v1, 0x100

    .line 584
    :cond_33
    and-int/lit16 v2, p0, 0x200

    const/16 v9, 0x200

    if-ne v2, v9, :cond_34

    .line 585
    const-string v2, "AAC_SUB_ELD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    or-int/lit16 v1, v1, 0x200

    .line 588
    :cond_34
    const-string v2, "VORBIS_SUB_NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    and-int/lit8 v2, p0, 0x1

    if-ne v2, v3, :cond_35

    .line 590
    const-string v2, "PCM_16_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    or-int/lit8 v1, v1, 0x1

    .line 593
    :cond_35
    and-int/lit8 v2, p0, 0x2

    if-ne v2, v4, :cond_36

    .line 594
    const-string v2, "PCM_8_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    or-int/lit8 v1, v1, 0x2

    .line 597
    :cond_36
    and-int/lit8 v2, p0, 0x3

    if-ne v2, v5, :cond_37

    .line 598
    const-string v2, "PCM_32_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    or-int/lit8 v1, v1, 0x3

    .line 601
    :cond_37
    and-int/lit8 v2, p0, 0x4

    if-ne v2, v6, :cond_38

    .line 602
    const-string v2, "PCM_8_24_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    or-int/lit8 v1, v1, 0x4

    .line 605
    :cond_38
    and-int/lit8 v2, p0, 0x5

    if-ne v2, v7, :cond_39

    .line 606
    const-string v2, "PCM_FLOAT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    or-int/lit8 v1, v1, 0x5

    .line 609
    :cond_39
    and-int/lit8 v2, p0, 0x6

    if-ne v2, v8, :cond_3a

    .line 610
    const-string v2, "PCM_24_BIT_PACKED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    or-int/lit8 v1, v1, 0x6

    .line 613
    :cond_3a
    const v2, 0x4000001

    and-int/2addr v2, p0

    const v3, 0x4000001

    if-ne v2, v3, :cond_3b

    .line 614
    const-string v2, "AAC_MAIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    const v2, 0x4000001

    or-int/2addr v1, v2

    .line 617
    :cond_3b
    const v2, 0x4000002

    and-int/2addr v2, p0

    const v3, 0x4000002

    if-ne v2, v3, :cond_3c

    .line 618
    const-string v2, "AAC_LC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    const v2, 0x4000002

    or-int/2addr v1, v2

    .line 621
    :cond_3c
    const v2, 0x4000004

    and-int/2addr v2, p0

    const v3, 0x4000004

    if-ne v2, v3, :cond_3d

    .line 622
    const-string v2, "AAC_SSR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    const v2, 0x4000004

    or-int/2addr v1, v2

    .line 625
    :cond_3d
    const v2, 0x4000008

    and-int/2addr v2, p0

    const v3, 0x4000008

    if-ne v2, v3, :cond_3e

    .line 626
    const-string v2, "AAC_LTP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    const v2, 0x4000008

    or-int/2addr v1, v2

    .line 629
    :cond_3e
    const v2, 0x4000010

    and-int/2addr v2, p0

    const v3, 0x4000010

    if-ne v2, v3, :cond_3f

    .line 630
    const-string v2, "AAC_HE_V1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    const v2, 0x4000010

    or-int/2addr v1, v2

    .line 633
    :cond_3f
    const v2, 0x4000020

    and-int/2addr v2, p0

    const v3, 0x4000020

    if-ne v2, v3, :cond_40

    .line 634
    const-string v2, "AAC_SCALABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    const v2, 0x4000020

    or-int/2addr v1, v2

    .line 637
    :cond_40
    const v2, 0x4000040

    and-int/2addr v2, p0

    const v3, 0x4000040

    if-ne v2, v3, :cond_41

    .line 638
    const-string v2, "AAC_ERLC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    const v2, 0x4000040

    or-int/2addr v1, v2

    .line 641
    :cond_41
    const v2, 0x4000080

    and-int/2addr v2, p0

    const v3, 0x4000080

    if-ne v2, v3, :cond_42

    .line 642
    const-string v2, "AAC_LD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    const v2, 0x4000080

    or-int/2addr v1, v2

    .line 645
    :cond_42
    const v2, 0x4000100

    and-int/2addr v2, p0

    const v3, 0x4000100

    if-ne v2, v3, :cond_43

    .line 646
    const-string v2, "AAC_HE_V2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    const v2, 0x4000100

    or-int/2addr v1, v2

    .line 649
    :cond_43
    const v2, 0x4000200

    and-int/2addr v2, p0

    const v3, 0x4000200

    if-ne v2, v3, :cond_44

    .line 650
    const-string v2, "AAC_ELD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    const v2, 0x4000200

    or-int/2addr v1, v2

    .line 653
    :cond_44
    const v2, 0x1e000001

    and-int/2addr v2, p0

    const v3, 0x1e000001

    if-ne v2, v3, :cond_45

    .line 654
    const-string v2, "AAC_ADTS_MAIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    const v2, 0x1e000001

    or-int/2addr v1, v2

    .line 657
    :cond_45
    const v2, 0x1e000002

    and-int/2addr v2, p0

    const v3, 0x1e000002

    if-ne v2, v3, :cond_46

    .line 658
    const-string v2, "AAC_ADTS_LC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    const v2, 0x1e000002

    or-int/2addr v1, v2

    .line 661
    :cond_46
    const v2, 0x1e000004

    and-int/2addr v2, p0

    const v3, 0x1e000004

    if-ne v2, v3, :cond_47

    .line 662
    const-string v2, "AAC_ADTS_SSR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    const v2, 0x1e000004

    or-int/2addr v1, v2

    .line 665
    :cond_47
    const v2, 0x1e000008

    and-int/2addr v2, p0

    const v3, 0x1e000008

    if-ne v2, v3, :cond_48

    .line 666
    const-string v2, "AAC_ADTS_LTP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    const v2, 0x1e000008

    or-int/2addr v1, v2

    .line 669
    :cond_48
    const v2, 0x1e000010

    and-int/2addr v2, p0

    const v3, 0x1e000010

    if-ne v2, v3, :cond_49

    .line 670
    const-string v2, "AAC_ADTS_HE_V1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    const v2, 0x1e000010

    or-int/2addr v1, v2

    .line 673
    :cond_49
    const v2, 0x1e000020

    and-int/2addr v2, p0

    const v3, 0x1e000020

    if-ne v2, v3, :cond_4a

    .line 674
    const-string v2, "AAC_ADTS_SCALABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    const v2, 0x1e000020

    or-int/2addr v1, v2

    .line 677
    :cond_4a
    const v2, 0x1e000040

    and-int/2addr v2, p0

    const v3, 0x1e000040

    if-ne v2, v3, :cond_4b

    .line 678
    const-string v2, "AAC_ADTS_ERLC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    const v2, 0x1e000040

    or-int/2addr v1, v2

    .line 681
    :cond_4b
    const v2, 0x1e000080

    and-int/2addr v2, p0

    const v3, 0x1e000080

    if-ne v2, v3, :cond_4c

    .line 682
    const-string v2, "AAC_ADTS_LD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    const v2, 0x1e000080

    or-int/2addr v1, v2

    .line 685
    :cond_4c
    const v2, 0x1e000100

    and-int/2addr v2, p0

    const v3, 0x1e000100

    if-ne v2, v3, :cond_4d

    .line 686
    const-string v2, "AAC_ADTS_HE_V2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    const v2, 0x1e000100

    or-int/2addr v1, v2

    .line 689
    :cond_4d
    const v2, 0x1e000200

    and-int/2addr v2, p0

    const v3, 0x1e000200

    if-ne v2, v3, :cond_4e

    .line 690
    const-string v2, "AAC_ADTS_ELD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    const v2, 0x1e000200

    or-int/2addr v1, v2

    .line 693
    :cond_4e
    if-eq p0, v1, :cond_4f

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_4f
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 7
    .param p0, "o"    # I

    .line 114
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 115
    const-string v0, "INVALID"

    return-object v0

    .line 117
    :cond_0
    if-nez p0, :cond_1

    .line 118
    const-string v0, "DEFAULT"

    return-object v0

    .line 120
    :cond_1
    if-nez p0, :cond_2

    .line 121
    const-string v0, "PCM"

    return-object v0

    .line 123
    :cond_2
    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_3

    .line 124
    const-string v0, "MP3"

    return-object v0

    .line 126
    :cond_3
    const/high16 v0, 0x2000000

    if-ne p0, v0, :cond_4

    .line 127
    const-string v0, "AMR_NB"

    return-object v0

    .line 129
    :cond_4
    const/high16 v0, 0x3000000

    if-ne p0, v0, :cond_5

    .line 130
    const-string v0, "AMR_WB"

    return-object v0

    .line 132
    :cond_5
    const/high16 v0, 0x4000000

    if-ne p0, v0, :cond_6

    .line 133
    const-string v0, "AAC"

    return-object v0

    .line 135
    :cond_6
    const/high16 v0, 0x5000000

    if-ne p0, v0, :cond_7

    .line 136
    const-string v0, "HE_AAC_V1"

    return-object v0

    .line 138
    :cond_7
    const/high16 v0, 0x6000000

    if-ne p0, v0, :cond_8

    .line 139
    const-string v0, "HE_AAC_V2"

    return-object v0

    .line 141
    :cond_8
    const/high16 v0, 0x7000000

    if-ne p0, v0, :cond_9

    .line 142
    const-string v0, "VORBIS"

    return-object v0

    .line 144
    :cond_9
    const/high16 v0, 0x8000000

    if-ne p0, v0, :cond_a

    .line 145
    const-string v0, "OPUS"

    return-object v0

    .line 147
    :cond_a
    const/high16 v0, 0x9000000

    if-ne p0, v0, :cond_b

    .line 148
    const-string v0, "AC3"

    return-object v0

    .line 150
    :cond_b
    const/high16 v0, 0xa000000

    if-ne p0, v0, :cond_c

    .line 151
    const-string v0, "E_AC3"

    return-object v0

    .line 153
    :cond_c
    const/high16 v0, 0xb000000

    if-ne p0, v0, :cond_d

    .line 154
    const-string v0, "DTS"

    return-object v0

    .line 156
    :cond_d
    const/high16 v0, 0xc000000

    if-ne p0, v0, :cond_e

    .line 157
    const-string v0, "DTS_HD"

    return-object v0

    .line 159
    :cond_e
    const/high16 v0, 0xd000000

    if-ne p0, v0, :cond_f

    .line 160
    const-string v0, "IEC61937"

    return-object v0

    .line 162
    :cond_f
    const/high16 v0, 0xe000000

    if-ne p0, v0, :cond_10

    .line 163
    const-string v0, "DOLBY_TRUEHD"

    return-object v0

    .line 165
    :cond_10
    const/high16 v0, 0x10000000

    if-ne p0, v0, :cond_11

    .line 166
    const-string v0, "EVRC"

    return-object v0

    .line 168
    :cond_11
    const/high16 v0, 0x11000000

    if-ne p0, v0, :cond_12

    .line 169
    const-string v0, "EVRCB"

    return-object v0

    .line 171
    :cond_12
    const/high16 v0, 0x12000000

    if-ne p0, v0, :cond_13

    .line 172
    const-string v0, "EVRCWB"

    return-object v0

    .line 174
    :cond_13
    const/high16 v0, 0x13000000

    if-ne p0, v0, :cond_14

    .line 175
    const-string v0, "EVRCNW"

    return-object v0

    .line 177
    :cond_14
    const/high16 v0, 0x14000000

    if-ne p0, v0, :cond_15

    .line 178
    const-string v0, "AAC_ADIF"

    return-object v0

    .line 180
    :cond_15
    const/high16 v0, 0x15000000

    if-ne p0, v0, :cond_16

    .line 181
    const-string v0, "WMA"

    return-object v0

    .line 183
    :cond_16
    const/high16 v0, 0x16000000

    if-ne p0, v0, :cond_17

    .line 184
    const-string v0, "WMA_PRO"

    return-object v0

    .line 186
    :cond_17
    const/high16 v0, 0x17000000

    if-ne p0, v0, :cond_18

    .line 187
    const-string v0, "AMR_WB_PLUS"

    return-object v0

    .line 189
    :cond_18
    const/high16 v0, 0x18000000

    if-ne p0, v0, :cond_19

    .line 190
    const-string v0, "MP2"

    return-object v0

    .line 192
    :cond_19
    const/high16 v0, 0x19000000

    if-ne p0, v0, :cond_1a

    .line 193
    const-string v0, "QCELP"

    return-object v0

    .line 195
    :cond_1a
    const/high16 v0, 0x1a000000

    if-ne p0, v0, :cond_1b

    .line 196
    const-string v0, "DSD"

    return-object v0

    .line 198
    :cond_1b
    const/high16 v0, 0x1b000000

    if-ne p0, v0, :cond_1c

    .line 199
    const-string v0, "FLAC"

    return-object v0

    .line 201
    :cond_1c
    const/high16 v0, 0x1c000000

    if-ne p0, v0, :cond_1d

    .line 202
    const-string v0, "ALAC"

    return-object v0

    .line 204
    :cond_1d
    const/high16 v0, 0x1d000000

    if-ne p0, v0, :cond_1e

    .line 205
    const-string v0, "APE"

    return-object v0

    .line 207
    :cond_1e
    const/high16 v0, 0x1e000000

    if-ne p0, v0, :cond_1f

    .line 208
    const-string v0, "AAC_ADTS"

    return-object v0

    .line 210
    :cond_1f
    const/high16 v0, 0x1f000000

    if-ne p0, v0, :cond_20

    .line 211
    const-string v0, "SBC"

    return-object v0

    .line 213
    :cond_20
    const/high16 v0, 0x20000000

    if-ne p0, v0, :cond_21

    .line 214
    const-string v0, "APTX"

    return-object v0

    .line 216
    :cond_21
    const/high16 v0, 0x21000000

    if-ne p0, v0, :cond_22

    .line 217
    const-string v0, "APTX_HD"

    return-object v0

    .line 219
    :cond_22
    const/high16 v0, 0x22000000

    if-ne p0, v0, :cond_23

    .line 220
    const-string v0, "AC4"

    return-object v0

    .line 222
    :cond_23
    const/high16 v0, 0x23000000

    if-ne p0, v0, :cond_24

    .line 223
    const-string v0, "LDAC"

    return-object v0

    .line 225
    :cond_24
    const/high16 v0, -0x1000000

    if-ne p0, v0, :cond_25

    .line 226
    const-string v0, "MAIN_MASK"

    return-object v0

    .line 228
    :cond_25
    const v0, 0xffffff

    if-ne p0, v0, :cond_26

    .line 229
    const-string v0, "SUB_MASK"

    return-object v0

    .line 231
    :cond_26
    const/4 v0, 0x1

    if-ne p0, v0, :cond_27

    .line 232
    const-string v0, "PCM_SUB_16_BIT"

    return-object v0

    .line 234
    :cond_27
    const/4 v1, 0x2

    if-ne p0, v1, :cond_28

    .line 235
    const-string v0, "PCM_SUB_8_BIT"

    return-object v0

    .line 237
    :cond_28
    const/4 v2, 0x3

    if-ne p0, v2, :cond_29

    .line 238
    const-string v0, "PCM_SUB_32_BIT"

    return-object v0

    .line 240
    :cond_29
    const/4 v3, 0x4

    if-ne p0, v3, :cond_2a

    .line 241
    const-string v0, "PCM_SUB_8_24_BIT"

    return-object v0

    .line 243
    :cond_2a
    const/4 v4, 0x5

    if-ne p0, v4, :cond_2b

    .line 244
    const-string v0, "PCM_SUB_FLOAT"

    return-object v0

    .line 246
    :cond_2b
    const/4 v5, 0x6

    if-ne p0, v5, :cond_2c

    .line 247
    const-string v0, "PCM_SUB_24_BIT_PACKED"

    return-object v0

    .line 249
    :cond_2c
    if-nez p0, :cond_2d

    .line 250
    const-string v0, "MP3_SUB_NONE"

    return-object v0

    .line 252
    :cond_2d
    if-nez p0, :cond_2e

    .line 253
    const-string v0, "AMR_SUB_NONE"

    return-object v0

    .line 255
    :cond_2e
    if-ne p0, v0, :cond_2f

    .line 256
    const-string v0, "AAC_SUB_MAIN"

    return-object v0

    .line 258
    :cond_2f
    if-ne p0, v1, :cond_30

    .line 259
    const-string v0, "AAC_SUB_LC"

    return-object v0

    .line 261
    :cond_30
    if-ne p0, v3, :cond_31

    .line 262
    const-string v0, "AAC_SUB_SSR"

    return-object v0

    .line 264
    :cond_31
    const/16 v6, 0x8

    if-ne p0, v6, :cond_32

    .line 265
    const-string v0, "AAC_SUB_LTP"

    return-object v0

    .line 267
    :cond_32
    const/16 v6, 0x10

    if-ne p0, v6, :cond_33

    .line 268
    const-string v0, "AAC_SUB_HE_V1"

    return-object v0

    .line 270
    :cond_33
    const/16 v6, 0x20

    if-ne p0, v6, :cond_34

    .line 271
    const-string v0, "AAC_SUB_SCALABLE"

    return-object v0

    .line 273
    :cond_34
    const/16 v6, 0x40

    if-ne p0, v6, :cond_35

    .line 274
    const-string v0, "AAC_SUB_ERLC"

    return-object v0

    .line 276
    :cond_35
    const/16 v6, 0x80

    if-ne p0, v6, :cond_36

    .line 277
    const-string v0, "AAC_SUB_LD"

    return-object v0

    .line 279
    :cond_36
    const/16 v6, 0x100

    if-ne p0, v6, :cond_37

    .line 280
    const-string v0, "AAC_SUB_HE_V2"

    return-object v0

    .line 282
    :cond_37
    const/16 v6, 0x200

    if-ne p0, v6, :cond_38

    .line 283
    const-string v0, "AAC_SUB_ELD"

    return-object v0

    .line 285
    :cond_38
    if-nez p0, :cond_39

    .line 286
    const-string v0, "VORBIS_SUB_NONE"

    return-object v0

    .line 288
    :cond_39
    if-ne p0, v0, :cond_3a

    .line 289
    const-string v0, "PCM_16_BIT"

    return-object v0

    .line 291
    :cond_3a
    if-ne p0, v1, :cond_3b

    .line 292
    const-string v0, "PCM_8_BIT"

    return-object v0

    .line 294
    :cond_3b
    if-ne p0, v2, :cond_3c

    .line 295
    const-string v0, "PCM_32_BIT"

    return-object v0

    .line 297
    :cond_3c
    if-ne p0, v3, :cond_3d

    .line 298
    const-string v0, "PCM_8_24_BIT"

    return-object v0

    .line 300
    :cond_3d
    if-ne p0, v4, :cond_3e

    .line 301
    const-string v0, "PCM_FLOAT"

    return-object v0

    .line 303
    :cond_3e
    if-ne p0, v5, :cond_3f

    .line 304
    const-string v0, "PCM_24_BIT_PACKED"

    return-object v0

    .line 306
    :cond_3f
    const v0, 0x4000001

    if-ne p0, v0, :cond_40

    .line 307
    const-string v0, "AAC_MAIN"

    return-object v0

    .line 309
    :cond_40
    const v0, 0x4000002

    if-ne p0, v0, :cond_41

    .line 310
    const-string v0, "AAC_LC"

    return-object v0

    .line 312
    :cond_41
    const v0, 0x4000004

    if-ne p0, v0, :cond_42

    .line 313
    const-string v0, "AAC_SSR"

    return-object v0

    .line 315
    :cond_42
    const v0, 0x4000008

    if-ne p0, v0, :cond_43

    .line 316
    const-string v0, "AAC_LTP"

    return-object v0

    .line 318
    :cond_43
    const v0, 0x4000010

    if-ne p0, v0, :cond_44

    .line 319
    const-string v0, "AAC_HE_V1"

    return-object v0

    .line 321
    :cond_44
    const v0, 0x4000020

    if-ne p0, v0, :cond_45

    .line 322
    const-string v0, "AAC_SCALABLE"

    return-object v0

    .line 324
    :cond_45
    const v0, 0x4000040

    if-ne p0, v0, :cond_46

    .line 325
    const-string v0, "AAC_ERLC"

    return-object v0

    .line 327
    :cond_46
    const v0, 0x4000080

    if-ne p0, v0, :cond_47

    .line 328
    const-string v0, "AAC_LD"

    return-object v0

    .line 330
    :cond_47
    const v0, 0x4000100

    if-ne p0, v0, :cond_48

    .line 331
    const-string v0, "AAC_HE_V2"

    return-object v0

    .line 333
    :cond_48
    const v0, 0x4000200

    if-ne p0, v0, :cond_49

    .line 334
    const-string v0, "AAC_ELD"

    return-object v0

    .line 336
    :cond_49
    const v0, 0x1e000001

    if-ne p0, v0, :cond_4a

    .line 337
    const-string v0, "AAC_ADTS_MAIN"

    return-object v0

    .line 339
    :cond_4a
    const v0, 0x1e000002

    if-ne p0, v0, :cond_4b

    .line 340
    const-string v0, "AAC_ADTS_LC"

    return-object v0

    .line 342
    :cond_4b
    const v0, 0x1e000004

    if-ne p0, v0, :cond_4c

    .line 343
    const-string v0, "AAC_ADTS_SSR"

    return-object v0

    .line 345
    :cond_4c
    const v0, 0x1e000008

    if-ne p0, v0, :cond_4d

    .line 346
    const-string v0, "AAC_ADTS_LTP"

    return-object v0

    .line 348
    :cond_4d
    const v0, 0x1e000010

    if-ne p0, v0, :cond_4e

    .line 349
    const-string v0, "AAC_ADTS_HE_V1"

    return-object v0

    .line 351
    :cond_4e
    const v0, 0x1e000020

    if-ne p0, v0, :cond_4f

    .line 352
    const-string v0, "AAC_ADTS_SCALABLE"

    return-object v0

    .line 354
    :cond_4f
    const v0, 0x1e000040

    if-ne p0, v0, :cond_50

    .line 355
    const-string v0, "AAC_ADTS_ERLC"

    return-object v0

    .line 357
    :cond_50
    const v0, 0x1e000080

    if-ne p0, v0, :cond_51

    .line 358
    const-string v0, "AAC_ADTS_LD"

    return-object v0

    .line 360
    :cond_51
    const v0, 0x1e000100

    if-ne p0, v0, :cond_52

    .line 361
    const-string v0, "AAC_ADTS_HE_V2"

    return-object v0

    .line 363
    :cond_52
    const v0, 0x1e000200

    if-ne p0, v0, :cond_53

    .line 364
    const-string v0, "AAC_ADTS_ELD"

    return-object v0

    .line 366
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
