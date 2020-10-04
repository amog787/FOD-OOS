.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 6252
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 6252
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .line 6252
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 6505
    if-eqz p1, :cond_0

    .line 6507
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 6508
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6511
    goto :goto_0

    .line 6509
    :catch_0
    move-exception v0

    .line 6510
    .local v0, "ex":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6513
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    return-void
.end method

.method private getSoundEffectFilePath(I)Ljava/lang/String;
    .locals 5
    .param p1, "effectType"    # I

    .line 6292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6293
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4800()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6294
    .local v0, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6296
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4800()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    aget v3, v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6298
    :cond_0
    return-object v0
.end method

.method private onLoadSoundEffects()Z
    .locals 16

    .line 6304
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 6305
    :try_start_0
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 6306
    const-string v0, "AS.AudioService"

    const-string/jumbo v4, "onLoadSoundEffects() called before boot complete"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6307
    monitor-exit v2

    return v3

    .line 6310
    :cond_0
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 6311
    monitor-exit v2

    return v4

    .line 6314
    :cond_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;)V

    .line 6316
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v5, Landroid/media/SoundPool$Builder;

    invoke-direct {v5}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 6317
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v5

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v8, 0xd

    .line 6319
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 6320
    invoke-virtual {v7, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 6321
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 6318
    invoke-virtual {v5, v6}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v5

    .line 6322
    invoke-virtual {v5}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v5

    .line 6316
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$2602(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6323
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 6324
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v6, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {v6, v7}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v0, v6}, Lcom/android/server/audio/AudioService;->access$5102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6325
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    .line 6326
    const/4 v0, 0x3

    .line 6327
    .local v0, "attempts":I
    :goto_0
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, 0x1388

    if-nez v6, :cond_3

    add-int/lit8 v6, v0, -0x1

    .end local v0    # "attempts":I
    .local v6, "attempts":I
    if-lez v0, :cond_2

    .line 6330
    :try_start_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6333
    goto :goto_1

    .line 6331
    :catch_0
    move-exception v0

    .line 6332
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v7, "AS.AudioService"

    const-string v8, "Interrupted while waiting sound pool listener thread."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6333
    nop

    .line 6327
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v6

    .line 6336
    .end local v6    # "attempts":I
    .local v0, "attempts":I
    :cond_3
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v6

    if-nez v6, :cond_5

    .line 6337
    const-string v4, "AS.AudioService"

    const-string/jumbo v6, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6338
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 6339
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 6340
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 6342
    :cond_4
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$5102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6343
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/SoundPool;->release()V

    .line 6344
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$2602(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6345
    monitor-exit v2

    return v3

    .line 6353
    :cond_5
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4800()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 6354
    .local v6, "poolId":[I
    move v9, v3

    .local v9, "fileIdx":I
    :goto_2
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4800()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, -0x1

    if-ge v9, v10, :cond_6

    .line 6355
    aput v11, v6, v9

    .line 6354
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 6363
    .end local v9    # "fileIdx":I
    :cond_6
    const/4 v9, 0x0

    .line 6364
    .local v9, "numSamples":I
    const/4 v10, 0x0

    .local v10, "effect":I
    :goto_3
    const/16 v12, 0xa

    if-ge v10, v12, :cond_a

    .line 6366
    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v10

    aget v12, v12, v4

    if-nez v12, :cond_7

    .line 6367
    goto :goto_5

    .line 6369
    :cond_7
    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v10

    aget v12, v12, v3

    aget v12, v6, v12

    if-ne v12, v11, :cond_9

    .line 6370
    invoke-direct {v1, v10}, Lcom/android/server/audio/AudioService$AudioHandler;->getSoundEffectFilePath(I)Ljava/lang/String;

    move-result-object v12

    .line 6371
    .local v12, "filePath":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    invoke-virtual {v13, v12, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v13

    .line 6372
    .local v13, "sampleId":I
    if-gtz v13, :cond_8

    .line 6373
    const-string v14, "AS.AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Soundpool could not load file: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 6375
    :cond_8
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v10

    aput v13, v5, v4

    .line 6376
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v10

    aget v5, v5, v3

    aput v13, v6, v5

    .line 6377
    add-int/lit8 v9, v9, 0x1

    .line 6379
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "sampleId":I
    :goto_4
    goto :goto_5

    .line 6380
    :cond_9
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v10

    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 6381
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v10

    aget v12, v12, v3

    aget v12, v6, v12

    aput v12, v5, v4

    .line 6364
    :goto_5
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto :goto_3

    .line 6385
    .end local v10    # "effect":I
    :cond_a
    if-lez v9, :cond_c

    .line 6386
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6388
    const/4 v0, 0x3

    .line 6389
    const/4 v5, 0x1

    .line 6390
    .local v5, "status":I
    :goto_6
    if-ne v5, v4, :cond_d

    add-int/lit8 v10, v0, -0x1

    .end local v0    # "attempts":I
    .local v10, "attempts":I
    if-lez v0, :cond_b

    .line 6392
    :try_start_3
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 6393
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v5, v0

    .line 6396
    move v0, v10

    goto :goto_6

    .line 6394
    :catch_1
    move-exception v0

    .line 6395
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v13, "AS.AudioService"

    const-string v14, "Interrupted while waiting sound pool callback."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6396
    move v0, v10

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_6

    .line 6390
    :cond_b
    move v0, v10

    goto :goto_7

    .line 6399
    .end local v5    # "status":I
    .end local v10    # "attempts":I
    .local v0, "attempts":I
    :cond_c
    move v5, v11

    .line 6402
    .restart local v5    # "status":I
    :cond_d
    :goto_7
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 6403
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    .line 6404
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 6406
    :cond_e
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->access$5102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6407
    if-eqz v5, :cond_11

    .line 6408
    const-string v7, "AS.AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onLoadSoundEffects(), Error "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " while loading samples"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6410
    const/4 v7, 0x0

    .local v7, "effect":I
    :goto_8
    if-ge v7, v12, :cond_10

    .line 6411
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v8

    aget-object v8, v8, v7

    aget v8, v8, v4

    if-lez v8, :cond_f

    .line 6412
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v8

    aget-object v8, v8, v7

    aput v11, v8, v4

    .line 6410
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 6416
    .end local v7    # "effect":I
    :cond_10
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/SoundPool;->release()V

    .line 6417
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->access$2602(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6419
    .end local v0    # "attempts":I
    .end local v6    # "poolId":[I
    .end local v9    # "numSamples":I
    :cond_11
    monitor-exit v2

    .line 6420
    if-nez v5, :cond_12

    move v3, v4

    :cond_12
    return v3

    .line 6419
    .end local v5    # "status":I
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V
    .locals 1
    .param p1, "apc"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "direction"    # I

    .line 6524
    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6527
    goto :goto_0

    .line 6525
    :catch_0
    move-exception v0

    .line 6528
    :goto_0
    return-void
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 6516
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6519
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .locals 9
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .line 6455
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6457
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 6459
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6460
    monitor-exit v0

    return-void

    .line 6464
    :cond_0
    if-gez p2, :cond_1

    .line 6465
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5200()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .local v1, "volFloat":F
    goto :goto_0

    .line 6467
    .end local v1    # "volFloat":F
    :cond_1
    int-to-float v1, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 6470
    .restart local v1    # "volFloat":F
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lez v2, :cond_2

    .line 6471
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, p1

    aget v3, v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v1

    move v5, v1

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1

    .line 6474
    :cond_2
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6476
    .local v2, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->getSoundEffectFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 6477
    .local v4, "filePath":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 6478
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 6479
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 6480
    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 6481
    new-instance v3, Lcom/android/server/audio/AudioService$AudioHandler$1;

    invoke-direct {v3, p0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 6486
    new-instance v3, Lcom/android/server/audio/AudioService$AudioHandler$2;

    invoke-direct {v3, p0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 6492
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6499
    .end local v4    # "filePath":Ljava/lang/String;
    goto :goto_1

    .line 6497
    :catch_0
    move-exception v3

    .line 6498
    .local v3, "ex":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v4, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaPlayer IllegalStateException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6495
    .end local v3    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 6496
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const-string v4, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6499
    nop

    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 6493
    :catch_2
    move-exception v3

    .line 6494
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaPlayer IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6499
    nop

    .line 6501
    .end local v1    # "volFloat":F
    .end local v2    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_1
    monitor-exit v0

    .line 6502
    return-void

    .line 6501
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onUnloadSoundEffects()V
    .locals 7

    .line 6429
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6430
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6431
    monitor-exit v0

    return-void

    .line 6434
    :cond_0
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4800()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 6435
    .local v1, "poolId":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "fileIdx":I
    :goto_0
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4800()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 6436
    aput v2, v1, v3

    .line 6435
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6439
    .end local v3    # "fileIdx":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "effect":I
    :goto_1
    const/16 v4, 0xa

    if-ge v3, v4, :cond_4

    .line 6440
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_2

    .line 6441
    goto :goto_2

    .line 6443
    :cond_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aget v4, v1, v4

    if-nez v4, :cond_3

    .line 6444
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v6

    aget-object v6, v6, v3

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Landroid/media/SoundPool;->unload(I)Z

    .line 6445
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 6446
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aput v6, v1, v4

    .line 6439
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6449
    .end local v3    # "effect":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V

    .line 6450
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$2602(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6451
    nop

    .end local v1    # "poolId":[I
    monitor-exit v0

    .line 6452
    return-void

    .line 6451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .line 6285
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6286
    return-void

    .line 6288
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6289
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .line 6270
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6271
    return-void

    .line 6273
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 6274
    return-void

    .line 6276
    :cond_1
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$4600(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6277
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 6278
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 6279
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    .line 6277
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6282
    :cond_2
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6257
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 6260
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 6261
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6262
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    .line 6263
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 6264
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 6261
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6267
    .end local v1    # "streamType":I
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .line 6532
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    if-eqz v0, :cond_18

    const/4 v3, 0x1

    if-eq v0, v3, :cond_17

    const/4 v4, 0x3

    if-eq v0, v4, :cond_16

    const/4 v5, 0x4

    if-eq v0, v5, :cond_15

    const/4 v5, 0x5

    if-eq v0, v5, :cond_14

    const/4 v6, 0x7

    const/4 v7, 0x0

    if-eq v0, v6, :cond_12

    const/16 v6, 0x8

    if-eq v0, v6, :cond_10

    const/16 v6, 0x20

    if-eq v0, v6, :cond_f

    const/16 v6, 0x64

    if-eq v0, v6, :cond_d

    const/4 v6, -0x2

    packed-switch v0, :pswitch_data_0

    const/16 v8, 0xa

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_7

    .line 6658
    :pswitch_0
    new-array v0, v3, [I

    const/16 v3, 0xa9

    aput v3, v0, v7

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6659
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 6681
    :pswitch_1
    new-array v0, v3, [I

    const/16 v3, 0xac

    aput v3, v0, v7

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6682
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "setModeClientPkg"

    invoke-static {v0, v4, v3, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6683
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget v3, v2, Landroid/os/Message;->arg1:I

    const-string/jumbo v4, "setModeClientPid"

    invoke-static {v0, v4, v3, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_7

    .line 6666
    :pswitch_2
    new-array v0, v3, [I

    const/16 v5, 0xab

    aput v5, v0, v7

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6667
    const/4 v0, 0x0

    .line 6668
    .local v0, "device":I
    iget v5, v2, Landroid/os/Message;->arg1:I

    const/4 v6, 0x2

    if-eq v5, v3, :cond_0

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-eq v3, v6, :cond_0

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 6669
    :cond_0
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-eq v3, v6, :cond_1

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 6670
    :cond_1
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v7}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 6672
    :cond_2
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "audio_call_device"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set audio_call_device to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6675
    .end local v0    # "device":I
    :cond_3
    goto/16 :goto_7

    .line 6725
    :pswitch_3
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6726
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v4

    .line 6727
    .local v0, "streamTypeAlias":I
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;)I

    move-result v9

    mul-int/2addr v9, v8

    invoke-static {v6, v9, v4, v0}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;III)I

    move-result v6

    .line 6728
    .local v6, "index":I
    const/16 v9, 0xbb8

    .line 6729
    .local v9, "autoPlayGradient":I
    const/16 v16, 0x0

    .line 6730
    .local v16, "steps":I
    iget v10, v2, Landroid/os/Message;->arg1:I

    if-gt v6, v10, :cond_5

    if-eqz v6, :cond_5

    iget v10, v2, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_5

    .line 6731
    move v12, v6

    .line 6732
    .local v12, "indexVol":I
    iget v10, v2, Landroid/os/Message;->arg2:I

    and-int/lit16 v10, v10, 0x380

    if-eqz v10, :cond_4

    iget-object v10, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 6734
    const/16 v9, 0x7d0

    .line 6735
    mul-int/lit16 v10, v6, 0x12c

    iget v11, v2, Landroid/os/Message;->arg1:I

    div-int/2addr v10, v11

    add-int/2addr v10, v5

    div-int/2addr v10, v8

    .line 6736
    .end local v12    # "indexVol":I
    .local v10, "indexVol":I
    iget v11, v2, Landroid/os/Message;->arg2:I

    invoke-static {v4, v10, v11}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    goto :goto_0

    .line 6738
    .end local v10    # "indexVol":I
    .restart local v12    # "indexVol":I
    :cond_4
    iget-object v10, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v11, 0x3

    iget v13, v2, Landroid/os/Message;->arg2:I

    const/4 v14, 0x0

    const-string v15, "GradientingMusicVol"

    invoke-static/range {v10 .. v15}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V

    .line 6741
    .end local v12    # "indexVol":I
    :cond_5
    :goto_0
    iget v4, v2, Landroid/os/Message;->arg1:I

    add-int/2addr v4, v5

    div-int/2addr v4, v8

    div-int v4, v9, v4

    .line 6742
    .end local v16    # "steps":I
    .local v4, "steps":I
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;)I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v5, v8}, Lcom/android/server/audio/AudioService;->access$6902(Lcom/android/server/audio/AudioService;I)I

    .line 6743
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_6

    .line 6744
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v7}, Lcom/android/server/audio/AudioService;->access$3902(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_1

    .line 6746
    :cond_6
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v17

    const/16 v18, 0x23

    const/16 v19, 0x0

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v5, v2, Landroid/os/Message;->arg2:I

    const/16 v22, 0x0

    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v23, v4

    invoke-static/range {v17 .. v23}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6748
    .end local v0    # "streamTypeAlias":I
    .end local v4    # "steps":I
    .end local v6    # "index":I
    .end local v9    # "autoPlayGradient":I
    :goto_1
    goto/16 :goto_7

    .line 6699
    :pswitch_4
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-ne v0, v3, :cond_19

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-nez v0, :cond_19

    .line 6700
    const/16 v0, 0xb

    invoke-static {v0, v7}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-nez v5, :cond_19

    .line 6701
    invoke-static {v0}, Landroid/media/AudioSystem;->isSourceActive(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 6702
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;I)I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$6702(Lcom/android/server/audio/AudioService;I)I

    .line 6703
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v5

    aget-object v5, v5, v4

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$6802(Lcom/android/server/audio/AudioService;I)I

    .line 6704
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    .line 6705
    .local v0, "avrcpAbsVolSupported":Z
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-le v5, v8, :cond_a

    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 6706
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)I

    move-result v5

    and-int/lit16 v5, v5, 0x380

    if-eqz v5, :cond_7

    if-nez v0, :cond_8

    :cond_7
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 6707
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)I

    move-result v5

    and-int/lit16 v5, v5, 0x380

    if-nez v5, :cond_a

    .line 6708
    :cond_8
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v7}, Lcom/android/server/audio/AudioService;->access$6902(Lcom/android/server/audio/AudioService;I)I

    .line 6709
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v3}, Lcom/android/server/audio/AudioService;->access$3902(Lcom/android/server/audio/AudioService;Z)Z

    .line 6710
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)I

    move-result v5

    and-int/lit16 v5, v5, 0x380

    if-eqz v5, :cond_9

    if-eqz v0, :cond_9

    .line 6711
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-static {v4, v7, v5}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    goto :goto_2

    .line 6713
    :cond_9
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)I

    move-result v11

    const/4 v12, 0x0

    const-string v13, "GradientingMusicVol"

    invoke-static/range {v8 .. v13}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V

    .line 6715
    :goto_2
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v8

    const/16 v9, 0x23

    const/4 v10, 0x0

    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)I

    move-result v11

    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)I

    move-result v12

    const/4 v13, 0x0

    const/16 v14, 0xa

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6717
    :cond_a
    new-instance v4, Landroid/view/KeyEvent;

    const/16 v5, 0x7e

    invoke-direct {v4, v7, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 6718
    .local v4, "KeyDownEvent":Landroid/view/KeyEvent;
    new-instance v6, Landroid/view/KeyEvent;

    invoke-direct {v6, v3, v5}, Landroid/view/KeyEvent;-><init>(II)V

    move-object v3, v6

    .line 6719
    .local v3, "KeyUpEvent":Landroid/view/KeyEvent;
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v5

    .line 6720
    .local v5, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v5, v4, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 6721
    invoke-virtual {v5, v3, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 6722
    .end local v0    # "avrcpAbsVolSupported":Z
    .end local v3    # "KeyUpEvent":Landroid/view/KeyEvent;
    .end local v4    # "KeyDownEvent":Landroid/view/KeyEvent;
    .end local v5    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    goto/16 :goto_7

    .line 6764
    :pswitch_5
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    goto/16 :goto_7

    .line 6760
    :pswitch_6
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    .line 6761
    goto/16 :goto_7

    .line 6756
    :pswitch_7
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7200(Lcom/android/server/audio/AudioService;)V

    .line 6757
    goto/16 :goto_7

    .line 6752
    :pswitch_8
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$7100(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    .line 6753
    goto/16 :goto_7

    .line 6652
    :pswitch_9
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)V

    .line 6653
    goto/16 :goto_7

    .line 6648
    :pswitch_a
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    .line 6649
    goto/16 :goto_7

    .line 6557
    :pswitch_b
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v2, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_b

    goto :goto_3

    :cond_b
    move v3, v7

    :goto_3
    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;Z)V

    .line 6558
    goto/16 :goto_7

    .line 6644
    :pswitch_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V

    .line 6645
    goto/16 :goto_7

    .line 6625
    :pswitch_d
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;I)V

    .line 6626
    goto/16 :goto_7

    .line 6621
    :pswitch_e
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 6622
    goto/16 :goto_7

    .line 6640
    :pswitch_f
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$6100(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 6641
    goto/16 :goto_7

    .line 6636
    :pswitch_10
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$6000(Lcom/android/server/audio/AudioService;II)V

    .line 6637
    goto/16 :goto_7

    .line 6629
    :pswitch_11
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 6630
    .local v0, "musicActiveMs":I
    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "unsafe_volume_music_active_ms"

    invoke-static {v3, v4, v0, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6633
    goto/16 :goto_7

    .line 6617
    .end local v0    # "musicActiveMs":I
    :pswitch_12
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    .line 6618
    goto/16 :goto_7

    .line 6561
    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    .line 6562
    goto/16 :goto_7

    .line 6613
    :pswitch_14
    iget v0, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    .line 6614
    goto/16 :goto_7

    .line 6609
    :pswitch_15
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v2, Landroid/os/Message;->what:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_c

    goto :goto_4

    :cond_c
    move v3, v7

    :goto_4
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    .line 6611
    goto/16 :goto_7

    .line 6604
    :pswitch_16
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 6605
    goto/16 :goto_7

    .line 6539
    :pswitch_17
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {v1, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 6540
    goto/16 :goto_7

    .line 6598
    :cond_d
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v0

    iget v4, v2, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_e

    goto :goto_5

    :cond_e
    move v3, v7

    :goto_5
    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(ZI)V

    .line 6600
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6601
    goto/16 :goto_7

    .line 6690
    :cond_f
    new-array v0, v3, [I

    const/16 v3, 0xa7

    aput v3, v0, v7

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6691
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 6692
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)I

    move-result v3

    .line 6691
    const-string/jumbo v4, "per_speaker_music_volume"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 6583
    :cond_10
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 6584
    .local v0, "eventSource":Ljava/lang/String;
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 6585
    .local v4, "useCase":I
    iget v5, v2, Landroid/os/Message;->arg2:I

    .line 6586
    .local v5, "config":I
    if-ne v4, v3, :cond_11

    .line 6587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid force use FOR_MEDIA in AudioService from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "AS.AudioService"

    invoke-static {v6, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6589
    goto :goto_7

    .line 6591
    :cond_11
    sget-object v3, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v6, v4, v5, v0}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 6593
    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6595
    .end local v0    # "eventSource":Ljava/lang/String;
    .end local v4    # "useCase":I
    .end local v5    # "config":I
    goto :goto_7

    .line 6567
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v3

    .line 6568
    .local v3, "loaded":Z
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_19

    .line 6569
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 6570
    .local v4, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v4

    .line 6571
    if-eqz v3, :cond_13

    goto :goto_6

    :cond_13
    const/4 v7, -0x1

    :goto_6
    :try_start_0
    iput v7, v4, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 6572
    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 6573
    monitor-exit v4

    .line 6574
    .end local v4    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    goto :goto_7

    .line 6573
    .restart local v4    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6578
    .end local v3    # "loaded":Z
    .end local v4    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :cond_14
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v3, v2, Landroid/os/Message;->arg2:I

    invoke-direct {v1, v0, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    .line 6579
    goto :goto_7

    .line 6553
    :cond_15
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    .line 6554
    goto :goto_7

    .line 6549
    :cond_16
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 6550
    goto :goto_7

    .line 6543
    :cond_17
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 6544
    goto :goto_7

    .line 6535
    :cond_18
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 6536
    nop

    .line 6767
    :cond_19
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
