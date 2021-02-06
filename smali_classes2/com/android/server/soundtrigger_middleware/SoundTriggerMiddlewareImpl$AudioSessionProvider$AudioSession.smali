.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioSession"
.end annotation


# instance fields
.field final mDeviceHandle:I

.field final mIoHandle:I

.field final mSessionHandle:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "sessionHandle"    # I
    .param p2, "ioHandle"    # I
    .param p3, "deviceHandle"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    .line 70
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mIoHandle:I

    .line 71
    iput p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mDeviceHandle:I

    .line 72
    return-void
.end method
