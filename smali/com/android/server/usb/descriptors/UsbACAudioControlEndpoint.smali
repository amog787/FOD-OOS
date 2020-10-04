.class public Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;
.super Lcom/android/server/usb/descriptors/UsbACEndpoint;
.source "UsbACAudioControlEndpoint.java"


# static fields
.field static final ADDRESSMASK_DIRECTION:B = -0x80t

.field static final ADDRESSMASK_ENDPOINT:B = 0xft

.field static final ATTRIBMASK_TRANS:B = 0x3t

.field static final ATTRIBSMASK_SYNC:B = 0xct

.field private static final TAG:Ljava/lang/String; = "UsbACAudioControlEndpoint"


# instance fields
.field private mAddress:B

.field private mAttribs:B

.field private mInterval:B

.field private mMaxPacketSize:I


# direct methods
.method public constructor <init>(IBI)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subclass"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbACEndpoint;-><init>(IBI)V

    .line 43
    return-void
.end method


# virtual methods
.method public getAddress()B
    .locals 1

    .line 46
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAddress:B

    return v0
.end method

.method public getAttribs()B
    .locals 1

    .line 50
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAttribs:B

    return v0
.end method

.method public getInterval()B
    .locals 1

    .line 58
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mInterval:B

    return v0
.end method

.method public getMaxPacketSize()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mMaxPacketSize:I

    return v0
.end method

.method public bridge synthetic getSubclass()I
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubclass()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSubtype()B
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubtype()B

    move-result v0

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 63
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 65
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAddress:B

    .line 66
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAttribs:B

    .line 67
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mMaxPacketSize:I

    .line 68
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mInterval:B

    .line 70
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mLength:I

    return v0
.end method
