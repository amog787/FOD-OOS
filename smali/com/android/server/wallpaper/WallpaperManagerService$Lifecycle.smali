.class public Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/wallpaper/IWallpaperManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 155
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 173
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/IWallpaperManagerService;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1}, Lcom/android/server/wallpaper/IWallpaperManagerService;->onBootPhase(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 160
    nop

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/wallpaper/IWallpaperManagerService;>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/IWallpaperManagerService;

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/IWallpaperManagerService;

    .line 165
    const-string/jumbo v1, "wallpaper"

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/IWallpaperManagerService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/wallpaper/IWallpaperManagerService;>;"
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "exp":Ljava/lang/Exception;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failed to instantiate WallpaperManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v0    # "exp":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 180
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/IWallpaperManagerService;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p1}, Lcom/android/server/wallpaper/IWallpaperManagerService;->onUnlockUser(I)V

    .line 183
    :cond_0
    return-void
.end method
