.class Lcom/android/server/job/JobSchedulerService$2;
.super Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/time/ZoneId;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/time/ZoneId;

    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
