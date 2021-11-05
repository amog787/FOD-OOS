.class Lcom/android/server/soundtrigger_middleware/AudioSessionProviderImpl;
.super Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;
.source "AudioSessionProviderImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public native acquireSession()Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
.end method

.method public native releaseSession(I)V
.end method
