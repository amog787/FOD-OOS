.class Lcom/android/server/audio/SoundEffectsHelper$1;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/SoundEffectsHelper;->onLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/SoundEffectsHelper;

    .line 182
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 185
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper;->access$002(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 186
    if-nez p1, :cond_0

    .line 187
    const-string v0, "AS.SfxHelper"

    const-string/jumbo v1, "onLoadSoundEffects(), Error while loading samples"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    .line 190
    :cond_0
    return-void
.end method
