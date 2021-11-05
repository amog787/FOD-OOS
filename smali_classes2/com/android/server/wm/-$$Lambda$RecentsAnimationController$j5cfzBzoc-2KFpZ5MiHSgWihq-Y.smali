.class public final synthetic Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$j5cfzBzoc-2KFpZ5MiHSgWihq-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$j5cfzBzoc-2KFpZ5MiHSgWihq-Y;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$j5cfzBzoc-2KFpZ5MiHSgWihq-Y;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    check-cast p1, Lcom/android/server/wm/WallpaperAnimationAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->lambda$createWallpaperAnimations$3$RecentsAnimationController(Lcom/android/server/wm/WallpaperAnimationAdapter;)V

    return-void
.end method
