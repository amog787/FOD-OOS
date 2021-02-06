.class Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SoundEffectsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundPoolLoader"
.end annotation


# instance fields
.field private mLoadCompleteHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 1

    .line 472
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 478
    invoke-static {p1}, Lcom/android/server/audio/SoundEffectsHelper;->access$500(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 479
    return-void
.end method


# virtual methods
.method addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 482
    if-eqz p1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_0
    return-void
.end method

.method onComplete(Z)V
    .locals 3
    .param p1, "success"    # Z

    .line 523
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v0}, Lcom/android/server/audio/SoundEffectsHelper;->access$500(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v0}, Lcom/android/server/audio/SoundEffectsHelper;->access$500(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 527
    .local v1, "handler":Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;
    invoke-interface {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    .line 528
    .end local v1    # "handler":Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;
    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effects loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string v2, "completed"

    goto :goto_1

    :cond_2
    const-string v2, "failed"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper;->access$700(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .line 489
    const-string v0, "effect "

    if-nez p3, :cond_4

    .line 490
    const/4 v1, 0x0

    .line 491
    .local v1, "remainingToLoad":I
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v2}, Lcom/android/server/audio/SoundEffectsHelper;->access$600(Lcom/android/server/audio/SoundEffectsHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 492
    .local v3, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    iget v5, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-ne v5, p2, :cond_0

    iget-boolean v5, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-nez v5, :cond_0

    .line 493
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/audio/SoundEffectsHelper;->access$700(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V

    .line 494
    iput-boolean v4, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 496
    :cond_0
    iget v4, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-nez v4, :cond_1

    .line 497
    add-int/lit8 v1, v1, 0x1

    .line 499
    .end local v3    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    :cond_1
    goto :goto_0

    .line 500
    :cond_2
    if-nez v1, :cond_3

    .line 501
    invoke-virtual {p0, v4}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 503
    .end local v1    # "remainingToLoad":I
    :cond_3
    goto :goto_2

    .line 504
    :cond_4
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v1, p2}, Lcom/android/server/audio/SoundEffectsHelper;->access$800(Lcom/android/server/audio/SoundEffectsHelper;I)Lcom/android/server/audio/SoundEffectsHelper$Resource;

    move-result-object v1

    .line 506
    .local v1, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    if-eqz v1, :cond_5

    .line 507
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v2, v1}, Lcom/android/server/audio/SoundEffectsHelper;->access$900(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v2

    .local v2, "filePath":Ljava/lang/String;
    goto :goto_1

    .line 509
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "with unknown sample ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    .restart local v2    # "filePath":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " loading failed, status "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/audio/SoundEffectsHelper;->access$700(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadSoundEffects(), Error "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " while loading sample "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AS.SfxHelper"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 516
    .end local v1    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .end local v2    # "filePath":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method onTimeout()V
    .locals 1

    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 520
    return-void
.end method
