.class public final synthetic Lcom/android/server/-$$Lambda$AppStateTracker$zzioY8jvEm-1GnJ13CUiQGauPEE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/AppStateTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/AppStateTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$AppStateTracker$zzioY8jvEm-1GnJ13CUiQGauPEE;->f$0:Lcom/android/server/AppStateTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$AppStateTracker$zzioY8jvEm-1GnJ13CUiQGauPEE;->f$0:Lcom/android/server/AppStateTracker;

    check-cast p1, Landroid/os/PowerSaveState;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker;->lambda$onSystemServicesReady$0$AppStateTracker(Landroid/os/PowerSaveState;)V

    return-void
.end method
