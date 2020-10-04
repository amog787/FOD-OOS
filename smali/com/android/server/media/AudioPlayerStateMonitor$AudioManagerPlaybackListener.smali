.class Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "AudioPlayerStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/AudioPlayerStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioManagerPlaybackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/AudioPlayerStateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/AudioPlayerStateMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/media/AudioPlayerStateMonitor;
    .param p2, "x1"    # Lcom/android/server/media/AudioPlayerStateMonitor$1;

    .line 221
    invoke-direct {p0, p1}, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;-><init>(Lcom/android/server/media/AudioPlayerStateMonitor;)V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-static {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->access$100(Lcom/android/server/media/AudioPlayerStateMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v1, v1, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 227
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 229
    .local v1, "activeAudioPlaybackConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 230
    .local v3, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v4, v4, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .end local v3    # "config":Landroid/media/AudioPlaybackConfiguration;
    :cond_0
    goto :goto_0

    .line 237
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 238
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 239
    .local v4, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    .line 240
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v6, v6, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 241
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 240
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 242
    invoke-static {}, Lcom/android/server/media/AudioPlayerStateMonitor;->access$200()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 243
    invoke-static {}, Lcom/android/server/media/AudioPlayerStateMonitor;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found a new active media playback. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {v4}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 243
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_2
    iget-object v6, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v6, v6, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v6, v5}, Landroid/util/IntArray;->indexOf(I)I

    move-result v6

    .line 248
    .local v6, "index":I
    if-nez v6, :cond_3

    .line 250
    goto :goto_2

    .line 251
    :cond_3
    if-lez v6, :cond_4

    .line 252
    iget-object v7, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v7, v7, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v7, v6}, Landroid/util/IntArray;->remove(I)V

    .line 254
    :cond_4
    iget-object v7, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v7, v7, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v7, v2, v5}, Landroid/util/IntArray;->add(II)V

    .line 237
    .end local v4    # "config":Landroid/media/AudioPlaybackConfiguration;
    .end local v5    # "uid":I
    .end local v6    # "index":I
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    .end local v3    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v3, v3, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v3, v3, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v5, v5, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    .line 259
    invoke-virtual {v5, v2}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 260
    const/4 v3, -0x1

    .line 261
    .local v3, "firstActiveUid":I
    const/4 v5, -0x1

    .line 262
    .local v5, "firatActiveUidIndex":I
    move v6, v4

    .local v6, "i":I
    :goto_3
    iget-object v7, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v7, v7, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 263
    iget-object v7, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v7, v7, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v7, v6}, Landroid/util/IntArray;->get(I)I

    move-result v7

    .line 264
    .local v7, "uid":I
    iget-object v8, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v8, v8, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 265
    move v5, v6

    .line 266
    move v3, v7

    .line 267
    goto :goto_4

    .line 262
    .end local v7    # "uid":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 270
    .end local v6    # "i":I
    :cond_8
    :goto_4
    move v6, v5

    .restart local v6    # "i":I
    :goto_5
    if-lez v6, :cond_9

    .line 271
    iget-object v7, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v7, v7, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    iget-object v8, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v8, v8, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    add-int/lit8 v9, v6, -0x1

    .line 272
    invoke-virtual {v8, v9}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .line 271
    invoke-virtual {v7, v6, v8}, Landroid/util/IntArray;->set(II)V

    .line 270
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 274
    .end local v6    # "i":I
    :cond_9
    iget-object v6, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v6, v6, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v6, v2, v3}, Landroid/util/IntArray;->set(II)V

    .line 278
    .end local v3    # "firstActiveUid":I
    .end local v5    # "firatActiveUidIndex":I
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioPlaybackConfiguration;

    .line 279
    .local v5, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v6

    .line 280
    .local v6, "pii":I
    iget-object v7, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v7, v7, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    move v7, v4

    goto :goto_7

    :cond_b
    move v7, v2

    .line 281
    .local v7, "wasActive":Z
    :goto_7
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v8

    if-eq v7, v8, :cond_c

    .line 282
    iget-object v8, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-static {v8, v5, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->access$400(Lcom/android/server/media/AudioPlayerStateMonitor;Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 285
    .end local v5    # "config":Landroid/media/AudioPlaybackConfiguration;
    .end local v6    # "pii":I
    .end local v7    # "wasActive":Z
    :cond_c
    goto :goto_6

    .line 286
    :cond_d
    iget-object v2, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v2, v2, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 287
    .local v3, "config":Landroid/media/AudioPlaybackConfiguration;
    iget-object v5, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-static {v5, v3, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->access$400(Lcom/android/server/media/AudioPlayerStateMonitor;Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 288
    .end local v3    # "config":Landroid/media/AudioPlaybackConfiguration;
    goto :goto_8

    .line 291
    :cond_e
    iget-object v2, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iput-object v1, v2, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 292
    .end local v1    # "activeAudioPlaybackConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
