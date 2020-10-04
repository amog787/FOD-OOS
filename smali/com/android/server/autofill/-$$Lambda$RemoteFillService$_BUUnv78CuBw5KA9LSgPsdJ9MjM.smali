.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_BUUnv78CuBw5KA9LSgPsdJ9MjM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_BUUnv78CuBw5KA9LSgPsdJ9MjM;->f$0:Lcom/android/server/autofill/RemoteFillService;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_BUUnv78CuBw5KA9LSgPsdJ9MjM;->f$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->lambda$cancelCurrentRequest$0$RemoteFillService()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
