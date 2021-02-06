.class final Lcom/android/server/usb/UsbPortManager$ServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbPortManager;

    .line 894
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$ServiceNotification;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usb hal service started "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$ServiceNotification;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbPortManager;->access$700(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 899
    return-void
.end method
