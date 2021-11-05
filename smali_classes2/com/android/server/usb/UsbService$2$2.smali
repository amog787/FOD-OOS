.class Lcom/android/server/usb/UsbService$2$2;
.super Ljava/lang/Object;
.source "UsbService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbService$2;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/usb/UsbService$2;

    .line 688
    iput-object p1, p0, Lcom/android/server/usb/UsbService$2$2;->this$1:Lcom/android/server/usb/UsbService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 691
    iget-object v0, p0, Lcom/android/server/usb/UsbService$2$2;->this$1:Lcom/android/server/usb/UsbService$2;

    iget-object v0, v0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0, p2}, Lcom/android/server/usb/UsbService;->access$402(Lcom/android/server/usb/UsbService;Z)Z

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkBoxListener notShowAgain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbService$2$2;->this$1:Lcom/android/server/usb/UsbService$2;

    iget-object v1, v1, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$400(Lcom/android/server/usb/UsbService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void
.end method
