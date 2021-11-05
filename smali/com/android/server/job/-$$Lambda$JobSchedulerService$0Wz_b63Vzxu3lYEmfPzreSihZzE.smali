.class public final synthetic Lcom/android/server/job/-$$Lambda$JobSchedulerService$0Wz_b63Vzxu3lYEmfPzreSihZzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$0Wz_b63Vzxu3lYEmfPzreSihZzE;->f$0:Lcom/android/server/job/JobSchedulerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$0Wz_b63Vzxu3lYEmfPzreSihZzE;->f$0:Lcom/android/server/job/JobSchedulerService;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$onBootPhase$3$JobSchedulerService(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
