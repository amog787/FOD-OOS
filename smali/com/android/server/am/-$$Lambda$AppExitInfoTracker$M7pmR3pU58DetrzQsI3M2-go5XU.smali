.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$M7pmR3pU58DetrzQsI3M2-go5XU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public synthetic constructor <init>(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$M7pmR3pU58DetrzQsI3M2-go5XU;->f$0:Landroid/util/proto/ProtoOutputStream;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$M7pmR3pU58DetrzQsI3M2-go5XU;->f$0:Landroid/util/proto/ProtoOutputStream;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/util/SparseArray;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->lambda$persistProcessExitInfo$5(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
