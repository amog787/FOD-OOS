.class public Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbInterfaceDescriptor.java"


# static fields
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

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mHierarchyLevel:I

    .line 48
    return-void
.end method


# virtual methods
.method addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V
    .locals 1
    .param p1, "endpoint"    # Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 105
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public getAlternateSetting()B
    .locals 1

    .line 68
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    return v0
.end method

.method public getDescrIndex()B
    .locals 1

    .line 101
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mDescrIndex:B

    return v0
.end method

.method public getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 81
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    return-object v0

    .line 82
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceNumber()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    return v0
.end method

.method public getNumEndpoints()B
    .locals 1

    .line 72
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    return v0
.end method

.method public getProtocol()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mProtocol:I

    return v0
.end method

.method public getUsbClass()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    return v0
.end method

.method public getUsbSubclass()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 52
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    .line 53
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    .line 54
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    .line 55
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    .line 56
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 57
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mProtocol:I

    .line 58
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mDescrIndex:B

    .line 60
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 8
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 127
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v0

    .line 130
    .local v0, "usbClass":I
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v1

    .line 131
    .local v1, "usbSubclass":I
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getProtocol()I

    move-result v2

    .line 132
    .local v2, "protocol":I
    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "className":Ljava/lang/String;
    const-string v4, ""

    .line 134
    .local v4, "subclassName":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 135
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getAudioSubclassName(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 139
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

    .line 140
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

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subclass: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 143
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

    .line 144
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

    .line 145
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 146
    return-void
.end method

.method toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;
    .locals 9
    .param p1, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 114
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mDescrIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
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

    .line 117
    .local v1, "ntrface":Landroid/hardware/usb/UsbInterface;
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbEndpoint;

    .line 118
    .local v2, "endpoints":[Landroid/hardware/usb/UsbEndpoint;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-virtual {v4, p1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    aput-object v4, v2, v3

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    .line 122
    return-object v1
.end method
