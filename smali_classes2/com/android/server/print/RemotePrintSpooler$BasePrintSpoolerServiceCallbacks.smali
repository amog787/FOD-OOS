.class abstract Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.super Landroid/print/IPrintSpoolerCallbacks$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BasePrintSpoolerServiceCallbacks"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 880
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintSpooler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/print/RemotePrintSpooler$1;

    .line 880
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public customPrinterIconCacheCleared(I)V
    .locals 0
    .param p1, "sequence"    # I

    .line 920
    return-void
.end method

.method public onCancelPrintJobResult(ZI)V
    .locals 0
    .param p1, "canceled"    # Z
    .param p2, "sequence"    # I

    .line 895
    return-void
.end method

.method public onCustomPrinterIconCached(I)V
    .locals 0
    .param p1, "sequence"    # I

    .line 910
    return-void
.end method

.method public onGetCustomPrinterIconResult(Landroid/graphics/drawable/Icon;I)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "sequence"    # I

    .line 915
    return-void
.end method

.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .locals 0
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;
    .param p2, "sequence"    # I

    .line 890
    return-void
.end method

.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .locals 0
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;I)V"
        }
    .end annotation

    .line 885
    .local p1, "printJobIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    return-void
.end method

.method public onSetPrintJobStateResult(ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "sequece"    # I

    .line 900
    return-void
.end method

.method public onSetPrintJobTagResult(ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "sequence"    # I

    .line 905
    return-void
.end method
