.class final Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayData"
.end annotation


# instance fields
.field final mDisplayId:I

.field mHeight:I

.field final mPadding:Landroid/graphics/Rect;

.field mWidth:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 980
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 981
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 982
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 986
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mDisplayId:I

    .line 987
    return-void
.end method
