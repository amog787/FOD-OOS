.class Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbAlsaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlackListEntry"
.end annotation


# instance fields
.field final mFlags:I

.field final mProductId:I

.field final mVendorId:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "vendorId"    # I
    .param p2, "productId"    # I
    .param p3, "flags"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mVendorId:I

    .line 86
    iput p2, p0, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mProductId:I

    .line 87
    iput p3, p0, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mFlags:I

    .line 88
    return-void
.end method
