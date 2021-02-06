.class abstract Lcom/android/server/usb/descriptors/UsbACEndpoint;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbACEndpoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACEndpoint"


# instance fields
.field protected final mSubclass:I

.field protected mSubtype:B


# direct methods
.method constructor <init>(IBI)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subclass"    # I

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 34
    iput p3, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubclass:I

    .line 35
    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 4
    .param p0, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .param p1, "length"    # I
    .param p2, "type"    # B

    .line 53
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-result-object v0

    .line 54
    .local v0, "interfaceDesc":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v1

    .line 56
    .local v1, "subClass":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Audio Class Endpoint id:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsbACEndpoint"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v2, 0x0

    return-object v2

    .line 73
    :cond_0
    new-instance v2, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;-><init>(IBI)V

    return-object v2

    .line 67
    :cond_1
    new-instance v2, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;-><init>(IBI)V

    return-object v2

    .line 61
    :cond_2
    new-instance v2, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;-><init>(IBI)V

    return-object v2
.end method


# virtual methods
.method public getSubclass()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubclass:I

    return v0
.end method

.method public getSubtype()B
    .locals 1

    .line 42
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubtype:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 47
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubtype:B

    .line 48
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mLength:I

    return v0
.end method
