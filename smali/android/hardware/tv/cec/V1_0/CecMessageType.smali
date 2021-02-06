.class public final Landroid/hardware/tv/cec/V1_0/CecMessageType;
.super Ljava/lang/Object;
.source "CecMessageType.java"


# static fields
.field public static final ABORT:I = 0xff

.field public static final ACTIVE_SOURCE:I = 0x82

.field public static final CEC_VERSION:I = 0x9e

.field public static final CLEAR_ANALOG_TIMER:I = 0x33

.field public static final CLEAR_DIGITAL_TIMER:I = 0x99

.field public static final CLEAR_EXTERNAL_TIMER:I = 0xa1

.field public static final DECK_CONTROL:I = 0x42

.field public static final DECK_STATUS:I = 0x1b

.field public static final DEVICE_VENDOR_ID:I = 0x87

.field public static final FEATURE_ABORT:I = 0x0

.field public static final GET_CEC_VERSION:I = 0x9f

.field public static final GET_MENU_LANGUAGE:I = 0x91

.field public static final GIVE_AUDIO_STATUS:I = 0x71

.field public static final GIVE_DECK_STATUS:I = 0x1a

.field public static final GIVE_DEVICE_POWER_STATUS:I = 0x8f

.field public static final GIVE_DEVICE_VENDOR_ID:I = 0x8c

.field public static final GIVE_OSD_NAME:I = 0x46

.field public static final GIVE_PHYSICAL_ADDRESS:I = 0x83

.field public static final GIVE_SYSTEM_AUDIO_MODE_STATUS:I = 0x7d

.field public static final GIVE_TUNER_DEVICE_STATUS:I = 0x8

.field public static final IMAGE_VIEW_ON:I = 0x4

.field public static final INACTIVE_SOURCE:I = 0x9d

.field public static final INITIATE_ARC:I = 0xc0

.field public static final MENU_REQUEST:I = 0x8d

.field public static final MENU_STATUS:I = 0x8e

.field public static final PLAY:I = 0x41

.field public static final RECORD_OFF:I = 0xb

.field public static final RECORD_ON:I = 0x9

.field public static final RECORD_STATUS:I = 0xa

.field public static final RECORD_TV_SCREEN:I = 0xf

.field public static final REPORT_ARC_INITIATED:I = 0xc1

.field public static final REPORT_ARC_TERMINATED:I = 0xc2

.field public static final REPORT_AUDIO_STATUS:I = 0x7a

.field public static final REPORT_PHYSICAL_ADDRESS:I = 0x84

.field public static final REPORT_POWER_STATUS:I = 0x90

.field public static final REPORT_SHORT_AUDIO_DESCRIPTOR:I = 0xa3

.field public static final REQUEST_ACTIVE_SOURCE:I = 0x85

.field public static final REQUEST_ARC_INITIATION:I = 0xc3

.field public static final REQUEST_ARC_TERMINATION:I = 0xc4

.field public static final REQUEST_SHORT_AUDIO_DESCRIPTOR:I = 0xa4

.field public static final ROUTING_CHANGE:I = 0x80

.field public static final ROUTING_INFORMATION:I = 0x81

.field public static final SELECT_ANALOG_SERVICE:I = 0x92

.field public static final SELECT_DIGITAL_SERVICE:I = 0x93

.field public static final SET_ANALOG_TIMER:I = 0x34

.field public static final SET_AUDIO_RATE:I = 0x9a

.field public static final SET_DIGITAL_TIMER:I = 0x97

.field public static final SET_EXTERNAL_TIMER:I = 0xa2

.field public static final SET_MENU_LANGUAGE:I = 0x32

.field public static final SET_OSD_NAME:I = 0x47

.field public static final SET_OSD_STRING:I = 0x64

.field public static final SET_STREAM_PATH:I = 0x86

.field public static final SET_SYSTEM_AUDIO_MODE:I = 0x72

.field public static final SET_TIMER_PROGRAM_TITLE:I = 0x67

.field public static final STANDBY:I = 0x36

.field public static final SYSTEM_AUDIO_MODE_REQUEST:I = 0x70

.field public static final SYSTEM_AUDIO_MODE_STATUS:I = 0x7e

.field public static final TERMINATE_ARC:I = 0xc5

.field public static final TEXT_VIEW_ON:I = 0xd

.field public static final TIMER_CLEARED_STATUS:I = 0x43

.field public static final TIMER_STATUS:I = 0x35

.field public static final TUNER_DEVICE_STATUS:I = 0x7

.field public static final TUNER_STEP_DECREMENT:I = 0x6

.field public static final TUNER_STEP_INCREMENT:I = 0x5

.field public static final USER_CONTROL_PRESSED:I = 0x44

.field public static final USER_CONTROL_RELEASED:I = 0x45

.field public static final VENDOR_COMMAND:I = 0x89

.field public static final VENDOR_COMMAND_WITH_ID:I = 0xa0

.field public static final VENDOR_REMOTE_BUTTON_DOWN:I = 0x8a

.field public static final VENDOR_REMOTE_BUTTON_UP:I = 0x8b


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 292
    .local v1, "flipped":I
    const-string v2, "FEATURE_ABORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 294
    const-string v2, "IMAGE_VIEW_ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    or-int/lit8 v1, v1, 0x4

    .line 297
    :cond_0
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 298
    const-string v2, "TUNER_STEP_INCREMENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    or-int/lit8 v1, v1, 0x5

    .line 301
    :cond_1
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 302
    const-string v2, "TUNER_STEP_DECREMENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    or-int/lit8 v1, v1, 0x6

    .line 305
    :cond_2
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 306
    const-string v2, "TUNER_DEVICE_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    or-int/lit8 v1, v1, 0x7

    .line 309
    :cond_3
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 310
    const-string v2, "GIVE_TUNER_DEVICE_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    or-int/lit8 v1, v1, 0x8

    .line 313
    :cond_4
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    .line 314
    const-string v2, "RECORD_ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    or-int/lit8 v1, v1, 0x9

    .line 317
    :cond_5
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    .line 318
    const-string v2, "RECORD_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    or-int/lit8 v1, v1, 0xa

    .line 321
    :cond_6
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_7

    .line 322
    const-string v2, "RECORD_OFF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    or-int/lit8 v1, v1, 0xb

    .line 325
    :cond_7
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8

    .line 326
    const-string v2, "TEXT_VIEW_ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    or-int/lit8 v1, v1, 0xd

    .line 329
    :cond_8
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_9

    .line 330
    const-string v2, "RECORD_TV_SCREEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    or-int/lit8 v1, v1, 0xf

    .line 333
    :cond_9
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_a

    .line 334
    const-string v2, "GIVE_DECK_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    or-int/lit8 v1, v1, 0x1a

    .line 337
    :cond_a
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_b

    .line 338
    const-string v2, "DECK_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    or-int/lit8 v1, v1, 0x1b

    .line 341
    :cond_b
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_c

    .line 342
    const-string v2, "SET_MENU_LANGUAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    or-int/lit8 v1, v1, 0x32

    .line 345
    :cond_c
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_d

    .line 346
    const-string v2, "CLEAR_ANALOG_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    or-int/lit8 v1, v1, 0x33

    .line 349
    :cond_d
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_e

    .line 350
    const-string v2, "SET_ANALOG_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    or-int/lit8 v1, v1, 0x34

    .line 353
    :cond_e
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_f

    .line 354
    const-string v2, "TIMER_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    or-int/lit8 v1, v1, 0x35

    .line 357
    :cond_f
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_10

    .line 358
    const-string v2, "STANDBY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    or-int/lit8 v1, v1, 0x36

    .line 361
    :cond_10
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_11

    .line 362
    const-string v2, "PLAY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    or-int/lit8 v1, v1, 0x41

    .line 365
    :cond_11
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_12

    .line 366
    const-string v2, "DECK_CONTROL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    or-int/lit8 v1, v1, 0x42

    .line 369
    :cond_12
    and-int/lit8 v2, p0, 0x43

    const/16 v3, 0x43

    if-ne v2, v3, :cond_13

    .line 370
    const-string v2, "TIMER_CLEARED_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    or-int/lit8 v1, v1, 0x43

    .line 373
    :cond_13
    and-int/lit8 v2, p0, 0x44

    const/16 v3, 0x44

    if-ne v2, v3, :cond_14

    .line 374
    const-string v2, "USER_CONTROL_PRESSED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    or-int/lit8 v1, v1, 0x44

    .line 377
    :cond_14
    and-int/lit8 v2, p0, 0x45

    const/16 v3, 0x45

    if-ne v2, v3, :cond_15

    .line 378
    const-string v2, "USER_CONTROL_RELEASED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    or-int/lit8 v1, v1, 0x45

    .line 381
    :cond_15
    and-int/lit8 v2, p0, 0x46

    const/16 v3, 0x46

    if-ne v2, v3, :cond_16

    .line 382
    const-string v2, "GIVE_OSD_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    or-int/lit8 v1, v1, 0x46

    .line 385
    :cond_16
    and-int/lit8 v2, p0, 0x47

    const/16 v3, 0x47

    if-ne v2, v3, :cond_17

    .line 386
    const-string v2, "SET_OSD_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    or-int/lit8 v1, v1, 0x47

    .line 389
    :cond_17
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_18

    .line 390
    const-string v2, "SET_OSD_STRING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    or-int/lit8 v1, v1, 0x64

    .line 393
    :cond_18
    and-int/lit8 v2, p0, 0x67

    const/16 v3, 0x67

    if-ne v2, v3, :cond_19

    .line 394
    const-string v2, "SET_TIMER_PROGRAM_TITLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    or-int/lit8 v1, v1, 0x67

    .line 397
    :cond_19
    and-int/lit8 v2, p0, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_1a

    .line 398
    const-string v2, "SYSTEM_AUDIO_MODE_REQUEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    or-int/lit8 v1, v1, 0x70

    .line 401
    :cond_1a
    and-int/lit8 v2, p0, 0x71

    const/16 v3, 0x71

    if-ne v2, v3, :cond_1b

    .line 402
    const-string v2, "GIVE_AUDIO_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    or-int/lit8 v1, v1, 0x71

    .line 405
    :cond_1b
    and-int/lit8 v2, p0, 0x72

    const/16 v3, 0x72

    if-ne v2, v3, :cond_1c

    .line 406
    const-string v2, "SET_SYSTEM_AUDIO_MODE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    or-int/lit8 v1, v1, 0x72

    .line 409
    :cond_1c
    and-int/lit8 v2, p0, 0x7a

    const/16 v3, 0x7a

    if-ne v2, v3, :cond_1d

    .line 410
    const-string v2, "REPORT_AUDIO_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    or-int/lit8 v1, v1, 0x7a

    .line 413
    :cond_1d
    and-int/lit8 v2, p0, 0x7d

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_1e

    .line 414
    const-string v2, "GIVE_SYSTEM_AUDIO_MODE_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    or-int/lit8 v1, v1, 0x7d

    .line 417
    :cond_1e
    and-int/lit8 v2, p0, 0x7e

    const/16 v3, 0x7e

    if-ne v2, v3, :cond_1f

    .line 418
    const-string v2, "SYSTEM_AUDIO_MODE_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    or-int/lit8 v1, v1, 0x7e

    .line 421
    :cond_1f
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_20

    .line 422
    const-string v2, "ROUTING_CHANGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    or-int/lit16 v1, v1, 0x80

    .line 425
    :cond_20
    and-int/lit16 v2, p0, 0x81

    const/16 v3, 0x81

    if-ne v2, v3, :cond_21

    .line 426
    const-string v2, "ROUTING_INFORMATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    or-int/lit16 v1, v1, 0x81

    .line 429
    :cond_21
    and-int/lit16 v2, p0, 0x82

    const/16 v3, 0x82

    if-ne v2, v3, :cond_22

    .line 430
    const-string v2, "ACTIVE_SOURCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    or-int/lit16 v1, v1, 0x82

    .line 433
    :cond_22
    and-int/lit16 v2, p0, 0x83

    const/16 v3, 0x83

    if-ne v2, v3, :cond_23

    .line 434
    const-string v2, "GIVE_PHYSICAL_ADDRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    or-int/lit16 v1, v1, 0x83

    .line 437
    :cond_23
    and-int/lit16 v2, p0, 0x84

    const/16 v3, 0x84

    if-ne v2, v3, :cond_24

    .line 438
    const-string v2, "REPORT_PHYSICAL_ADDRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    or-int/lit16 v1, v1, 0x84

    .line 441
    :cond_24
    and-int/lit16 v2, p0, 0x85

    const/16 v3, 0x85

    if-ne v2, v3, :cond_25

    .line 442
    const-string v2, "REQUEST_ACTIVE_SOURCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    or-int/lit16 v1, v1, 0x85

    .line 445
    :cond_25
    and-int/lit16 v2, p0, 0x86

    const/16 v3, 0x86

    if-ne v2, v3, :cond_26

    .line 446
    const-string v2, "SET_STREAM_PATH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    or-int/lit16 v1, v1, 0x86

    .line 449
    :cond_26
    and-int/lit16 v2, p0, 0x87

    const/16 v3, 0x87

    if-ne v2, v3, :cond_27

    .line 450
    const-string v2, "DEVICE_VENDOR_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    or-int/lit16 v1, v1, 0x87

    .line 453
    :cond_27
    and-int/lit16 v2, p0, 0x89

    const/16 v3, 0x89

    if-ne v2, v3, :cond_28

    .line 454
    const-string v2, "VENDOR_COMMAND"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    or-int/lit16 v1, v1, 0x89

    .line 457
    :cond_28
    and-int/lit16 v2, p0, 0x8a

    const/16 v3, 0x8a

    if-ne v2, v3, :cond_29

    .line 458
    const-string v2, "VENDOR_REMOTE_BUTTON_DOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    or-int/lit16 v1, v1, 0x8a

    .line 461
    :cond_29
    and-int/lit16 v2, p0, 0x8b

    const/16 v3, 0x8b

    if-ne v2, v3, :cond_2a

    .line 462
    const-string v2, "VENDOR_REMOTE_BUTTON_UP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    or-int/lit16 v1, v1, 0x8b

    .line 465
    :cond_2a
    and-int/lit16 v2, p0, 0x8c

    const/16 v3, 0x8c

    if-ne v2, v3, :cond_2b

    .line 466
    const-string v2, "GIVE_DEVICE_VENDOR_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    or-int/lit16 v1, v1, 0x8c

    .line 469
    :cond_2b
    and-int/lit16 v2, p0, 0x8d

    const/16 v3, 0x8d

    if-ne v2, v3, :cond_2c

    .line 470
    const-string v2, "MENU_REQUEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    or-int/lit16 v1, v1, 0x8d

    .line 473
    :cond_2c
    and-int/lit16 v2, p0, 0x8e

    const/16 v3, 0x8e

    if-ne v2, v3, :cond_2d

    .line 474
    const-string v2, "MENU_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    or-int/lit16 v1, v1, 0x8e

    .line 477
    :cond_2d
    and-int/lit16 v2, p0, 0x8f

    const/16 v3, 0x8f

    if-ne v2, v3, :cond_2e

    .line 478
    const-string v2, "GIVE_DEVICE_POWER_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    or-int/lit16 v1, v1, 0x8f

    .line 481
    :cond_2e
    and-int/lit16 v2, p0, 0x90

    const/16 v3, 0x90

    if-ne v2, v3, :cond_2f

    .line 482
    const-string v2, "REPORT_POWER_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    or-int/lit16 v1, v1, 0x90

    .line 485
    :cond_2f
    and-int/lit16 v2, p0, 0x91

    const/16 v3, 0x91

    if-ne v2, v3, :cond_30

    .line 486
    const-string v2, "GET_MENU_LANGUAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    or-int/lit16 v1, v1, 0x91

    .line 489
    :cond_30
    and-int/lit16 v2, p0, 0x92

    const/16 v3, 0x92

    if-ne v2, v3, :cond_31

    .line 490
    const-string v2, "SELECT_ANALOG_SERVICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    or-int/lit16 v1, v1, 0x92

    .line 493
    :cond_31
    and-int/lit16 v2, p0, 0x93

    const/16 v3, 0x93

    if-ne v2, v3, :cond_32

    .line 494
    const-string v2, "SELECT_DIGITAL_SERVICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    or-int/lit16 v1, v1, 0x93

    .line 497
    :cond_32
    and-int/lit16 v2, p0, 0x97

    const/16 v3, 0x97

    if-ne v2, v3, :cond_33

    .line 498
    const-string v2, "SET_DIGITAL_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    or-int/lit16 v1, v1, 0x97

    .line 501
    :cond_33
    and-int/lit16 v2, p0, 0x99

    const/16 v3, 0x99

    if-ne v2, v3, :cond_34

    .line 502
    const-string v2, "CLEAR_DIGITAL_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    or-int/lit16 v1, v1, 0x99

    .line 505
    :cond_34
    and-int/lit16 v2, p0, 0x9a

    const/16 v3, 0x9a

    if-ne v2, v3, :cond_35

    .line 506
    const-string v2, "SET_AUDIO_RATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    or-int/lit16 v1, v1, 0x9a

    .line 509
    :cond_35
    and-int/lit16 v2, p0, 0x9d

    const/16 v3, 0x9d

    if-ne v2, v3, :cond_36

    .line 510
    const-string v2, "INACTIVE_SOURCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    or-int/lit16 v1, v1, 0x9d

    .line 513
    :cond_36
    and-int/lit16 v2, p0, 0x9e

    const/16 v3, 0x9e

    if-ne v2, v3, :cond_37

    .line 514
    const-string v2, "CEC_VERSION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    or-int/lit16 v1, v1, 0x9e

    .line 517
    :cond_37
    and-int/lit16 v2, p0, 0x9f

    const/16 v3, 0x9f

    if-ne v2, v3, :cond_38

    .line 518
    const-string v2, "GET_CEC_VERSION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    or-int/lit16 v1, v1, 0x9f

    .line 521
    :cond_38
    and-int/lit16 v2, p0, 0xa0

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_39

    .line 522
    const-string v2, "VENDOR_COMMAND_WITH_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    or-int/lit16 v1, v1, 0xa0

    .line 525
    :cond_39
    and-int/lit16 v2, p0, 0xa1

    const/16 v3, 0xa1

    if-ne v2, v3, :cond_3a

    .line 526
    const-string v2, "CLEAR_EXTERNAL_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    or-int/lit16 v1, v1, 0xa1

    .line 529
    :cond_3a
    and-int/lit16 v2, p0, 0xa2

    const/16 v3, 0xa2

    if-ne v2, v3, :cond_3b

    .line 530
    const-string v2, "SET_EXTERNAL_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    or-int/lit16 v1, v1, 0xa2

    .line 533
    :cond_3b
    and-int/lit16 v2, p0, 0xa3

    const/16 v3, 0xa3

    if-ne v2, v3, :cond_3c

    .line 534
    const-string v2, "REPORT_SHORT_AUDIO_DESCRIPTOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    or-int/lit16 v1, v1, 0xa3

    .line 537
    :cond_3c
    and-int/lit16 v2, p0, 0xa4

    const/16 v3, 0xa4

    if-ne v2, v3, :cond_3d

    .line 538
    const-string v2, "REQUEST_SHORT_AUDIO_DESCRIPTOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    or-int/lit16 v1, v1, 0xa4

    .line 541
    :cond_3d
    and-int/lit16 v2, p0, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_3e

    .line 542
    const-string v2, "INITIATE_ARC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    or-int/lit16 v1, v1, 0xc0

    .line 545
    :cond_3e
    and-int/lit16 v2, p0, 0xc1

    const/16 v3, 0xc1

    if-ne v2, v3, :cond_3f

    .line 546
    const-string v2, "REPORT_ARC_INITIATED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    or-int/lit16 v1, v1, 0xc1

    .line 549
    :cond_3f
    and-int/lit16 v2, p0, 0xc2

    const/16 v3, 0xc2

    if-ne v2, v3, :cond_40

    .line 550
    const-string v2, "REPORT_ARC_TERMINATED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    or-int/lit16 v1, v1, 0xc2

    .line 553
    :cond_40
    and-int/lit16 v2, p0, 0xc3

    const/16 v3, 0xc3

    if-ne v2, v3, :cond_41

    .line 554
    const-string v2, "REQUEST_ARC_INITIATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    or-int/lit16 v1, v1, 0xc3

    .line 557
    :cond_41
    and-int/lit16 v2, p0, 0xc4

    const/16 v3, 0xc4

    if-ne v2, v3, :cond_42

    .line 558
    const-string v2, "REQUEST_ARC_TERMINATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    or-int/lit16 v1, v1, 0xc4

    .line 561
    :cond_42
    and-int/lit16 v2, p0, 0xc5

    const/16 v3, 0xc5

    if-ne v2, v3, :cond_43

    .line 562
    const-string v2, "TERMINATE_ARC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    or-int/lit16 v1, v1, 0xc5

    .line 565
    :cond_43
    and-int/lit16 v2, p0, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_44

    .line 566
    const-string v2, "ABORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    or-int/lit16 v1, v1, 0xff

    .line 569
    :cond_44
    if-eq p0, v1, :cond_45

    .line 570
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

    .line 572
    :cond_45
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 76
    if-nez p0, :cond_0

    .line 77
    const-string v0, "FEATURE_ABORT"

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 80
    const-string v0, "IMAGE_VIEW_ON"

    return-object v0

    .line 82
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 83
    const-string v0, "TUNER_STEP_INCREMENT"

    return-object v0

    .line 85
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 86
    const-string v0, "TUNER_STEP_DECREMENT"

    return-object v0

    .line 88
    :cond_3
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4

    .line 89
    const-string v0, "TUNER_DEVICE_STATUS"

    return-object v0

    .line 91
    :cond_4
    const/16 v0, 0x8

    if-ne p0, v0, :cond_5

    .line 92
    const-string v0, "GIVE_TUNER_DEVICE_STATUS"

    return-object v0

    .line 94
    :cond_5
    const/16 v0, 0x9

    if-ne p0, v0, :cond_6

    .line 95
    const-string v0, "RECORD_ON"

    return-object v0

    .line 97
    :cond_6
    const/16 v0, 0xa

    if-ne p0, v0, :cond_7

    .line 98
    const-string v0, "RECORD_STATUS"

    return-object v0

    .line 100
    :cond_7
    const/16 v0, 0xb

    if-ne p0, v0, :cond_8

    .line 101
    const-string v0, "RECORD_OFF"

    return-object v0

    .line 103
    :cond_8
    const/16 v0, 0xd

    if-ne p0, v0, :cond_9

    .line 104
    const-string v0, "TEXT_VIEW_ON"

    return-object v0

    .line 106
    :cond_9
    const/16 v0, 0xf

    if-ne p0, v0, :cond_a

    .line 107
    const-string v0, "RECORD_TV_SCREEN"

    return-object v0

    .line 109
    :cond_a
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_b

    .line 110
    const-string v0, "GIVE_DECK_STATUS"

    return-object v0

    .line 112
    :cond_b
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_c

    .line 113
    const-string v0, "DECK_STATUS"

    return-object v0

    .line 115
    :cond_c
    const/16 v0, 0x32

    if-ne p0, v0, :cond_d

    .line 116
    const-string v0, "SET_MENU_LANGUAGE"

    return-object v0

    .line 118
    :cond_d
    const/16 v0, 0x33

    if-ne p0, v0, :cond_e

    .line 119
    const-string v0, "CLEAR_ANALOG_TIMER"

    return-object v0

    .line 121
    :cond_e
    const/16 v0, 0x34

    if-ne p0, v0, :cond_f

    .line 122
    const-string v0, "SET_ANALOG_TIMER"

    return-object v0

    .line 124
    :cond_f
    const/16 v0, 0x35

    if-ne p0, v0, :cond_10

    .line 125
    const-string v0, "TIMER_STATUS"

    return-object v0

    .line 127
    :cond_10
    const/16 v0, 0x36

    if-ne p0, v0, :cond_11

    .line 128
    const-string v0, "STANDBY"

    return-object v0

    .line 130
    :cond_11
    const/16 v0, 0x41

    if-ne p0, v0, :cond_12

    .line 131
    const-string v0, "PLAY"

    return-object v0

    .line 133
    :cond_12
    const/16 v0, 0x42

    if-ne p0, v0, :cond_13

    .line 134
    const-string v0, "DECK_CONTROL"

    return-object v0

    .line 136
    :cond_13
    const/16 v0, 0x43

    if-ne p0, v0, :cond_14

    .line 137
    const-string v0, "TIMER_CLEARED_STATUS"

    return-object v0

    .line 139
    :cond_14
    const/16 v0, 0x44

    if-ne p0, v0, :cond_15

    .line 140
    const-string v0, "USER_CONTROL_PRESSED"

    return-object v0

    .line 142
    :cond_15
    const/16 v0, 0x45

    if-ne p0, v0, :cond_16

    .line 143
    const-string v0, "USER_CONTROL_RELEASED"

    return-object v0

    .line 145
    :cond_16
    const/16 v0, 0x46

    if-ne p0, v0, :cond_17

    .line 146
    const-string v0, "GIVE_OSD_NAME"

    return-object v0

    .line 148
    :cond_17
    const/16 v0, 0x47

    if-ne p0, v0, :cond_18

    .line 149
    const-string v0, "SET_OSD_NAME"

    return-object v0

    .line 151
    :cond_18
    const/16 v0, 0x64

    if-ne p0, v0, :cond_19

    .line 152
    const-string v0, "SET_OSD_STRING"

    return-object v0

    .line 154
    :cond_19
    const/16 v0, 0x67

    if-ne p0, v0, :cond_1a

    .line 155
    const-string v0, "SET_TIMER_PROGRAM_TITLE"

    return-object v0

    .line 157
    :cond_1a
    const/16 v0, 0x70

    if-ne p0, v0, :cond_1b

    .line 158
    const-string v0, "SYSTEM_AUDIO_MODE_REQUEST"

    return-object v0

    .line 160
    :cond_1b
    const/16 v0, 0x71

    if-ne p0, v0, :cond_1c

    .line 161
    const-string v0, "GIVE_AUDIO_STATUS"

    return-object v0

    .line 163
    :cond_1c
    const/16 v0, 0x72

    if-ne p0, v0, :cond_1d

    .line 164
    const-string v0, "SET_SYSTEM_AUDIO_MODE"

    return-object v0

    .line 166
    :cond_1d
    const/16 v0, 0x7a

    if-ne p0, v0, :cond_1e

    .line 167
    const-string v0, "REPORT_AUDIO_STATUS"

    return-object v0

    .line 169
    :cond_1e
    const/16 v0, 0x7d

    if-ne p0, v0, :cond_1f

    .line 170
    const-string v0, "GIVE_SYSTEM_AUDIO_MODE_STATUS"

    return-object v0

    .line 172
    :cond_1f
    const/16 v0, 0x7e

    if-ne p0, v0, :cond_20

    .line 173
    const-string v0, "SYSTEM_AUDIO_MODE_STATUS"

    return-object v0

    .line 175
    :cond_20
    const/16 v0, 0x80

    if-ne p0, v0, :cond_21

    .line 176
    const-string v0, "ROUTING_CHANGE"

    return-object v0

    .line 178
    :cond_21
    const/16 v0, 0x81

    if-ne p0, v0, :cond_22

    .line 179
    const-string v0, "ROUTING_INFORMATION"

    return-object v0

    .line 181
    :cond_22
    const/16 v0, 0x82

    if-ne p0, v0, :cond_23

    .line 182
    const-string v0, "ACTIVE_SOURCE"

    return-object v0

    .line 184
    :cond_23
    const/16 v0, 0x83

    if-ne p0, v0, :cond_24

    .line 185
    const-string v0, "GIVE_PHYSICAL_ADDRESS"

    return-object v0

    .line 187
    :cond_24
    const/16 v0, 0x84

    if-ne p0, v0, :cond_25

    .line 188
    const-string v0, "REPORT_PHYSICAL_ADDRESS"

    return-object v0

    .line 190
    :cond_25
    const/16 v0, 0x85

    if-ne p0, v0, :cond_26

    .line 191
    const-string v0, "REQUEST_ACTIVE_SOURCE"

    return-object v0

    .line 193
    :cond_26
    const/16 v0, 0x86

    if-ne p0, v0, :cond_27

    .line 194
    const-string v0, "SET_STREAM_PATH"

    return-object v0

    .line 196
    :cond_27
    const/16 v0, 0x87

    if-ne p0, v0, :cond_28

    .line 197
    const-string v0, "DEVICE_VENDOR_ID"

    return-object v0

    .line 199
    :cond_28
    const/16 v0, 0x89

    if-ne p0, v0, :cond_29

    .line 200
    const-string v0, "VENDOR_COMMAND"

    return-object v0

    .line 202
    :cond_29
    const/16 v0, 0x8a

    if-ne p0, v0, :cond_2a

    .line 203
    const-string v0, "VENDOR_REMOTE_BUTTON_DOWN"

    return-object v0

    .line 205
    :cond_2a
    const/16 v0, 0x8b

    if-ne p0, v0, :cond_2b

    .line 206
    const-string v0, "VENDOR_REMOTE_BUTTON_UP"

    return-object v0

    .line 208
    :cond_2b
    const/16 v0, 0x8c

    if-ne p0, v0, :cond_2c

    .line 209
    const-string v0, "GIVE_DEVICE_VENDOR_ID"

    return-object v0

    .line 211
    :cond_2c
    const/16 v0, 0x8d

    if-ne p0, v0, :cond_2d

    .line 212
    const-string v0, "MENU_REQUEST"

    return-object v0

    .line 214
    :cond_2d
    const/16 v0, 0x8e

    if-ne p0, v0, :cond_2e

    .line 215
    const-string v0, "MENU_STATUS"

    return-object v0

    .line 217
    :cond_2e
    const/16 v0, 0x8f

    if-ne p0, v0, :cond_2f

    .line 218
    const-string v0, "GIVE_DEVICE_POWER_STATUS"

    return-object v0

    .line 220
    :cond_2f
    const/16 v0, 0x90

    if-ne p0, v0, :cond_30

    .line 221
    const-string v0, "REPORT_POWER_STATUS"

    return-object v0

    .line 223
    :cond_30
    const/16 v0, 0x91

    if-ne p0, v0, :cond_31

    .line 224
    const-string v0, "GET_MENU_LANGUAGE"

    return-object v0

    .line 226
    :cond_31
    const/16 v0, 0x92

    if-ne p0, v0, :cond_32

    .line 227
    const-string v0, "SELECT_ANALOG_SERVICE"

    return-object v0

    .line 229
    :cond_32
    const/16 v0, 0x93

    if-ne p0, v0, :cond_33

    .line 230
    const-string v0, "SELECT_DIGITAL_SERVICE"

    return-object v0

    .line 232
    :cond_33
    const/16 v0, 0x97

    if-ne p0, v0, :cond_34

    .line 233
    const-string v0, "SET_DIGITAL_TIMER"

    return-object v0

    .line 235
    :cond_34
    const/16 v0, 0x99

    if-ne p0, v0, :cond_35

    .line 236
    const-string v0, "CLEAR_DIGITAL_TIMER"

    return-object v0

    .line 238
    :cond_35
    const/16 v0, 0x9a

    if-ne p0, v0, :cond_36

    .line 239
    const-string v0, "SET_AUDIO_RATE"

    return-object v0

    .line 241
    :cond_36
    const/16 v0, 0x9d

    if-ne p0, v0, :cond_37

    .line 242
    const-string v0, "INACTIVE_SOURCE"

    return-object v0

    .line 244
    :cond_37
    const/16 v0, 0x9e

    if-ne p0, v0, :cond_38

    .line 245
    const-string v0, "CEC_VERSION"

    return-object v0

    .line 247
    :cond_38
    const/16 v0, 0x9f

    if-ne p0, v0, :cond_39

    .line 248
    const-string v0, "GET_CEC_VERSION"

    return-object v0

    .line 250
    :cond_39
    const/16 v0, 0xa0

    if-ne p0, v0, :cond_3a

    .line 251
    const-string v0, "VENDOR_COMMAND_WITH_ID"

    return-object v0

    .line 253
    :cond_3a
    const/16 v0, 0xa1

    if-ne p0, v0, :cond_3b

    .line 254
    const-string v0, "CLEAR_EXTERNAL_TIMER"

    return-object v0

    .line 256
    :cond_3b
    const/16 v0, 0xa2

    if-ne p0, v0, :cond_3c

    .line 257
    const-string v0, "SET_EXTERNAL_TIMER"

    return-object v0

    .line 259
    :cond_3c
    const/16 v0, 0xa3

    if-ne p0, v0, :cond_3d

    .line 260
    const-string v0, "REPORT_SHORT_AUDIO_DESCRIPTOR"

    return-object v0

    .line 262
    :cond_3d
    const/16 v0, 0xa4

    if-ne p0, v0, :cond_3e

    .line 263
    const-string v0, "REQUEST_SHORT_AUDIO_DESCRIPTOR"

    return-object v0

    .line 265
    :cond_3e
    const/16 v0, 0xc0

    if-ne p0, v0, :cond_3f

    .line 266
    const-string v0, "INITIATE_ARC"

    return-object v0

    .line 268
    :cond_3f
    const/16 v0, 0xc1

    if-ne p0, v0, :cond_40

    .line 269
    const-string v0, "REPORT_ARC_INITIATED"

    return-object v0

    .line 271
    :cond_40
    const/16 v0, 0xc2

    if-ne p0, v0, :cond_41

    .line 272
    const-string v0, "REPORT_ARC_TERMINATED"

    return-object v0

    .line 274
    :cond_41
    const/16 v0, 0xc3

    if-ne p0, v0, :cond_42

    .line 275
    const-string v0, "REQUEST_ARC_INITIATION"

    return-object v0

    .line 277
    :cond_42
    const/16 v0, 0xc4

    if-ne p0, v0, :cond_43

    .line 278
    const-string v0, "REQUEST_ARC_TERMINATION"

    return-object v0

    .line 280
    :cond_43
    const/16 v0, 0xc5

    if-ne p0, v0, :cond_44

    .line 281
    const-string v0, "TERMINATE_ARC"

    return-object v0

    .line 283
    :cond_44
    const/16 v0, 0xff

    if-ne p0, v0, :cond_45

    .line 284
    const-string v0, "ABORT"

    return-object v0

    .line 286
    :cond_45
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
