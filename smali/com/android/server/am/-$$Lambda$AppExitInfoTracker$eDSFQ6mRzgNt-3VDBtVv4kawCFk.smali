.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;->f$2:Ljava/util/ArrayList;

    iput p4, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;->f$3:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;->f$2:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;->f$3:I

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    move-object v5, p2

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->lambda$getExitInfo$3$AppExitInfoTracker(ILjava/util/ArrayList;ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
