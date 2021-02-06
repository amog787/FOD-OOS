.class public final synthetic Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$zdJsFydiwYuUG4WFwlznTvMvYfw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$zdJsFydiwYuUG4WFwlznTvMvYfw;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$zdJsFydiwYuUG4WFwlznTvMvYfw;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$onServiceDisconnected$3$WallpaperManagerService$WallpaperConnection()V

    return-void
.end method
