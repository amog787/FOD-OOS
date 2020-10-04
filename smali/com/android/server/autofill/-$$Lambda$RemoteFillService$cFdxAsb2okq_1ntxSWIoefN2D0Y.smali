.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$cFdxAsb2okq_1ntxSWIoefN2D0Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field private final synthetic f$1:Landroid/os/ICancellationSignal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$cFdxAsb2okq_1ntxSWIoefN2D0Y;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$cFdxAsb2okq_1ntxSWIoefN2D0Y;->f$1:Landroid/os/ICancellationSignal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$cFdxAsb2okq_1ntxSWIoefN2D0Y;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$cFdxAsb2okq_1ntxSWIoefN2D0Y;->f$1:Landroid/os/ICancellationSignal;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->lambda$dispatchOnFillTimeout$4$RemoteFillService(Landroid/os/ICancellationSignal;)V

    return-void
.end method
