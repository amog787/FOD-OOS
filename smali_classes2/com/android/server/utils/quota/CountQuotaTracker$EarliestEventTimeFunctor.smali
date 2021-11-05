.class final Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;
.super Ljava/lang/Object;
.source "CountQuotaTracker.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/CountQuotaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EarliestEventTimeFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/util/LongArrayQueue;",
        ">;"
    }
.end annotation


# instance fields
.field earliestTimeElapsed:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/utils/quota/CountQuotaTracker$1;

    .line 488
    invoke-direct {p0}, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/util/LongArrayQueue;)V
    .locals 4
    .param p1, "events"    # Landroid/util/LongArrayQueue;

    .line 493
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 494
    iget-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    .line 496
    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 488
    check-cast p1, Landroid/util/LongArrayQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->accept(Landroid/util/LongArrayQueue;)V

    return-void
.end method

.method reset()V
    .locals 2

    .line 499
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    .line 500
    return-void
.end method
