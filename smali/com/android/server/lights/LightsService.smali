.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$VintfHalCache;,
        Lcom/android/server/lights/LightsService$LightImpl;,
        Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final IS_SUPPORT_BRIGHTNESS_SMOOTH:Z

.field private static final MAX_BRIGHTNESS_LEVEL_FOR_SOFTIRIS:I = 0x1fff

.field static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mH:Landroid/os/Handler;

.field private mHBMSupport:Z

.field private final mLightsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/lights/LightsService$LightImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

.field final mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

.field private mMaxHBMLevel:I

.field private mMinHBMLevel:I

.field private final mService:Lcom/android/server/lights/LightsManager;

.field private final mVintfLights:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/light/ILights;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    .line 87
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0xeb

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/lights/LightsService;->IS_SUPPORT_BRIGHTNESS_SMOOTH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 538
    new-instance v0, Lcom/android/server/lights/LightsService$VintfHalCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>(Lcom/android/server/lights/LightsService$1;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;)V

    .line 539
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/light/ILights;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 543
    .local p2, "service":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/light/ILights;>;"
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mHBMSupport:Z

    .line 93
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/lights/LightsService;->mMinHBMLevel:I

    .line 94
    iput v1, p0, Lcom/android/server/lights/LightsService;->mMaxHBMLevel:I

    .line 622
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 544
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 545
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 547
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLights(Landroid/content/Context;)V

    .line 548
    new-instance v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    .line 552
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x62

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/lights/LightsService;->mMinHBMLevel:I

    .line 555
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/lights/LightsService;->mMaxHBMLevel:I

    .line 557
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mHBMSupport:Z

    .line 561
    :cond_1
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    goto :goto_1

    .line 562
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mHBMSupport:Z

    .line 564
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LightsService"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 63
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 63
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 63
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->getVrDisplayMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 63
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 63
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/server/lights/LightsService;->IS_SUPPORT_BRIGHTNESS_SMOOTH:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/lights/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mHBMSupport:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 63
    iget v0, p0, Lcom/android/server/lights/LightsService;->mMinHBMLevel:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 63
    iget v0, p0, Lcom/android/server/lights/LightsService;->mMaxHBMLevel:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/lights/LightsService;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 63
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    return-object v0
.end method

.method private getVrDisplayMode()I
    .locals 4

    .line 615
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 616
    .local v0, "currentUser":I
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_display_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method private populateAvailableLights(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 570
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    .line 571
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromAidl(Landroid/content/Context;)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromHidl(Landroid/content/Context;)V

    .line 576
    :goto_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 577
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 578
    .local v1, "type":I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 579
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    aput-object v3, v2, v1

    .line 576
    .end local v1    # "type":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 582
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private populateAvailableLightsFromAidl(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/light/ILights;

    invoke-interface {v0}, Landroid/hardware/light/ILights;->getLights()[Landroid/hardware/light/HwLight;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 587
    .local v3, "hwLight":Landroid/hardware/light/HwLight;
    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    iget v5, v3, Landroid/hardware/light/HwLight;->id:I

    new-instance v6, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v3, v7}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;Lcom/android/server/lights/LightsService$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    .end local v3    # "hwLight":Landroid/hardware/light/HwLight;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 591
    :cond_0
    goto :goto_1

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "LightsService"

    const-string v2, "Unable to get lights from HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private populateAvailableLightsFromHidl(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 595
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 596
    new-instance v1, Landroid/hardware/light/HwLight;

    invoke-direct {v1}, Landroid/hardware/light/HwLight;-><init>()V

    .line 597
    .local v1, "hwLight":Landroid/hardware/light/HwLight;
    int-to-byte v2, v0

    iput v2, v1, Landroid/hardware/light/HwLight;->id:I

    .line 598
    const/4 v2, 0x1

    iput v2, v1, Landroid/hardware/light/HwLight;->ordinal:I

    .line 599
    int-to-byte v2, v0

    iput-byte v2, v1, Landroid/hardware/light/HwLight;->type:B

    .line 600
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    iget v3, v1, Landroid/hardware/light/HwLight;->id:I

    new-instance v4, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v1, v5}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;Lcom/android/server/lights/LightsService$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 595
    .end local v1    # "hwLight":Landroid/hardware/light/HwLight;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static native setLight_native(IIIIII)V
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 0
    .param p1, "phase"    # I

    .line 612
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 606
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    const-string/jumbo v1, "lights"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/lights/LightsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 608
    return-void
.end method
