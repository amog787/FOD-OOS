.class Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    .line 864
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$1;)V

    return-void
.end method


# virtual methods
.method public onGetCustomPrinterIconResult(Landroid/graphics/drawable/Icon;I)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "sequence"    # I

    .line 867
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-static {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->access$1200(Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;Ljava/lang/Object;I)V

    .line 868
    return-void
.end method
