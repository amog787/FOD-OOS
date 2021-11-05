.class public final Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbInterfaceAssoc.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbInterfaceAssoc"


# instance fields
.field private mFirstInterface:B

.field private mFunction:B

.field private mFunctionClass:B

.field private mFunctionProtocol:B

.field private mFunctionSubClass:B

.field private mInterfaceCount:B


# direct methods
.method public constructor <init>(IB)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 38
    return-void
.end method


# virtual methods
.method public getFirstInterface()B
    .locals 1

    .line 41
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFirstInterface:B

    return v0
.end method

.method public getFunction()B
    .locals 1

    .line 61
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunction:B

    return v0
.end method

.method public getFunctionClass()B
    .locals 1

    .line 49
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionClass:B

    return v0
.end method

.method public getFunctionProtocol()B
    .locals 1

    .line 57
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionProtocol:B

    return v0
.end method

.method public getFunctionSubClass()B
    .locals 1

    .line 53
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionSubClass:B

    return v0
.end method

.method public getInterfaceCount()B
    .locals 1

    .line 45
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mInterfaceCount:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 66
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFirstInterface:B

    .line 67
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mInterfaceCount:B

    .line 68
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionClass:B

    .line 69
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionSubClass:B

    .line 70
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunctionProtocol:B

    .line 71
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mFunction:B

    .line 73
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;->mLength:I

    return v0
.end method
