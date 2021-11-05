.class Lcom/android/server/media/MediaRouterService$2;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouterService;

    .line 182
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 4
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .line 185
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 186
    :try_start_0
    iget v1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget v2, v2, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    if-eq v1, v2, :cond_3

    .line 187
    iget v1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v1, v1, 0x13

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v3, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v3, v3, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v1, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    goto :goto_0

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iput-boolean v2, v1, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v2, v1, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    .line 202
    :cond_3
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
