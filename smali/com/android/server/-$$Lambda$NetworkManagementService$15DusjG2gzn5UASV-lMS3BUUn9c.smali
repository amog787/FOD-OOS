.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$15DusjG2gzn5UASV-lMS3BUUn9c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/NetworkManagementService;

.field public final synthetic f$1:Lcom/android/server/NetworkManagementService$IdleTimerParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$15DusjG2gzn5UASV-lMS3BUUn9c;->f$0:Lcom/android/server/NetworkManagementService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$15DusjG2gzn5UASV-lMS3BUUn9c;->f$1:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$15DusjG2gzn5UASV-lMS3BUUn9c;->f$0:Lcom/android/server/NetworkManagementService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$15DusjG2gzn5UASV-lMS3BUUn9c;->f$1:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService;->lambda$removeIdleTimer$13$NetworkManagementService(Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    return-void
.end method
