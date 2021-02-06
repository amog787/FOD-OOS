.class public final synthetic Lcom/android/server/wm/-$$Lambda$WallpaperController$_ZznVu8nX-g34s30xj77tgadyZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WallpaperController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WallpaperController$_ZznVu8nX-g34s30xj77tgadyZA;->f$0:Lcom/android/server/wm/WallpaperController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WallpaperController$_ZznVu8nX-g34s30xj77tgadyZA;->f$0:Lcom/android/server/wm/WallpaperController;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$getTopVisibleWallpaper$3$WallpaperController(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
