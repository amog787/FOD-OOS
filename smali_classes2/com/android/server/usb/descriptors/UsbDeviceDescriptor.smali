.class public final Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbDeviceDescriptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDeviceDescriptor"

.field public static final USBSPEC_1_0:I = 0x100

.field public static final USBSPEC_1_1:I = 0x110

.field public static final USBSPEC_2_0:I = 0x200


# instance fields
.field private mConfigDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbConfigDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mDevClass:I

.field private mDevSubClass:I

.field private mDeviceRelease:I

.field private mMfgIndex:B

.field private mNumConfigs:B

.field private mPacketSize:B

.field private mProductID:I

.field private mProductIndex:B

.field private mProtocol:I

.field private mSerialIndex:B

.field private mSpec:I

.field private mVendorID:I


# direct methods
.method constructor <init>(IB)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "type"    # B

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mHierarchyLevel:I

    .line 59
    return-void
.end method


# virtual methods
.method addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V
    .locals 1
    .param p1, "config"    # Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 131
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public getDevClass()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    return v0
.end method

.method public getDevSubClass()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    return v0
.end method

.method public getDeviceRelease()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    return v0
.end method

.method public getDeviceReleaseString()Ljava/lang/String;
    .locals 7

    .line 95
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    and-int/lit8 v1, v0, 0xf

    .line 96
    .local v1, "hundredths":I
    and-int/lit16 v2, v0, 0xf0

    shr-int/lit8 v2, v2, 0x4

    .line 97
    .local v2, "tenths":I
    and-int/lit16 v3, v0, 0xf00

    shr-int/lit8 v3, v3, 0x8

    .line 98
    .local v3, "ones":I
    const v4, 0xf000

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0xc

    .line 99
    .local v0, "tens":I
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    mul-int/lit8 v5, v0, 0xa

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string v5, "%d.%d%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getMfgIndex()B
    .locals 1

    .line 103
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    return v0
.end method

.method public getMfgString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;
    .locals 1
    .param p1, "p"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 107
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumConfigs()B
    .locals 1

    .line 127
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mNumConfigs:B

    return v0
.end method

.method public getPacketSize()B
    .locals 1

    .line 78
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mPacketSize:B

    return v0
.end method

.method public getProductID()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    return v0
.end method

.method public getProductIndex()B
    .locals 1

    .line 111
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    return v0
.end method

.method public getProductString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;
    .locals 1
    .param p1, "p"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 115
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    return v0
.end method

.method public getSerialIndex()B
    .locals 1

    .line 119
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    return v0
.end method

.method public getSerialString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;
    .locals 1
    .param p1, "p"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 123
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpec()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSpec:I

    return v0
.end method

.method public getVendorID()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 169
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSpec:I

    .line 170
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    .line 171
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    .line 172
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    .line 173
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mPacketSize:B

    .line 174
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    .line 175
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    .line 176
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    .line 177
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    .line 178
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    .line 179
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    .line 180
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mNumConfigs:B

    .line 182
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 13
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 187
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 189
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    .line 192
    .local v0, "spec":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDevClass()I

    move-result v1

    .line 195
    .local v1, "devClass":I
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "classStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDevSubClass()I

    move-result v3

    .line 197
    .local v3, "devSubClass":I
    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "subClasStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Subclass"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vendor ID: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Product ID: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Product Release: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceRelease()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getParser()Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    move-result-object v5

    .line 205
    .local v5, "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgIndex()B

    move-result v7

    .line 206
    .local v7, "mfgIndex":B
    invoke-virtual {v5, v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "manufacturer":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductIndex()B

    move-result v9

    .line 208
    .local v9, "productIndex":B
    invoke-virtual {v5, v9}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, "product":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Manufacturer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " Product "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 213
    return-void
.end method

.method public toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbDevice$Builder;
    .locals 24
    .param p1, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 142
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v18

    .line 143
    .local v18, "mfgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v19

    .line 148
    .local v19, "prodName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceReleaseString()Ljava/lang/String;

    move-result-object v20

    .line 149
    .local v20, "versionString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSerialString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v21

    .line 154
    .local v21, "serialStr":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v12, v1, [Landroid/hardware/usb/UsbConfiguration;

    .line 155
    .local v12, "configs":[Landroid/hardware/usb/UsbConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbDeviceDescriptor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 157
    iget-object v2, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    move-object/from16 v11, p1

    invoke-virtual {v2, v11}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v2

    aput-object v2, v12, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p1

    .line 160
    .end local v1    # "index":I
    new-instance v22, Landroid/hardware/usb/UsbDevice$Builder;

    move-object/from16 v1, v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceAddr()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    iget v4, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    iget v5, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    iget v6, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    iget v7, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioPlayback()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioCapture()Z

    move-result v14

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v15

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasVideoPlayback()Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasVideoCapture()Z

    move-result v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object v11, v12

    move-object/from16 v23, v12

    .end local v12    # "configs":[Landroid/hardware/usb/UsbConfiguration;
    .local v23, "configs":[Landroid/hardware/usb/UsbConfiguration;
    move-object/from16 v12, v21

    invoke-direct/range {v1 .. v17}, Landroid/hardware/usb/UsbDevice$Builder;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Ljava/lang/String;ZZZZZ)V

    .line 160
    return-object v22
.end method
