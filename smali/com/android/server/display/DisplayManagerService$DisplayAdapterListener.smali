.class final Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 2306
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "x1"    # Lcom/android/server/display/DisplayManagerService$1;

    .line 2306
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V
    .locals 1
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "event"    # I

    .line 2309
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2319
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$1800(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    goto :goto_0

    .line 2315
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    .line 2316
    goto :goto_0

    .line 2311
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$1600(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    .line 2312
    nop

    .line 2322
    :goto_0
    return-void
.end method

.method public onTraversalRequested()V
    .locals 3

    .line 2326
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$1900(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 2328
    monitor-exit v0

    .line 2329
    return-void

    .line 2328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
