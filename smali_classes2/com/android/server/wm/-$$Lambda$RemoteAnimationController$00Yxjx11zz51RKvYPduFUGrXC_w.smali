.class public final synthetic Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$00Yxjx11zz51RKvYPduFUGrXC_w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RemoteAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$00Yxjx11zz51RKvYPduFUGrXC_w;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$00Yxjx11zz51RKvYPduFUGrXC_w;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    check-cast p1, Lcom/android/server/wm/WallpaperAnimationAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RemoteAnimationController;->lambda$createWallpaperAnimations$3$RemoteAnimationController(Lcom/android/server/wm/WallpaperAnimationAdapter;)V

    return-void
.end method
