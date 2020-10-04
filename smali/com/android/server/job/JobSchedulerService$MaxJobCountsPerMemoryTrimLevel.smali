.class Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaxJobCountsPerMemoryTrimLevel"
.end annotation


# instance fields
.field public final critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

.field public final low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

.field public final moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

.field public final normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;Lcom/android/server/job/JobSchedulerService$MaxJobCounts;)V
    .locals 0
    .param p1, "normal"    # Lcom/android/server/job/JobSchedulerService$MaxJobCounts;
    .param p2, "moderate"    # Lcom/android/server/job/JobSchedulerService$MaxJobCounts;
    .param p3, "low"    # Lcom/android/server/job/JobSchedulerService$MaxJobCounts;
    .param p4, "critical"    # Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 431
    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 432
    iput-object p3, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 433
    iput-object p4, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 434
    return-void
.end method


# virtual methods
.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 437
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 438
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 439
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 440
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 441
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 442
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 443
    return-void
.end method
