.class Lcom/android/server/audio/SoundEffectsHelper$2;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V
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

    .line 221
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$2;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 1
    .param p1, "success"    # Z

    .line 224
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$2;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    .line 225
    return-void
.end method
