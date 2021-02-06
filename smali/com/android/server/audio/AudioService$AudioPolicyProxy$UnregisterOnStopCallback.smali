.class final Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService$AudioPolicyProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnregisterOnStopCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/audio/AudioService$AudioPolicyProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService$AudioPolicyProxy;)V
    .locals 0

    .line 10198
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;->this$1:Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService$AudioPolicyProxy;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 10198
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;-><init>(Lcom/android/server/audio/AudioService$AudioPolicyProxy;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 10200
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;->this$1:Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;->this$1:Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    iget-object v1, v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 10201
    return-void
.end method
