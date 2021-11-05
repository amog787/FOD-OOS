.class final Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EarliestEndTimeFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
        ">;>;"
    }
.end annotation


# instance fields
.field public earliestEndElapsed:J

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 2

    .line 1077
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p2, "x1"    # Lcom/android/server/job/controllers/QuotaController$1;

    .line 1077
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1077
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;)V"
        }
    .end annotation

    .line 1082
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1083
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v2, v2, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 1085
    :cond_0
    return-void
.end method

.method reset()V
    .locals 2

    .line 1088
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 1089
    return-void
.end method
