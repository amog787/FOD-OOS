.class public Lcom/android/server/WallpaperUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperUpdateReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WallpaperUpdateReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$U0nVive5QwEBqcnNmDq5uiouKcg(Lcom/android/server/WallpaperUpdateReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/WallpaperUpdateReceiver;->updateWallpaper()V

    return-void
.end method

.method private updateWallpaper()V
    .locals 5

    .line 50
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 51
    .local v0, "currentActivityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 52
    .local v1, "uiContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 54
    .local v2, "wallpaperManager":Landroid/app/WallpaperManager;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 56
    .local v3, "blank":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    const v4, 0x108028a

    invoke-virtual {v2, v4}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "currentActivityThread":Landroid/app/ActivityThread;
    .end local v1    # "uiContext":Landroid/content/Context;
    .end local v2    # "wallpaperManager":Landroid/app/WallpaperManager;
    .end local v3    # "blank":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to customize system wallpaper."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperUpdateReceiver"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 43
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DEVICE_CUSTOMIZATION_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/server/-$$Lambda$WallpaperUpdateReceiver$U0nVive5QwEBqcnNmDq5uiouKcg;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$WallpaperUpdateReceiver$U0nVive5QwEBqcnNmDq5uiouKcg;-><init>(Lcom/android/server/WallpaperUpdateReceiver;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 46
    :cond_0
    return-void
.end method
