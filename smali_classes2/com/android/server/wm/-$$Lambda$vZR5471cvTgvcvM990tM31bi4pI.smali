.class public final synthetic Lcom/android/server/wm/-$$Lambda$vZR5471cvTgvcvM990tM31bi4pI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$vZR5471cvTgvcvM990tM31bi4pI;->f$0:Lcom/android/server/wm/WindowAnimator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$vZR5471cvTgvcvM990tM31bi4pI;->f$0:Lcom/android/server/wm/WindowAnimator;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
