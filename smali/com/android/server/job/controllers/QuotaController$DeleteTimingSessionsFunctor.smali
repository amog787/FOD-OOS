.class final Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;
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
    name = "DeleteTimingSessionsFunctor"
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
.field private final mTooOld:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    .line 1845
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1846
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor$1;-><init>(Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;->mTooOld:Ljava/util/function/Predicate;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p2, "x1"    # Lcom/android/server/job/controllers/QuotaController$1;

    .line 1845
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1845
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;)V"
        }
    .end annotation

    .line 1854
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz p1, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;->mTooOld:Ljava/util/function/Predicate;

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1858
    :cond_0
    return-void
.end method
