.class public final synthetic Lcom/android/server/print/-$$Lambda$RemotePrintService$e0Ck2QZDih6p896nITpWZ_zOduk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/print/RemotePrintService;

.field public final synthetic f$1:Landroid/print/PrinterId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/-$$Lambda$RemotePrintService$e0Ck2QZDih6p896nITpWZ_zOduk;->f$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/-$$Lambda$RemotePrintService$e0Ck2QZDih6p896nITpWZ_zOduk;->f$1:Landroid/print/PrinterId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/print/-$$Lambda$RemotePrintService$e0Ck2QZDih6p896nITpWZ_zOduk;->f$0:Lcom/android/server/print/RemotePrintService;

    iget-object v1, p0, Lcom/android/server/print/-$$Lambda$RemotePrintService$e0Ck2QZDih6p896nITpWZ_zOduk;->f$1:Landroid/print/PrinterId;

    invoke-virtual {v0, v1}, Lcom/android/server/print/RemotePrintService;->lambda$handleRequestCustomPrinterIcon$0$RemotePrintService(Landroid/print/PrinterId;)V

    return-void
.end method
