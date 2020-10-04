.class public final synthetic Lcom/android/server/job/-$$Lambda$JobSchedulerService$JobSchedulerStub$9zQe5CBU32yn1NEDzLYvt_QAEGk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$JobSchedulerStub$9zQe5CBU32yn1NEDzLYvt_QAEGk;->f$0:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    iput-object p2, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$JobSchedulerStub$9zQe5CBU32yn1NEDzLYvt_QAEGk;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$JobSchedulerStub$9zQe5CBU32yn1NEDzLYvt_QAEGk;->f$0:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    iget-object v1, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$JobSchedulerStub$9zQe5CBU32yn1NEDzLYvt_QAEGk;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->lambda$getAllJobSnapshots$0$JobSchedulerService$JobSchedulerStub(Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
