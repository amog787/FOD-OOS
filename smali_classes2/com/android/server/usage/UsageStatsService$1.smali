.class Lcom/android/server/usage/UsageStatsService$1;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
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

    .line 207
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

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

    .line 211
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0xb

    invoke-direct {v0, v3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 213
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    shl-int/lit8 v1, p4, 0x10

    const v2, 0xffff

    and-int/2addr v2, p5

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 214
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p2, v0}, Lcom/android/server/usage/UsageStatsService;->access$100(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    .line 216
    return-void
.end method
