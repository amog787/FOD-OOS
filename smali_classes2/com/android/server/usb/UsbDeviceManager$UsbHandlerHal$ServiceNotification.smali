.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    .line 1834
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 1837
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usb gadget hal service started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1839
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fqName does not match"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    return-void

    .line 1843
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessage(IZ)V

    .line 1844
    return-void
.end method
