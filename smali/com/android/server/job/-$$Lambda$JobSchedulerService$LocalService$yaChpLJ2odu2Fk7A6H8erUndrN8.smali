.class public final synthetic Lcom/android/server/job/-$$Lambda$JobSchedulerService$LocalService$yaChpLJ2odu2Fk7A6H8erUndrN8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/JobSchedulerService$LocalService;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService$LocalService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$LocalService$yaChpLJ2odu2Fk7A6H8erUndrN8;->f$0:Lcom/android/server/job/JobSchedulerService$LocalService;

    iput-object p2, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$LocalService$yaChpLJ2odu2Fk7A6H8erUndrN8;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$LocalService$yaChpLJ2odu2Fk7A6H8erUndrN8;->f$0:Lcom/android/server/job/JobSchedulerService$LocalService;

    iget-object v1, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$LocalService$yaChpLJ2odu2Fk7A6H8erUndrN8;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$LocalService;->lambda$getSystemScheduledPendingJobs$0$JobSchedulerService$LocalService(Ljava/util/List;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
