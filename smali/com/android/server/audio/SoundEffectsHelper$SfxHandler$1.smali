.class Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

.field final synthetic val$effect:I

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 448
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    iput p2, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$effect:I

    iput p3, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$volume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 3
    .param p1, "success"    # Z

    .line 451
    if-eqz p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    iget-object v0, v0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    iget v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$effect:I

    iget v2, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$volume:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/SoundEffectsHelper;->onPlaySoundEffect(II)V

    .line 454
    :cond_0
    return-void
.end method
