.class public final synthetic Lcom/android/server/wm/-$$Lambda$Session$ioowOPU3nnV2ImsCDZtbuIYXGt0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$Session$ioowOPU3nnV2ImsCDZtbuIYXGt0;->f$0:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$Session$ioowOPU3nnV2ImsCDZtbuIYXGt0;->f$0:F

    check-cast p1, Lcom/android/server/wm/WallpaperController;

    check-cast p2, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/Session;->lambda$setWallpaperZoomOut$1(FLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
