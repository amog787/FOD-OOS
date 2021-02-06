.class Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;
.super Ljava/lang/Exception;
.source "UsbDescriptorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/descriptors/UsbDescriptorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbDescriptorsStreamFormatException"
.end annotation


# instance fields
.field mMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/descriptors/UsbDescriptorParser;


# direct methods
.method constructor <init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;->this$0:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;->mMessage:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Descriptor Stream Format Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
