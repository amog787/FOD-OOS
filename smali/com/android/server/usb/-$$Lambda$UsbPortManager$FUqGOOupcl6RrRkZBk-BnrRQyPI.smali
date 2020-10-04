.class public final synthetic Lcom/android/server/usb/-$$Lambda$UsbPortManager$FUqGOOupcl6RrRkZBk-BnrRQyPI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/usb/UsbPortManager;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/-$$Lambda$UsbPortManager$FUqGOOupcl6RrRkZBk-BnrRQyPI;->f$0:Lcom/android/server/usb/UsbPortManager;

    iput-object p2, p0, Lcom/android/server/usb/-$$Lambda$UsbPortManager$FUqGOOupcl6RrRkZBk-BnrRQyPI;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/-$$Lambda$UsbPortManager$FUqGOOupcl6RrRkZBk-BnrRQyPI;->f$0:Lcom/android/server/usb/UsbPortManager;

    iget-object v1, p0, Lcom/android/server/usb/-$$Lambda$UsbPortManager$FUqGOOupcl6RrRkZBk-BnrRQyPI;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->lambda$sendPortChangedBroadcastLocked$0$UsbPortManager(Landroid/content/Intent;)V

    return-void
.end method
