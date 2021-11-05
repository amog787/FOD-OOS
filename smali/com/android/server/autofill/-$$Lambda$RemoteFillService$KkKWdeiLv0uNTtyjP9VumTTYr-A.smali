.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KkKWdeiLv0uNTtyjP9VumTTYr-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Landroid/service/autofill/SaveRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KkKWdeiLv0uNTtyjP9VumTTYr-A;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KkKWdeiLv0uNTtyjP9VumTTYr-A;->f$1:Landroid/service/autofill/SaveRequest;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KkKWdeiLv0uNTtyjP9VumTTYr-A;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KkKWdeiLv0uNTtyjP9VumTTYr-A;->f$1:Landroid/service/autofill/SaveRequest;

    check-cast p1, Landroid/service/autofill/IAutoFillService;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSaveRequest$3$RemoteFillService(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
