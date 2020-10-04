.class public final synthetic Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$-BqUtvsdVGS3ye_UHe7qFnTZPn4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field private final synthetic f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$-BqUtvsdVGS3ye_UHe7qFnTZPn4;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object p2, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$-BqUtvsdVGS3ye_UHe7qFnTZPn4;->f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$-BqUtvsdVGS3ye_UHe7qFnTZPn4;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$-BqUtvsdVGS3ye_UHe7qFnTZPn4;->f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-static {v0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$attachServiceLocked$6(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method
