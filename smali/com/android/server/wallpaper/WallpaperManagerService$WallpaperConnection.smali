.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    }
.end annotation


# static fields
.field private static final WALLPAPER_RECONNECT_TIMEOUT_MS:J = 0x2710L


# instance fields
.field final mClientUid:I

.field private mDisplayConnector:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;",
            ">;"
        }
    .end annotation
.end field

.field final mInfo:Landroid/app/WallpaperInfo;

.field mReply:Landroid/os/IRemoteCallback;

.field private mResetRunnable:Ljava/lang/Runnable;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "info"    # Landroid/app/WallpaperInfo;
    .param p3, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p4, "clientUid"    # I

    .line 1193
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 1161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 1173
    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$QhODF3v-swnwSYvDbeEhU85gOBw;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$QhODF3v-swnwSYvDbeEhU85gOBw;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    .line 1194
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 1195
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1196
    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    .line 1197
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->initDisplayState()V

    .line 1198
    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1076
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "x1"    # Ljava/util/function/Predicate;

    .line 1076
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorWithCondition(Ljava/util/function/Predicate;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1076
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "x1"    # Landroid/view/Display;

    .line 1076
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isUsableDisplay(Landroid/view/Display;)Z

    move-result v0

    return v0
.end method

.method private appendConnectorWithCondition(Ljava/util/function/Predicate;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    .line 1216
    .local p1, "tester":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/Display;>;"
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2100(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1217
    .local v0, "displays":[Landroid/view/Display;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1218
    .local v3, "display":Landroid/view/Display;
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1219
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    .line 1220
    .local v4, "displayId":I
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1221
    .local v5, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v5, :cond_0

    .line 1222
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-direct {v7, p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1217
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "displayId":I
    .end local v5    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1227
    :cond_1
    return-void
.end method

.method private initDisplayState()V
    .locals 3

    .line 1202
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2000(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$NrNkceFJLqjCb8eAxErUhpLd5c8;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$NrNkceFJLqjCb8eAxErUhpLd5c8;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorWithCondition(Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1213
    :cond_1
    :goto_0
    return-void
.end method

.method private isUsableDisplay(Landroid/view/Display;)Z
    .locals 4
    .param p1, "display"    # Landroid/view/Display;

    .line 1230
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    invoke-virtual {p1, v0}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1233
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 1234
    .local v0, "displayId":I
    if-nez v0, :cond_1

    .line 1235
    const/4 v1, 0x1

    return v1

    .line 1238
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1240
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerInternal;->shouldShowSystemDecorOnDisplay(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1240
    return v3

    .line 1242
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1231
    .end local v0    # "displayId":I
    .end local v1    # "ident":J
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$NrNkceFJLqjCb8eAxErUhpLd5c8(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isUsableDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onServiceDisconnected$1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1
    .param p0, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    return-void
.end method

.method private processDisconnect(Landroid/content/ServiceConnection;)V
    .locals 10
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    .line 1342
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1345
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne p1, v1, :cond_3

    .line 1346
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1347
    .local v1, "wpService":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1348
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1349
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2600(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1350
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1357
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 1359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1360
    const-string v2, "WallpaperManagerService"

    const-string v3, "Reverting to built-in wallpaper!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v2, v9, v9, v3, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_0

    .line 1363
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    .line 1365
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1366
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v7, 0x0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1368
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->scheduleTimeoutLocked()V

    goto :goto_0

    .line 1370
    :cond_1
    const-string v2, "WallpaperManagerService"

    const-string v3, "Reverting to built-in wallpaper!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v2, v9, v9, v3, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1374
    :goto_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 1375
    .local v2, "flattened":Ljava/lang/String;
    const v3, 0x80e8

    const/4 v4, 0x0

    .line 1376
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x80

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1375
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1379
    .end local v1    # "wpService":Landroid/content/ComponentName;
    .end local v2    # "flattened":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1381
    :cond_3
    const-string v1, "WallpaperManagerService"

    const-string v2, "Wallpaper changed during disconnect tracking; ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :goto_1
    monitor-exit v0

    .line 1385
    return-void

    .line 1384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;I)V
    .locals 6
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;
    .param p2, "displayId"    # I

    .line 1421
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1422
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1423
    .local v1, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v1, :cond_0

    .line 1425
    :try_start_1
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1428
    goto :goto_0

    .line 1426
    :catch_0
    move-exception v2

    .line 1427
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "WallpaperManagerService"

    const-string v4, "Failed to destroy engine"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1429
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    return-void

    .line 1431
    :cond_0
    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1432
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->ensureStatusHandled()V

    .line 1435
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    .line 1437
    :try_start_3
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2900(Lcom/android/server/wallpaper/WallpaperManagerService;)Z

    move-result v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1440
    goto :goto_1

    .line 1438
    :catch_1
    move-exception v2

    .line 1439
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "WallpaperManagerService"

    const-string v4, "Failed to set ambient mode state"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1445
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    :try_start_5
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v2}, Landroid/service/wallpaper/IWallpaperEngine;->requestWallpaperColors()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1448
    goto :goto_2

    .line 1446
    :catch_2
    move-exception v2

    .line 1447
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v3, "WallpaperManagerService"

    const-string v4, "Failed to request wallpaper colors"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1449
    .end local v1    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 1450
    return-void

    .line 1449
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method containsDisplay(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 1275
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 5
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .line 1454
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1455
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_0

    .line 1456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v4, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1461
    goto :goto_0

    .line 1459
    :catch_0
    move-exception v4

    .line 1460
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1462
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1464
    .end local v1    # "ident":J
    :cond_0
    monitor-exit v0

    .line 1465
    return-void

    .line 1464
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method forEachDisplayConnector(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;",
            ">;)V"
        }
    .end annotation

    .line 1247
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;>;"
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1249
    .local v1, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1247
    .end local v1    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1251
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getConnectedEngineSize()I
    .locals 4

    .line 1254
    const/4 v0, 0x0

    .line 1255
    .local v0, "engineSize":I
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1256
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1257
    .local v2, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1255
    .end local v2    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1259
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .locals 3
    .param p1, "displayId"    # I

    .line 1263
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1264
    .local v0, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v0, :cond_0

    .line 1265
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2100(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1266
    .local v1, "display":Landroid/view/Display;
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isUsableDisplay(Landroid/view/Display;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1267
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    move-object v0, v2

    .line 1268
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1271
    .end local v1    # "display":Landroid/view/Display;
    :cond_0
    return-object v0
.end method

.method public synthetic lambda$new$0$WallpaperManagerService$WallpaperConnection()V
    .locals 5

    .line 1174
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1175
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3000(Lcom/android/server/wallpaper/WallpaperManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1178
    const-string v1, "WallpaperManagerService"

    const-string v2, "Ignoring relaunch timeout during shutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    monitor-exit v0

    return-void

    .line 1183
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1184
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1185
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper reconnect timed out for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reverting to built-in wallpaper!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1190
    :cond_1
    monitor-exit v0

    .line 1191
    return-void

    .line 1190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onServiceDisconnected$2$WallpaperManagerService$WallpaperConnection()V
    .locals 0

    .line 1322
    invoke-direct {p0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->processDisconnect(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1287
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1288
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v1, p0, :cond_1

    .line 1289
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1290
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2300(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1295
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1298
    :cond_0
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1300
    :cond_1
    monitor-exit v0

    .line 1301
    return-void

    .line 1300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1305
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1306
    :try_start_0
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper service gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1308
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Does not match expected wallpaper component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1312
    sget-object v1, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$87DhM3RJJxRNtgkHmd_gtnGk-z4;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$87DhM3RJJxRNtgkHmd_gtnGk-z4;

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1313
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v1, p0, :cond_1

    .line 1321
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v1, :cond_1

    .line 1322
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$Yk86TTURTI5B9DzxOzMQGDq7aQU;

    invoke-direct {v2, p0}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$Yk86TTURTI5B9DzxOzMQGDq7aQU;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1326
    :cond_1
    monitor-exit v0

    .line 1327
    return-void

    .line 1326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 4
    .param p1, "primaryColors"    # Landroid/app/WallpaperColors;
    .param p2, "displayId"    # I

    .line 1395
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1398
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1399
    monitor-exit v0

    return-void

    .line 1402
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 1405
    const/4 v1, 0x1

    .line 1407
    .local v1, "which":I
    if-nez p2, :cond_1

    .line 1408
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1409
    .local v2, "lockedWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_1

    .line 1410
    or-int/lit8 v1, v1, 0x2

    .line 1413
    .end local v2    # "lockedWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    if-eqz v1, :cond_2

    .line 1415
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {v0, v2, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 1417
    :cond_2
    return-void

    .line 1413
    .end local v1    # "which":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method removeDisplayConnector(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1279
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1280
    .local v0, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-eqz v0, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1283
    :cond_0
    return-void
.end method

.method public scheduleTimeoutLocked()V
    .locals 4

    .line 1332
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1333
    .local v0, "fgHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1334
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started wallpaper reconnect timeout for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1469
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1470
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_0

    .line 1471
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1473
    :cond_0
    monitor-exit v0

    return-object v2

    .line 1474
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
