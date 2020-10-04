.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$5YoufKSiImueGHv9obiMns19gXE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

.field private final synthetic f$1:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$5YoufKSiImueGHv9obiMns19gXE;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iput-object p2, p0, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$5YoufKSiImueGHv9obiMns19gXE;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$5YoufKSiImueGHv9obiMns19gXE;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v1, p0, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$5YoufKSiImueGHv9obiMns19gXE;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->lambda$dumpControllerStateLocked$0$BackgroundJobsController(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
