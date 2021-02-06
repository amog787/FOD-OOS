.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$essc-q8XD1L8ojfbmN1Aow_AVPk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field public final synthetic f$1:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$essc-q8XD1L8ojfbmN1Aow_AVPk;->f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iput-object p2, p0, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$essc-q8XD1L8ojfbmN1Aow_AVPk;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$essc-q8XD1L8ojfbmN1Aow_AVPk;->f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v1, p0, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$essc-q8XD1L8ojfbmN1Aow_AVPk;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->lambda$dumpControllerStateLocked$0$DeviceIdleJobsController(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
