.class Lcom/android/server/wallpaper/WallpaperManagerService$1;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 809
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$1;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 813
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 843
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 817
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$1;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$1;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 819
    const/4 v1, 0x0

    .line 820
    .local v1, "targetWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$1;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$1;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 822
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$1;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 823
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$1;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    move-object v1, v2

    .line 825
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 826
    :cond_2
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 827
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v2

    .line 828
    .local v2, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v2, :cond_3

    monitor-exit v0

    return-void

    .line 829
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->disconnectLocked()V

    .line 830
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->removeDisplayConnector(I)V

    .line 831
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$1;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1400(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 833
    .end local v1    # "targetWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v2    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    :cond_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$1;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1500(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 834
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$1;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 835
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1500(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 836
    .local v2, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 833
    .end local v2    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 838
    .end local v1    # "i":I
    :cond_5
    monitor-exit v0

    .line 839
    return-void

    .line 838
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
