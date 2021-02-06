.class public final Lcom/android/server/usb/descriptors/UsbVCProcessingUnit;
.super Lcom/android/server/usb/descriptors/UsbVCInterface;
.source "UsbVCProcessingUnit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbVCProcessingUnit"


# direct methods
.method public constructor <init>(IBB)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbVCInterface;-><init>(IBB)V

    .line 34
    return-void
.end method


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 42
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbVCInterface;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    move-result v0

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 47
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbVCInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 49
    return-void
.end method
