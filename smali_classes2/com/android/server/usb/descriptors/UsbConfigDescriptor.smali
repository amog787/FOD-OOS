.class public final Lcom/android/server/usb/descriptors/UsbConfigDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbConfigDescriptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbConfigDescriptor"


# instance fields
.field private mAttribs:I

.field private mBlockAudio:Z

.field private mConfigIndex:B

.field private mConfigValue:I

.field private mInterfaceDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxPower:I

.field private mNumInterfaces:B

.field private mTotalLength:I


# direct methods
.method constructor <init>(IB)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "type"    # B

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mHierarchyLevel:I

    .line 52
    return-void
.end method

.method private isAudioInterface(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)Z
    .locals 3
    .param p1, "descriptor"    # Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 83
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 83
    :goto_0
    return v1
.end method


# virtual methods
.method addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .locals 1
    .param p1, "interfaceDesc"    # Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 79
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public getAttribs()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mAttribs:I

    return v0
.end method

.method public getConfigIndex()B
    .locals 1

    .line 67
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigIndex:B

    return v0
.end method

.method public getConfigValue()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigValue:I

    return v0
.end method

.method public getMaxPower()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mMaxPower:I

    return v0
.end method

.method public getNumInterfaces()B
    .locals 1

    .line 59
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mNumInterfaces:B

    return v0
.end method

.method public getTotalLength()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mTotalLength:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mTotalLength:I

    .line 117
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mNumInterfaces:B

    .line 118
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigValue:I

    .line 119
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigIndex:B

    .line 120
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mAttribs:I

    .line 121
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mMaxPower:I

    .line 123
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 128
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 130
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->getConfigValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->getNumInterfaces()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Interfaces."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->getAttribs()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 135
    return-void
.end method

.method toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbConfiguration;
    .locals 6
    .param p1, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 98
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Landroid/hardware/usb/UsbConfiguration;

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigValue:I

    iget v3, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mAttribs:I

    iget v4, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mMaxPower:I

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    .line 102
    .local v1, "config":Landroid/hardware/usb/UsbConfiguration;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "filteredInterfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/UsbInterface;>;"
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 104
    .local v4, "descriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    iget-boolean v5, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mBlockAudio:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->isAudioInterface(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v4    # "descriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    :cond_1
    goto :goto_0

    .line 108
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/usb/UsbInterface;

    .line 109
    .local v3, "interfaceArray":[Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Landroid/hardware/usb/UsbInterface;

    .line 110
    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    .line 111
    return-object v1
.end method
