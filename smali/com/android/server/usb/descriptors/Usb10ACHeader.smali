.class public final Lcom/android/server/usb/descriptors/Usb10ACHeader;
.super Lcom/android/server/usb/descriptors/UsbACHeaderInterface;
.source "Usb10ACHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb10ACHeader"


# instance fields
.field private mControls:B

.field private mInterfaceNums:[B

.field private mNumInterfaces:B


# direct methods
.method public constructor <init>(IBBII)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "subclass"    # I
    .param p5, "spec"    # I

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;-><init>(IBBII)V

    .line 28
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    .line 37
    return-void
.end method


# virtual methods
.method public getControls()B
    .locals 1

    .line 48
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mControls:B

    return v0
.end method

.method public getInterfaceNums()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    return-object v0
.end method

.method public getNumInterfaces()B
    .locals 1

    .line 40
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 3
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 54
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mTotalLength:I

    .line 55
    iget v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mADCRelease:I

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mControls:B

    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    .line 59
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    .line 60
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "index":I
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 70
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 72
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 73
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACHeader;->getNumInterfaces()B

    move-result v0

    .line 74
    .local v0, "numInterfaces":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Interfaces"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    if-lez v0, :cond_2

    .line 77
    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACHeader;->getInterfaceNums()[B

    move-result-object v2

    .line 79
    .local v2, "interfaceNums":[B
    if-eqz v2, :cond_1

    .line 80
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_0

    .line 83
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    .end local v4    # "index":I
    :cond_1
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .end local v2    # "interfaceNums":[B
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACHeader;->getControls()B

    move-result v3

    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 92
    return-void
.end method
