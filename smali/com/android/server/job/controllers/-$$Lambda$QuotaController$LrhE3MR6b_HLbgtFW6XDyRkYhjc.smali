.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/job/controllers/QuotaController;

.field private final synthetic f$1:Ljava/util/function/Predicate;

.field private final synthetic f$2:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;->f$0:Lcom/android/server/job/controllers/QuotaController;

    iput-object p2, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;->f$1:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;->f$2:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;->f$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;->f$1:Ljava/util/function/Predicate;

    iget-object v2, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;->f$2:Lcom/android/internal/util/IndentingPrintWriter;

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/job/controllers/QuotaController;->lambda$dumpControllerStateLocked$3$QuotaController(Ljava/util/function/Predicate;Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/ArraySet;)V

    return-void
.end method
