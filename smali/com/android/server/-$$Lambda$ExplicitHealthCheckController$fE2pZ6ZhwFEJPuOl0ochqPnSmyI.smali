.class public final synthetic Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$fE2pZ6ZhwFEJPuOl0ochqPnSmyI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/ExplicitHealthCheckController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ExplicitHealthCheckController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$fE2pZ6ZhwFEJPuOl0ochqPnSmyI;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$fE2pZ6ZhwFEJPuOl0ochqPnSmyI;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/ExplicitHealthCheckController;->lambda$syncRequests$0$ExplicitHealthCheckController(Ljava/lang/String;)V

    return-void
.end method
