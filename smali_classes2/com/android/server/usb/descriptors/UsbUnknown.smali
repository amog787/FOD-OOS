.class public final Lcom/android/server/usb/descriptors/UsbUnknown;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbUnknown.java"


# static fields
.field static final TAG:Ljava/lang/String; = "UsbUnknown"


# direct methods
.method public constructor <init>(IB)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 27
    return-void
.end method
