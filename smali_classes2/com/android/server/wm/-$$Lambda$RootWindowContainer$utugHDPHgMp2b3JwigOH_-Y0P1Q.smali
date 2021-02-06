.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:Landroid/util/SparseIntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;->f$1:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;->f$1:Landroid/util/SparseIntArray;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$reclaimSomeSurfaceMemory$7$RootWindowContainer(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
