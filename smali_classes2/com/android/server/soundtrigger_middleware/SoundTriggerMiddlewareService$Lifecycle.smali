.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SoundTriggerMiddlewareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method static synthetic lambda$onStart$0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    .locals 2

    .line 175
    :try_start_0
    const-string v0, "SoundTriggerMiddlewareService"

    const-string v1, "Connecting to default ISoundTriggerHw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getService(Z)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .line 173
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/soundtrigger_middleware/HalFactory;

    sget-object v1, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerMiddlewareService$Lifecycle$-t8UndY0AHGyM6n9ce2y6qok3Ho;->INSTANCE:Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerMiddlewareService$Lifecycle$-t8UndY0AHGyM6n9ce2y6qok3Ho;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 182
    .local v0, "factories":[Lcom/android/server/soundtrigger_middleware/HalFactory;
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;

    new-instance v5, Lcom/android/server/soundtrigger_middleware/AudioSessionProviderImpl;

    invoke-direct {v5}, Lcom/android/server/soundtrigger_middleware/AudioSessionProviderImpl;-><init>()V

    invoke-direct {v4, v0, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;-><init>([Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$1;)V

    .line 182
    const-string v2, "soundtrigger_middleware"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    return-void
.end method
