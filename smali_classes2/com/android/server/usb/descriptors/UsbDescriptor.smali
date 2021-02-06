.class public abstract Lcom/android/server/usb/descriptors/UsbDescriptor;
.super Ljava/lang/Object;
.source "UsbDescriptor.java"

# interfaces
.implements Lcom/android/server/usb/descriptors/report/Reporting;


# static fields
.field public static final AUDIO_AUDIOCONTROL:I = 0x1

.field public static final AUDIO_AUDIOSTREAMING:I = 0x2

.field public static final AUDIO_MIDISTREAMING:I = 0x3

.field public static final AUDIO_SUBCLASS_UNDEFINED:I = 0x0

.field public static final CLASSID_APPSPECIFIC:I = 0xfe

.field public static final CLASSID_AUDIO:I = 0x1

.field public static final CLASSID_AUDIOVIDEO:I = 0x10

.field public static final CLASSID_BILLBOARD:I = 0x11

.field public static final CLASSID_CDC_CONTROL:I = 0xa

.field public static final CLASSID_COM:I = 0x2

.field public static final CLASSID_DEVICE:I = 0x0

.field public static final CLASSID_DIAGNOSTIC:I = 0xdc

.field public static final CLASSID_HEALTHCARE:I = 0xf

.field public static final CLASSID_HID:I = 0x3

.field public static final CLASSID_HUB:I = 0x9

.field public static final CLASSID_IMAGE:I = 0x6

.field public static final CLASSID_MISC:I = 0xef

.field public static final CLASSID_PHYSICAL:I = 0x5

.field public static final CLASSID_PRINTER:I = 0x7

.field public static final CLASSID_SECURITY:I = 0xd

.field public static final CLASSID_SMART_CARD:I = 0xb

.field public static final CLASSID_STORAGE:I = 0x8

.field public static final CLASSID_TYPECBRIDGE:I = 0x12

.field public static final CLASSID_VENDSPECIFIC:I = 0xff

.field public static final CLASSID_VIDEO:I = 0xe

.field public static final CLASSID_WIRELESS:I = 0xe0

.field public static final DESCRIPTORTYPE_BOS:B = 0xft

.field public static final DESCRIPTORTYPE_CAPABILITY:B = 0x10t

.field public static final DESCRIPTORTYPE_CLASSSPECIFIC_ENDPOINT:B = 0x25t

.field public static final DESCRIPTORTYPE_CLASSSPECIFIC_INTERFACE:B = 0x24t

.field public static final DESCRIPTORTYPE_CONFIG:B = 0x2t

.field public static final DESCRIPTORTYPE_DEVICE:B = 0x1t

.field public static final DESCRIPTORTYPE_ENDPOINT:B = 0x5t

.field public static final DESCRIPTORTYPE_ENDPOINT_COMPANION:B = 0x30t

.field public static final DESCRIPTORTYPE_HID:B = 0x21t

.field public static final DESCRIPTORTYPE_HUB:B = 0x29t

.field public static final DESCRIPTORTYPE_INTERFACE:B = 0x4t

.field public static final DESCRIPTORTYPE_INTERFACEASSOC:B = 0xbt

.field public static final DESCRIPTORTYPE_PHYSICAL:B = 0x23t

.field public static final DESCRIPTORTYPE_REPORT:B = 0x22t

.field public static final DESCRIPTORTYPE_STRING:B = 0x3t

.field public static final DESCRIPTORTYPE_SUPERSPEED_HUB:B = 0x2at

.field public static final REQUEST_CLEAR_FEATURE:I = 0x1

.field public static final REQUEST_GET_ADDRESS:I = 0x5

.field public static final REQUEST_GET_CONFIGURATION:I = 0x8

.field public static final REQUEST_GET_DESCRIPTOR:I = 0x6

.field public static final REQUEST_GET_STATUS:I = 0x0

.field public static final REQUEST_SET_CONFIGURATION:I = 0x9

.field public static final REQUEST_SET_DESCRIPTOR:I = 0x7

.field public static final REQUEST_SET_FEATURE:I = 0x3

.field private static final SIZE_STRINGBUFFER:I = 0x100

.field public static final STATUS_PARSED_OK:I = 0x1

.field public static final STATUS_PARSED_OVERRUN:I = 0x3

.field public static final STATUS_PARSED_UNDERRUN:I = 0x2

.field public static final STATUS_PARSE_EXCEPTION:I = 0x4

.field public static final STATUS_UNPARSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsbDescriptor"

.field public static final USB_CONTROL_TRANSFER_TIMEOUT_MS:I = 0xc8

.field private static sStatusStrings:[Ljava/lang/String;

.field private static sStringBuffer:[B


# instance fields
.field protected mHierarchyLevel:I

.field protected final mLength:I

.field private mOverUnderRunCount:I

.field private mRawData:[B

.field private mStatus:I

.field protected final mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    .line 63
    const-string v0, "UNPARSED"

    const-string v1, "PARSED - OK"

    const-string v2, "PARSED - UNDERRUN"

    const-string v3, "PARSED - OVERRUN"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IB)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "type"    # B

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 138
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 143
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 144
    iput-byte p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 145
    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static getDescriptorName(BI)Ljava/lang/String;
    .locals 3
    .param p0, "descriptorType"    # B
    .param p1, "descriptorLength"    # I

    .line 285
    invoke-static {p0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getDescriptorName(B)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 287
    return-object v0

    .line 289
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Descriptor Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    return-object v1
.end method

.method public static getUsbDescriptorString(Landroid/hardware/usb/UsbDeviceConnection;B)Ljava/lang/String;
    .locals 9
    .param p0, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .param p1, "strIndex"    # B

    .line 219
    const-string v0, ""

    .line 220
    .local v0, "usbStr":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 222
    const/16 v2, 0x80

    const/4 v3, 0x6

    or-int/lit16 v4, p1, 0x300

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    const/16 v7, 0xff

    const/16 v8, 0xc8

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 230
    .local v1, "rdo":I
    if-ltz v1, :cond_0

    .line 231
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    add-int/lit8 v4, v1, -0x2

    const-string v5, "UTF-16LE"

    const/4 v6, 0x2

    invoke-direct {v2, v3, v6, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 233
    :cond_0
    const-string v2, "?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 237
    .end local v1    # "rdo":I
    :goto_0
    goto :goto_1

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbDescriptor"

    const-string v3, "Can not communicate with USB device"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v0
.end method

.method static logDescriptorName(BI)V
    .locals 0
    .param p0, "descriptorType"    # B
    .param p1, "descriptorLength"    # I

    .line 299
    return-void
.end method

.method private reportParseStatus(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 243
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v0

    .line 244
    .local v0, "status":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getOverUnderRunCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 251
    invoke-virtual {p1, v1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 255
    :goto_0
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return v0
.end method

.method public getOverUnderRunCount()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    return v0
.end method

.method public getRawData()[B
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    return v0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 2

    .line 167
    sget-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getType()B
    .locals 1

    .line 152
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 5
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 204
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getReadCount()I

    move-result v0

    .line 205
    .local v0, "numRead":I
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int/2addr v1, v0

    .line 206
    .local v1, "dataLen":I
    if-lez v1, :cond_0

    .line 207
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    .line 208
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v4

    aput-byte v4, v3, v2

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "index":I
    :cond_0
    iget v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return v2
.end method

.method public postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    .locals 5
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 179
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getReadCount()I

    move-result v0

    .line 180
    .local v0, "bytesRead":I
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    const-string v2, " r: "

    const-string v3, "UsbDescriptor"

    if-ge v0, v1, :cond_0

    .line 182
    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/ByteStream;->advance(I)V

    .line 183
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 184
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNDERRUN t:0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < l: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_0
    if-le v0, v1, :cond_1

    .line 189
    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/ByteStream;->reverse(I)V

    .line 190
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 191
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OVERRRUN t:0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > l: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 198
    :goto_0
    return-void
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 259
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getDescriptorName(B)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "descTypeStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "text":Ljava/lang/String;
    iget v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p1, v2, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeHeader(ILjava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->reportParseStatus(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 271
    :cond_1
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 160
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 161
    return-void
.end method

.method public shortReport(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 275
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getDescriptorName(B)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "descTypeStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 279
    return-void
.end method
