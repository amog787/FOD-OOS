.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$MaYOnIAubd8qKbTq0eWkOchXAJk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Landroid/service/autofill/FillRequest;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$MaYOnIAubd8qKbTq0eWkOchXAJk;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$MaYOnIAubd8qKbTq0eWkOchXAJk;->f$1:Landroid/service/autofill/FillRequest;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$MaYOnIAubd8qKbTq0eWkOchXAJk;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$MaYOnIAubd8qKbTq0eWkOchXAJk;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$MaYOnIAubd8qKbTq0eWkOchXAJk;->f$1:Landroid/service/autofill/FillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$MaYOnIAubd8qKbTq0eWkOchXAJk;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Landroid/service/autofill/FillResponse;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillRequest$2$RemoteFillService(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V

    return-void
.end method
