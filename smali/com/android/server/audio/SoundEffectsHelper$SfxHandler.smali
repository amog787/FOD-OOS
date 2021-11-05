.class Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
.super Landroid/os/Handler;
.source "SoundEffectsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SoundEffectsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SfxHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p2, "x1"    # Lcom/android/server/audio/SoundEffectsHelper$1;

    .line 436
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 439
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v0}, Lcom/android/server/audio/SoundEffectsHelper;->access$000(Lcom/android/server/audio/SoundEffectsHelper;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v0}, Lcom/android/server/audio/SoundEffectsHelper;->access$000(Lcom/android/server/audio/SoundEffectsHelper;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onTimeout()V

    goto :goto_0

    .line 447
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .local v0, "effect":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 448
    .local v1, "volume":I
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v3, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;II)V

    invoke-static {v2, v3}, Lcom/android/server/audio/SoundEffectsHelper;->access$400(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 456
    goto :goto_0

    .line 444
    .end local v0    # "effect":I
    .end local v1    # "volume":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    .line 445
    goto :goto_0

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    invoke-static {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper;->access$400(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 442
    nop

    .line 463
    :cond_4
    :goto_0
    return-void
.end method
