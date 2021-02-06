.class public final Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;
.super Lcom/android/server/usb/descriptors/UsbVCInterface;
.source "UsbVCOutputTerminal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbVCOutputTerminal"


# direct methods
.method public constructor <init>(IBB)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbVCInterface;-><init>(IBB)V

    .line 33
    return-void
.end method


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 41
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbVCInterface;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    move-result v0

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 46
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbVCInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 48
    return-void
.end method
