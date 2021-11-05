.class public final synthetic Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$1tPkxHr3PHUgpfvv03vRyPzY3uM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final synthetic f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field public final synthetic f$2:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$1tPkxHr3PHUgpfvv03vRyPzY3uM;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p2, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$1tPkxHr3PHUgpfvv03vRyPzY3uM;->f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object p3, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$1tPkxHr3PHUgpfvv03vRyPzY3uM;->f$2:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$1tPkxHr3PHUgpfvv03vRyPzY3uM;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$1tPkxHr3PHUgpfvv03vRyPzY3uM;->f$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, p0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$1tPkxHr3PHUgpfvv03vRyPzY3uM;->f$2:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$switchUser$5$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method
