.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$ZY9TAD2R71ar3yQbfwDIrtpb_VY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$ZY9TAD2R71ar3yQbfwDIrtpb_VY;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$ZY9TAD2R71ar3yQbfwDIrtpb_VY;->f$0:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/util/SparseArray;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->lambda$removeByUserIdLocked$10(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
