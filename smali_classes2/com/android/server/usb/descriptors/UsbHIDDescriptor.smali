.class public final Lcom/android/server/usb/descriptors/UsbHIDDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbHIDDescriptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbHIDDescriptor"


# instance fields
.field private mCountryCode:B

.field private mDescriptorLen:I

.field private mDescriptorType:B

.field private mNumDescriptors:B

.field private mRelease:I


# direct methods
.method public constructor <init>(IB)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "type"    # B

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mHierarchyLevel:I

    .line 41
    return-void
.end method


# virtual methods
.method public getCountryCode()B
    .locals 1

    .line 48
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mCountryCode:B

    return v0
.end method

.method public getDescriptorLen()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mDescriptorLen:I

    return v0
.end method

.method public getDescriptorType()B
    .locals 1

    .line 56
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mDescriptorType:B

    return v0
.end method

.method public getNumDescriptors()B
    .locals 1

    .line 52
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mNumDescriptors:B

    return v0
.end method

.method public getRelease()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mRelease:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 65
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mRelease:I

    .line 66
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mCountryCode:B

    .line 67
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mNumDescriptors:B

    .line 68
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mDescriptorType:B

    .line 69
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mDescriptorLen:I

    .line 71
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 76
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 78
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->getRelease()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->getDescriptorType()B

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->getNumDescriptors()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Descriptors Len: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;->getDescriptorLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 84
    return-void
.end method
