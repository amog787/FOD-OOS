.class public final synthetic Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$T0_AqEZbb981DGpVUrLSw9u11Og;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$T0_AqEZbb981DGpVUrLSw9u11Og;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput p2, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$T0_AqEZbb981DGpVUrLSw9u11Og;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$T0_AqEZbb981DGpVUrLSw9u11Og;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$T0_AqEZbb981DGpVUrLSw9u11Og;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$switchUser$5$WallpaperManagerService(I)V

    return-void
.end method
