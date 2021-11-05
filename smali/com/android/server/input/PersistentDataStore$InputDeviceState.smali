.class final Lcom/android/server/input/PersistentDataStore$InputDeviceState;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputDeviceState"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CALIBRATION_NAME:[Ljava/lang/String;


# instance fields
.field private mCurrentKeyboardLayout:Ljava/lang/String;

.field private mKeyboardLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchCalibration:[Landroid/hardware/input/TouchCalibration;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 306
    const-class v0, Lcom/android/server/input/PersistentDataStore;

    .line 307
    const-string/jumbo v1, "x_scale"

    const-string/jumbo v2, "x_ymix"

    const-string/jumbo v3, "x_offset"

    const-string/jumbo v4, "y_xmix"

    const-string/jumbo v5, "y_scale"

    const-string/jumbo v6, "y_offset"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hardware/input/TouchCalibration;

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/PersistentDataStore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/input/PersistentDataStore$1;

    .line 306
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>()V

    return-void
.end method

.method private static stringToSurfaceRotation(Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 547
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x0

    return v0

    .line 550
    :cond_0
    const-string v0, "90"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    const/4 v0, 0x1

    return v0

    .line 553
    :cond_1
    const-string v0, "180"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    const/4 v0, 0x2

    return v0

    .line 556
    :cond_2
    const-string v0, "270"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    const/4 v0, 0x3

    return v0

    .line 559
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static surfaceRotationToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "surfaceRotation"    # I

    .line 537
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 541
    const-string v0, "270"

    return-object v0

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_1
    const-string v0, "180"

    return-object v0

    .line 539
    :cond_2
    const-string v0, "90"

    return-object v0

    .line 538
    :cond_3
    const-string v0, "0"

    return-object v0
.end method

.method private updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "removedKeyboardLayout"    # Ljava/lang/String;
    .param p2, "removedIndex"    # I

    .line 382
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    move v0, p2

    .line 385
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 389
    .end local v0    # "index":I
    goto :goto_0

    .line 390
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 393
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addKeyboardLayout(Ljava/lang/String;)Z
    .locals 4
    .param p1, "keyboardLayout"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 360
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 361
    const/4 v1, 0x0

    return v1

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    neg-int v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 364
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 365
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 367
    :cond_1
    return v3
.end method

.method public getCurrentKeyboardLayout()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardLayouts()[Ljava/lang/String;
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;
    .locals 3
    .param p1, "surfaceRotation"    # I

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "InputManager"

    const-string v2, "Cannot get touch calibration."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    const/4 v1, 0x0

    return-object v1
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 23
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 427
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 428
    .local v3, "outerDepth":I
    :goto_0
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    .line 429
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "keyboard-layout"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 430
    const-string v0, "descriptor"

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "descriptor":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 435
    const-string v4, "current"

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "current":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 441
    iget-object v5, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    if-eqz v4, :cond_c

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 443
    iget-object v5, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 447
    iput-object v0, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    goto/16 :goto_6

    .line 444
    :cond_0
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Found multiple current keyboard layouts."

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 437
    :cond_1
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Found duplicate keyboard layout."

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 432
    .end local v4    # "current":Ljava/lang/String;
    :cond_2
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Missing descriptor attribute on keyboard-layout."

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 449
    .end local v0    # "descriptor":Ljava/lang/String;
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "calibration"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 450
    const-string v0, "format"

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, "format":Ljava/lang/String;
    const-string/jumbo v0, "rotation"

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, "rotation":Ljava/lang/String;
    const/4 v7, -0x1

    .line 454
    .local v7, "r":I
    if-eqz v6, :cond_b

    .line 458
    const-string v0, "affine"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 462
    if-eqz v5, :cond_4

    .line 464
    :try_start_0
    invoke-static {v5}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->stringToSurfaceRotation(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    .line 468
    goto :goto_1

    .line 465
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 466
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Unsupported rotation for calibration."

    invoke-direct {v4, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 471
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :goto_1
    sget-object v0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    invoke-virtual {v0}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    move-result-object v0

    .line 472
    .local v0, "matrix":[F
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 473
    .local v8, "depth":I
    :goto_2
    invoke-static {v2, v8}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 474
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 475
    .local v9, "tag":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 477
    .local v10, "value":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    array-length v12, v0

    if-ge v11, v12, :cond_6

    sget-object v12, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    array-length v13, v12

    if-ge v11, v13, :cond_6

    .line 478
    aget-object v12, v12, v11

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 479
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    aput v12, v0, v11

    .line 480
    goto :goto_4

    .line 477
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 483
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_6
    :goto_4
    goto :goto_2

    .line 485
    :cond_7
    const/4 v9, -0x1

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ne v7, v9, :cond_8

    .line 487
    const/4 v7, 0x0

    :goto_5
    iget-object v9, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    array-length v15, v9

    if-ge v7, v15, :cond_9

    .line 488
    new-instance v15, Landroid/hardware/input/TouchCalibration;

    aget v17, v0, v4

    aget v18, v0, v14

    aget v19, v0, v13

    aget v20, v0, v12

    aget v21, v0, v11

    aget v22, v0, v10

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v22}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    aput-object v15, v9, v7

    .line 487
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 492
    :cond_8
    iget-object v9, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    new-instance v22, Landroid/hardware/input/TouchCalibration;

    aget v16, v0, v4

    aget v17, v0, v14

    aget v18, v0, v13

    aget v19, v0, v12

    aget v20, v0, v11

    aget v21, v0, v10

    move-object/from16 v15, v22

    invoke-direct/range {v15 .. v21}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    aput-object v22, v9, v7

    .line 495
    .end local v0    # "matrix":[F
    .end local v5    # "rotation":Ljava/lang/String;
    .end local v6    # "format":Ljava/lang/String;
    .end local v7    # "r":I
    .end local v8    # "depth":I
    :cond_9
    goto/16 :goto_0

    .line 459
    .restart local v5    # "rotation":Ljava/lang/String;
    .restart local v6    # "format":Ljava/lang/String;
    .restart local v7    # "r":I
    :cond_a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Unsupported format for calibration."

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing format attribute on calibration."

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    .end local v5    # "rotation":Ljava/lang/String;
    .end local v6    # "format":Ljava/lang/String;
    .end local v7    # "r":I
    :cond_c
    :goto_6
    goto/16 :goto_0

    .line 499
    :cond_d
    iget-object v0, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 503
    iget-object v0, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 504
    iget-object v0, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 506
    :cond_e
    return-void
.end method

.method public removeKeyboardLayout(Ljava/lang/String;)Z
    .locals 2
    .param p1, "keyboardLayout"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 372
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 373
    const/4 v1, 0x0

    return v1

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 376
    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    .line 377
    const/4 v1, 0x1

    return v1
.end method

.method public removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 412
    .local p1, "availableKeyboardLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 413
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    .local v1, "keyboardLayout":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing uninstalled keyboard layout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 418
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    .line 419
    const/4 v0, 0x1

    .line 421
    .end local v1    # "keyboardLayout":Ljava/lang/String;
    :cond_0
    move v1, v2

    goto :goto_0

    .line 422
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 510
    .local v1, "layout":Ljava/lang/String;
    const-string/jumbo v3, "keyboard-layout"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    const-string v4, "descriptor"

    invoke-interface {p1, v2, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 513
    const-string v4, "current"

    const-string/jumbo v5, "true"

    invoke-interface {p1, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    :cond_0
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    .end local v1    # "layout":Ljava/lang/String;
    goto :goto_0

    .line 518
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 519
    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 520
    invoke-static {v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->surfaceRotationToString(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "rotation":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    move-result-object v3

    .line 523
    .local v3, "transform":[F
    const-string v4, "calibration"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    const-string v5, "format"

    const-string v6, "affine"

    invoke-interface {p1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 525
    const-string/jumbo v5, "rotation"

    invoke-interface {p1, v2, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_2

    sget-object v6, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 527
    aget-object v6, v6, v5

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    aget v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 529
    sget-object v6, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 531
    .end local v5    # "j":I
    :cond_2
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    .end local v1    # "rotation":Ljava/lang/String;
    .end local v3    # "transform":[F
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyboardLayout"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x0

    return v0

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    .line 347
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z
    .locals 4
    .param p1, "surfaceRotation"    # I
    .param p2, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .line 326
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/hardware/input/TouchCalibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aput-object p2, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    const/4 v0, 0x1

    return v0

    .line 330
    :cond_0
    return v0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "InputManager"

    const-string v3, "Cannot set touch calibration."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    return v0
.end method

.method public switchKeyboardLayout(I)Z
    .locals 4
    .param p1, "direction"    # I

    .line 396
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 397
    .local v0, "size":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 398
    const/4 v1, 0x0

    return v1

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 401
    .local v1, "index":I
    nop

    .line 402
    const/4 v2, 0x1

    if-lez p1, :cond_1

    .line 403
    add-int/lit8 v3, v1, 0x1

    rem-int/2addr v3, v0

    .end local v1    # "index":I
    .local v3, "index":I
    goto :goto_0

    .line 405
    .end local v3    # "index":I
    .restart local v1    # "index":I
    :cond_1
    add-int v3, v1, v0

    sub-int/2addr v3, v2

    rem-int/2addr v3, v0

    .line 407
    .end local v1    # "index":I
    .restart local v3    # "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 408
    return v2
.end method
