.class public final synthetic Lcom/android/server/am/-$$Lambda$nvO8eEA3_tju6oGhhJ2BoQfYghg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$nvO8eEA3_tju6oGhhJ2BoQfYghg;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$nvO8eEA3_tju6oGhhJ2BoQfYghg;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppExitInfoTracker;->persistProcessExitInfo()V

    return-void
.end method
