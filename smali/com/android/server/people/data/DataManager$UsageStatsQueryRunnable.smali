.class Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageStatsQueryRunnable"
.end annotation


# instance fields
.field private mLastEventTimestamp:J

.field private final mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .locals 4
    .param p2, "userId"    # I

    .line 917
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->access$1000(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object p1

    new-instance v0, Lcom/android/server/people/data/-$$Lambda$DataManager$UsageStatsQueryRunnable$XYAxcpC9us0TDcNCO-NIcs5ajqQ;

    invoke-direct {v0, p0, p2}, Lcom/android/server/people/data/-$$Lambda$DataManager$UsageStatsQueryRunnable$XYAxcpC9us0TDcNCO-NIcs5ajqQ;-><init>(Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;I)V

    invoke-virtual {p1, p2, v0}, Lcom/android/server/people/data/DataManager$Injector;->createUsageStatsQueryHelper(ILjava/util/function/Function;)Lcom/android/server/people/data/UsageStatsQueryHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    .line 921
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/people/data/DataManager$1;

    .line 912
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;-><init>(Lcom/android/server/people/data/DataManager;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$DataManager$UsageStatsQueryRunnable(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 919
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 925
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/UsageStatsQueryHelper;->querySince(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    invoke-virtual {v0}, Lcom/android/server/people/data/UsageStatsQueryHelper;->getLastEventTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    .line 928
    :cond_0
    return-void
.end method
