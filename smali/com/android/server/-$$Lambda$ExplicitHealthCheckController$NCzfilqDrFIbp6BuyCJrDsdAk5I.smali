.class public final synthetic Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$NCzfilqDrFIbp6BuyCJrDsdAk5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ExplicitHealthCheckController;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/List;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$NCzfilqDrFIbp6BuyCJrDsdAk5I;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$NCzfilqDrFIbp6BuyCJrDsdAk5I;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$NCzfilqDrFIbp6BuyCJrDsdAk5I;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$NCzfilqDrFIbp6BuyCJrDsdAk5I;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$NCzfilqDrFIbp6BuyCJrDsdAk5I;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$NCzfilqDrFIbp6BuyCJrDsdAk5I;->f$2:Ljava/util/Set;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/ExplicitHealthCheckController;->lambda$syncRequests$2$ExplicitHealthCheckController(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method
