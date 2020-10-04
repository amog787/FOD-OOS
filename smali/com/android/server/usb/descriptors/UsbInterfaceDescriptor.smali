.class public Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbInterfaceDescriptor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbInterfaceDescriptor"


# instance fields
.field protected mAlternateSetting:B

.field protected mDescrIndex:B

.field private mEndpointDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected mInterfaceNumber:I

.field protected mNumEndpoints:B

.field protected mProtocol:I

.field protected mUsbClass:I

.field protected mUsbSubclass:I


# direct methods
.method constructor <init>(IB)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "type"    # B

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mHierarchyLevel:I

    .line 50
    return-void
.end method


# virtual methods
.method addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V
    .locals 1
    .param p1, "endpoint"    # Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 94
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public getAlternateSetting()B
    .locals 1

    .line 70
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    return v0
.end method

.method public getDescrIndex()B
    .locals 1

    .line 90
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mDescrIndex:B

    return v0
.end method

.method public getInterfaceNumber()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    return v0
.end method

.method public getNumEndpoints()B
    .locals 1

    .line 74
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    return v0
.end method

.method public getProtocol()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mProtocol:I

    return v0
.end method

.method public getUsbClass()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    return v0
.end method

.method public getUsbSubclass()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 54
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    .line 55
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    .line 56
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    .line 57
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    .line 58
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 59
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mProtocol:I

    .line 60
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mDescrIndex:B

    .line 62
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 8
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 116
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v0

    .line 119
    .local v0, "usbClass":I
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v1

    .line 120
    .local v1, "usbSubclass":I
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getProtocol()I

    move-result v2

    .line 121
    .local v2, "protocol":I
    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "className":Ljava/lang/String;
    const-string v4, ""

    .line 123
    .local v4, "subclassName":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 124
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getAudioSubclassName(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interface #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getInterfaceNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subclass: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Protocol: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Endpoints: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 135
    return-void
.end method

.method toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;
    .locals 9
    .param p1, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 103
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mDescrIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "name":Ljava/lang/String;
    new-instance v8, Landroid/hardware/usb/UsbInterface;

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    iget-byte v3, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    iget v5, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    iget v6, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    iget v7, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mProtocol:I

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Landroid/hardware/usb/UsbInterface;-><init>(IILjava/lang/String;III)V

    .line 106
    .local v1, "ntrface":Landroid/hardware/usb/UsbInterface;
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbEndpoint;

    .line 107
    .local v2, "endpoints":[Landroid/hardware/usb/UsbEndpoint;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-virtual {v4, p1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    aput-object v4, v2, v3

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    .line 111
    return-object v1
.end method
