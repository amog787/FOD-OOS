.class Lcom/android/server/usage/UsageStatsService$1;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    .line 170
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 174
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0xb

    invoke-direct {v0, v3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 176
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    shl-int/lit8 v1, p4, 0x10

    const v2, 0xffff

    and-int/2addr v2, p5

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 177
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 179
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .locals 0
    .param p1, "isParoleOn"    # Z

    .line 184
    return-void
.end method
