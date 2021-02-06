.class final Lcom/android/server/hdmi/HdmiUtils;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiUtils$CodecSad;,
        Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;,
        Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;
    }
.end annotation


# static fields
.field private static final ADDRESS_TO_TYPE:[I

.field private static final DEFAULT_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HdmiUtils"

.field static final TARGET_NOT_UNDER_LOCAL_DEVICE:I = -0x1

.field static final TARGET_SAME_PHYSICAL_ADDRESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 50
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:[I

    .line 68
    const-string v1, "TV"

    const-string v2, "Recorder_1"

    const-string v3, "Recorder_2"

    const-string v4, "Tuner_1"

    const-string v5, "Playback_1"

    const-string v6, "AudioSystem"

    const-string v7, "Tuner_2"

    const-string v8, "Tuner_3"

    const-string v9, "Playback_2"

    const-string v10, "Recorder_3"

    const-string v11, "Tuner_4"

    const-string v12, "Playback_3"

    const-string v13, "Reserved_1"

    const-string v14, "Reserved_2"

    const-string v15, "Secondary_TV"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x3
        0x4
        0x5
        0x3
        0x3
        0x4
        0x1
        0x3
        0x4
        0x2
        0x2
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asImmutableList([I)Ljava/util/List;
    .locals 5
    .param p0, "is"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 215
    .local v3, "type":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v3    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z
    .locals 3
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p1, "expectedAddress"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 161
    .local v0, "src":I
    if-eq v0, p1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source [Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x0

    return v1

    .line 165
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method static cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 9
    .param p0, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p1, "newPowerStatus"    # I

    .line 340
    new-instance v8, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 341
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v4

    .line 342
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v5

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    .line 340
    return-object v8
.end method

.method static dumpIterable(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 407
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 409
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 410
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 411
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 413
    return-void
.end method

.method static dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 386
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 388
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 389
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 391
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 393
    return-void
.end method

.method static dumpSparseArray(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 5
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 358
    .local p2, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 360
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 361
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 362
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 363
    .local v2, "key":I
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 364
    .local v3, "value":Ljava/lang/Object;, "TT;"
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 361
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 368
    return-void
.end method

.method static getAbortFeatureOpcode(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 2
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 470
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method static getAbortReason(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 2
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 481
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method static getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 3
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 196
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 197
    .local v0, "params":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0x7f

    .line 198
    .local v1, "volume":I
    if-ltz v1, :cond_0

    const/16 v2, 0x64

    if-ge v2, v1, :cond_1

    .line 199
    :cond_0
    const/4 v1, -0x1

    .line 201
    :cond_1
    return v1
.end method

.method static getDefaultDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # I

    .line 129
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 132
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getLocalPortFromPhysicalAddress(II)I
    .locals 6
    .param p0, "targetPhysicalAddress"    # I
    .param p1, "myPhysicalAddress"    # I

    .line 435
    if-ne p1, p0, :cond_0

    .line 436
    const/4 v0, 0x0

    return v0

    .line 439
    :cond_0
    const v0, 0xf000

    .line 440
    .local v0, "mask":I
    const v1, 0xf000

    .line 441
    .local v1, "finalMask":I
    move v2, p1

    .line 443
    .local v2, "maskedAddress":I
    :goto_0
    if-eqz v2, :cond_1

    .line 444
    and-int v2, p1, v0

    .line 445
    or-int/2addr v1, v0

    .line 446
    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 449
    :cond_1
    and-int v3, p0, v1

    .line 450
    .local v3, "portAddress":I
    shl-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v3

    if-eq v4, p1, :cond_2

    .line 451
    const/4 v4, -0x1

    return v4

    .line 454
    :cond_2
    shl-int/lit8 v0, v0, 0x4

    .line 455
    and-int v4, v3, v0

    .line 456
    .local v4, "port":I
    :goto_1
    shr-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_3

    .line 457
    shr-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 459
    :cond_3
    return v4
.end method

.method static getTypeFromAddress(I)I
    .locals 1
    .param p0, "address"    # I

    .line 114
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:[I

    aget v0, v0, p0

    return v0

    .line 117
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static isAffectingActiveRoutingPath(II)Z
    .locals 3
    .param p0, "activePath"    # I
    .param p1, "newPath"    # I

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    .line 293
    shr-int v1, p1, v0

    and-int/lit8 v1, v1, 0xf

    .line 294
    .local v1, "nibble":I
    if-eqz v1, :cond_0

    .line 295
    const v2, 0xfff0

    shl-int/2addr v2, v0

    .line 296
    .local v2, "mask":I
    and-int/2addr p1, v2

    .line 297
    goto :goto_1

    .line 292
    .end local v1    # "nibble":I
    .end local v2    # "mask":I
    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 300
    .end local v0    # "i":I
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 301
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_2
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    move-result v0

    return v0
.end method

.method static isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 185
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 186
    .local v0, "params":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static isInActiveRoutingPath(II)Z
    .locals 4
    .param p0, "activePath"    # I
    .param p1, "newPath"    # I

    .line 320
    const/16 v0, 0xc

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 321
    shr-int v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    .line 322
    .local v1, "nibbleActive":I
    if-nez v1, :cond_0

    .line 323
    goto :goto_1

    .line 325
    :cond_0
    shr-int v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    .line 326
    .local v2, "nibbleNew":I
    if-nez v2, :cond_1

    .line 327
    goto :goto_1

    .line 329
    :cond_1
    if-eq v1, v2, :cond_2

    .line 330
    const/4 v3, 0x0

    return v3

    .line 320
    .end local v1    # "nibbleActive":I
    .end local v2    # "nibbleNew":I
    :cond_2
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 333
    .end local v0    # "i":I
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method static isValidAddress(I)Z
    .locals 1
    .param p0, "address"    # I

    .line 103
    if-ltz p0, :cond_0

    const/16 v0, 0xe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static mergeToUnmodifiableList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 260
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 263
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 266
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 269
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 175
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private static printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "name"    # Ljava/lang/String;

    .line 371
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method static sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 252
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 254
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static threeBytesToInt([B)I
    .locals 2
    .param p0, "data"    # [B

    .line 248
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static twoBytesToInt([B)I
    .locals 2
    .param p0, "data"    # [B

    .line 227
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static twoBytesToInt([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 238
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static verifyAddressType(II)V
    .locals 4
    .param p0, "logicalAddress"    # I
    .param p1, "deviceType"    # I

    .line 144
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v0

    .line 145
    .local v0, "actualDeviceType":I
    if-ne v0, p1, :cond_0

    .line 149
    return-void

    .line 146
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device type missmatch:[Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
