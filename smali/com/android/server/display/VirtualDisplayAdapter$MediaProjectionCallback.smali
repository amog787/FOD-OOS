.class final Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaProjectionCallback"
.end annotation


# instance fields
.field private mAppToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 481
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    .line 482
    iput-object p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->mAppToken:Landroid/os/IBinder;

    .line 483
    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->mAppToken:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/server/display/VirtualDisplayAdapter;->access$200(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    .line 489
    monitor-exit v0

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
