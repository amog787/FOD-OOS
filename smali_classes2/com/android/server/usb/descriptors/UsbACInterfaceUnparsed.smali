.class public final Lcom/android/server/usb/descriptors/UsbACInterfaceUnparsed;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbACInterfaceUnparsed.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACInterfaceUnparsed"


# direct methods
.method public constructor <init>(IBBI)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "subClass"    # I

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 27
    return-void
.end method
