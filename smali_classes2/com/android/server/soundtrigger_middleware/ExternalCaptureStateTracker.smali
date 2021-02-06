.class Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;
.super Ljava/lang/Object;
.source "ExternalCaptureStateTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureStateTracker"


# instance fields
.field private final mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNeedToConnect:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    .line 56
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListener:Ljava/util/function/Consumer;

    .line 57
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/-$$Lambda$ExternalCaptureStateTracker$Ygm9zjschDPyC1_diGoIJXbnmGc;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$ExternalCaptureStateTracker$Ygm9zjschDPyC1_diGoIJXbnmGc;-><init>(Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method

.method private binderDied()V
    .locals 2

    .line 92
    const-string v0, "CaptureStateTracker"

    const-string v1, "Audio policy service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 94
    return-void
.end method

.method private native connect()V
.end method

.method public static synthetic lambda$Ygm9zjschDPyC1_diGoIJXbnmGc(Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->run()V

    return-void
.end method

.method private run()V
    .locals 1

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 66
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->connect()V

    goto :goto_0
.end method

.method private setCaptureState(Z)V
    .locals 3
    .param p1, "active"    # Z

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CaptureStateTracker"

    const-string v2, "Exception caught while setting capture state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
