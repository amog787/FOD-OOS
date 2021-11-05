.class public abstract Lcom/android/server/job/controllers/RestrictingController;
.super Lcom/android/server/job/controllers/StateController;
.source "RestrictingController.java"


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
.end method

.method public abstract stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
.end method
