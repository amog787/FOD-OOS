.class Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p2, "x1"    # Lcom/android/server/media/projection/MediaProjectionManagerService$1;

    .line 656
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    return-void
.end method


# virtual methods
.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 659
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1200(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 660
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1802(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    .line 662
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$900(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$900(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 666
    :cond_0
    monitor-exit v0

    .line 667
    return-void

    .line 666
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "route"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 671
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1800(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p3, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1802(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    .line 674
    :cond_0
    return-void
.end method
