.class Lcom/android/server/media/MediaRouterService$1;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final WAIT_MS:J = 0x1f4L


# instance fields
.field final mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouterService;

    .line 130
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/android/server/media/MediaRouterService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouterService$1$1;-><init>(Lcom/android/server/media/MediaRouterService$1;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAudioPlayerActiveStateChanged(Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 12
    .param p1, "config"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "isRemoved"    # Z

    .line 142
    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 143
    .local v1, "active":Z
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v2

    .line 144
    .local v2, "pii":I
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v3

    .line 146
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v4}, Lcom/android/server/media/MediaRouterService;->access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v4

    .line 148
    .local v4, "idx":I
    if-ltz v4, :cond_1

    .line 149
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v5}, Lcom/android/server/media/MediaRouterService;->access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/IntArray;->remove(I)V

    .line 150
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v5}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/IntArray;->remove(I)V

    .line 153
    :cond_1
    const/4 v5, -0x1

    .line 154
    .local v5, "restoreUid":I
    if-eqz v1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/IntArray;->add(I)V

    .line 156
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 157
    move v5, v3

    goto :goto_1

    .line 158
    :cond_2
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v6}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 159
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v6}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 160
    invoke-static {v7}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    move-result v7

    sub-int/2addr v7, v0

    .line 159
    invoke-virtual {v6, v7}, Landroid/util/IntArray;->get(I)I

    move-result v5

    .line 163
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$200(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    const-string v0, ", active="

    const-string/jumbo v6, "onAudioPlayerActiveStateChanged: uid="

    const-string v7, "MediaRouterService"

    if-ltz v5, :cond_4

    .line 165
    iget-object v8, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v8, v5}, Lcom/android/server/media/MediaRouterService;->restoreRoute(I)V

    .line 166
    invoke-static {}, Lcom/android/server/media/MediaRouterService;->access$300()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", restoreUid="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 171
    :cond_4
    iget-object v8, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v8}, Lcom/android/server/media/MediaRouterService;->access$200(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    invoke-static {}, Lcom/android/server/media/MediaRouterService;->access$300()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", delaying"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_5
    :goto_2
    return-void
.end method
