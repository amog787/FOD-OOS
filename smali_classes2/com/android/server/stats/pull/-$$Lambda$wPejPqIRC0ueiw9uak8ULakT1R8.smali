.class public final synthetic Lcom/android/server/stats/pull/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;->f$0:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/stats/pull/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;->f$0:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
