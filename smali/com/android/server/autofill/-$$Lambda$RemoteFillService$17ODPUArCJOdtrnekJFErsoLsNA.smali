.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17ODPUArCJOdtrnekJFErsoLsNA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field private final synthetic f$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17ODPUArCJOdtrnekJFErsoLsNA;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17ODPUArCJOdtrnekJFErsoLsNA;->f$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17ODPUArCJOdtrnekJFErsoLsNA;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17ODPUArCJOdtrnekJFErsoLsNA;->f$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->lambda$dispatchOnFillRequestTimeout$3$RemoteFillService(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    return-void
.end method
