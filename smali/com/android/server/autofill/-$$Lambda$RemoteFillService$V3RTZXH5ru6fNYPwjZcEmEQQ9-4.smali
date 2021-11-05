.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$V3RTZXH5ru6fNYPwjZcEmEQQ9-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Landroid/service/autofill/FillRequest;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$V3RTZXH5ru6fNYPwjZcEmEQQ9-4;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$V3RTZXH5ru6fNYPwjZcEmEQQ9-4;->f$1:Landroid/service/autofill/FillRequest;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$V3RTZXH5ru6fNYPwjZcEmEQQ9-4;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$V3RTZXH5ru6fNYPwjZcEmEQQ9-4;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$V3RTZXH5ru6fNYPwjZcEmEQQ9-4;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$V3RTZXH5ru6fNYPwjZcEmEQQ9-4;->f$1:Landroid/service/autofill/FillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$V3RTZXH5ru6fNYPwjZcEmEQQ9-4;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$V3RTZXH5ru6fNYPwjZcEmEQQ9-4;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Landroid/service/autofill/IAutoFillService;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillRequest$0$RemoteFillService(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
