.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$ypgNv91qX_67RP8z3Z9CsC0SRRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

.field public final synthetic f$1:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$ypgNv91qX_67RP8z3Z9CsC0SRRs;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iput-object p2, p0, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$ypgNv91qX_67RP8z3Z9CsC0SRRs;->f$1:Landroid/util/proto/ProtoOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$ypgNv91qX_67RP8z3Z9CsC0SRRs;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v1, p0, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$ypgNv91qX_67RP8z3Z9CsC0SRRs;->f$1:Landroid/util/proto/ProtoOutputStream;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->lambda$dumpControllerStateLocked$1$BackgroundJobsController(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
