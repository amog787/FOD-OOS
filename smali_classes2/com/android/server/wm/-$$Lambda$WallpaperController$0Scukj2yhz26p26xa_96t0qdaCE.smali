.class public final synthetic Lcom/android/server/wm/-$$Lambda$WallpaperController$0Scukj2yhz26p26xa_96t0qdaCE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WallpaperController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WallpaperController$0Scukj2yhz26p26xa_96t0qdaCE;->f$0:Lcom/android/server/wm/WallpaperController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WallpaperController$0Scukj2yhz26p26xa_96t0qdaCE;->f$0:Lcom/android/server/wm/WallpaperController;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$new$1$WallpaperController(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
