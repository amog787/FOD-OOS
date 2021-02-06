.class final Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Compat.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IHwBinder;

.field private final mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

.field private final mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

.field private final mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

.field private final mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;


# direct methods
.method public constructor <init>(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V
    .locals 1
    .param p1, "underlying"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 58
    invoke-interface {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;-><init>(Landroid/os/IHwBinder;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IHwBinder;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    .line 71
    nop

    .line 72
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v0

    .line 73
    .local v0, "as2_3":Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;
    if-eqz v0, :cond_0

    .line 74
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 75
    return-void

    .line 79
    :cond_0
    nop

    .line 80
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    move-result-object v1

    .line 81
    .local v1, "as2_2":Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 82
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 83
    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    .line 84
    return-void

    .line 88
    :cond_1
    nop

    .line 89
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v3

    .line 90
    .local v3, "as2_1":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;
    if-eqz v3, :cond_2

    .line 91
    iput-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 92
    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    .line 93
    return-void

    .line 97
    :cond_2
    nop

    .line 98
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v4

    .line 99
    .local v4, "as2_0":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    if-eqz v4, :cond_3

    .line 100
    iput-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 101
    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    .line 102
    return-void

    .line 105
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "Binder doesn\'t support ISoundTriggerHw@2.0"

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    return-object v0
.end method

.method private as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    if-eqz v0, :cond_0

    .line 411
    return-object v0

    .line 409
    :cond_0
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v1, "Underlying driver version < 2.1"

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private as2_2()Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    if-eqz v0, :cond_0

    .line 419
    return-object v0

    .line 417
    :cond_0
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v1, "Underlying driver version < 2.2"

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    if-eqz v0, :cond_0

    .line 427
    return-object v0

    .line 425
    :cond_0
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v1, "Underlying driver version < 2.3"

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProperties_2_0()Landroid/hardware/soundtrigger/V2_3/Properties;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 323
    .local v0, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 325
    .local v1, "properties":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;>;"
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$TgbC0Y00RFANX4qn5-S2zqA0RJU;

    invoke-direct {v3, v0, v1}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$TgbC0Y00RFANX4qn5-S2zqA0RJU;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, v3}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;)V

    .line 330
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v3, "getProperties"

    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 331
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertProperties_2_0_to_2_3(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object v2

    return-object v2
.end method

.method private static handleHalStatus(ILjava/lang/String;)V
    .locals 1
    .param p0, "status"    # I
    .param p1, "methodName"    # Ljava/lang/String;

    .line 109
    if-nez p0, :cond_0

    .line 112
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/android/server/soundtrigger_middleware/HalException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/HalException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$getModelParameter$3(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0
    .param p0, "status"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "value"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "s"    # I
    .param p3, "v"    # I

    .line 254
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 255
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 256
    return-void
.end method

.method static synthetic lambda$getProperties$0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/Properties;)V
    .locals 0
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "properties"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p2, "r"    # I
    .param p3, "p"    # Landroid/hardware/soundtrigger/V2_3/Properties;

    .line 124
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 125
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method static synthetic lambda$getProperties_2_0$5(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)V
    .locals 0
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "properties"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p2, "r"    # I
    .param p3, "p"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 327
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 328
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method static synthetic lambda$loadPhraseSoundModel$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "handle"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "r"    # I
    .param p3, "h"    # I

    .line 173
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 174
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 175
    return-void
.end method

.method static synthetic lambda$loadPhraseSoundModel_2_0$7(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "handle"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "r"    # I
    .param p3, "h"    # I

    .line 364
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 365
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 366
    return-void
.end method

.method static synthetic lambda$loadSoundModel$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "handle"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "r"    # I
    .param p3, "h"    # I

    .line 148
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 149
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 150
    return-void
.end method

.method static synthetic lambda$loadSoundModel_2_0$6(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0
    .param p0, "retval"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "handle"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "r"    # I
    .param p3, "h"    # I

    .line 345
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 346
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 347
    return-void
.end method

.method static synthetic lambda$queryParameter$4(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;)V
    .locals 0
    .param p0, "status"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "optionalRange"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p2, "s"    # I
    .param p3, "r"    # Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    .line 288
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 289
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method private loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 6
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    nop

    .line 358
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertPhraseSoundModel_2_1_to_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    move-result-object v0

    .line 360
    .local v0, "model_2_0":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 361
    .local v1, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 362
    .local v2, "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$1;)V

    new-instance v5, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$X838A3db9kVMHQpQXa1dyFuUof0;

    invoke-direct {v5, v1, v2}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$X838A3db9kVMHQpQXa1dyFuUof0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v3, v0, v4, p3, v5}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;)V

    .line 367
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const-string v4, "loadSoundModel"

    invoke-static {v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 368
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    return v3
.end method

.method private loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 6
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    nop

    .line 340
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertSoundModel_2_1_to_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    move-result-object v0

    .line 342
    .local v0, "model_2_0":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 343
    .local v1, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 344
    .local v2, "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$1;)V

    new-instance v5, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$d4MfUfrLxE-WfTBopivzvQedlJQ;

    invoke-direct {v5, v1, v2}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$d4MfUfrLxE-WfTBopivzvQedlJQ;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v3, v0, v4, p3, v5}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;)V

    .line 348
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const-string v4, "loadSoundModel"

    invoke-static {v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 349
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    return v3
.end method

.method private startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    .locals 4
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .param p3, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p4, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    nop

    .line 395
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertRecognitionConfig_2_3_to_2_0(Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    move-result-object v0

    .line 396
    .local v0, "config_2_0":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$1;)V

    invoke-interface {v1, p1, v0, v2, p4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;I)I

    move-result v1

    .line 398
    .local v1, "retval":I
    const-string v2, "startRecognition"

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 399
    return-void
.end method

.method private startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    .locals 4
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .param p3, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p4, "cookie"    # I

    .line 376
    nop

    .line 377
    :try_start_0
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertRecognitionConfig_2_3_to_2_1(Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    move-result-object v0

    .line 378
    .local v0, "config_2_1":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$1;)V

    invoke-interface {v1, p1, v0, v2, p4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;I)I

    move-result v1

    .line 380
    .local v1, "retval":I
    const-string v2, "startRecognition_2_1"

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v0    # "config_2_1":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;
    .end local v1    # "retval":I
    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    goto :goto_1

    .line 381
    :catch_1
    move-exception v0

    .line 383
    .local v0, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 387
    .end local v0    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :goto_0
    nop

    .line 388
    return-void

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public getModelParameter(II)I
    .locals 4
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 249
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 250
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 252
    .local v1, "value":Ljava/util/concurrent/atomic/AtomicInteger;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$mz3ZN09XJCrlYM4uLTiT43iNlCQ;

    invoke-direct {v3, v0, v1}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$mz3ZN09XJCrlYM4uLTiT43iNlCQ;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->getParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getParameterCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    nop

    .line 262
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v3, "getParameter"

    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 263
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    return v2

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    invoke-virtual {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object v3

    throw v3

    .line 257
    .end local v2    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catch_1
    move-exception v2

    .line 258
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getModelState(I)V
    .locals 2
    .param p1, "modelHandle"    # I

    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_2()Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->getModelState(I)I

    move-result v0

    .line 239
    .local v0, "retval":I
    const-string v1, "getModelState"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "retval":I
    nop

    .line 245
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object v1

    throw v1

    .line 240
    .end local v0    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catch_1
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;
    .locals 4

    .line 117
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 119
    .local v0, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .local v1, "properties":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/hardware/soundtrigger/V2_3/Properties;>;"
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$U-QnBwfU2Eg5ANmLxegcyHjJw1M;

    invoke-direct {v3, v0, v1}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$U-QnBwfU2Eg5ANmLxegcyHjJw1M;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->getProperties_2_3(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getProperties_2_3Callback;)V
    :try_end_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    nop

    .line 131
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v3, "getProperties_2_3"

    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/V2_3/Properties;

    return-object v2

    .line 127
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getProperties_2_0()Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    .line 133
    .end local v0    # "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "properties":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/hardware/soundtrigger/V2_3/Properties;>;"
    .end local v2    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 306
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 5
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I

    .line 167
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 168
    .local v0, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .local v1, "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$1;)V

    new-instance v4, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$ewHo6fX75Dw1073KIePOuh3oLIE;

    invoke-direct {v4, v0, v1}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$ewHo6fX75Dw1073KIePOuh3oLIE;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v2, p1, v3, p3, v4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadPhraseSoundModel_2_1Callback;)V
    :try_end_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    nop

    .line 180
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v3, "loadSoundModel_2_1"

    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 181
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    return v2

    .line 176
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return v3

    .line 182
    .end local v0    # "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v2    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catch_1
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 5
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I

    .line 143
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 144
    .local v0, "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .local v1, "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$1;)V

    new-instance v4, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$-_QZ-VR2645z-GkbokL_T8I__48;

    invoke-direct {v4, v0, v1}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$-_QZ-VR2645z-GkbokL_T8I__48;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v2, p1, v3, p3, v4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadSoundModel_2_1Callback;)V
    :try_end_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    nop

    .line 155
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v3, "loadSoundModel_2_1"

    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    return v2

    .line 151
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return v3

    .line 157
    .end local v0    # "retval":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "handle":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v2    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
    .locals 5
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 281
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 283
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 286
    .local v1, "optionalRange":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;>;"
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$zVVAAwHUfPftj_Egw5y5yBJZXPw;

    invoke-direct {v4, v0, v1}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$zVVAAwHUfPftj_Egw5y5yBJZXPw;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->queryParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$queryParameterCallback;)V
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    nop

    .line 297
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const-string v4, "queryParameter"

    invoke-static {v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->getDiscriminator()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 301
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object v2

    goto :goto_0

    :cond_0
    nop

    .line 298
    :goto_0
    return-object v2

    .line 294
    :catch_0
    move-exception v2

    .line 295
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 291
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 293
    .local v3, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    return-object v2
.end method

.method public setModelParameter(III)V
    .locals 2
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 269
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->setParameter(III)I

    move-result v0

    .line 270
    .local v0, "retval":I
    const-string v1, "setParameter"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v0    # "retval":I
    nop

    .line 276
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object v1

    throw v1

    .line 271
    .end local v0    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :catch_1
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    .locals 2
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .param p3, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p4, "cookie"    # I

    .line 224
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->startRecognition_2_3(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)I

    move-result v0

    .line 225
    .local v0, "retval":I
    const-string v1, "startRecognition_2_3"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0    # "retval":I
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    goto :goto_1

    .line 226
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    .end local v0    # "e":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    :goto_0
    nop

    .line 233
    return-void

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopAllRecognitions()V
    .locals 2

    .line 211
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopAllRecognitions()I

    move-result v0

    .line 212
    .local v0, "retval":I
    const-string v1, "stopAllRecognitions"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v0    # "retval":I
    nop

    .line 216
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopRecognition(I)V
    .locals 2
    .param p1, "modelHandle"    # I

    .line 200
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopRecognition(I)I

    move-result v0

    .line 201
    .local v0, "retval":I
    const-string v1, "stopRecognition"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "retval":I
    nop

    .line 206
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 311
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public unloadSoundModel(I)V
    .locals 2
    .param p1, "modelHandle"    # I

    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->unloadSoundModel(I)I

    move-result v0

    .line 191
    .local v0, "retval":I
    const-string v1, "unloadSoundModel"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0    # "retval":I
    nop

    .line 195
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
