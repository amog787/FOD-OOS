.class Lcom/android/server/am/ProcessStatsService$2;
.super Ljava/lang/Object;
.source "ProcessStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessStatsService;

.field final synthetic val$totalTime:J


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessStatsService;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ProcessStatsService;

    .line 270
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$2;->this$0:Lcom/android/server/am/ProcessStatsService;

    iput-wide p2, p0, Lcom/android/server/am/ProcessStatsService$2;->val$totalTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService$2;->this$0:Lcom/android/server/am/ProcessStatsService;

    iget-wide v1, p0, Lcom/android/server/am/ProcessStatsService$2;->val$totalTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    .line 273
    return-void
.end method
