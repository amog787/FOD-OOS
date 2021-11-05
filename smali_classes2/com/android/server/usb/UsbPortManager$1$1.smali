.class Lcom/android/server/usb/UsbPortManager$1$1;
.super Ljava/lang/Thread;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbPortManager$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbPortManager$1;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/usb/UsbPortManager$1;

    .line 1268
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$1$1;->this$1:Lcom/android/server/usb/UsbPortManager$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1270
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$1$1;->this$1:Lcom/android/server/usb/UsbPortManager$1;

    iget-object v1, v1, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$1000(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveUsbContaminantData(Landroid/content/Context;)V

    .line 1271
    return-void
.end method
