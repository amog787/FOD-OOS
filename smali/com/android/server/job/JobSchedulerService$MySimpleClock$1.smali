.class Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;
.super Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/JobSchedulerService$MySimpleClock;->withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService$MySimpleClock;Ljava/time/ZoneId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService$MySimpleClock;
    .param p2, "zoneId"    # Ljava/time/ZoneId;

    .line 177
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;->this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;

    invoke-direct {p0, p2}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;->this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->millis()J

    move-result-wide v0

    return-wide v0
.end method
