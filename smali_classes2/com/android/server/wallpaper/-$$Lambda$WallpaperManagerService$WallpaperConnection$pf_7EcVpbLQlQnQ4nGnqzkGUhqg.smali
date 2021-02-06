.class public final synthetic Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$pf_7EcVpbLQlQnQ4nGnqzkGUhqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$pf_7EcVpbLQlQnQ4nGnqzkGUhqg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$pf_7EcVpbLQlQnQ4nGnqzkGUhqg;

    invoke-direct {v0}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$pf_7EcVpbLQlQnQ4nGnqzkGUhqg;-><init>()V

    sput-object v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$pf_7EcVpbLQlQnQ4nGnqzkGUhqg;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$pf_7EcVpbLQlQnQ4nGnqzkGUhqg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$onServiceDisconnected$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method
