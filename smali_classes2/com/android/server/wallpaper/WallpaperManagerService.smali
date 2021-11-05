.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Lcom/android/server/wallpaper/IWallpaperManagerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_LIVE:Z = true

.field private static final MAX_BITMAP_SIZE:I = 0x6400000

.field private static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field private static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field static final WALLPAPER_LOCK_ORIG:Ljava/lang/String; = "wallpaper_lock_orig"

.field private static final sPerUserFiles:[Ljava/lang/String;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

.field private final mColorsChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDefaultWallpaperComponent:Landroid/content/ComponentName;

.field private mDisplayDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field protected mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mImageWallpaper:Landroid/content/ComponentName;

.field private mInAmbientMode:Z

.field private mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

.field protected mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field private final mLock:Ljava/lang/Object;

.field private final mLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mShuttingDown:Z

.field private final mUserRestorecon:Landroid/util/SparseBooleanArray;

.field private mWaitingForUnlock:Z

.field private mWallpaperId:I

.field private final mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 204
    const-string v0, "wallpaper_orig"

    const-string v1, "wallpaper"

    const-string v2, "wallpaper_lock_orig"

    const-string v3, "wallpaper_lock"

    const-string v4, "wallpaper_info.xml"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1650
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 810
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 884
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 885
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 887
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    .line 891
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    .line 892
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1652
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 1654
    nop

    .line 1655
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1654
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1656
    invoke-static {p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 1657
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1658
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1659
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1660
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1661
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1662
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 1663
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 1665
    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1666
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeDisplayData(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "x2"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onDisplayReadyInternal(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "x2"    # I

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "x5"    # Landroid/os/IRemoteCallback;

    .line 144
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    return v0
.end method

.method private attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2840
    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$wsERNVuAOCfhSJTreRO95rej5sU;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$wsERNVuAOCfhSJTreRO95rej5sU;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2841
    return-void
.end method

.method private bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 19
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .line 2658
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2662
    return v0

    .line 2666
    :cond_0
    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 2667
    :try_start_0
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 2668
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 2670
    :try_start_1
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v6

    .line 2673
    const-string v6, "No default component; using image wallpaper"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2796
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p1    # "componentName":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    move-object/from16 v5, p5

    goto/16 :goto_3

    .line 2676
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    iget v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 2677
    .local v6, "serviceUserId":I
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v8, 0x1080

    invoke-interface {v7, v2, v8, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 2679
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    if-nez v7, :cond_2

    .line 2681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted wallpaper "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is unavailable"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    return v5

    .line 2684
    :cond_2
    const-string v8, "android.permission.BIND_WALLPAPER"

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected service does not have android.permission.BIND_WALLPAPER: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2688
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_3

    .line 2691
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    return v5

    .line 2689
    :cond_3
    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v8

    .line 2695
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_4
    const/4 v8, 0x0

    .line 2697
    .local v8, "wi":Landroid/app/WallpaperInfo;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.wallpaper.WallpaperService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2698
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_a

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 2700
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 2702
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    .line 2701
    invoke-interface {v10, v9, v11, v12, v6}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    .line 2703
    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    .line 2704
    .local v10, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_8

    .line 2705
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2706
    .local v12, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2707
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v13, :cond_7

    .line 2709
    :try_start_2
    new-instance v13, Landroid/app/WallpaperInfo;

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    invoke-direct {v13, v14, v15}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v8, v13

    .line 2722
    goto :goto_2

    .line 2716
    :catch_1
    move-exception v0

    .line 2717
    .local v0, "e":Ljava/io/IOException;
    if-nez p3, :cond_5

    .line 2720
    :try_start_3
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2721
    return v5

    .line 2718
    :cond_5
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v13

    .line 2710
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :catch_2
    move-exception v0

    .line 2711
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez p3, :cond_6

    .line 2714
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2715
    return v5

    .line 2712
    :cond_6
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v13

    .line 2704
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v12    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2726
    .end local v11    # "i":I
    :cond_8
    :goto_2
    if-nez v8, :cond_a

    .line 2727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected service is not a wallpaper: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2729
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_9

    .line 2732
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    return v5

    .line 2730
    :cond_9
    new-instance v11, Ljava/lang/SecurityException;

    invoke-direct {v11, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v11

    .line 2737
    .end local v0    # "msg":Ljava/lang/String;
    .end local v10    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_a
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2738
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v11, "android.permission.AMBIENT_WALLPAPER"

    .line 2739
    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2738
    invoke-interface {v10, v11, v12, v6}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 2741
    .local v10, "hasPrivilege":I
    if-eqz v10, :cond_c

    .line 2742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected service does not have android.permission.AMBIENT_WALLPAPER: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2745
    .restart local v0    # "msg":Ljava/lang/String;
    if-nez p3, :cond_b

    .line 2748
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    return v5

    .line 2746
    :cond_b
    new-instance v11, Ljava/lang/SecurityException;

    invoke-direct {v11, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v11

    .line 2755
    .end local v0    # "msg":Ljava/lang/String;
    .end local v10    # "hasPrivilege":I
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_c
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x10000000

    iget v13, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v10, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v10

    .line 2757
    .local v10, "componentUid":I
    new-instance v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {v11, v1, v8, v3, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2758
    .local v11, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2759
    const-string v12, "android.intent.extra.client_label"

    const v13, 0x1040832

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2761
    const-string v12, "android.intent.extra.client_intent"

    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10401c0

    .line 2764
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2763
    invoke-static {v15, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    const/high16 v16, 0x4000000

    const/16 v17, 0x0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2761
    move-object/from16 v18, v0

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2766
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v5, 0x22001001

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v9, v11, v5, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2773
    .restart local v0    # "msg":Ljava/lang/String;
    if-nez p3, :cond_d

    .line 2776
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    const/4 v4, 0x0

    return v4

    .line 2774
    :cond_d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v5

    .line 2782
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_e
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OpStartAppControlInjector;->setCurrentWallpaper(Ljava/lang/String;)V

    .line 2785
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v5, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2786
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2787
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2789
    :cond_f
    iput-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2790
    iput-object v11, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2791
    move-object/from16 v5, p5

    :try_start_4
    iput-object v5, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 2792
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v12, :cond_10

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2793
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2795
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateFallbackConnection()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2803
    .end local v6    # "serviceUserId":I
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "wi":Landroid/app/WallpaperInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "componentUid":I
    .end local v11    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    nop

    .line 2804
    const/4 v0, 0x1

    return v0

    .line 2796
    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v5, p5

    .line 2797
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2798
    .local v6, "msg":Ljava/lang/String;
    if-nez p3, :cond_11

    .line 2801
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    const/4 v4, 0x0

    return v4

    .line 2799
    :cond_11
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2639
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_1

    .line 2640
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2641
    if-nez p1, :cond_1

    .line 2644
    return v1

    .line 2646
    :cond_0
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2649
    return v1

    .line 2652
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 2861
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2865
    return-void

    .line 2862
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2835
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2836
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2837
    return-void
.end method

.method private detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2808
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2

    .line 2809
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2811
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2813
    goto :goto_0

    .line 2812
    :catch_0
    move-exception v0

    .line 2814
    :goto_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 2818
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v0, :cond_1

    .line 2819
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperService;->detach()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2823
    :cond_1
    goto :goto_1

    .line 2821
    :catch_1
    move-exception v0

    .line 2822
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed detaching wallpaper service "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2824
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2825
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    sget-object v2, Lcom/android/server/wallpaper/-$$Lambda$havGP5uMdRgWQrLydPeIOu1qDGE;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$havGP5uMdRgWQrLydPeIOu1qDGE;

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2827
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 2828
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1300(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2829
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2830
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-ne p1, v0, :cond_2

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2832
    :cond_2
    return-void
.end method

.method private static emptyCallbackList(Landroid/os/RemoteCallbackList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 431
    .local p0, "list":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TT;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3245
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 3246
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gez v0, :cond_1

    .line 3247
    :cond_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3249
    :cond_1
    return-void
.end method

.method private ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V
    .locals 2
    .param p1, "wpdData"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .param p2, "displayId"    # I

    .line 1008
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension(I)I

    move-result v0

    .line 1009
    .local v0, "baseSize":I
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ge v1, v0, :cond_0

    .line 1010
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 1012
    :cond_0
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-ge v1, v0, :cond_1

    .line 1013
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 1015
    :cond_1
    return-void
.end method

.method private extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, "cropFile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 493
    .local v1, "defaultImageWallpaper":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 495
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v3, :cond_0

    monitor-exit v2

    return-void

    .line 496
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 497
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;

    move-result-object v3

    .line 498
    .local v3, "colors":Landroid/app/WallpaperColors;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 499
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 500
    monitor-exit v4

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 496
    .end local v3    # "colors":Landroid/app/WallpaperColors;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 504
    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 506
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 508
    .local v3, "imageWallpaper":Z
    :goto_1
    if-eqz v3, :cond_4

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 509
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_2

    .line 510
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 511
    const/4 v1, 0x1

    .line 513
    :cond_5
    :goto_2
    iget v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    move v3, v4

    .line 514
    .local v3, "wallpaperId":I
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 516
    const/4 v2, 0x0

    .line 517
    .local v2, "colors":Landroid/app/WallpaperColors;
    if-eqz v0, :cond_6

    .line 518
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 519
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_7

    .line 520
    invoke-static {v4}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v2

    .line 521
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 523
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    if-eqz v1, :cond_7

    .line 525
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;

    move-result-object v2

    move-object v4, v2

    goto :goto_4

    .line 523
    :cond_7
    :goto_3
    move-object v4, v2

    .line 528
    .end local v2    # "colors":Landroid/app/WallpaperColors;
    .local v4, "colors":Landroid/app/WallpaperColors;
    :goto_4
    if-nez v4, :cond_8

    .line 529
    const-string v2, "WallpaperManagerService"

    const-string v5, "Cannot extract colors because wallpaper could not be read."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 533
    :cond_8
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 534
    :try_start_4
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-ne v2, v3, :cond_9

    .line 535
    iput-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 538
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    goto :goto_5

    .line 540
    :cond_9
    const-string v2, "WallpaperManagerService"

    const-string v6, "Not setting primary colors since wallpaper changed"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_5
    monitor-exit v5

    .line 543
    return-void

    .line 542
    :catchall_2
    move-exception v2

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 514
    .end local v3    # "wallpaperId":I
    .end local v4    # "colors":Landroid/app/WallpaperColors;
    :catchall_3
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3
.end method

.method private extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;
    .locals 5

    .line 548
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    monitor-exit v0

    return-object v1

    .line 550
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "colors":Landroid/app/WallpaperColors;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 554
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 555
    :try_start_2
    const-string v3, "WallpaperManagerService"

    const-string v4, "Can\'t open default wallpaper stream"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    nop

    .line 565
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 556
    :cond_1
    return-object v2

    .line 559
    :cond_2
    :try_start_4
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 560
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 561
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 562
    invoke-static {v2}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v4

    move-object v0, v4

    .line 563
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 565
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 553
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "colors":Landroid/app/WallpaperColors;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_4
    :goto_0
    throw v2
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 567
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "colors":Landroid/app/WallpaperColors;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Can\'t close default wallpaper stream"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_2

    .line 565
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 566
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Can\'t decode default wallpaper stream"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_5
    :goto_1
    move-object v1, v0

    .line 571
    .end local v0    # "colors":Landroid/app/WallpaperColors;
    .local v1, "colors":Landroid/app/WallpaperColors;
    :goto_2
    if-nez v1, :cond_6

    .line 572
    const-string v0, "WallpaperManagerService"

    const-string v2, "Extract default image wallpaper colors failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 574
    :cond_6
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 575
    :try_start_8
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    .line 576
    monitor-exit v2

    .line 579
    :goto_3
    return-object v1

    .line 576
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 550
    .end local v1    # "colors":Landroid/app/WallpaperColors;
    :catchall_3
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1
.end method

.method private findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "displayId"    # I

    .line 2417
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2418
    invoke-virtual {v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0

    .line 2421
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0
.end method

.method private generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 24
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 587
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 590
    .local v3, "success":Z
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    .line 591
    .local v4, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 592
    .local v5, "cropHint":Landroid/graphics/Rect;
    new-instance v6, Landroid/view/DisplayInfo;

    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 593
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 604
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 605
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 606
    iget-object v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 607
    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const-string v10, "WallpaperManagerService"

    if-lez v9, :cond_12

    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v9, :cond_0

    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    goto/16 :goto_c

    .line 611
    :cond_0
    const/4 v9, 0x0

    .line 612
    .local v9, "needCrop":Z
    const/4 v11, 0x0

    .line 615
    .local v11, "needScale":Z
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 616
    iput v0, v5, Landroid/graphics/Rect;->top:I

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 617
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v12, v5, Landroid/graphics/Rect;->right:I

    .line 618
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v12, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 621
    :cond_1
    nop

    .line 622
    iget v12, v5, Landroid/graphics/Rect;->right:I

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v12, v13, :cond_2

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    goto :goto_0

    :cond_2
    move v12, v0

    .line 623
    :goto_0
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v13, v14, :cond_3

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    goto :goto_1

    :cond_3
    move v13, v0

    .line 621
    :goto_1
    invoke-virtual {v5, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 626
    iget v12, v5, Landroid/graphics/Rect;->left:I

    if-gez v12, :cond_4

    .line 627
    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 629
    :cond_4
    iget v12, v5, Landroid/graphics/Rect;->top:I

    if-gez v12, :cond_5

    .line 630
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 634
    :cond_5
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-gt v12, v13, :cond_7

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 635
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v12, v13, :cond_6

    goto :goto_2

    :cond_6
    move v12, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v12, v8

    :goto_3
    move v9, v12

    .line 639
    :goto_4
    iget v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-ne v12, v13, :cond_9

    .line 640
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v13

    if-gt v12, v13, :cond_9

    .line 641
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v13

    if-le v12, v13, :cond_8

    goto :goto_5

    :cond_8
    move v12, v0

    goto :goto_6

    :cond_9
    :goto_5
    move v12, v8

    :goto_6
    move v11, v12

    .line 644
    if-eqz v11, :cond_a

    .line 645
    iget v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v12, v12

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 646
    .local v12, "scaleByHeight":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v13, v13

    .line 647
    .local v13, "newWidth":I
    iget v14, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ge v13, v14, :cond_a

    .line 648
    iget v14, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v14, v14

    iget v15, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 650
    .local v14, "screenAspectRatio":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v15, v15

    iput v15, v5, Landroid/graphics/Rect;->bottom:I

    .line 651
    const/4 v9, 0x1

    .line 662
    .end local v12    # "scaleByHeight":F
    .end local v13    # "newWidth":I
    .end local v14    # "screenAspectRatio":F
    :cond_a
    if-nez v9, :cond_d

    if-nez v11, :cond_d

    .line 671
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0x4

    int-to-long v12, v0

    .line 675
    .local v12, "estimateSize":J
    const-wide/32 v14, 0x6400000

    cmp-long v0, v12, v14

    if-gez v0, :cond_b

    .line 676
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    iget-object v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-static {v0, v8}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    .line 679
    :cond_b
    if-nez v3, :cond_c

    .line 680
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 688
    .end local v12    # "estimateSize":J
    :cond_c
    move-object/from16 v22, v4

    move-object/from16 v20, v6

    goto/16 :goto_d

    .line 690
    :cond_d
    const/4 v12, 0x0

    .line 691
    .local v12, "f":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 693
    .local v13, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    iget-object v14, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 694
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 693
    invoke-static {v14, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v14

    .line 701
    .local v14, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    div-int/2addr v15, v8

    move v8, v15

    .line 702
    .local v8, "actualScale":I
    const/4 v15, 0x1

    .line 703
    .local v15, "scale":I
    :goto_7
    mul-int/lit8 v0, v15, 0x2

    if-gt v0, v8, :cond_e

    .line 704
    mul-int/lit8 v15, v15, 0x2

    const/4 v0, 0x0

    goto :goto_7

    .line 706
    :cond_e
    iput v15, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 707
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 709
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 710
    .local v0, "estimateCrop":Landroid/graphics/Rect;
    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v1, v1

    const/high16 v17, 0x3f800000    # 1.0f

    div-float v1, v17, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 711
    iget v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    int-to-float v1, v1

    move/from16 v18, v3

    .end local v3    # "success":Z
    .local v18, "success":Z
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 712
    .local v1, "hRatio":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 713
    .local v3, "destHeight":I
    move/from16 v19, v3

    .end local v3    # "destHeight":I
    .local v19, "destHeight":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 716
    .local v3, "destWidth":I
    move-object/from16 v20, v6

    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .local v20, "displayInfo":Landroid/view/DisplayInfo;
    :try_start_2
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v6

    if-le v3, v6, :cond_f

    .line 717
    iget v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 718
    .local v6, "newHeight":I
    move/from16 v21, v3

    .end local v3    # "destWidth":I
    .local v21, "destWidth":I
    iget v3, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    .line 724
    .local v3, "newWidth":I
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 725
    move-object/from16 v22, v4

    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v22, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :try_start_3
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v23

    sub-int v23, v23, v3

    div-int/lit8 v23, v23, 0x2

    add-int v4, v4, v23

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 726
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v23

    sub-int v23, v23, v6

    div-int/lit8 v23, v23, 0x2

    add-int v4, v4, v23

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 727
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 728
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 729
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 730
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v4, v4

    div-float v4, v17, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->scale(F)V

    goto :goto_8

    .line 716
    .end local v6    # "newHeight":I
    .end local v21    # "destWidth":I
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v3, "destWidth":I
    .restart local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :cond_f
    move/from16 v21, v3

    move-object/from16 v22, v4

    .line 736
    .end local v3    # "destWidth":I
    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v21    # "destWidth":I
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_8
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 737
    .local v3, "safeHeight":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 749
    .local v4, "safeWidth":I
    invoke-virtual {v14, v5, v7}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 750
    .local v6, "cropped":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 752
    if-nez v6, :cond_10

    .line 753
    move-object/from16 v17, v0

    .end local v0    # "estimateCrop":Landroid/graphics/Rect;
    .local v17, "estimateCrop":Landroid/graphics/Rect;
    const-string v0, "Could not decode new wallpaper"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v18

    goto :goto_9

    .line 756
    .end local v17    # "estimateCrop":Landroid/graphics/Rect;
    .restart local v0    # "estimateCrop":Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v17, v0

    .end local v0    # "estimateCrop":Landroid/graphics/Rect;
    .restart local v17    # "estimateCrop":Landroid/graphics/Rect;
    const/4 v0, 0x1

    invoke-static {v6, v4, v3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 768
    .local v0, "finalCrop":Landroid/graphics/Bitmap;
    move/from16 v16, v1

    .end local v1    # "hRatio":F
    .local v16, "hRatio":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    move/from16 v23, v3

    .end local v3    # "safeHeight":I
    .local v23, "safeHeight":I
    const/high16 v3, 0x6400000

    if-gt v1, v3, :cond_11

    .line 773
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v12, v1

    .line 774
    new-instance v1, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v1, v12, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v13, v1

    .line 775
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 776
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    const/4 v3, 0x1

    .line 784
    .end local v0    # "finalCrop":Landroid/graphics/Bitmap;
    .end local v4    # "safeWidth":I
    .end local v6    # "cropped":Landroid/graphics/Bitmap;
    .end local v8    # "actualScale":I
    .end local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v15    # "scale":I
    .end local v16    # "hRatio":F
    .end local v17    # "estimateCrop":Landroid/graphics/Rect;
    .end local v18    # "success":Z
    .end local v19    # "destHeight":I
    .end local v21    # "destWidth":I
    .end local v23    # "safeHeight":I
    .local v3, "success":Z
    :goto_9
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 785
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 786
    goto :goto_d

    .line 769
    .end local v3    # "success":Z
    .restart local v0    # "finalCrop":Landroid/graphics/Bitmap;
    .restart local v4    # "safeWidth":I
    .restart local v6    # "cropped":Landroid/graphics/Bitmap;
    .restart local v8    # "actualScale":I
    .restart local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v15    # "scale":I
    .restart local v16    # "hRatio":F
    .restart local v17    # "estimateCrop":Landroid/graphics/Rect;
    .restart local v18    # "success":Z
    .restart local v19    # "destHeight":I
    .restart local v21    # "destWidth":I
    .restart local v23    # "safeHeight":I
    :cond_11
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Too large bitmap, limit=104857600"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v5    # "cropHint":Landroid/graphics/Rect;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "needCrop":Z
    .end local v11    # "needScale":Z
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .end local v18    # "success":Z
    .end local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 784
    .end local v0    # "finalCrop":Landroid/graphics/Bitmap;
    .end local v4    # "safeWidth":I
    .end local v6    # "cropped":Landroid/graphics/Bitmap;
    .end local v8    # "actualScale":I
    .end local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v15    # "scale":I
    .end local v16    # "hRatio":F
    .end local v17    # "estimateCrop":Landroid/graphics/Rect;
    .end local v19    # "destHeight":I
    .end local v21    # "destWidth":I
    .end local v23    # "safeHeight":I
    .restart local v5    # "cropHint":Landroid/graphics/Rect;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v9    # "needCrop":Z
    .restart local v11    # "needScale":Z
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "success":Z
    .restart local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v0

    goto :goto_a

    .line 779
    :catch_0
    move-exception v0

    goto :goto_b

    .line 784
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v4, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v4

    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_a

    .line 779
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catch_1
    move-exception v0

    move-object/from16 v22, v4

    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_b

    .line 784
    .end local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    :catchall_2
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_a

    .line 779
    .end local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :catch_2
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_b

    .line 784
    .end local v18    # "success":Z
    .end local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v3    # "success":Z
    .restart local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :catchall_3
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    .end local v3    # "success":Z
    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v18    # "success":Z
    .restart local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_a
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 785
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 786
    throw v0

    .line 779
    .end local v18    # "success":Z
    .end local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v3    # "success":Z
    .restart local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :catch_3
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    .line 784
    .end local v3    # "success":Z
    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v18    # "success":Z
    .restart local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_b
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 785
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 786
    move/from16 v3, v18

    goto :goto_d

    .line 607
    .end local v9    # "needCrop":Z
    .end local v11    # "needScale":Z
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .end local v18    # "success":Z
    .end local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v3    # "success":Z
    .restart local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_12
    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    .line 608
    .end local v3    # "success":Z
    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v18    # "success":Z
    .restart local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_c
    const-string v0, "Invalid wallpaper data"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v3, 0x0

    .line 790
    .end local v18    # "success":Z
    .restart local v3    # "success":Z
    :goto_d
    if-nez v3, :cond_13

    .line 791
    const-string v0, "Unable to apply new wallpaper"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 795
    :cond_13
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 796
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 801
    :cond_14
    return-void
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .line 3066
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3067
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3068
    return p3

    .line 3070
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .locals 2
    .param p1, "displayId"    # I

    .line 997
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 998
    .local v0, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-nez v0, :cond_0

    .line 999
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    invoke-direct {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;-><init>(I)V

    move-object v0, v1

    .line 1000
    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 1001
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1003
    :cond_0
    return-object v0
.end method

.method private getMaximumSizeDimension(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 1018
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1019
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1023
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    return v1
.end method

.method private getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 386
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 387
    .local v1, "displayListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 390
    :cond_0
    return-object v0
.end method

.method private getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 3090
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 3091
    .local v1, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3092
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_2

    .line 3095
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3096
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3100
    if-nez v2, :cond_2

    .line 3101
    if-ne p2, v0, :cond_1

    .line 3102
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper_lock_orig"

    const-string v5, "wallpaper_lock"

    invoke-direct {v0, p1, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 3104
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3105
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_1

    .line 3109
    :cond_1
    const-string v0, "WallpaperManagerService"

    const-string v3, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper_orig"

    const-string v5, "wallpaper"

    invoke-direct {v0, p1, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 3112
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3113
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3117
    :cond_2
    :goto_1
    return-object v2
.end method

.method private initializeFallbackWallpaper()V
    .locals 9

    .line 3232
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v0, :cond_0

    .line 3234
    const/4 v0, 0x0

    .line 3235
    .local v0, "systemUserId":I
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper_orig"

    const-string v5, "wallpaper"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3237
    iput-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3238
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3239
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3241
    .end local v0    # "systemUserId":I
    :cond_0
    return-void
.end method

.method private isValidDisplay(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 2073
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$attachServiceLocked$8(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 0
    .param p0, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 2840
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic lambda$dump$10(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 3470
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3471
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3472
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3473
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3474
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3475
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3476
    return-void
.end method

.method static synthetic lambda$dump$11(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 3508
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3509
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3510
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3511
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3512
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3513
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3514
    return-void
.end method

.method static synthetic lambda$dump$9(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "wpSize"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 3448
    const-string v0, "  displayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3449
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3450
    const-string v0, "  mWidth="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3451
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3452
    const-string v0, "  mHeight="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3453
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3454
    const-string v0, "  mPadding="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3455
    return-void
.end method

.method static synthetic lambda$setWallpaperComponent$7(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 7
    .param p0, "displayConnector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 2613
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 2614
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const-string v2, "android.wallpaper.reapply"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2619
    :cond_0
    goto :goto_0

    .line 2617
    :catch_0
    move-exception v0

    .line 2618
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Error sending apply message to wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2620
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1
    .param p0, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1059
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->disconnectLocked()V

    .line 1062
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .locals 1
    .param p0, "fallbackConnection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "display"    # Landroid/view/Display;

    .line 1067
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isUsableDisplay(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1067
    :goto_0
    return v0
.end method

.method private loadSettingsLocked(IZ)V
    .locals 19
    .param p1, "userId"    # I
    .param p2, "keepDimensionHints"    # Z

    .line 3121
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, " "

    const-string v4, "failed parsing "

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    .line 3122
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v6, 0x0

    .line 3123
    .local v6, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 3125
    .local v7, "file":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3126
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v8, 0x1

    const-string v9, "WallpaperManagerService"

    if-nez v0, :cond_2

    .line 3128
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 3130
    new-instance v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v11

    const-string v12, "wallpaper_orig"

    const-string v13, "wallpaper"

    invoke-direct {v10, v2, v11, v12, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 3132
    iput-boolean v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3133
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3134
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3135
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3136
    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_0

    .line 3138
    :cond_0
    const-string v10, "No static wallpaper imagery; defaults will be shown"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeFallbackWallpaper()V

    move-object v10, v0

    goto :goto_1

    .line 3126
    :cond_2
    move-object v10, v0

    .line 3143
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v10, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_1
    const/4 v11, 0x0

    .line 3144
    .local v11, "success":Z
    const/4 v12, 0x0

    invoke-direct {v1, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v13

    .line 3146
    .local v13, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_18

    move-object v6, v0

    .line 3147
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 3148
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3152
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 3153
    .local v14, "type":I
    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    .line 3154
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 3155
    .local v15, "tag":Ljava/lang/String;
    const-string v8, "wp"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3157
    move/from16 v8, p2

    invoke-direct {v1, v0, v10, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 3160
    const-string v12, "component"
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_12

    move-object/from16 v16, v5

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v16, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v0, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6

    .line 3161
    .local v12, "comp":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 3162
    :try_start_3
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 3202
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "comp":Ljava/lang/String;
    .end local v14    # "type":I
    .end local v15    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 3200
    :catch_1
    move-exception v0

    goto/16 :goto_9

    .line 3198
    :catch_2
    move-exception v0

    goto/16 :goto_a

    .line 3196
    :catch_3
    move-exception v0

    goto/16 :goto_b

    .line 3194
    :catch_4
    move-exception v0

    goto/16 :goto_c

    .line 3192
    :catch_5
    move-exception v0

    goto/16 :goto_d

    .line 3163
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "comp":Ljava/lang/String;
    .restart local v14    # "type":I
    .restart local v15    # "tag":Ljava/lang/String;
    :cond_3
    nop

    :goto_3
    :try_start_4
    iput-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 3164
    iget-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_4

    const-string v5, "android"
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v17, "stream":Ljava/io/FileInputStream;
    :try_start_5
    iget-object v6, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 3166
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3165
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 3164
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :cond_4
    move-object/from16 v17, v6

    .line 3167
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    :goto_4
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_6

    .line 3202
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "comp":Ljava/lang/String;
    .end local v14    # "type":I
    .end local v15    # "tag":Ljava/lang/String;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 3200
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 3198
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .line 3196
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 3194
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_c

    .line 3192
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_d

    .line 3179
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "type":I
    .restart local v15    # "tag":Ljava/lang/String;
    :cond_5
    move/from16 v8, p2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    const-string v5, "kwp"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3181
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3182
    .local v5, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_6

    .line 3183
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v12

    move-object/from16 v18, v5

    .end local v5    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v18, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v5, "wallpaper_lock_orig"

    const-string v8, "wallpaper_lock"

    invoke-direct {v6, v2, v12, v5, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 3185
    .end local v18    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v5    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 3182
    :cond_6
    move-object/from16 v18, v5

    .line 3187
    :goto_5
    const/4 v6, 0x0

    invoke-direct {v1, v0, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_c

    goto :goto_7

    .line 3179
    .end local v5    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_7
    :goto_6
    goto :goto_7

    .line 3202
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    .end local v15    # "tag":Ljava/lang/String;
    :catch_c
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_8

    .line 3200
    :catch_d
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_9

    .line 3198
    :catch_e
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_a

    .line 3196
    :catch_f
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_b

    .line 3194
    :catch_10
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_c

    .line 3192
    :catch_11
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_d

    .line 3153
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "type":I
    :cond_8
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 3190
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    :goto_7
    const/4 v5, 0x1

    if-ne v14, v5, :cond_9

    .line 3191
    const/4 v11, 0x1

    .line 3204
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    move-object/from16 v6, v17

    goto/16 :goto_f

    .line 3190
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "type":I
    :cond_9
    move v8, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 3202
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_12
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_8

    .line 3200
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_13
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_9

    .line 3198
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_14
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_a

    .line 3196
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_15
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_b

    .line 3194
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_16
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_c

    .line 3192
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_17
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_d

    .line 3202
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_18
    move-exception v0

    move-object/from16 v16, v5

    .line 3203
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 3200
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_19
    move-exception v0

    move-object/from16 v16, v5

    .line 3201
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_e

    .line 3198
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_1a
    move-exception v0

    move-object/from16 v16, v5

    .line 3199
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_e

    .line 3196
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_1b
    move-exception v0

    move-object/from16 v16, v5

    .line 3197
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_e

    .line 3194
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_1c
    move-exception v0

    move-object/from16 v16, v5

    .line 3195
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_e

    .line 3192
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_1d
    move-exception v0

    move-object/from16 v16, v5

    .line 3193
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_d
    const-string v3, "no current wallpaper -- first boot?"

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_e
    nop

    .line 3205
    :goto_f
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3207
    if-nez v11, :cond_a

    .line 3208
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3209
    iget-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3210
    const-string v0, ""

    iput-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3212
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_10

    .line 3214
    :cond_a
    iget v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-gtz v0, :cond_b

    .line 3215
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3223
    :cond_b
    :goto_10
    const/4 v3, 0x0

    invoke-direct {v1, v13, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 3224
    invoke-direct {v1, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3225
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3226
    .local v0, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_c

    .line 3227
    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3229
    :cond_c
    return-void
.end method

.method private makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p1, "userId"    # I

    .line 2938
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "wallpaper_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2939
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .locals 7

    .line 3034
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "wallpaper"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3036
    .local v0, "preNWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3037
    .local v2, "originalWallpaper":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper_orig"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3040
    .local v3, "newWallpaper":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3041
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3047
    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    .line 3049
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3054
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/wallpaper_info.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3055
    .local v4, "oldInfo":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3056
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string v6, "wallpaper_info.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v5

    .line 3057
    .local v1, "newInfo":Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3060
    .end local v1    # "newInfo":Ljava/io/File;
    :cond_1
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 3061
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3063
    .end local v4    # "oldInfo":Ljava/io/File;
    :cond_2
    :goto_0
    return-void
.end method

.method private migrateSystemToLockWallpaperLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 2487
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2488
    .local v0, "sysWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 2492
    return-void

    .line 2496
    :cond_0
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "wallpaper_lock_orig"

    const-string v4, "wallpaper_lock"

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    .local v1, "lockWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2499
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2500
    iget-boolean v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iput-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2501
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2505
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2512
    nop

    .line 2514
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2515
    return-void

    .line 2507
    :catch_0
    move-exception v2

    .line 2508
    .local v2, "e":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t migrate system wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2510
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2511
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2844
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3000(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2845
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2847
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3000(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2852
    goto :goto_1

    .line 2848
    :catch_0
    move-exception v2

    .line 2845
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2854
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3000(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2856
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2857
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2858
    return-void
.end method

.method private notifyColorListeners(Landroid/app/WallpaperColors;III)V
    .locals 8
    .param p1, "wallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v0, "colorListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    nop

    .line 440
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 441
    .local v2, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    const/4 v3, -0x1

    .line 442
    invoke-direct {p0, v3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v3

    .line 443
    .local v3, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 445
    .local v4, "keyguardListener":Landroid/app/IWallpaperManagerCallback;
    if-eqz v2, :cond_1

    .line 446
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 447
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 448
    invoke-virtual {v2, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 450
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 453
    .end local v5    # "count":I
    :cond_1
    if-eqz v3, :cond_3

    .line 454
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 455
    .restart local v5    # "count":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 456
    invoke-virtual {v3, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 458
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 460
    .end local v2    # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v3    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v5    # "count":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 463
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 465
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 469
    goto :goto_3

    .line 466
    :catch_0
    move-exception v3

    .line 463
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 473
    .end local v2    # "i":I
    :cond_4
    if-eqz v4, :cond_5

    if-nez p4, :cond_5

    .line 475
    :try_start_2
    invoke-interface {v4, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 478
    goto :goto_4

    .line 476
    :catch_1
    move-exception v2

    .line 480
    :cond_5
    :goto_4
    return-void

    .line 460
    .end local v1    # "count":I
    .end local v4    # "keyguardListener":Landroid/app/IWallpaperManagerCallback;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private notifyLockWallpaperChanged()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 363
    .local v0, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v0, :cond_0

    .line 365
    :try_start_0
    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    .line 370
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"    # I

    .line 373
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v1, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$la7x4YHA-l88Cd6HFTscnLBbKfI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$la7x4YHA-l88Cd6HFTscnLBbKfI;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 378
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 380
    :goto_0
    return-void
.end method

.method private notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"    # I
    .param p3, "displayId"    # I

    .line 396
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_0
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 398
    invoke-direct {p0, v1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 399
    .local v1, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    const/4 v2, -0x1

    .line 400
    invoke-direct {p0, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 402
    .local v2, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    monitor-exit v0

    return-void

    .line 411
    :cond_0
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 412
    .end local v2    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .local v1, "needsExtraction":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 416
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    .line 418
    if-eqz v1, :cond_3

    .line 419
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 420
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_1
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v2, :cond_2

    .line 423
    monitor-exit v0

    return-void

    .line 425
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    goto :goto_1

    .line 425
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 428
    :cond_3
    :goto_1
    return-void

    .line 412
    .end local v1    # "needsExtraction":Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private onDisplayReadyInternal(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 2913
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2914
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_0

    .line 2915
    monitor-exit v0

    return-void

    .line 2917
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2918
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2919
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1

    .line 2920
    .local v1, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 2921
    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2922
    monitor-exit v0

    return-void

    .line 2926
    .end local v1    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_4

    .line 2927
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2928
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1

    .line 2929
    .restart local v1    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    .line 2930
    :cond_3
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2931
    .end local v1    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    goto :goto_0

    .line 2932
    :cond_4
    const-string v1, "WallpaperManagerService"

    const-string v2, "No wallpaper can be added to the new display"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    :goto_0
    monitor-exit v0

    .line 2935
    return-void

    .line 2934
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "keepDimensionHints"    # Z

    .line 3253
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3254
    .local v1, "idString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3255
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3256
    .local v2, "id":I
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-le v2, v3, :cond_0

    .line 3257
    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 3259
    .end local v2    # "id":I
    :cond_0
    goto :goto_0

    .line 3260
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3263
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v3

    .line 3265
    .local v3, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-nez p3, :cond_2

    .line 3266
    const-string v4, "width"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 3267
    const-string v4, "height"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 3269
    :cond_2
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropLeft"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3270
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropTop"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3271
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropRight"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3272
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropBottom"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3273
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string v5, "paddingLeft"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3274
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string v5, "paddingTop"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3275
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string v5, "paddingRight"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3276
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string v5, "paddingBottom"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3277
    const-string v4, "colorsCount"

    invoke-direct {p0, p1, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 3278
    .local v4, "colorsCount":I
    if-lez v4, :cond_6

    .line 3279
    const/4 v5, 0x0

    .local v5, "primary":Landroid/graphics/Color;
    const/4 v6, 0x0

    .local v6, "secondary":Landroid/graphics/Color;
    const/4 v7, 0x0

    .line 3280
    .local v7, "tertiary":Landroid/graphics/Color;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_5

    .line 3281
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "colorValue"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v9

    .line 3282
    .local v9, "color":Landroid/graphics/Color;
    if-nez v8, :cond_3

    .line 3283
    move-object v5, v9

    goto :goto_2

    .line 3284
    :cond_3
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    .line 3285
    move-object v6, v9

    goto :goto_2

    .line 3286
    :cond_4
    const/4 v10, 0x2

    if-ne v8, v10, :cond_5

    .line 3287
    move-object v7, v9

    .line 3280
    .end local v9    # "color":Landroid/graphics/Color;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3292
    .end local v8    # "i":I
    :cond_5
    const-string v8, "colorHints"

    invoke-direct {p0, p1, v8, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 3293
    .local v2, "colorHints":I
    new-instance v8, Landroid/app/WallpaperColors;

    invoke-direct {v8, v5, v6, v7, v2}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    iput-object v8, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3295
    .end local v2    # "colorHints":I
    .end local v5    # "primary":Landroid/graphics/Color;
    .end local v6    # "secondary":Landroid/graphics/Color;
    .end local v7    # "tertiary":Landroid/graphics/Color;
    :cond_6
    const-string v2, "name"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3296
    const-string v2, "backup"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3297
    return-void
.end method

.method private removeDisplayData(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 993
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 994
    return-void
.end method

.method private restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 18
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3358
    move-object/from16 v1, p1

    const-string v2, "WallpaperManagerService"

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-le v0, v3, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "res:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3359
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3361
    .local v5, "resName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3362
    .local v0, "pkg":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 3363
    .local v6, "colon":I
    if-lez v6, :cond_0

    .line 3364
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 3363
    :cond_0
    move-object v7, v0

    .line 3367
    .end local v0    # "pkg":Ljava/lang/String;
    .local v7, "pkg":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 3368
    .local v0, "ident":Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 3369
    .local v8, "slash":I
    if-lez v8, :cond_1

    .line 3370
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    .line 3369
    :cond_1
    move-object v9, v0

    .line 3373
    .end local v0    # "ident":Ljava/lang/String;
    .local v9, "ident":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 3374
    .local v0, "type":Ljava/lang/String;
    const/4 v10, 0x1

    if-lez v6, :cond_2

    if-lez v8, :cond_2

    sub-int v11, v8, v6

    if-le v11, v10, :cond_2

    .line 3375
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_2

    .line 3378
    :cond_2
    move-object v11, v0

    .end local v0    # "type":Ljava/lang/String;
    .local v11, "type":Ljava/lang/String;
    :goto_2
    if-eqz v7, :cond_e

    if-eqz v9, :cond_e

    if-eqz v11, :cond_e

    .line 3379
    const/4 v12, -0x1

    .line 3380
    .local v12, "resId":I
    const/4 v13, 0x0

    .line 3381
    .local v13, "res":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 3382
    .local v14, "fos":Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 3384
    .local v15, "cos":Ljava/io/FileOutputStream;
    move-object/from16 v10, p0

    :try_start_0
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 3385
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3386
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v12, v4

    .line 3387
    if-nez v12, :cond_5

    .line 3388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "c":Landroid/content/Context;
    .local v16, "c":Landroid/content/Context;
    const-string v0, "couldn\'t resolve identifier pkg="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ident="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3390
    nop

    .line 3418
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3419
    if-eqz v14, :cond_3

    .line 3420
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3422
    :cond_3
    if-eqz v15, :cond_4

    .line 3423
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3425
    :cond_4
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3426
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3390
    const/4 v2, 0x0

    return v2

    .line 3393
    .end local v16    # "c":Landroid/content/Context;
    .restart local v0    # "c":Landroid/content/Context;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "c":Landroid/content/Context;
    .restart local v16    # "c":Landroid/content/Context;
    :try_start_1
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    move-object v13, v0

    .line 3394
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3395
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3396
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3398
    :cond_6
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v14, v0

    .line 3399
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v0

    .line 3401
    const v0, 0x8000

    new-array v0, v0, [B

    .line 3403
    .local v0, "buffer":[B
    :goto_3
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move/from16 v17, v4

    .local v17, "amt":I
    if-lez v4, :cond_7

    .line 3404
    move/from16 v4, v17

    const/4 v1, 0x0

    .end local v17    # "amt":I
    .local v4, "amt":I
    invoke-virtual {v14, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3405
    invoke-virtual {v15, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v1, p1

    goto :goto_3

    .line 3409
    .end local v4    # "amt":I
    .restart local v17    # "amt":I
    :cond_7
    move/from16 v4, v17

    .end local v17    # "amt":I
    .restart local v4    # "amt":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "buffer":[B
    .local v17, "buffer":[B
    const-string v0, "Restored wallpaper: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3410
    nop

    .line 3418
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3419
    nop

    .line 3420
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3422
    nop

    .line 3423
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3425
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3426
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3410
    const/4 v0, 0x1

    return v0

    .line 3418
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "amt":I
    .end local v16    # "c":Landroid/content/Context;
    .end local v17    # "buffer":[B
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 3415
    :catch_0
    move-exception v0

    .line 3416
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "IOException while restoring wallpaper "

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3418
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3419
    if-eqz v14, :cond_8

    .line 3420
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3422
    :cond_8
    if-eqz v15, :cond_9

    .line 3423
    :goto_4
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3425
    :cond_9
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3426
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3427
    goto :goto_6

    .line 3413
    :catch_1
    move-exception v0

    .line 3414
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3418
    nop

    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3419
    if-eqz v14, :cond_a

    .line 3420
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3422
    :cond_a
    if-eqz v15, :cond_9

    .line 3423
    goto :goto_4

    .line 3411
    :catch_2
    move-exception v0

    .line 3412
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3418
    nop

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3419
    if-eqz v14, :cond_b

    .line 3420
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3422
    :cond_b
    if-eqz v15, :cond_9

    .line 3423
    goto :goto_4

    .line 3418
    :goto_5
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3419
    if-eqz v14, :cond_c

    .line 3420
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3422
    :cond_c
    if-eqz v15, :cond_d

    .line 3423
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3425
    :cond_d
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3426
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3427
    throw v0

    .line 3378
    .end local v12    # "resId":I
    .end local v13    # "res":Ljava/io/InputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "cos":Ljava/io/FileOutputStream;
    :cond_e
    move-object/from16 v10, p0

    goto :goto_6

    .line 3358
    .end local v5    # "resName":Ljava/lang/String;
    .end local v6    # "colon":I
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "slash":I
    .end local v9    # "ident":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :cond_f
    move-object/from16 v10, p0

    .line 3430
    :goto_6
    const/4 v1, 0x0

    return v1
.end method

.method private saveSettingsLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 2943
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 2944
    .local v0, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v1, 0x0

    .line 2945
    .local v1, "fstream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 2947
    .local v2, "stream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2948
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v1, v4

    .line 2949
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 2950
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2951
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2955
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2956
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v4, :cond_0

    .line 2957
    const-string v5, "wp"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2959
    :cond_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v4, v5

    .line 2960
    if-eqz v4, :cond_1

    .line 2961
    const-string v5, "kwp"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2964
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2966
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2967
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2968
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 2969
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2973
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0

    .line 2970
    :catch_0
    move-exception v3

    .line 2971
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2972
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2974
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;I)V
    .locals 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 2568
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "changing live wallpaper"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2570
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2572
    const/4 v0, 0x1

    .line 2573
    .local v0, "which":I
    const/4 v1, 0x0

    .line 2576
    .local v1, "shouldNotifyColors":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2577
    :try_start_0
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWallpaperComponent name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2579
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v3, :cond_6

    .line 2582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v10, v4

    .line 2588
    .local v10, "ident":J
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2589
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2592
    const-string v4, "WallpaperManagerService"

    const-string v5, "Migrating current wallpaper to be lock-only beforeupdating system wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 2599
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    .line 2600
    or-int/lit8 v0, v0, 0x2

    .line 2604
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2605
    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v12, v4

    .line 2606
    .local v12, "same":Z
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2607
    if-nez v12, :cond_2

    .line 2608
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    goto :goto_0

    .line 2610
    :cond_2
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_3

    .line 2611
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    sget-object v5, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$uJmJUO0igBiD3_iiBxtwPaCqf4Y;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$uJmJUO0igBiD3_iiBxtwPaCqf4Y;

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2623
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2624
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2625
    const/4 v1, 0x1

    .line 2628
    .end local v12    # "same":Z
    :cond_4
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2629
    nop

    .line 2630
    .end local v10    # "ident":J
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2632
    if-eqz v1, :cond_5

    .line 2633
    invoke-direct {p0, v3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2634
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2636
    :cond_5
    return-void

    .line 2628
    .restart local v10    # "ident":J
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2629
    nop

    .end local v0    # "which":I
    .end local v1    # "shouldNotifyColors":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "userId":I
    throw v4

    .line 2580
    .end local v10    # "ident":J
    .restart local v0    # "which":I
    .restart local v1    # "shouldNotifyColors":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "name":Landroid/content/ComponentName;
    .restart local p2    # "userId":I
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper not yet initialized for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "which":I
    .end local v1    # "shouldNotifyColors":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "userId":I
    throw v4

    .line 2630
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v0    # "which":I
    .restart local v1    # "shouldNotifyColors":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "name":Landroid/content/ComponentName;
    .restart local p2    # "userId":I
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .locals 2
    .param p1, "connection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1041
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1042
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 1043
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->supportsMultipleDisplays()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1042
    :cond_1
    return v0

    .line 1045
    :cond_2
    return v0
.end method

.method private updateFallbackConnection()V
    .locals 4

    .line 1049
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1050
    :cond_0
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1051
    .local v0, "systemConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1052
    .local v1, "fallbackConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    if-nez v1, :cond_1

    .line 1053
    const-string v2, "WallpaperManagerService"

    const-string v3, "Fallback wallpaper connection has not been created yet!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    return-void

    .line 1056
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1057
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1300(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1058
    sget-object v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$pVmree9DyIpBSg0s3RDK3MDesvs;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$pVmree9DyIpBSg0s3RDK3MDesvs;

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1063
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1300(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 1066
    :cond_2
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$SxaUJpgTTfzUoz6u3AWuAOQdoNw;

    invoke-direct {v2, v1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$SxaUJpgTTfzUoz6u3AWuAOQdoNw;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1400(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V

    .line 1070
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$tRb4SPHGj0pcxb3p7arcqKFqs08;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$tRb4SPHGj0pcxb3p7arcqKFqs08;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1076
    :cond_3
    :goto_0
    return-void

    .line 1049
    .end local v0    # "systemConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v1    # "fallbackConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_4
    :goto_1
    return-void
.end method

.method private writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2981
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    .line 2982
    .local v0, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2983
    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2984
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "width"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2985
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2987
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropLeft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2988
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropTop"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2989
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropRight"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2990
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropBottom"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2992
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_0

    .line 2993
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "paddingLeft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2995
    :cond_0
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_1

    .line 2996
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "paddingTop"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2998
    :cond_1
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_2

    .line 2999
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "paddingRight"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3001
    :cond_2
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_3

    .line 3002
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "paddingBottom"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3005
    :cond_3
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v2, :cond_5

    .line 3006
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v2}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 3007
    .local v2, "colorsCount":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "colorsCount"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3008
    if-lez v2, :cond_4

    .line 3009
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 3010
    iget-object v4, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v4}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Color;

    .line 3011
    .local v4, "wc":Landroid/graphics/Color;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorValue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3009
    .end local v4    # "wc":Landroid/graphics/Color;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3014
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3015
    invoke-virtual {v3}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3014
    const-string v4, "colorHints"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3018
    .end local v2    # "colorsCount":I
    :cond_5
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3019
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_6

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 3020
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3021
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 3022
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 3021
    const-string v3, "component"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3025
    :cond_6
    iget-boolean v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    if-eqz v2, :cond_7

    .line 3026
    const-string v2, "backup"

    const-string v3, "true"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3029
    :cond_7
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3030
    return-void
.end method


# virtual methods
.method public clearWallpaper(Ljava/lang/String;II)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 1937
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1941
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1941
    const-string v6, "clearWallpaper"

    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1944
    .end local p3    # "userId":I
    .local v0, "userId":I
    const/4 p3, 0x0

    .line 1945
    .local p3, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1946
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, p2, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1948
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 1949
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v2

    .line 1951
    :cond_1
    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-nez p3, :cond_3

    .line 1952
    :cond_2
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v3

    .line 1954
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1957
    if-eqz p3, :cond_4

    .line 1958
    invoke-direct {p0, p3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1959
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1961
    :cond_4
    return-void

    .line 1954
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1939
    .end local v0    # "userId":I
    .local p3, "userId":I
    :cond_5
    :goto_0
    return-void
.end method

.method clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    .locals 16
    .param p1, "defaultFailed"    # Z
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "reply"    # Landroid/os/IRemoteCallback;

    .line 1964
    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq v8, v1, :cond_1

    if-ne v8, v0, :cond_0

    goto :goto_0

    .line 1965
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper to clear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1968
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1969
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x0

    if-ne v8, v0, :cond_3

    .line 1970
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1971
    if-nez v1, :cond_2

    .line 1976
    return-void

    .line 1971
    :cond_2
    move-object v11, v1

    goto :goto_1

    .line 1979
    :cond_3
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1980
    if-nez v1, :cond_4

    .line 1982
    invoke-direct {v7, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1983
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v11, v1

    goto :goto_1

    .line 1980
    :cond_4
    move-object v11, v1

    .line 1986
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v11, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_1
    if-nez v11, :cond_5

    .line 1987
    return-void

    .line 1990
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1992
    .local v12, "ident":J
    :try_start_0
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1993
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1994
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1995
    if-ne v8, v0, :cond_7

    .line 1996
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 1997
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 1998
    .local v1, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v1, :cond_6

    .line 2003
    :try_start_1
    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2006
    goto :goto_2

    .line 2004
    :catch_0
    move-exception v0

    .line 2008
    :cond_6
    :goto_2
    :try_start_2
    invoke-direct {v7, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2040
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2009
    return-void

    .line 2013
    .end local v1    # "cb":Landroid/app/IWallpaperManagerCallback;
    :cond_7
    const/4 v14, 0x0

    .line 2015
    .local v14, "e":Ljava/lang/RuntimeException;
    const/4 v15, 0x0

    :try_start_3
    iput-object v15, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2016
    iput-boolean v2, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2017
    iget v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v9, v0, :cond_8

    .line 2040
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2017
    return-void

    .line 2018
    :cond_8
    if-eqz p1, :cond_9

    .line 2019
    :try_start_4
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v0

    goto :goto_3

    .line 2020
    :cond_9
    move-object v2, v15

    :goto_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2018
    move-object/from16 v1, p0

    move-object v5, v11

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_a

    .line 2040
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2021
    return-void

    .line 2025
    :cond_a
    goto :goto_4

    .line 2023
    :catch_1
    move-exception v0

    .line 2024
    .local v0, "e1":Ljava/lang/IllegalArgumentException;
    move-object v14, v0

    .line 2031
    .end local v0    # "e1":Ljava/lang/IllegalArgumentException;
    :goto_4
    :try_start_5
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2032
    invoke-direct {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2033
    if-eqz v10, :cond_b

    .line 2035
    :try_start_6
    invoke-interface {v10, v15}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2037
    goto :goto_5

    .line 2036
    :catch_2
    move-exception v0

    .line 2040
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :cond_b
    :goto_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2041
    nop

    .line 2042
    return-void

    .line 2040
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2041
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3435
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WallpaperManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3437
    :cond_0
    const-string v0, "mDefaultWallpaperComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3438
    const-string v0, "mImageWallpaper="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3440
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3441
    :try_start_0
    const-string v1, "System wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3442
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3443
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3444
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3445
    const-string v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3446
    const-string v3, " Display state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3447
    new-instance v3, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$-xDjfJrpuX3xrMVlhcRMc94PnFg;

    invoke-direct {v3, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$-xDjfJrpuX3xrMVlhcRMc94PnFg;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->forEachDisplayData(Ljava/util/function/Consumer;)V

    .line 3456
    const-string v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3457
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3458
    const-string v3, "  mAllowBackup="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3459
    const-string v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3460
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_2

    .line 3461
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3462
    .local v3, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v4, "  Wallpaper connection "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3463
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3464
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3465
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v4, :cond_1

    .line 3466
    const-string v4, "    mInfo.component="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3467
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3469
    :cond_1
    new-instance v4, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$8NPecRUvsVyVb9PqWBr_ybjykpE;

    invoke-direct {v4, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$8NPecRUvsVyVb9PqWBr_ybjykpE;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3477
    const-string v4, "    mService="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3478
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3479
    const-string v4, "    mLastDiedTime="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3480
    iget-wide v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 3442
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v3    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3483
    .end local v1    # "i":I
    :cond_3
    const-string v1, "Lock wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3484
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3485
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3486
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3487
    const-string v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3488
    const-string v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3489
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3490
    const-string v3, "  mAllowBackup="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3484
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3492
    .end local v1    # "i":I
    :cond_4
    const-string v1, "Fallback wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3493
    const-string v1, " User "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3494
    const-string v1, ": id="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3495
    const-string v1, "  mCropHint="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3496
    const-string v1, "  mName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3497
    const-string v1, "  mAllowBackup="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3498
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_6

    .line 3499
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3500
    .local v1, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v2, "  Fallback Wallpaper connection "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3501
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3502
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3503
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_5

    .line 3504
    const-string v2, "    mInfo.component="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3505
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3507
    :cond_5
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$jbe_-YFoD154rGY54yhgrMn__CI;

    invoke-direct {v2, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$jbe_-YFoD154rGY54yhgrMn__CI;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3515
    const-string v2, "    mService="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3516
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3517
    const-string v2, "    mLastDiedTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3518
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 3520
    .end local v1    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_6
    monitor-exit v0

    .line 3521
    return-void

    .line 3520
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1692
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1693
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1694
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1695
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1693
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1697
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method forEachDisplayData(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;",
            ">;)V"
        }
    .end annotation

    .line 1027
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;>;"
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 1029
    .local v1, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1027
    .end local v1    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1031
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getCurrentWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 3
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1643
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1645
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 1646
    .local v1, "wallpaperDataMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    monitor-exit v0

    return-object v2

    .line 1647
    .end local v1    # "wallpaperDataMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHeightHint(I)I
    .locals 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2151
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2152
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2155
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2156
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    .line 2157
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    .line 2158
    .local v2, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    monitor-exit v0

    return v3

    .line 2160
    .end local v2    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2153
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "displayId":I
    throw v1

    .line 2162
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "displayId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1771
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1775
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1772
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p3, "which"    # I
    .param p4, "outParams"    # Landroid/os/Bundle;
    .param p5, "wallpaperUserId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2213
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperColors(III)Landroid/app/WallpaperColors;
    .locals 9
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2381
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2382
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2384
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v7, "getWallpaperColors"

    move v4, p2

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2387
    const/4 v2, 0x0

    .line 2390
    .local v2, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2391
    if-ne p1, v1, :cond_2

    .line 2392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v2, v1

    goto :goto_1

    .line 2405
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2397
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 2398
    invoke-direct {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    move-object v2, v1

    .line 2401
    :cond_3
    if-nez v2, :cond_4

    .line 2402
    const/4 v0, 0x0

    monitor-exit v3

    return-object v0

    .line 2404
    :cond_4
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 2405
    .local v0, "shouldExtract":Z
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2407
    if-eqz v0, :cond_6

    .line 2408
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2411
    :cond_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2412
    :try_start_1
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    monitor-exit v1

    return-object v3

    .line 2413
    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 2405
    .end local v0    # "shouldExtract":Z
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method getWallpaperDir(I)Ljava/io/File;
    .locals 1
    .param p1, "userId"    # I

    .line 1687
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperIdForUser(II)I
    .locals 7
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2280
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2280
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getWallpaperIdForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2283
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2288
    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2289
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2290
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2291
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v2, :cond_3

    .line 2292
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    monitor-exit v1

    return v3

    .line 2294
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    monitor-exit v1

    .line 2295
    const/4 v1, -0x1

    return v1

    .line 2294
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .locals 7
    .param p1, "userId"    # I

    .line 2267
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2267
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getWallpaperInfo"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2269
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2271
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    .line 2272
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v0

    return-object v2

    .line 2274
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2275
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 17
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p4, "which"    # I
    .param p5, "outParams"    # Landroid/os/Bundle;
    .param p6, "wallpaperUserId"    # I

    .line 2219
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 2221
    .local v5, "hasPrivilege":I
    if-eqz v5, :cond_0

    .line 2222
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/storage/StorageManager;

    const/4 v7, 0x1

    .line 2223
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2222
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/os/storage/StorageManager;->checkPermissionReadImages(ZIILjava/lang/String;Ljava/lang/String;)Z

    .line 2226
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    .line 2226
    const-string v15, "getWallpaper"

    move/from16 v12, p6

    invoke-static/range {v10 .. v16}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2229
    .end local p6    # "wallpaperUserId":I
    .local v6, "wallpaperUserId":I
    const/4 v0, 0x1

    const/4 v7, 0x2

    if-eq v3, v0, :cond_2

    if-ne v3, v7, :cond_1

    goto :goto_0

    .line 2230
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2233
    :cond_2
    :goto_0
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2235
    if-ne v3, v7, :cond_3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_1
    move-object v7, v0

    .line 2236
    .local v7, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v9, v0

    .line 2237
    .local v9, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v10, 0x0

    if-nez v9, :cond_4

    .line 2241
    monitor-exit v8

    return-object v10

    .line 2244
    :cond_4
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    .line 2246
    .local v11, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-eqz v4, :cond_5

    .line 2247
    :try_start_1
    const-string v0, "width"

    iget v12, v11, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2248
    const-string v0, "height"

    iget v12, v11, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 2257
    :catch_0
    move-exception v0

    goto :goto_3

    .line 2250
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 2251
    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3000(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2253
    :cond_6
    iget-object v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_7

    .line 2254
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v10

    .line 2256
    :cond_7
    :try_start_3
    iget-object v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    const/high16 v12, 0x10000000

    invoke-static {v0, v12}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v8

    return-object v0

    .line 2259
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    const-string v12, "WallpaperManagerService"

    const-string v13, "Error getting wallpaper"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2261
    nop

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    monitor-exit v8

    return-object v10

    .line 2262
    .end local v7    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    .end local v9    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v11    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public getWidthHint(I)I
    .locals 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2133
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2134
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2137
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2138
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    .line 2139
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    .line 2140
    .local v2, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    monitor-exit v0

    return v3

    .line 2142
    .end local v2    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2135
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "displayId":I
    throw v1

    .line 2144
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "displayId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .line 2045
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2047
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2049
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2051
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2052
    nop

    .line 2053
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2055
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2056
    goto :goto_0

    .line 2058
    :cond_0
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2059
    .local v7, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v7, :cond_1

    .line 2061
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 2062
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v7, v6

    .line 2064
    :cond_1
    if-eqz v7, :cond_2

    iget-object v6, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2065
    const/4 v4, 0x1

    monitor-exit v0

    return v4

    .line 2067
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    goto :goto_0

    .line 2068
    .end local v1    # "ident":J
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    monitor-exit v0

    .line 2069
    return v6

    .line 2051
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2052
    nop

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Ljava/lang/String;
    throw v3

    .line 2068
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method initialize()V
    .locals 5

    .line 1676
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1677
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1682
    invoke-direct {p0, v0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1683
    invoke-direct {p0, v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1684
    return-void
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2878
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2879
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2880
    .local v1, "uidPackages":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2881
    .local v2, "uidMatchPackage":Z
    if-nez v2, :cond_0

    .line 2882
    const/4 v3, 0x0

    return v3

    .line 2886
    :cond_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 2887
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 2890
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2891
    .local v4, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2893
    .local v6, "ident":J
    :try_start_0
    const-class v8, Landroid/os/UserManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManagerInternal;

    .line 2894
    .local v8, "umi":Landroid/os/UserManagerInternal;
    const-string v9, "no_set_wallpaper"

    invoke-virtual {v8, v9, v4}, Landroid/os/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2896
    xor-int/2addr v5, v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2894
    return v5

    .line 2896
    .end local v8    # "umi":Landroid/os/UserManagerInternal;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2897
    throw v5

    .line 2888
    .end local v4    # "callingUserId":I
    .end local v6    # "ident":J
    :cond_2
    :goto_0
    return v5
.end method

.method public isWallpaperBackupEligible(II)Z
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 2906
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2907
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0

    .line 2908
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_0
    nop

    .line 2909
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 2903
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call isWallpaperBackupEligible"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2872
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$notifyWallpaperColorsChanged$0$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"    # I
    .param p3, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 375
    iget v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 376
    return-void
.end method

.method public synthetic lambda$onUnlockUser$4$WallpaperManagerService(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 1826
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1827
    .local v0, "wallpaperDir":Ljava/io/File;
    sget-object v1, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1828
    .local v4, "filename":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1829
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1830
    invoke-static {v5}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 1827
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1833
    :cond_1
    return-void
.end method

.method public synthetic lambda$switchUser$5$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 2
    .param p1, "systemWallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "lockWallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1881
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1882
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1883
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1884
    return-void
.end method

.method public synthetic lambda$switchUser$6$WallpaperManagerService(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1890
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/wallpaper/OpWallpaperHelperInjector;->setupDefaultKeyguardWallpaper(Landroid/content/Context;I)V

    .line 1891
    return-void
.end method

.method public synthetic lambda$updateFallbackConnection$3$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1
    .param p1, "fallbackConnection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1071
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1074
    :cond_0
    return-void
.end method

.method makeWallpaperIdLocked()I
    .locals 1

    .line 1035
    :goto_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 1036
    if-eqz v0, :cond_0

    .line 1037
    return v0

    .line 1036
    :cond_0
    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 1797
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    goto :goto_0

    .line 1799
    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 1800
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 1802
    :cond_1
    :goto_0
    return-void
.end method

.method onRemoveUser(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 1844
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    .line 1846
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1847
    .local v0, "wallpaperDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1848
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 1849
    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1850
    .local v5, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1849
    nop

    .end local v5    # "filename":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1852
    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1853
    monitor-exit v1

    .line 1854
    return-void

    .line 1853
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onUnlockUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1806
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 1807
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on-unlock-user-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1809
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1810
    :try_start_1
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v2, p1, :cond_1

    .line 1811
    iget-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1813
    nop

    .line 1814
    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 1815
    .local v2, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1816
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1823
    .end local v2    # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1824
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1825
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$ZY5r01reAnoB4Dl2bo4au8KMz3Y;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$ZY5r01reAnoB4Dl2bo4au8KMz3Y;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1834
    .local v2, "relabeler":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1837
    .end local v2    # "relabeler":Ljava/lang/Runnable;
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1839
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1840
    nop

    .line 1841
    return-void

    .line 1837
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "userId":I
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1839
    .restart local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1840
    throw v1
.end method

.method public registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .locals 7
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 2301
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "registerWallpaperColorsCallback"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2303
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2306
    .local v1, "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-nez v1, :cond_0

    .line 2307
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 2308
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2310
    :cond_0
    nop

    .line 2311
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 2312
    .local v2, "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-nez v2, :cond_1

    .line 2313
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    .line 2314
    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2316
    :cond_1
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2317
    nop

    .end local v1    # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    .end local v2    # "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    monitor-exit v0

    .line 2318
    return-void

    .line 2317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDimensionHints(IILjava/lang/String;I)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2082
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2084
    return-void

    .line 2088
    :cond_0
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2089
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2091
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2092
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2093
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 2094
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_8

    if-lez p2, :cond_8

    .line 2098
    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2102
    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    .line 2103
    .local v4, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ne p1, v5, :cond_1

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-eq p2, v5, :cond_6

    .line 2104
    :cond_1
    iput p1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 2105
    iput p2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 2106
    if-nez p4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2107
    :cond_2
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_3

    monitor-exit v0

    return-void

    .line 2108
    :cond_3
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_6

    .line 2109
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2110
    invoke-virtual {v5, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v5

    .line 2111
    .local v5, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-eqz v5, :cond_4

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    .line 2112
    .local v6, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_0
    if-eqz v6, :cond_5

    .line 2114
    :try_start_1
    invoke-interface {v6, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2116
    goto :goto_1

    .line 2115
    :catch_0
    move-exception v2

    .line 2117
    :goto_1
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_2

    .line 2118
    :cond_5
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    .line 2122
    iput-boolean v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDimensionsChanged:Z

    .line 2126
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v5    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .end local v6    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_6
    :goto_2
    monitor-exit v0

    .line 2127
    return-void

    .line 2099
    .restart local v1    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find display with id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p4    # "displayId":I
    throw v2

    .line 2095
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    .restart local p4    # "displayId":I
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "width and height must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p4    # "displayId":I
    throw v2

    .line 2126
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    .restart local p4    # "displayId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .locals 8
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 2169
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2171
    return-void

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2174
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2177
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2178
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 2179
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ltz v4, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v4, :cond_6

    .line 2183
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    .line 2184
    .local v4, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2185
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2186
    if-nez p3, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2187
    :cond_1
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_2

    monitor-exit v0

    return-void

    .line 2188
    :cond_2
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_5

    .line 2189
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2190
    invoke-virtual {v5, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v5

    .line 2191
    .local v5, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 2192
    .local v6, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_0
    if-eqz v6, :cond_4

    .line 2194
    :try_start_1
    invoke-interface {v6, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2196
    goto :goto_1

    .line 2195
    :catch_0
    move-exception v2

    .line 2197
    :goto_1
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_2

    .line 2198
    :cond_4
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    .line 2202
    iput-boolean v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mPaddingChanged:Z

    .line 2206
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v5    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .end local v6    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_5
    :goto_2
    monitor-exit v0

    .line 2207
    return-void

    .line 2180
    .restart local v1    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "padding":Landroid/graphics/Rect;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "displayId":I
    throw v2

    .line 2175
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "displayId":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "padding":Landroid/graphics/Rect;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "displayId":I
    throw v1

    .line 2206
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "displayId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setInAmbientMode(ZJ)V
    .locals 4
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J

    .line 2347
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2348
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    .line 2349
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2351
    .local v1, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 2352
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2354
    :cond_0
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .local v2, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    goto :goto_0

    .line 2356
    .end local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_1
    const/4 v2, 0x0

    .line 2358
    .end local v1    # "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2360
    if-eqz v2, :cond_2

    .line 2362
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2365
    goto :goto_1

    .line 2363
    :catch_0
    move-exception v0

    .line 2367
    :cond_2
    :goto_1
    return-void

    .line 2358
    .end local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .locals 2
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    .line 2371
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2372
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2373
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 2374
    monitor-exit v0

    .line 2375
    const/4 v0, 0x1

    return v0

    .line 2374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cropHint"    # Landroid/graphics/Rect;
    .param p4, "allowBackup"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "which"    # I
    .param p7, "completion"    # Landroid/app/IWallpaperManagerCallback;
    .param p8, "userId"    # I

    .line 2429
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "changing wallpaper"

    const/4 v6, 0x0

    move v2, p8

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p8

    .line 2431
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2433
    and-int/lit8 v0, p6, 0x3

    if-eqz v0, :cond_6

    .line 2439
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2444
    :cond_0
    if-nez p3, :cond_1

    .line 2445
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p3, v0

    goto :goto_0

    .line 2447
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ltz v0, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_4

    move-object v0, p3

    .line 2454
    .end local p3    # "cropHint":Landroid/graphics/Rect;
    .local v0, "cropHint":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2462
    const/4 p3, 0x1

    if-ne p6, p3, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2463
    const-string v2, "WallpaperManagerService"

    const-string v3, "Migrating current wallpaper to be lock-only beforeupdating system wallpaper"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    invoke-direct {p0, p8}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 2468
    :cond_2
    invoke-direct {p0, p8, p6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 2469
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2471
    .local v3, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 2472
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v5, :cond_3

    .line 2473
    iput-boolean p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2474
    iput p6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 2475
    iput-object p7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 2476
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2477
    iput-boolean p4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2479
    :cond_3
    nop

    .line 2481
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 2479
    return-object v5

    .line 2481
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception p3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2482
    nop

    .end local v0    # "cropHint":Landroid/graphics/Rect;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p4    # "allowBackup":Z
    .end local p5    # "extras":Landroid/os/Bundle;
    .end local p6    # "which":I
    .end local p7    # "completion":Landroid/app/IWallpaperManagerCallback;
    .end local p8    # "userId":I
    throw p3

    .line 2483
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v3    # "ident":J
    .restart local v0    # "cropHint":Landroid/graphics/Rect;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p4    # "allowBackup":Z
    .restart local p5    # "extras":Landroid/os/Bundle;
    .restart local p6    # "which":I
    .restart local p7    # "completion":Landroid/app/IWallpaperManagerCallback;
    .restart local p8    # "userId":I
    :catchall_1
    move-exception p3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p3

    .line 2450
    .end local v0    # "cropHint":Landroid/graphics/Rect;
    .restart local p3    # "cropHint":Landroid/graphics/Rect;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid crop rect supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2440
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 2434
    :cond_6
    const-string v0, "Must specify a valid wallpaper category to set"

    .line 2435
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2564
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 2565
    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2556
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2557
    invoke-direct {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 2559
    :cond_0
    return-void
.end method

.method public settingsRestored()V
    .locals 11

    .line 3302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5

    .line 3308
    const/4 v0, 0x0

    .line 3309
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v1, 0x0

    .line 3310
    .local v1, "success":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3311
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3312
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v4

    .line 3313
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3314
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3315
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 3316
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3317
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3322
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3324
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 3328
    :cond_1
    const-string v4, ""

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3330
    const/4 v1, 0x1

    goto :goto_0

    .line 3333
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v1, v4

    .line 3337
    :goto_0
    if-eqz v1, :cond_3

    .line 3338
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3339
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3343
    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3345
    if-nez v1, :cond_4

    .line 3346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    const-string v2, ""

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3348
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3351
    :cond_4
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3352
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3353
    monitor-exit v4

    .line 3354
    return-void

    .line 3353
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3343
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 3303
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v1    # "success":Z
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "settingsRestored() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1780
    if-eqz p1, :cond_0

    .line 1781
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1783
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1786
    :cond_0
    return-void
.end method

.method stopObserversLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1789
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1790
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1791
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1792
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1793
    return-void
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 1857
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 1858
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch-user-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1862
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1863
    :try_start_1
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v2, p1, :cond_0

    .line 1864
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1895
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1864
    return-void

    .line 1866
    :cond_0
    :try_start_2
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1867
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 1868
    .local v2, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1869
    .local v3, "tmpLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v3, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 1871
    .local v4, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v5, :cond_2

    .line 1872
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1873
    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 1875
    :cond_2
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1876
    .end local v3    # "tmpLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1880
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$1tPkxHr3PHUgpfvv03vRyPzY3uM;

    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$1tPkxHr3PHUgpfvv03vRyPzY3uM;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1888
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1889
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$xPf_Z5lQPXeu4YOEH0rWs502PPI;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$xPf_Z5lQPXeu4YOEH0rWs502PPI;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1895
    .end local v2    # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1896
    nop

    .line 1897
    return-void

    .line 1876
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "userId":I
    .end local p2    # "reply":Landroid/os/IRemoteCallback;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1895
    .restart local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "reply":Landroid/os/IRemoteCallback;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1896
    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 14
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 1900
    move-object v7, p0

    move-object v8, p1

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1901
    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    .line 1902
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    :goto_0
    move-object v11, v0

    .line 1904
    .local v11, "cname":Landroid/content/ComponentName;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v11

    move-object v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 1907
    const/4 v1, 0x0

    .line 1909
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    :try_start_1
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/high16 v2, 0x40000

    iget v3, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v0, v11, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 1912
    move-object v0, v1

    goto :goto_1

    .line 1911
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1914
    .end local v1    # "si":Landroid/content/pm/ServiceInfo;
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    :goto_1
    const/4 v12, 0x1

    if-nez v0, :cond_1

    .line 1915
    :try_start_2
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper; clearing"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v13, p2

    :try_start_3
    invoke-virtual {p0, v10, v12, v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_2

    .line 1918
    :cond_1
    move-object/from16 v13, p2

    const-string v1, "WallpaperManagerService"

    const-string v2, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iput-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1923
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v3, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 1924
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper_lock_orig"

    const-string v5, "wallpaper_lock"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v1

    .line 1926
    .local v10, "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1927
    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v10

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1928
    iput-boolean v12, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    goto :goto_2

    .line 1904
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v10    # "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    move-object/from16 v13, p2

    .line 1931
    .end local v11    # "cname":Landroid/content/ComponentName;
    :goto_2
    monitor-exit v9

    .line 1932
    return-void

    .line 1931
    :catchall_0
    move-exception v0

    move-object/from16 v13, p2

    :goto_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method systemReady()V
    .locals 6

    .line 1701
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initialize()V

    .line 1703
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1706
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1708
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1712
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1715
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1719
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1727
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1728
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1729
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1740
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1741
    .local v2, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1756
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    const-string v5, "WallpaperManagerService"

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1765
    goto :goto_0

    .line 1763
    :catch_0
    move-exception v3

    .line 1764
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1766
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .locals 7
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 2323
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "unregisterWallpaperColorsCallback"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2325
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2328
    .local v1, "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-eqz v1, :cond_0

    .line 2329
    nop

    .line 2330
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 2331
    .local v2, "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-eqz v2, :cond_0

    .line 2332
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2335
    .end local v1    # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    .end local v2    # "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    :cond_0
    monitor-exit v0

    .line 2336
    return-void

    .line 2335
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2519
    const-string v0, "WallpaperManagerService"

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2521
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    .line 2522
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2523
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2524
    nop

    .line 2525
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    .line 2524
    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2529
    :cond_1
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    const/high16 v4, 0x3c000000    # 0.0078125f

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 2531
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restorecon failed for wallpaper file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 2533
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2532
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    return-object v1

    .line 2536
    :cond_2
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2537
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2538
    if-eqz p3, :cond_3

    .line 2539
    const-string v4, "android.service.wallpaper.extra.ID"

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2542
    :cond_3
    iput-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2543
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWallpaperBitmapLocked() : id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 2544
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2543
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2545
    return-object v3

    .line 2546
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    .line 2547
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Error setting wallpaper"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2549
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    return-object v1
.end method
