.class Lcom/android/server/audio/SoundEffectsHelper$3;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/SoundEffectsHelper;->onPlaySoundEffect(II)V
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

    .line 268
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$3;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 270
    invoke-static {p1}, Lcom/android/server/audio/SoundEffectsHelper;->access$100(Landroid/media/MediaPlayer;)V

    .line 271
    return-void
.end method
