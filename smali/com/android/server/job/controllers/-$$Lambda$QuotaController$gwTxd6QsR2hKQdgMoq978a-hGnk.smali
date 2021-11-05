.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$QuotaController$gwTxd6QsR2hKQdgMoq978a-hGnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/QuotaController;

.field public final synthetic f$1:Ljava/util/function/Predicate;

.field public final synthetic f$2:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$gwTxd6QsR2hKQdgMoq978a-hGnk;->f$0:Lcom/android/server/job/controllers/QuotaController;

    iput-object p2, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$gwTxd6QsR2hKQdgMoq978a-hGnk;->f$1:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$gwTxd6QsR2hKQdgMoq978a-hGnk;->f$2:Landroid/util/proto/ProtoOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$gwTxd6QsR2hKQdgMoq978a-hGnk;->f$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$gwTxd6QsR2hKQdgMoq978a-hGnk;->f$1:Ljava/util/function/Predicate;

    iget-object v2, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$gwTxd6QsR2hKQdgMoq978a-hGnk;->f$2:Landroid/util/proto/ProtoOutputStream;

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/job/controllers/QuotaController;->lambda$dumpControllerStateLocked$2$QuotaController(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V

    return-void
.end method
