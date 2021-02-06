.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Du2pQ0u67kwpa3kgguj5fWqQfXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Du2pQ0u67kwpa3kgguj5fWqQfXM;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Du2pQ0u67kwpa3kgguj5fWqQfXM;->f$0:Landroid/util/ArraySet;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->lambda$pruneAnrTracesIfNecessaryLocked$15(Landroid/util/ArraySet;Ljava/io/File;)V

    return-void
.end method
