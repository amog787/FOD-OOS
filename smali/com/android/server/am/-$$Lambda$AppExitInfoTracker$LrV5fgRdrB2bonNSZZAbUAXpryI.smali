.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$LrV5fgRdrB2bonNSZZAbUAXpryI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$LrV5fgRdrB2bonNSZZAbUAXpryI;->f$0:Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$LrV5fgRdrB2bonNSZZAbUAXpryI;->f$0:Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->lambda$setLmkdKillListener$1(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
