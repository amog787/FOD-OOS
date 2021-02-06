.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Yc6vluAEWPBi2TSflPrFu351ztU;
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

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Yc6vluAEWPBi2TSflPrFu351ztU;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Yc6vluAEWPBi2TSflPrFu351ztU;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppExitInfoTracker;->lambda$onSystemReady$0$AppExitInfoTracker()V

    return-void
.end method
