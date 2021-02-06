.class public final Lcom/android/server/usb/descriptors/UsbVCHeader;
.super Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;
.source "UsbVCHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbVCHeader"


# direct methods
.method public constructor <init>(IBBI)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "spec"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;-><init>(IBBI)V

    .line 34
    return-void
.end method


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 42
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    move-result v0

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 47
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 49
    return-void
.end method
