.class abstract Lcom/android/server/usb/descriptors/UsbVCEndpoint;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbVCEndpoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbVCEndpoint"

.field public static final VCEP_ENDPOINT:B = 0x2t

.field public static final VCEP_GENERAL:B = 0x1t

.field public static final VCEP_INTERRUPT:B = 0x3t

.field public static final VCEP_UNDEFINED:B


# direct methods
.method constructor <init>(IB)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 36
    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IBB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 4
    .param p0, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B

    .line 40
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-result-object v0

    .line 44
    .local v0, "interfaceDesc":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    const/4 v1, 0x0

    if-eqz p3, :cond_3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Video Class Endpoint id:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsbVCEndpoint"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-object v1

    .line 67
    :cond_0
    return-object v1

    .line 61
    :cond_1
    return-object v1

    .line 55
    :cond_2
    return-object v1

    .line 49
    :cond_3
    return-object v1
.end method
