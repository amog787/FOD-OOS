.class public final Lcom/android/server/usb/descriptors/Usb10ASFormatI;
.super Lcom/android/server/usb/descriptors/UsbASFormat;
.source "Usb10ASFormatI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb10ASFormatI"


# instance fields
.field private mBitResolution:B

.field private mNumChannels:B

.field private mSampleFreqType:B

.field private mSampleRates:[I

.field private mSubframeSize:B


# direct methods
.method public constructor <init>(IBBBI)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "formatType"    # B
    .param p5, "subclass"    # I

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    .line 38
    return-void
.end method


# virtual methods
.method public getBitDepths()[I
    .locals 3

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mBitResolution:B

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 64
    .local v0, "depths":[I
    return-object v0
.end method

.method public getBitResolution()B
    .locals 1

    .line 49
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mBitResolution:B

    return v0
.end method

.method public getChannelCounts()[I
    .locals 3

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mNumChannels:B

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 70
    .local v0, "counts":[I
    return-object v0
.end method

.method public getNumChannels()B
    .locals 1

    .line 41
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mNumChannels:B

    return v0
.end method

.method public getSampleFreqType()B
    .locals 1

    .line 53
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    return v0
.end method

.method public getSampleRates()[I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    return-object v0
.end method

.method public getSubframeSize()B
    .locals 1

    .line 45
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSubframeSize:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 3
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 75
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mNumChannels:B

    .line 76
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSubframeSize:B

    .line 77
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mBitResolution:B

    .line 78
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    .line 79
    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    .line 81
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    move-result v2

    aput v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    goto :goto_1

    .line 84
    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    .line 85
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    if-ge v0, v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    move-result v2

    aput v2, v1, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "index":I
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 95
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbASFormat;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 97
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getNumChannels()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Channels."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subframe Size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getSubframeSize()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bit Resolution: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getBitResolution()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getSampleFreqType()B

    move-result v0

    .line 102
    .local v0, "sampleFreqType":B
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getSampleRates()[I

    move-result-object v2

    .line 103
    .local v2, "sampleRates":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sample Freq Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 105
    if-nez v0, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "min: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_0
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "index":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 114
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 115
    return-void
.end method
