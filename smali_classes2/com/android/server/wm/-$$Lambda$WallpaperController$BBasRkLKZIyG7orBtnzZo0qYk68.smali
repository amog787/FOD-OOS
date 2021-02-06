.class public final synthetic Lcom/android/server/wm/-$$Lambda$WallpaperController$BBasRkLKZIyG7orBtnzZo0qYk68;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WallpaperController$BBasRkLKZIyG7orBtnzZo0qYk68;->f$0:Lcom/android/server/wm/WindowState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WallpaperController$BBasRkLKZIyG7orBtnzZo0qYk68;->f$0:Lcom/android/server/wm/WindowState;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$updateWallpaperWindowsTarget$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
