.class public final Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;
.super Lcom/android/server/usb/descriptors/UsbASFormat;
.source "Usb20ASFormatIIEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb20ASFormatIIEx"


# instance fields
.field private mHeaderLength:B

.field private mMaxBitRate:I

.field private mSamplesPerFrame:I

.field private mSidebandProtocol:B


# direct methods
.method public constructor <init>(IBBBB)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "formatType"    # B
    .param p5, "subclass"    # B

    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    .line 39
    return-void
.end method


# virtual methods
.method public getHeaderLength()B
    .locals 1

    .line 50
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->mHeaderLength:B

    return v0
.end method

.method public getMaxBitRate()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->mMaxBitRate:I

    return v0
.end method

.method public getSamplesPerFrame()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->mSamplesPerFrame:I

    return v0
.end method

.method public getSidebandProtocol()B
    .locals 1

    .line 54
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->mSidebandProtocol:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 59
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->mMaxBitRate:I

    .line 60
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->mSamplesPerFrame:I

    .line 61
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->mHeaderLength:B

    .line 62
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->mSidebandProtocol:B

    .line 64
    iget v0, p0, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 69
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbASFormat;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 71
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max Bit Rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->getMaxBitRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Samples Per Frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->getSamplesPerFrame()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->getHeaderLength()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sideband Protocol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb20ASFormatIIEx;->getSidebandProtocol()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 77
    return-void
.end method
