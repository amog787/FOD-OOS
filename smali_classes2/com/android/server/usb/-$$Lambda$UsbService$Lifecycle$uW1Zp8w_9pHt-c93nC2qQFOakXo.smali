.class public final synthetic Lcom/android/server/usb/-$$Lambda$UsbService$Lifecycle$uW1Zp8w_9pHt-c93nC2qQFOakXo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbService$Lifecycle;

.field public final synthetic f$1:Lcom/android/server/SystemService$TargetUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/-$$Lambda$UsbService$Lifecycle$uW1Zp8w_9pHt-c93nC2qQFOakXo;->f$0:Lcom/android/server/usb/UsbService$Lifecycle;

    iput-object p2, p0, Lcom/android/server/usb/-$$Lambda$UsbService$Lifecycle$uW1Zp8w_9pHt-c93nC2qQFOakXo;->f$1:Lcom/android/server/SystemService$TargetUser;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/-$$Lambda$UsbService$Lifecycle$uW1Zp8w_9pHt-c93nC2qQFOakXo;->f$0:Lcom/android/server/usb/UsbService$Lifecycle;

    iget-object v1, p0, Lcom/android/server/usb/-$$Lambda$UsbService$Lifecycle$uW1Zp8w_9pHt-c93nC2qQFOakXo;->f$1:Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbService$Lifecycle;->lambda$onUserSwitching$2$UsbService$Lifecycle(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method
