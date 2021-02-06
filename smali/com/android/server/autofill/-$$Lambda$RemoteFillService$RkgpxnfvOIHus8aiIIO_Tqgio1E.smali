.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Ljava/lang/Throwable;

.field public final synthetic f$2:Landroid/service/autofill/FillRequest;

.field public final synthetic f$3:Landroid/service/autofill/FillResponse;

.field public final synthetic f$4:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;->f$1:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;->f$2:Landroid/service/autofill/FillRequest;

    iput-object p4, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;->f$3:Landroid/service/autofill/FillResponse;

    iput-object p5, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;->f$4:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;->f$1:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;->f$2:Landroid/service/autofill/FillRequest;

    iget-object v3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;->f$3:Landroid/service/autofill/FillResponse;

    iget-object v4, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;->f$4:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillRequest$1$RemoteFillService(Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
