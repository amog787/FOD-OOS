.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/LogicalLight;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private final mDisplayToken:Landroid/os/IBinder;

.field private mFlashing:Z

.field private mHwLight:Landroid/hardware/light/HwLight;

.field private mInitialized:Z

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private final mSurfaceControlMaximumBrightness:I

.field private mUseLowPersistenceForVR:Z

.field private mVrModeEnabled:Z

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "hwLight"    # Landroid/hardware/light/HwLight;

    .line 294
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/LogicalLight;-><init>()V

    .line 295
    iput-object p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 296
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mDisplayToken:Landroid/os/IBinder;

    .line 297
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result p1

    .line 299
    .local p1, "brightnessSupport":Z
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display brightness support: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    const/4 v0, 0x0

    .line 303
    .local v0, "maximumBrightness":I
    if-eqz p1, :cond_1

    .line 304
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 305
    .local v1, "pm":Landroid/os/PowerManager;
    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    .line 309
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_1
    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mSurfaceControlMaximumBrightness:I

    .line 310
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;Lcom/android/server/lights/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/hardware/light/HwLight;
    .param p4, "x3"    # Lcom/android/server/lights/LightsService$1;

    .line 290
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lights/LightsService$LightImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .line 290
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->isSystemLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .line 290
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsService$LightImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .line 290
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->getColor()I

    move-result v0

    return v0
.end method

.method private getColor()I
    .locals 1

    .line 509
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    return v0
.end method

.method private isSystemLight()Z
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v0, v0, Landroid/hardware/light/HwLight;->type:B

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v0, v0, Landroid/hardware/light/HwLight;->type:B

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$0Tv691Vnph8HFbwps7sFDuvrhv0(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private setLightLocked(IIIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 448
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const/4 p5, 0x2

    goto :goto_0

    .line 450
    :cond_0
    const/4 v0, 0x2

    if-ne p5, v0, :cond_1

    .line 451
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 454
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-eq v0, p5, :cond_4

    .line 456
    :cond_2
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLight #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v1, v1, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": color=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": brightnessMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    const-string v1, "LightsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 461
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 462
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 463
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 464
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 465
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 466
    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 467
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightUnchecked(IIIII)V

    .line 469
    :cond_4
    return-void
.end method

.method private setLightUnchecked(IIIII)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLightState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v1, v1, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    new-instance v0, Landroid/hardware/light/HwLightState;

    invoke-direct {v0}, Landroid/hardware/light/HwLightState;-><init>()V

    .line 478
    .local v0, "lightState":Landroid/hardware/light/HwLightState;
    iput p1, v0, Landroid/hardware/light/HwLightState;->color:I

    .line 479
    int-to-byte v3, p2

    iput-byte v3, v0, Landroid/hardware/light/HwLightState;->flashMode:B

    .line 480
    iput p3, v0, Landroid/hardware/light/HwLightState;->flashOnMs:I

    .line 481
    iput p4, v0, Landroid/hardware/light/HwLightState;->flashOffMs:I

    .line 482
    int-to-byte v3, p5

    iput-byte v3, v0, Landroid/hardware/light/HwLightState;->brightnessMode:B

    .line 483
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/light/ILights;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v4, v4, Landroid/hardware/light/HwLight;->id:I

    invoke-interface {v3, v4, v0}, Landroid/hardware/light/ILights;->setLightState(ILandroid/hardware/light/HwLightState;)V

    .line 484
    .end local v0    # "lightState":Landroid/hardware/light/HwLightState;
    goto :goto_0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v3, v0, Landroid/hardware/light/HwLight;->id:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "LightsService"

    const-string v4, "Failed issuing setLightState"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 491
    nop

    .line 492
    return-void

    .line 490
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 491
    throw v0
.end method

.method private shouldBeInLowPersistenceMode()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private stopFlashing()V
    .locals 6

    .line 442
    monitor-enter p0

    .line 443
    :try_start_0
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 444
    monitor-exit p0

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .line 399
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 400
    return-void
.end method

.method public pulse(II)V
    .locals 7
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_0

    .line 406
    const/4 v3, 0x2

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 409
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/lights/-$$Lambda$LightsService$LightImpl$0Tv691Vnph8HFbwps7sFDuvrhv0;

    invoke-direct {v1, p0}, Lcom/android/server/lights/-$$Lambda$LightsService$LightImpl$0Tv691Vnph8HFbwps7sFDuvrhv0;-><init>(Lcom/android/server/lights/LightsService$LightImpl;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    :cond_0
    monitor-exit p0

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightness(F)V
    .locals 1
    .param p1, "brightness"    # F

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(FI)V

    .line 315
    return-void
.end method

.method public setBrightness(FI)V
    .locals 9
    .param p1, "brightness"    # F
    .param p2, "brightnessMode"    # I

    .line 319
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Brightness is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 323
    :cond_0
    monitor-enter p0

    .line 325
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 326
    :try_start_0
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v2, v2, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    monitor-exit p0

    return-void

    .line 380
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 333
    :cond_1
    if-nez p2, :cond_7

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mSurfaceControlMaximumBrightness:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_7

    .line 346
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_4

    .line 347
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 348
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x45fff800    # 8191.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_2
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mDisplayToken:Landroid/os/IBinder;

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    goto/16 :goto_1

    .line 356
    :cond_4
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$600(Lcom/android/server/lights/LightsService;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 358
    :try_start_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 359
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    sub-float v4, p1, v0

    .line 358
    invoke-static {v1, v2, v3, v0, v4}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 360
    .local v0, "brightnessLevel":I
    sget-boolean v1, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 361
    const-string v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set HBM brightness level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_5
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v1

    invoke-interface {v1, v0}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setHbmBrightness(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    .end local v0    # "brightnessLevel":I
    goto :goto_1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "LightsService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 368
    :cond_6
    const-string v0, "LightsService"

    const-string v1, "Invalid brightness value (brightness > 1.0f) !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 374
    :cond_7

    #////////////////////////// amog787 changes @ setBrightness(FI)V
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-nez v1, :cond_8
	sget-object v1, Lcom/android/server/lights/LightsService;->backlightChangeListener:Lcom/android/server/lights/LightsService$OnBacklightChange;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/server/lights/LightsService;->backlightChangeListener:Lcom/android/server/lights/LightsService$OnBacklightChange;
	
    float-to-int v2, p1

    invoke-interface {v1, v2}, Lcom/android/server/lights/LightsService$OnBacklightChange;->onBacklightChange(I)V

    # OLD
    # invoke-interface {v1, p1}, Lcom/android/server/lights/LightsService$OnBacklightChange;->onBacklightChange(I)V

    :cond_8
    #//////////////////////////

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 375
    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 374
    invoke-static {v0, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v0

    .line 376
    .local v0, "brightnessInt":I
    and-int/lit16 v1, v0, 0xff

    .line 377
    .local v1, "color":I
    const/high16 v2, -0x1000000

    shl-int/lit8 v3, v1, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 378
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 380
    .end local v0    # "brightnessInt":I
    .end local v1    # "color":I
    :goto_1
    monitor-exit p0

    .line 381
    return-void

    .line 380
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .line 385
    monitor-enter p0

    .line 386
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 387
    monitor-exit p0

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .line 392
    monitor-enter p0

    .line 393
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 394
    monitor-exit p0

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVrMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 423
    monitor-enter p0

    .line 424
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_1

    .line 425
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    .line 427
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 428
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1100(Lcom/android/server/lights/LightsService;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    .line 429
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 438
    :cond_1
    monitor-exit p0

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOff()V
    .locals 6

    .line 416
    monitor-enter p0

    .line 417
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 418
    monitor-exit p0

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
