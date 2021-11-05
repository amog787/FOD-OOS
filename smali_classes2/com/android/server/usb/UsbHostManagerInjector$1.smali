.class Lcom/android/server/usb/UsbHostManagerInjector$1;
.super Landroid/os/UEventObserver;
.source "UsbHostManagerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManagerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManagerInjector;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManagerInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbHostManagerInjector;

    .line 47
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManagerInjector$1;->this$0:Lcom/android/server/usb/UsbHostManagerInjector;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTG UEVENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbHostManagerInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v0, "ACTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "state":Ljava/lang/String;
    const-string v2, "add"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-static {}, Lcom/android/server/usb/UsbHostManagerInjector;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    const-string v2, "otg device add"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/usb/UsbHostManagerInjector;->access$102(I)I

    .line 57
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManagerInjector$1;->this$0:Lcom/android/server/usb/UsbHostManagerInjector;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostManagerInjector;->access$200(Lcom/android/server/usb/UsbHostManagerInjector;)V

    goto :goto_0

    .line 59
    :cond_0
    const-string v2, "remove"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string v2, "otg host remove"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/android/server/usb/UsbHostManagerInjector;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/usb/UsbHostManagerInjector;->access$102(I)I

    .line 63
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManagerInjector$1;->this$0:Lcom/android/server/usb/UsbHostManagerInjector;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostManagerInjector;->access$200(Lcom/android/server/usb/UsbHostManagerInjector;)V

    .line 66
    :cond_1
    :goto_0
    return-void
.end method
