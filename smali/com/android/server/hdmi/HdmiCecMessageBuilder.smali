.class public Lcom/android/server/hdmi/HdmiCecMessageBuilder;
.super Ljava/lang/Object;
.source "HdmiCecMessageBuilder.java"


# static fields
.field private static final OSD_NAME_MAX_LENGTH:I = 0xd


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "physicalAddress"    # I

    .line 318
    nop

    .line 319
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 318
    const/16 v1, 0xf

    const/16 v2, 0x82

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "version"    # I

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 201
    .local v0, "params":[B
    const/16 v1, 0x9e

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 676
    const/16 v0, 0x33

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 664
    const/16 v0, 0x99

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 688
    const/16 v0, 0xa1

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method private static buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "opcode"    # I

    .line 702
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method private static buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "opcode"    # I
    .param p3, "params"    # [B

    .line 715
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method private static buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2
    .param p0, "src"    # I
    .param p1, "des"    # I
    .param p2, "opcode"    # I
    .param p3, "param"    # Z

    .line 729
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 730
    const/4 v1, 0x0

    aput-byte p3, v0, v1

    .line 732
    .local v0, "params":[B
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "vendorId"    # I

    .line 178
    const/4 v0, 0x3

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 184
    .local v0, "params":[B
    const/16 v1, 0xf

    const/16 v2, 0x87

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "originalOpcode"    # I
    .param p3, "reason"    # I

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 62
    .local v0, "params":[B
    invoke-static {p0, p1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 490
    const/16 v0, 0x71

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 389
    const/16 v0, 0x8f

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 95
    const/16 v0, 0x8c

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 84
    const/16 v0, 0x46

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 73
    const/16 v0, 0x83

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 551
    const/16 v0, 0x7d

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "physicalAddress"    # I

    .line 330
    nop

    .line 331
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 330
    const/4 v1, 0x0

    const/16 v2, 0x9d

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildInitiateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 223
    const/16 v0, 0xc0

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 616
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 605
    const/16 v0, 0x9

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 256
    const/16 v0, 0xc1

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 267
    const/16 v0, 0xc2

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportAudioStatus(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "volume"    # I
    .param p3, "mute"    # Z

    .line 503
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    int-to-byte v1, v1

    int-to-byte v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 504
    .local v1, "status":B
    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-byte v1, v2, v0

    move-object v0, v2

    .line 505
    .local v0, "params":[B
    const/16 v2, 0x7a

    invoke-static {p0, p1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    return-object v2
.end method

.method static buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "menuStatus"    # I

    .line 416
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 419
    .local v0, "param":[B
    const/16 v1, 0x8e

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "address"    # I
    .param p2, "deviceType"    # I

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 163
    .local v0, "params":[B
    const/16 v1, 0xf

    const/16 v2, 0x84

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "powerStatus"    # I

    .line 401
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 404
    .local v0, "param":[B
    const/16 v1, 0x90

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportShortAudioDescriptor(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "des"    # I
    .param p2, "sadBytes"    # [B

    .line 479
    const/16 v0, 0xa3

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "des"    # I
    .param p2, "systemAudioStatus"    # Z

    .line 464
    const/16 v0, 0x7e

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestActiveSource(I)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2
    .param p0, "src"    # I

    .line 307
    const/16 v0, 0xf

    const/16 v1, 0x85

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 212
    const/16 v0, 0xc3

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 245
    const/16 v0, 0xc4

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestShortAudioDescriptor(II[I)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "audioFormats"    # [I

    .line 281
    array-length v0, p2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    .line 282
    .local v0, "params":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 283
    aget v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0xa4

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "oldPath"    # I
    .param p2, "newPath"    # I

    .line 359
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 363
    .local v0, "param":[B
    const/16 v1, 0xf

    const/16 v2, 0x80

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildRoutingInformation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "physicalAddress"    # I

    .line 377
    nop

    .line 378
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 377
    const/16 v1, 0xf

    const/16 v2, 0x81

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 640
    const/16 v0, 0x34

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 628
    const/16 v0, 0x97

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 652
    const/16 v0, 0xa2

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4
    .param p0, "src"    # I
    .param p1, "language"    # Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "normalized":Ljava/lang/String;
    new-array v1, v1, [B

    .line 115
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 117
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 120
    .local v1, "params":[B
    const/16 v2, 0xf

    const/16 v3, 0x32

    invoke-static {p0, v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    return-object v2
.end method

.method static buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 136
    .local v0, "length":I
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .local v1, "params":[B
    nop

    .line 140
    const/16 v2, 0x47

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    return-object v2

    .line 137
    .end local v1    # "params":[B
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    return-object v2
.end method

.method static buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "streamPath"    # I

    .line 344
    nop

    .line 345
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 344
    const/16 v1, 0xf

    const/16 v2, 0x86

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "des"    # I
    .param p2, "systemAudioStatus"    # Z

    .line 450
    const/16 v0, 0x72

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method public static buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 562
    const/16 v0, 0x36

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2
    .param p0, "src"    # I
    .param p1, "avr"    # I
    .param p2, "avrPhysicalAddress"    # I
    .param p3, "enableSystemAudio"    # Z

    .line 433
    const/16 v0, 0x70

    if-eqz p3, :cond_0

    .line 434
    nop

    .line 435
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v1

    .line 434
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0

    .line 437
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildTerminateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 234
    const/16 v0, 0xc5

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 297
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "uiCommand"    # I

    .line 517
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "commandParam"    # [B

    .line 529
    const/16 v0, 0x44

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 540
    const/16 v0, 0x45

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 574
    const/16 v0, 0x89

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 5
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "vendorId"    # I
    .param p3, "operands"    # [B

    .line 588
    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 589
    .local v0, "params":[B
    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 590
    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v0, v4

    .line 591
    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v0, v4

    .line 592
    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    const/16 v1, 0xa0

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "body"    # [B

    .line 41
    const/4 v0, 0x0

    aget-byte v0, p2, v0

    .line 42
    .local v0, "opcode":B
    array-length v1, p2

    const/4 v2, 0x1

    invoke-static {p2, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 43
    .local v1, "params":[B
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v2
.end method

.method private static physicalAddressToParam(I)[B
    .locals 3
    .param p0, "physicalAddress"    # I

    .line 736
    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method
