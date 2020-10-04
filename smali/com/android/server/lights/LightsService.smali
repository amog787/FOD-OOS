.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final FEATURE_EXTREME_ENABLE:Z

.field static final TAG:Ljava/lang/String; = "LightsService"

.field private static mOIMCService:Lcom/oneplus/core/oimc/OIMCServiceManager;


# instance fields
.field flinger:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private mOPColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field private final mService:Lcom/android/server/lights/LightsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    .line 90
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x140

    aput v2, v1, v0

    .line 91
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/lights/LightsService;->FEATURE_EXTREME_ENABLE:Z

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 351
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 70
    const/16 v0, 0x8

    new-array v1, v0, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->flinger:Landroid/os/IBinder;

    .line 395
    new-instance v2, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 406
    new-instance v2, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 354
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 356
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 357
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v4, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v4, p0, p1, v2, v1}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;ILcom/android/server/lights/LightsService$1;)V

    aput-object v4, v3, v2

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Lcom/oneplus/display/IOneplusColorDisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 58
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mOPColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 58
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 58
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->getVrDisplayMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/server/lights/LightsService;->FEATURE_EXTREME_ENABLE:Z

    return v0
.end method

.method static synthetic access$400()Lcom/oneplus/core/oimc/OIMCServiceManager;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/server/lights/LightsService;->mOIMCService:Lcom/oneplus/core/oimc/OIMCServiceManager;

    return-object v0
.end method

.method private getVrDisplayMode()I
    .locals 4

    .line 388
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 389
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

.method static native setLight_native(IIIIII)V
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 370
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 371
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mOPColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 373
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mOPColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-nez v0, :cond_0

    .line 374
    const-string v0, "LightsService"

    const-string v1, "can not get color_display service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 382
    new-instance v0, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {v0}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    sput-object v0, Lcom/android/server/lights/LightsService;->mOIMCService:Lcom/oneplus/core/oimc/OIMCServiceManager;

    .line 385
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 363
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 364
    return-void
.end method
