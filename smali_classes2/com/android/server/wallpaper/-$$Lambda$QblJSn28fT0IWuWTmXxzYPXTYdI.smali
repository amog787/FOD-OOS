.class public final synthetic Lcom/android/server/wallpaper/-$$Lambda$QblJSn28fT0IWuWTmXxzYPXTYdI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/-$$Lambda$QblJSn28fT0IWuWTmXxzYPXTYdI;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/-$$Lambda$QblJSn28fT0IWuWTmXxzYPXTYdI;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    check-cast p1, Landroid/view/Display;

    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isUsableDisplay(Landroid/view/Display;)Z

    move-result p1

    return p1
.end method
