.class public final Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.source "Usb10ACMixerUnit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb10ACMixerUnit"


# instance fields
.field private mChanNameID:B

.field private mChannelConfig:I

.field private mControls:[B

.field private mNameID:B


# direct methods
.method public constructor <init>(IBBI)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "subClass"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;-><init>(IBBI)V

    .line 35
    return-void
.end method


# virtual methods
.method public getChanNameID()B
    .locals 1

    .line 42
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChanNameID:B

    return v0
.end method

.method public getChannelConfig()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChannelConfig:I

    return v0
.end method

.method public getControls()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    return-object v0
.end method

.method public getNameID()B
    .locals 1

    .line 50
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNameID:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 4
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 55
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 57
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChannelConfig:I

    .line 58
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChanNameID:B

    .line 60
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNumInputs:B

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNumOutputs:B

    invoke-static {v0, v1}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->calcControlArraySize(II)I

    move-result v0

    .line 61
    .local v0, "controlArraySize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    .line 62
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNameID:B

    .line 68
    iget v1, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mLength:I

    return v1
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 9
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 73
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 75
    const-string v0, "Mixer Unit"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unit ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getUnitID()B

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getNumInputs()B

    move-result v0

    .line 80
    .local v0, "numInputs":B
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getInputIDs()[B

    move-result-object v1

    .line 81
    .local v1, "inputIDs":[B
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Num Inputs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 83
    const/4 v2, 0x0

    .local v2, "input":I
    :goto_0
    const-string v4, " "

    const-string v5, ""

    if-ge v2, v0, :cond_1

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, v1, v2

    invoke-static {v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 85
    add-int/lit8 v5, v0, -0x1

    if-ge v2, v5, :cond_0

    .line 86
    invoke-virtual {p1, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 83
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "input":I
    :cond_1
    const-string v2, "]"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Num Outputs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getNumOutputs()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel Config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getChannelConfig()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getControls()[B

    move-result-object v6

    .line 96
    .local v6, "controls":[B
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Controls: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 98
    const/4 v3, 0x0

    .local v3, "ctrl":I
    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_3

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v6, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 100
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    .line 101
    invoke-virtual {p1, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 98
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    .end local v3    # "ctrl":I
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    .line 106
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 107
    return-void
.end method
