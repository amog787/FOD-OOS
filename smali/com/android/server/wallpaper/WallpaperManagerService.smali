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

.field private mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private final mImageWallpaper:Landroid/content/ComponentName;

.field private mInAmbientMode:Z

.field private mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

.field private mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

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

    .line 201
    const-string/jumbo v0, "wallpaper_orig"

    const-string/jumbo v1, "wallpaper"

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    const-string/jumbo v4, "wallpaper_info.xml"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1624
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 808
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 882
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 883
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 885
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    .line 889
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    .line 890
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1626
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 1628
    nop

    .line 1629
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040307

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1628
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1630
    invoke-static {p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 1631
    nop

    .line 1632
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1631
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1633
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1634
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1635
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1636
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1637
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1638
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 1639
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 1641
    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1642
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # I

    .line 141
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "x5"    # Landroid/os/IRemoteCallback;

    .line 141
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeDisplayData(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "x2"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onDisplayReadyInternal(I)V

    return-void
.end method

.method static synthetic access$3400()[Ljava/lang/String;
    .locals 1

    .line 141
    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "x2"    # I

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    return-object v0
.end method

.method private attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2785
    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$-BqUtvsdVGS3ye_UHe7qFnTZPn4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$-BqUtvsdVGS3ye_UHe7qFnTZPn4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2786
    return-void
.end method

.method private bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 19
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .line 2603
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

    .line 2606
    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2607
    return v0

    .line 2611
    :cond_0
    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 2612
    :try_start_0
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 2613
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 2615
    :try_start_1
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v6

    .line 2618
    const-string v6, "No default component; using image wallpaper"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2741
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p1    # "componentName":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    move-object/from16 v5, p5

    goto/16 :goto_3

    .line 2621
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    iget v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 2622
    .local v6, "serviceUserId":I
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v8, 0x1080

    invoke-interface {v7, v2, v8, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 2624
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    if-nez v7, :cond_2

    .line 2626
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

    .line 2627
    return v5

    .line 2629
    :cond_2
    const-string v8, "android.permission.BIND_WALLPAPER"

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected service does not have android.permission.BIND_WALLPAPER: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2633
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_3

    .line 2636
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    return v5

    .line 2634
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

    .line 2640
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_4
    const/4 v8, 0x0

    .line 2642
    .local v8, "wi":Landroid/app/WallpaperInfo;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.wallpaper.WallpaperService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2643
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_a

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 2645
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 2647
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    .line 2646
    invoke-interface {v10, v9, v11, v12, v6}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    .line 2648
    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    .line 2649
    .local v10, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move v11, v5

    .local v11, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_8

    .line 2650
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2651
    .local v12, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2652
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v13, :cond_7

    .line 2654
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

    .line 2667
    goto :goto_2

    .line 2661
    :catch_1
    move-exception v0

    .line 2662
    .local v0, "e":Ljava/io/IOException;
    if-nez p3, :cond_5

    .line 2665
    :try_start_3
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2666
    return v5

    .line 2663
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

    .line 2655
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :catch_2
    move-exception v0

    .line 2656
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez p3, :cond_6

    .line 2659
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2660
    return v5

    .line 2657
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

    .line 2649
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

    .line 2671
    .end local v11    # "i":I
    :cond_8
    :goto_2
    if-nez v8, :cond_a

    .line 2672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected service is not a wallpaper: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2674
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_9

    .line 2677
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    return v5

    .line 2675
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

    .line 2682
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

    .line 2683
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v11, "android.permission.AMBIENT_WALLPAPER"

    .line 2684
    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2683
    invoke-interface {v10, v11, v12, v6}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 2686
    .local v10, "hasPrivilege":I
    if-eqz v10, :cond_c

    .line 2687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected service does not have android.permission.AMBIENT_WALLPAPER: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2690
    .restart local v0    # "msg":Ljava/lang/String;
    if-nez p3, :cond_b

    .line 2693
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    return v5

    .line 2691
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

    .line 2700
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

    .line 2702
    .local v10, "componentUid":I
    new-instance v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {v11, v1, v8, v3, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2703
    .local v11, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2704
    const-string v12, "android.intent.extra.client_label"

    const v13, 0x1040758

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2706
    const-string v12, "android.intent.extra.client_intent"

    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040129

    .line 2709
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2708
    invoke-static {v15, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2706
    move-object/from16 v18, v0

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2711
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v5, 0x22001001

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v9, v11, v5, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2718
    .restart local v0    # "msg":Ljava/lang/String;
    if-nez p3, :cond_d

    .line 2721
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    const/4 v4, 0x0

    return v4

    .line 2719
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

    .line 2727
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_e
    invoke-static {v2}, Lcom/android/server/am/OpAppBootManagerInjector;->setCurrentWallpaperPackage(Landroid/content/ComponentName;)V

    .line 2730
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v5, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2731
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2732
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2734
    :cond_f
    iput-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2735
    iput-object v11, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2736
    move-object/from16 v5, p5

    :try_start_4
    iput-object v5, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 2737
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v12, :cond_10

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2738
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2740
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateFallbackConnection()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2748
    .end local v6    # "serviceUserId":I
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "wi":Landroid/app/WallpaperInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "componentUid":I
    .end local v11    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    nop

    .line 2749
    const/4 v0, 0x1

    return v0

    .line 2741
    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v5, p5

    .line 2742
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

    .line 2743
    .local v6, "msg":Ljava/lang/String;
    if-nez p3, :cond_11

    .line 2746
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    const/4 v4, 0x0

    return v4

    .line 2744
    :cond_11
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2584
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_1

    .line 2585
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2586
    if-nez p1, :cond_1

    .line 2589
    return v1

    .line 2591
    :cond_0
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2594
    return v1

    .line 2597
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 2806
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2810
    return-void

    .line 2807
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

    .line 2780
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2781
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2782
    return-void
.end method

.method private detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2753
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2

    .line 2754
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2756
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2758
    goto :goto_0

    .line 2757
    :catch_0
    move-exception v0

    .line 2759
    :goto_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 2763
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v0, :cond_1

    .line 2764
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperService;->detach()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2768
    :cond_1
    goto :goto_1

    .line 2766
    :catch_1
    move-exception v0

    .line 2767
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed detaching wallpaper service "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2769
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2770
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    sget-object v2, Lcom/android/server/wallpaper/-$$Lambda$havGP5uMdRgWQrLydPeIOu1qDGE;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$havGP5uMdRgWQrLydPeIOu1qDGE;

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2772
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 2773
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2774
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2775
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-ne p1, v0, :cond_2

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2777
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

    .line 428
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

.method private ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "displayId"    # I

    .line 3179
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    .line 3181
    .local v0, "size":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-nez p2, :cond_1

    .line 3183
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 3184
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_1

    .line 3185
    :cond_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3188
    :cond_1
    return-void
.end method

.method private ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V
    .locals 2
    .param p1, "wpdData"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .param p2, "displayId"    # I

    .line 1006
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension(I)I

    move-result v0

    .line 1007
    .local v0, "baseSize":I
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ge v1, v0, :cond_0

    .line 1008
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 1010
    :cond_0
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-ge v1, v0, :cond_1

    .line 1011
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 1013
    :cond_1
    return-void
.end method

.method private extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "cropFile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 490
    .local v1, "defaultImageWallpaper":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 492
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v3, :cond_0

    monitor-exit v2

    return-void

    .line 493
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 494
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;

    move-result-object v3

    .line 495
    .local v3, "colors":Landroid/app/WallpaperColors;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 496
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 497
    monitor-exit v4

    .line 498
    return-void

    .line 497
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 493
    .end local v3    # "colors":Landroid/app/WallpaperColors;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 501
    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 503
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

    .line 505
    .local v3, "imageWallpaper":Z
    :goto_1
    if-eqz v3, :cond_4

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 506
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_2

    .line 507
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 508
    const/4 v1, 0x1

    .line 510
    :cond_5
    :goto_2
    iget v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    move v3, v4

    .line 511
    .local v3, "wallpaperId":I
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 513
    const/4 v2, 0x0

    .line 514
    .local v2, "colors":Landroid/app/WallpaperColors;
    if-eqz v0, :cond_6

    .line 515
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 516
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_7

    .line 517
    invoke-static {v4}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v2

    .line 518
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 520
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    if-eqz v1, :cond_7

    .line 522
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;

    move-result-object v2

    move-object v4, v2

    goto :goto_4

    .line 520
    :cond_7
    :goto_3
    move-object v4, v2

    .line 525
    .end local v2    # "colors":Landroid/app/WallpaperColors;
    .local v4, "colors":Landroid/app/WallpaperColors;
    :goto_4
    if-nez v4, :cond_8

    .line 526
    const-string v2, "WallpaperManagerService"

    const-string v5, "Cannot extract colors because wallpaper could not be read."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void

    .line 530
    :cond_8
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 531
    :try_start_4
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-ne v2, v3, :cond_9

    .line 532
    iput-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 535
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    goto :goto_5

    .line 537
    :cond_9
    const-string v2, "WallpaperManagerService"

    const-string v6, "Not setting primary colors since wallpaper changed"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_5
    monitor-exit v5

    .line 540
    return-void

    .line 539
    :catchall_2
    move-exception v2

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 511
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

    .line 545
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    monitor-exit v0

    return-object v1

    .line 547
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, "colors":Landroid/app/WallpaperColors;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 551
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 552
    :try_start_2
    const-string v3, "WallpaperManagerService"

    const-string v4, "Can\'t open default wallpaper stream"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    nop

    .line 562
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 553
    :cond_1
    return-object v2

    .line 556
    :cond_2
    :try_start_4
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 557
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 558
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 559
    invoke-static {v2}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v4

    move-object v0, v4

    .line 560
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 562
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 550
    :catchall_0
    move-exception v2

    .end local v0    # "colors":Landroid/app/WallpaperColors;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 562
    .restart local v0    # "colors":Landroid/app/WallpaperColors;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "colors":Landroid/app/WallpaperColors;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_4
    :goto_0
    throw v3
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 564
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "colors":Landroid/app/WallpaperColors;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Can\'t close default wallpaper stream"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_2

    .line 562
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 563
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Can\'t decode default wallpaper stream"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    move-object v1, v0

    .line 568
    .end local v0    # "colors":Landroid/app/WallpaperColors;
    .local v1, "colors":Landroid/app/WallpaperColors;
    :goto_2
    if-nez v1, :cond_5

    .line 569
    const-string v0, "WallpaperManagerService"

    const-string v2, "Extract default image wallpaper colors failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 571
    :cond_5
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 572
    :try_start_9
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    .line 573
    monitor-exit v2

    .line 576
    :goto_3
    return-object v1

    .line 573
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 547
    .end local v1    # "colors":Landroid/app/WallpaperColors;
    :catchall_4
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1
.end method

.method private findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "displayId"    # I

    .line 2376
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2377
    invoke-virtual {v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2378
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0

    .line 2380
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

    .line 584
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 587
    .local v3, "success":Z
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    .line 588
    .local v4, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 589
    .local v5, "cropHint":Landroid/graphics/Rect;
    new-instance v6, Landroid/view/DisplayInfo;

    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 590
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 601
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 602
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 603
    iget-object v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 604
    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const-string v10, "WallpaperManagerService"

    if-lez v9, :cond_12

    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v9, :cond_0

    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    goto/16 :goto_c

    .line 608
    :cond_0
    const/4 v9, 0x0

    .line 609
    .local v9, "needCrop":Z
    const/4 v11, 0x0

    .line 612
    .local v11, "needScale":Z
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 613
    iput v0, v5, Landroid/graphics/Rect;->top:I

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 614
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v12, v5, Landroid/graphics/Rect;->right:I

    .line 615
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v12, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 618
    :cond_1
    nop

    .line 619
    iget v12, v5, Landroid/graphics/Rect;->right:I

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v12, v13, :cond_2

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    goto :goto_0

    :cond_2
    move v12, v0

    .line 620
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

    .line 618
    :goto_1
    invoke-virtual {v5, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 623
    iget v12, v5, Landroid/graphics/Rect;->left:I

    if-gez v12, :cond_4

    .line 624
    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 626
    :cond_4
    iget v12, v5, Landroid/graphics/Rect;->top:I

    if-gez v12, :cond_5

    .line 627
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 631
    :cond_5
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-gt v12, v13, :cond_7

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 632
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

    .line 636
    :goto_4
    iget v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-ne v12, v13, :cond_9

    .line 637
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v13

    if-gt v12, v13, :cond_9

    .line 638
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

    .line 641
    if-eqz v11, :cond_a

    .line 642
    iget v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v12, v12

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 643
    .local v12, "scaleByHeight":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v13, v13

    .line 644
    .local v13, "newWidth":I
    iget v14, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ge v13, v14, :cond_a

    .line 645
    iget v14, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v14, v14

    iget v15, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 647
    .local v14, "screenAspectRatio":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v15, v15

    iput v15, v5, Landroid/graphics/Rect;->bottom:I

    .line 648
    const/4 v9, 0x1

    .line 659
    .end local v12    # "scaleByHeight":F
    .end local v13    # "newWidth":I
    .end local v14    # "screenAspectRatio":F
    :cond_a
    if-nez v9, :cond_d

    if-nez v11, :cond_d

    .line 668
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0x4

    int-to-long v12, v0

    .line 672
    .local v12, "estimateSize":J
    const-wide/32 v14, 0x6400000

    cmp-long v0, v12, v14

    if-gez v0, :cond_b

    .line 673
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    iget-object v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-static {v0, v8}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    .line 676
    :cond_b
    if-nez v3, :cond_c

    .line 677
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 685
    .end local v12    # "estimateSize":J
    :cond_c
    move-object/from16 v22, v4

    move-object/from16 v20, v6

    goto/16 :goto_d

    .line 687
    :cond_d
    const/4 v12, 0x0

    .line 688
    .local v12, "f":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 690
    .local v13, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    iget-object v14, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 691
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 690
    invoke-static {v14, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v14

    .line 698
    .local v14, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    div-int/2addr v15, v8

    move v8, v15

    .line 699
    .local v8, "actualScale":I
    const/4 v15, 0x1

    .line 700
    .local v15, "scale":I
    :goto_7
    mul-int/lit8 v0, v15, 0x2

    if-gt v0, v8, :cond_e

    .line 701
    mul-int/lit8 v15, v15, 0x2

    const/4 v0, 0x0

    goto :goto_7

    .line 703
    :cond_e
    iput v15, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 706
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 707
    .local v0, "estimateCrop":Landroid/graphics/Rect;
    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v1, v1

    const/high16 v17, 0x3f800000    # 1.0f

    div-float v1, v17, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 708
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

    .line 709
    .local v1, "hRatio":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 710
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

    .line 713
    .local v3, "destWidth":I
    move-object/from16 v20, v6

    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .local v20, "displayInfo":Landroid/view/DisplayInfo;
    :try_start_2
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v6

    if-le v3, v6, :cond_f

    .line 714
    iget v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 715
    .local v6, "newHeight":I
    move/from16 v21, v3

    .end local v3    # "destWidth":I
    .local v21, "destWidth":I
    iget v3, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    .line 721
    .local v3, "newWidth":I
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 722
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

    .line 723
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v23

    sub-int v23, v23, v6

    div-int/lit8 v23, v23, 0x2

    add-int v4, v4, v23

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 724
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 725
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 726
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 727
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v4, v4

    div-float v4, v17, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->scale(F)V

    goto :goto_8

    .line 713
    .end local v6    # "newHeight":I
    .end local v21    # "destWidth":I
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v3, "destWidth":I
    .restart local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :cond_f
    move/from16 v21, v3

    move-object/from16 v22, v4

    .line 733
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

    .line 734
    .local v3, "safeHeight":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 746
    .local v4, "safeWidth":I
    invoke-virtual {v14, v5, v7}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 747
    .local v6, "cropped":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 749
    if-nez v6, :cond_10

    .line 750
    move-object/from16 v17, v0

    .end local v0    # "estimateCrop":Landroid/graphics/Rect;
    .local v17, "estimateCrop":Landroid/graphics/Rect;
    const-string v0, "Could not decode new wallpaper"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v18

    goto :goto_9

    .line 753
    .end local v17    # "estimateCrop":Landroid/graphics/Rect;
    .restart local v0    # "estimateCrop":Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v17, v0

    .end local v0    # "estimateCrop":Landroid/graphics/Rect;
    .restart local v17    # "estimateCrop":Landroid/graphics/Rect;
    const/4 v0, 0x1

    invoke-static {v6, v4, v3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 765
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

    .line 770
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v12, v1

    .line 771
    new-instance v1, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v1, v12, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v13, v1

    .line 772
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 773
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 774
    const/4 v3, 0x1

    .line 781
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

    .line 782
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 783
    goto :goto_d

    .line 766
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

    .line 781
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

    .line 776
    :catch_0
    move-exception v0

    goto :goto_b

    .line 781
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v4, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v4

    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_a

    .line 776
    .end local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catch_1
    move-exception v0

    move-object/from16 v22, v4

    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_b

    .line 781
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

    .line 776
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

    .line 781
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

    .line 782
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 776
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

    .line 781
    .end local v3    # "success":Z
    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v18    # "success":Z
    .restart local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_b
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 782
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 783
    move/from16 v3, v18

    goto :goto_d

    .line 604
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

    .line 605
    .end local v3    # "success":Z
    .end local v4    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v18    # "success":Z
    .restart local v20    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_c
    const-string v0, "Invalid wallpaper data"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v3, 0x0

    .line 787
    .end local v18    # "success":Z
    .restart local v3    # "success":Z
    :goto_d
    if-nez v3, :cond_13

    .line 788
    const-string v0, "Unable to apply new wallpaper"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 792
    :cond_13
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 793
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 798
    :cond_14
    return-void
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .line 3004
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3005
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3006
    return p3

    .line 3008
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .locals 2
    .param p1, "displayId"    # I

    .line 995
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 996
    .local v0, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-nez v0, :cond_0

    .line 997
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    invoke-direct {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;-><init>(I)V

    move-object v0, v1

    .line 998
    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 999
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1001
    :cond_0
    return-object v0
.end method

.method private getMaximumSizeDimension(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 1016
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1017
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 1018
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

    .line 1019
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1021
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

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 383
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 384
    .local v1, "displayListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 387
    :cond_0
    return-object v0
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    .line 1663
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 3028
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 3029
    .local v1, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3030
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_2

    .line 3033
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3034
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3038
    if-nez v2, :cond_2

    .line 3039
    if-ne p2, v0, :cond_1

    .line 3040
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v4, "wallpaper_lock_orig"

    const-string/jumbo v5, "wallpaper_lock"

    invoke-direct {v0, p1, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 3042
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3043
    invoke-direct {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    goto :goto_1

    .line 3047
    :cond_1
    const-string v0, "WallpaperManagerService"

    const-string v4, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v4, "wallpaper_orig"

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v0, p1, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 3049
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3050
    invoke-direct {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3054
    :cond_2
    :goto_1
    return-object v2
.end method

.method private initializeFallbackWallpaper()V
    .locals 8

    .line 3168
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v0, :cond_0

    .line 3170
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v1, 0x0

    const-string/jumbo v2, "wallpaper_orig"

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3172
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3173
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v1

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3174
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3176
    :cond_0
    return-void
.end method

.method private isValidDisplay(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 2039
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

.method static synthetic lambda$attachServiceLocked$6(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 0
    .param p0, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 2785
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic lambda$dump$7(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "wpSize"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 3384
    const-string v0, "  displayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3385
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3386
    const-string v0, "  mWidth="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3387
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3388
    const-string v0, "  mHeight="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3389
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3390
    const-string v0, "  mPadding="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3391
    return-void
.end method

.method static synthetic lambda$dump$8(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 3406
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3407
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3408
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3409
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3410
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3411
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3412
    return-void
.end method

.method static synthetic lambda$dump$9(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 3444
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3445
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3446
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3447
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3448
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3449
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3450
    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1
    .param p0, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1057
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->disconnectLocked()V

    .line 1060
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .locals 1
    .param p0, "fallbackConnection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "display"    # Landroid/view/Display;

    .line 1065
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$3600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1065
    :goto_0
    return v0
.end method

.method private loadSettingsLocked(IZ)V
    .locals 19
    .param p1, "userId"    # I
    .param p2, "keepDimensionHints"    # Z

    .line 3058
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, " "

    const-string v4, "failed parsing "

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    .line 3059
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v6, 0x0

    .line 3060
    .local v6, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 3062
    .local v7, "file":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3063
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v8, 0x1

    const-string v9, "WallpaperManagerService"

    if-nez v0, :cond_2

    .line 3065
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 3067
    new-instance v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v11, "wallpaper_orig"

    const-string/jumbo v12, "wallpaper"

    invoke-direct {v10, v2, v11, v12}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 3068
    iput-boolean v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3069
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3070
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3071
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3072
    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_0

    .line 3074
    :cond_0
    const-string v10, "No static wallpaper imagery; defaults will be shown"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeFallbackWallpaper()V

    move-object v10, v0

    goto :goto_1

    .line 3063
    :cond_2
    move-object v10, v0

    .line 3079
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v10, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_1
    const/4 v11, 0x0

    .line 3080
    .local v11, "success":Z
    const/4 v12, 0x0

    invoke-direct {v1, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v13

    .line 3082
    .local v13, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_22
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1e

    move-object v6, v0

    .line 3083
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 3084
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3088
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 3089
    .local v14, "type":I
    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    .line 3090
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 3091
    .local v15, "tag":Ljava/lang/String;
    const-string/jumbo v8, "wp"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_18

    if-eqz v8, :cond_5

    .line 3093
    move/from16 v8, p2

    :try_start_2
    invoke-direct {v1, v0, v10, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 3096
    const-string v12, "component"
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_c

    move-object/from16 v16, v5

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v16, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v5, 0x0

    :try_start_3
    invoke-interface {v0, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    .line 3097
    .local v12, "comp":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 3098
    :try_start_4
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 3138
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "comp":Ljava/lang/String;
    .end local v14    # "type":I
    .end local v15    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_e

    .line 3136
    :catch_1
    move-exception v0

    goto/16 :goto_f

    .line 3134
    :catch_2
    move-exception v0

    goto/16 :goto_10

    .line 3132
    :catch_3
    move-exception v0

    goto/16 :goto_11

    .line 3130
    :catch_4
    move-exception v0

    goto/16 :goto_12

    .line 3128
    :catch_5
    move-exception v0

    goto/16 :goto_13

    .line 3099
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "comp":Ljava/lang/String;
    .restart local v14    # "type":I
    .restart local v15    # "tag":Ljava/lang/String;
    :cond_3
    nop

    :goto_3
    :try_start_5
    iput-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 3100
    iget-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_4

    const-string v5, "android"
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v17, "stream":Ljava/io/FileInputStream;
    :try_start_6
    iget-object v6, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 3102
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3101
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 3100
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :cond_4
    move-object/from16 v17, v6

    .line 3103
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    :goto_4
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    goto/16 :goto_6

    .line 3138
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
    goto/16 :goto_e

    .line 3136
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_f

    .line 3134
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_10

    .line 3132
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_11

    .line 3130
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_12

    .line 3128
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_13

    .line 3138
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    goto/16 :goto_8

    .line 3136
    :catch_d
    move-exception v0

    goto/16 :goto_9

    .line 3134
    :catch_e
    move-exception v0

    goto/16 :goto_a

    .line 3132
    :catch_f
    move-exception v0

    goto/16 :goto_b

    .line 3130
    :catch_10
    move-exception v0

    goto/16 :goto_c

    .line 3128
    :catch_11
    move-exception v0

    goto/16 :goto_d

    .line 3115
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
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
    const-string/jumbo v5, "kwp"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3117
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3118
    .local v5, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_6

    .line 3119
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v12, "wallpaper_lock_orig"

    move-object/from16 v18, v5

    .end local v5    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v18, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v5, "wallpaper_lock"

    invoke-direct {v6, v2, v12, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 3121
    .end local v18    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v5    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 3118
    :cond_6
    move-object/from16 v18, v5

    .line 3123
    :goto_5
    const/4 v6, 0x0

    invoke-direct {v1, v0, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_12

    goto :goto_7

    .line 3115
    .end local v5    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_7
    :goto_6
    goto :goto_7

    .line 3138
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    .end local v15    # "tag":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_e

    .line 3136
    :catch_13
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_f

    .line 3134
    :catch_14
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_10

    .line 3132
    :catch_15
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_11

    .line 3130
    :catch_16
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_12

    .line 3128
    :catch_17
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_13

    .line 3089
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "type":I
    :cond_8
    move/from16 v8, p2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 3126
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    :goto_7
    const/4 v5, 0x1

    if-ne v14, v5, :cond_9

    .line 3127
    const/4 v11, 0x1

    .line 3140
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    move-object/from16 v6, v17

    goto/16 :goto_15

    .line 3126
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "type":I
    :cond_9
    move v8, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 3138
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_18
    move-exception v0

    move/from16 v8, p2

    :goto_8
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_e

    .line 3136
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_19
    move-exception v0

    move/from16 v8, p2

    :goto_9
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_f

    .line 3134
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_1a
    move-exception v0

    move/from16 v8, p2

    :goto_a
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_10

    .line 3132
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_1b
    move-exception v0

    move/from16 v8, p2

    :goto_b
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_11

    .line 3130
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_1c
    move-exception v0

    move/from16 v8, p2

    :goto_c
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_12

    .line 3128
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_1d
    move-exception v0

    move/from16 v8, p2

    :goto_d
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_13

    .line 3138
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_1e
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3139
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 3136
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_1f
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3137
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_f
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
    goto :goto_14

    .line 3134
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_20
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3135
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_10
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
    goto :goto_14

    .line 3132
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_21
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3133
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_11
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
    goto :goto_14

    .line 3130
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_22
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3131
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_12
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
    goto :goto_14

    .line 3128
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_23
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3129
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_13
    const-string/jumbo v3, "no current wallpaper -- first boot?"

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_14
    nop

    .line 3141
    :goto_15
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3143
    if-nez v11, :cond_a

    .line 3144
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3145
    iget-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3146
    const-string v0, ""

    iput-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3148
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_16

    .line 3150
    :cond_a
    iget v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-gtz v0, :cond_b

    .line 3151
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3159
    :cond_b
    :goto_16
    const/4 v3, 0x0

    invoke-direct {v1, v13, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 3160
    invoke-direct {v1, v10, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3161
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3162
    .local v0, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_c

    .line 3163
    invoke-direct {v1, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3165
    :cond_c
    return-void
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userId"    # I

    .line 2876
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2877
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

    .line 2972
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2974
    .local v0, "preNWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2975
    .local v2, "originalWallpaper":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_orig"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2978
    .local v3, "newWallpaper":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2979
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2985
    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    .line 2987
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2992
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/wallpaper_info.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2993
    .local v4, "oldInfo":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2994
    new-instance v5, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v6, "wallpaper_info.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v5

    .line 2995
    .local v1, "newInfo":Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2998
    .end local v1    # "newInfo":Ljava/io/File;
    :cond_1
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 2999
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3001
    .end local v4    # "oldInfo":Ljava/io/File;
    :cond_2
    :goto_0
    return-void
.end method

.method private migrateSystemToLockWallpaperLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 2447
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2448
    .local v0, "sysWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 2452
    return-void

    .line 2456
    :cond_0
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2458
    .local v1, "lockWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2459
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2460
    iget-boolean v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iput-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2461
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2465
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2472
    nop

    .line 2474
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2475
    return-void

    .line 2467
    :catch_0
    move-exception v2

    .line 2468
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

    .line 2469
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2470
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2471
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2789
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2790
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2792
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2797
    goto :goto_1

    .line 2793
    :catch_0
    move-exception v2

    .line 2790
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2799
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2801
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2802
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2803
    return-void
.end method

.method private notifyColorListeners(Landroid/app/WallpaperColors;III)V
    .locals 8
    .param p1, "wallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v0, "colorListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    nop

    .line 437
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 438
    .local v2, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    const/4 v3, -0x1

    .line 439
    invoke-direct {p0, v3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v3

    .line 440
    .local v3, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 442
    .local v4, "keyguardListener":Landroid/app/IWallpaperManagerCallback;
    if-eqz v2, :cond_1

    .line 443
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 444
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 445
    invoke-virtual {v2, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 447
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 450
    .end local v5    # "count":I
    :cond_1
    if-eqz v3, :cond_3

    .line 451
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 452
    .restart local v5    # "count":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 453
    invoke-virtual {v3, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 455
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 457
    .end local v2    # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v3    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v5    # "count":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 460
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 462
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    goto :goto_3

    .line 463
    :catch_0
    move-exception v3

    .line 460
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 470
    .end local v2    # "i":I
    :cond_4
    if-eqz v4, :cond_5

    if-nez p4, :cond_5

    .line 472
    :try_start_2
    invoke-interface {v4, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 475
    goto :goto_4

    .line 473
    :catch_1
    move-exception v2

    .line 477
    :cond_5
    :goto_4
    return-void

    .line 457
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

    .line 359
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 360
    .local v0, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v0, :cond_0

    .line 362
    :try_start_0
    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    .line 367
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"    # I

    .line 370
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v1, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$la7x4YHA-l88Cd6HFTscnLBbKfI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$la7x4YHA-l88Cd6HFTscnLBbKfI;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 375
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 377
    :goto_0
    return-void
.end method

.method private notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"    # I
    .param p3, "displayId"    # I

    .line 393
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_0
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 395
    invoke-direct {p0, v1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 396
    .local v1, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    const/4 v2, -0x1

    .line 397
    invoke-direct {p0, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 399
    .local v2, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    monitor-exit v0

    return-void

    .line 408
    :cond_0
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 409
    .end local v2    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .local v1, "needsExtraction":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 413
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    .line 415
    if-eqz v1, :cond_3

    .line 416
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 417
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_1
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v2, :cond_2

    .line 420
    monitor-exit v0

    return-void

    .line 422
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    goto :goto_1

    .line 422
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 425
    :cond_3
    :goto_1
    return-void

    .line 409
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

    .line 2851
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2852
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_0

    .line 2853
    monitor-exit v0

    return-void

    .line 2855
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2856
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2857
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1

    .line 2858
    .local v1, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 2859
    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2860
    monitor-exit v0

    return-void

    .line 2864
    .end local v1    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_4

    .line 2865
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2866
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1

    .line 2867
    .restart local v1    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    .line 2868
    :cond_3
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2869
    .end local v1    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    goto :goto_0

    .line 2870
    :cond_4
    const-string v1, "WallpaperManagerService"

    const-string v2, "No wallpaper can be added to the new display"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    :goto_0
    monitor-exit v0

    .line 2873
    return-void

    .line 2872
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

    .line 3192
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3193
    .local v1, "idString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3194
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3195
    .local v2, "id":I
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-le v2, v3, :cond_0

    .line 3196
    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 3198
    .end local v2    # "id":I
    :cond_0
    goto :goto_0

    .line 3199
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3202
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v3

    .line 3204
    .local v3, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-nez p3, :cond_2

    .line 3205
    const-string/jumbo v4, "width"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 3206
    const-string v4, "height"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 3208
    :cond_2
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropLeft"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3209
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropTop"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3210
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropRight"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3211
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropBottom"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3212
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingLeft"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3213
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingTop"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3214
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingRight"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3215
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingBottom"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3216
    const-string v4, "colorsCount"

    invoke-direct {p0, p1, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 3217
    .local v4, "colorsCount":I
    if-lez v4, :cond_6

    .line 3218
    const/4 v5, 0x0

    .local v5, "primary":Landroid/graphics/Color;
    const/4 v6, 0x0

    .local v6, "secondary":Landroid/graphics/Color;
    const/4 v7, 0x0

    .line 3219
    .local v7, "tertiary":Landroid/graphics/Color;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_5

    .line 3220
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

    .line 3221
    .local v9, "color":Landroid/graphics/Color;
    if-nez v8, :cond_3

    .line 3222
    move-object v5, v9

    goto :goto_2

    .line 3223
    :cond_3
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    .line 3224
    move-object v6, v9

    goto :goto_2

    .line 3225
    :cond_4
    const/4 v10, 0x2

    if-ne v8, v10, :cond_5

    .line 3226
    move-object v7, v9

    .line 3219
    .end local v9    # "color":Landroid/graphics/Color;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3231
    .end local v8    # "i":I
    :cond_5
    const-string v8, "colorHints"

    invoke-direct {p0, p1, v8, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 3232
    .local v2, "colorHints":I
    new-instance v8, Landroid/app/WallpaperColors;

    invoke-direct {v8, v5, v6, v7, v2}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    iput-object v8, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3234
    .end local v2    # "colorHints":I
    .end local v5    # "primary":Landroid/graphics/Color;
    .end local v6    # "secondary":Landroid/graphics/Color;
    .end local v7    # "tertiary":Landroid/graphics/Color;
    :cond_6
    const-string/jumbo v2, "name"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3235
    const-string v2, "backup"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3236
    return-void
.end method

.method private removeDisplayData(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 991
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 992
    return-void
.end method

.method private restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 18
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3297
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

    const-string/jumbo v5, "res:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3298
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3300
    .local v5, "resName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3301
    .local v0, "pkg":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 3302
    .local v6, "colon":I
    if-lez v6, :cond_0

    .line 3303
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 3302
    :cond_0
    move-object v7, v0

    .line 3306
    .end local v0    # "pkg":Ljava/lang/String;
    .local v7, "pkg":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 3307
    .local v0, "ident":Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 3308
    .local v8, "slash":I
    if-lez v8, :cond_1

    .line 3309
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    .line 3308
    :cond_1
    move-object v9, v0

    .line 3312
    .end local v0    # "ident":Ljava/lang/String;
    .local v9, "ident":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 3313
    .local v0, "type":Ljava/lang/String;
    const/4 v10, 0x1

    if-lez v6, :cond_2

    if-lez v8, :cond_2

    sub-int v11, v8, v6

    if-le v11, v10, :cond_2

    .line 3314
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_2

    .line 3317
    :cond_2
    move-object v11, v0

    .end local v0    # "type":Ljava/lang/String;
    .local v11, "type":Ljava/lang/String;
    :goto_2
    if-eqz v7, :cond_e

    if-eqz v9, :cond_e

    if-eqz v11, :cond_e

    .line 3318
    const/4 v12, -0x1

    .line 3319
    .local v12, "resId":I
    const/4 v13, 0x0

    .line 3320
    .local v13, "res":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 3321
    .local v14, "fos":Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 3323
    .local v15, "cos":Ljava/io/FileOutputStream;
    move-object/from16 v10, p0

    :try_start_0
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 3324
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3325
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v12, v4

    .line 3326
    if-nez v12, :cond_5

    .line 3327
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

    .line 3329
    nop

    .line 3357
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3358
    if-eqz v14, :cond_3

    .line 3359
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3361
    :cond_3
    if-eqz v15, :cond_4

    .line 3362
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3364
    :cond_4
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3365
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3329
    const/4 v2, 0x0

    return v2

    .line 3332
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

    .line 3333
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3334
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3335
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3337
    :cond_6
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v14, v0

    .line 3338
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v0

    .line 3340
    const v0, 0x8000

    new-array v0, v0, [B

    .line 3342
    .local v0, "buffer":[B
    :goto_3
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move/from16 v17, v4

    .local v17, "amt":I
    if-lez v4, :cond_7

    .line 3343
    move/from16 v4, v17

    const/4 v1, 0x0

    .end local v17    # "amt":I
    .local v4, "amt":I
    invoke-virtual {v14, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3344
    invoke-virtual {v15, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v1, p1

    goto :goto_3

    .line 3348
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

    .line 3349
    nop

    .line 3357
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3358
    nop

    .line 3359
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3361
    nop

    .line 3362
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3364
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3365
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3349
    const/4 v0, 0x1

    return v0

    .line 3357
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "amt":I
    .end local v16    # "c":Landroid/content/Context;
    .end local v17    # "buffer":[B
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 3354
    :catch_0
    move-exception v0

    .line 3355
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "IOException while restoring wallpaper "

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3357
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3358
    if-eqz v14, :cond_8

    .line 3359
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3361
    :cond_8
    if-eqz v15, :cond_9

    .line 3362
    :goto_4
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3364
    :cond_9
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3365
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3366
    goto :goto_6

    .line 3352
    :catch_1
    move-exception v0

    .line 3353
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

    .line 3357
    nop

    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3358
    if-eqz v14, :cond_a

    .line 3359
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3361
    :cond_a
    if-eqz v15, :cond_9

    .line 3362
    goto :goto_4

    .line 3350
    :catch_2
    move-exception v0

    .line 3351
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

    .line 3357
    nop

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3358
    if-eqz v14, :cond_b

    .line 3359
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3361
    :cond_b
    if-eqz v15, :cond_9

    .line 3362
    goto :goto_4

    .line 3357
    :goto_5
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3358
    if-eqz v14, :cond_c

    .line 3359
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3361
    :cond_c
    if-eqz v15, :cond_d

    .line 3362
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3364
    :cond_d
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3365
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 3317
    .end local v12    # "resId":I
    .end local v13    # "res":Ljava/io/InputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "cos":Ljava/io/FileOutputStream;
    :cond_e
    move-object/from16 v10, p0

    goto :goto_6

    .line 3297
    .end local v5    # "resName":Ljava/lang/String;
    .end local v6    # "colon":I
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "slash":I
    .end local v9    # "ident":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :cond_f
    move-object/from16 v10, p0

    .line 3369
    :goto_6
    const/4 v1, 0x0

    return v1
.end method

.method private saveSettingsLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 2881
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 2882
    .local v0, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v1, 0x0

    .line 2883
    .local v1, "fstream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 2885
    .local v2, "stream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2886
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v1, v4

    .line 2887
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 2888
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2889
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2893
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2894
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v4, :cond_0

    .line 2895
    const-string/jumbo v5, "wp"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2897
    :cond_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v4, v5

    .line 2898
    if-eqz v4, :cond_1

    .line 2899
    const-string/jumbo v5, "kwp"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2902
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2904
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2905
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2906
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 2907
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2911
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0

    .line 2908
    :catch_0
    move-exception v3

    .line 2909
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2910
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2912
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;I)V
    .locals 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 2528
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

    .line 2530
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2532
    const/4 v0, 0x1

    .line 2533
    .local v0, "which":I
    const/4 v1, 0x0

    .line 2536
    .local v1, "shouldNotifyColors":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2538
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2539
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v3, :cond_5

    .line 2542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v10, v4

    .line 2548
    .local v10, "ident":J
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2549
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2552
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 2557
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    .line 2558
    or-int/lit8 v0, v0, 0x2

    .line 2562
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2563
    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v12, v4

    .line 2564
    .local v12, "same":Z
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2565
    if-nez v12, :cond_2

    .line 2566
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2568
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2569
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2570
    const/4 v1, 0x1

    .line 2573
    .end local v12    # "same":Z
    :cond_3
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2574
    nop

    .line 2575
    .end local v10    # "ident":J
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2577
    if-eqz v1, :cond_4

    .line 2578
    invoke-direct {p0, v3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2579
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2581
    :cond_4
    return-void

    .line 2573
    .restart local v10    # "ident":J
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "which":I
    .end local v1    # "shouldNotifyColors":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "userId":I
    throw v4

    .line 2540
    .end local v10    # "ident":J
    .restart local v0    # "which":I
    .restart local v1    # "shouldNotifyColors":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "name":Landroid/content/ComponentName;
    .restart local p2    # "userId":I
    :cond_5
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

    .line 2575
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

    .line 1039
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1040
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 1041
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->supportsMultipleDisplays()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1040
    :cond_1
    return v0

    .line 1043
    :cond_2
    return v0
.end method

.method private updateFallbackConnection()V
    .locals 4

    .line 1047
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1048
    :cond_0
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1049
    .local v0, "systemConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1050
    .local v1, "fallbackConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    if-nez v1, :cond_1

    .line 1051
    const-string v2, "WallpaperManagerService"

    const-string v3, "Fallback wallpaper connection has not been created yet!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-void

    .line 1054
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1055
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1056
    sget-object v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$pVmree9DyIpBSg0s3RDK3MDesvs;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$pVmree9DyIpBSg0s3RDK3MDesvs;

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1061
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 1064
    :cond_2
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$SxaUJpgTTfzUoz6u3AWuAOQdoNw;

    invoke-direct {v2, v1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$SxaUJpgTTfzUoz6u3AWuAOQdoNw;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V

    .line 1068
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$tRb4SPHGj0pcxb3p7arcqKFqs08;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$tRb4SPHGj0pcxb3p7arcqKFqs08;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1074
    :cond_3
    :goto_0
    return-void

    .line 1047
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

    .line 2919
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    .line 2920
    .local v0, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2921
    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2922
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "width"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2923
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2925
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropLeft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2926
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropTop"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2927
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropRight"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2928
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropBottom"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2930
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_0

    .line 2931
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingLeft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2933
    :cond_0
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_1

    .line 2934
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingTop"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2936
    :cond_1
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_2

    .line 2937
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingRight"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2939
    :cond_2
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_3

    .line 2940
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingBottom"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2943
    :cond_3
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v2, :cond_5

    .line 2944
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v2}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 2945
    .local v2, "colorsCount":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "colorsCount"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2946
    if-lez v2, :cond_4

    .line 2947
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 2948
    iget-object v4, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v4}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Color;

    .line 2949
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

    .line 2947
    .end local v4    # "wc":Landroid/graphics/Color;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2952
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2953
    invoke-virtual {v3}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2952
    const-string v4, "colorHints"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2956
    .end local v2    # "colorsCount":I
    :cond_5
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2957
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_6

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 2958
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2959
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2960
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 2959
    const-string v3, "component"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2963
    :cond_6
    iget-boolean v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    if-eqz v2, :cond_7

    .line 2964
    const-string v2, "backup"

    const-string/jumbo v3, "true"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2967
    :cond_7
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2968
    return-void
.end method


# virtual methods
.method public clearWallpaper(Ljava/lang/String;II)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 1903
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1907
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1908
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1907
    const-string v6, "clearWallpaper"

    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1910
    .end local p3    # "userId":I
    .local v0, "userId":I
    const/4 p3, 0x0

    .line 1911
    .local p3, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1912
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, p2, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1914
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 1915
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v2

    .line 1917
    :cond_1
    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-nez p3, :cond_3

    .line 1918
    :cond_2
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v3

    .line 1920
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    if-eqz p3, :cond_4

    .line 1924
    invoke-direct {p0, p3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1925
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1927
    :cond_4
    return-void

    .line 1920
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1905
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

    .line 1930
    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq v8, v1, :cond_1

    if-ne v8, v0, :cond_0

    goto :goto_0

    .line 1931
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper to clear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1934
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1935
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x0

    if-ne v8, v0, :cond_3

    .line 1936
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1937
    if-nez v1, :cond_2

    .line 1942
    return-void

    .line 1937
    :cond_2
    move-object v11, v1

    goto :goto_1

    .line 1945
    :cond_3
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1946
    if-nez v1, :cond_4

    .line 1948
    invoke-direct {v7, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1949
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v11, v1

    goto :goto_1

    .line 1946
    :cond_4
    move-object v11, v1

    .line 1952
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v11, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_1
    if-nez v11, :cond_5

    .line 1953
    return-void

    .line 1956
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1958
    .local v12, "ident":J
    :try_start_0
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1959
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1960
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1961
    if-ne v8, v0, :cond_7

    .line 1962
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 1963
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 1964
    .local v1, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v1, :cond_6

    .line 1969
    :try_start_1
    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1972
    goto :goto_2

    .line 1970
    :catch_0
    move-exception v0

    .line 1974
    :cond_6
    :goto_2
    :try_start_2
    invoke-direct {v7, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2006
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1975
    return-void

    .line 1979
    .end local v1    # "cb":Landroid/app/IWallpaperManagerCallback;
    :cond_7
    const/4 v14, 0x0

    .line 1981
    .local v14, "e":Ljava/lang/RuntimeException;
    const/4 v15, 0x0

    :try_start_3
    iput-object v15, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 1982
    iput-boolean v2, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1983
    iget v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v9, v0, :cond_8

    .line 2006
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1983
    return-void

    .line 1984
    :cond_8
    if-eqz p1, :cond_9

    .line 1985
    :try_start_4
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v0

    goto :goto_3

    .line 1986
    :cond_9
    move-object v2, v15

    :goto_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1984
    move-object/from16 v1, p0

    move-object v5, v11

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_a

    .line 2006
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1987
    return-void

    .line 1991
    :cond_a
    goto :goto_4

    .line 1989
    :catch_1
    move-exception v0

    .line 1990
    .local v0, "e1":Ljava/lang/IllegalArgumentException;
    move-object v14, v0

    .line 1997
    .end local v0    # "e1":Ljava/lang/IllegalArgumentException;
    :goto_4
    :try_start_5
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1998
    invoke-direct {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1999
    if-eqz v10, :cond_b

    .line 2001
    :try_start_6
    invoke-interface {v10, v15}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2003
    goto :goto_5

    .line 2002
    :catch_2
    move-exception v0

    .line 2006
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :cond_b
    :goto_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2007
    nop

    .line 2008
    return-void

    .line 2006
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3374
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WallpaperManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3376
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3377
    :try_start_0
    const-string v1, "System wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3378
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3379
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3380
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v4, " User "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3381
    const-string v4, ": id="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 3382
    const-string v4, " Display state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3383
    new-instance v4, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$93YXv2Z9dcGnT0Vr4Zebgn1qyVM;

    invoke-direct {v4, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$93YXv2Z9dcGnT0Vr4Zebgn1qyVM;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->forEachDisplayData(Ljava/util/function/Consumer;)V

    .line 3392
    const-string v4, "  mCropHint="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3393
    const-string v4, "  mName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3394
    const-string v4, "  mAllowBackup="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3395
    const-string v4, "  mWallpaperComponent="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3396
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_2

    .line 3397
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3398
    .local v4, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v5, "  Wallpaper connection "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3399
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3400
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3401
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v5, :cond_1

    .line 3402
    const-string v5, "    mInfo.component="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3403
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v5}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3405
    :cond_1
    new-instance v5, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VUhQWq8Flr0dsQqeVHhHT8jU7qY;

    invoke-direct {v5, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VUhQWq8Flr0dsQqeVHhHT8jU7qY;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3413
    const-string v5, "    mService="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3414
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3415
    const-string v5, "    mLastDiedTime="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3416
    iget-wide v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    .line 3378
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3419
    .end local v2    # "i":I
    :cond_3
    const-string v2, "Lock wallpaper state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3420
    nop

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3421
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3422
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3423
    const-string v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3424
    const-string v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3425
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3426
    const-string v3, "  mAllowBackup="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3420
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3428
    .end local v1    # "i":I
    :cond_4
    const-string v1, "Fallback wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3429
    const-string v1, " User "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3430
    const-string v1, ": id="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3431
    const-string v1, "  mCropHint="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3432
    const-string v1, "  mName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3433
    const-string v1, "  mAllowBackup="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3434
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_6

    .line 3435
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3436
    .local v1, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v2, "  Fallback Wallpaper connection "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3437
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3438
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3439
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_5

    .line 3440
    const-string v2, "    mInfo.component="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3441
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3443
    :cond_5
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$4phuz9MKBqoKfDMu8M8EBVJyI2I;

    invoke-direct {v2, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$4phuz9MKBqoKfDMu8M8EBVJyI2I;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3451
    const-string v2, "    mService="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3452
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3453
    const-string v2, "    mLastDiedTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3454
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 3456
    .end local v1    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_6
    monitor-exit v0

    .line 3457
    return-void

    .line 3456
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

    .line 1668
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1669
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1670
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1671
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1669
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1673
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

    .line 1025
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;>;"
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 1027
    .local v1, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1025
    .end local v1    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1029
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getHeightHint(I)I
    .locals 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2117
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2118
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2121
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2122
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    .line 2123
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    .line 2124
    .local v2, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    monitor-exit v0

    return v3

    .line 2126
    .end local v2    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2119
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

    .line 2128
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

    .line 1747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1751
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1752
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1748
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 17
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p3, "which"    # I
    .param p4, "outParams"    # Landroid/os/Bundle;
    .param p5, "wallpaperUserId"    # I

    .line 2178
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 2180
    .local v5, "hasPrivilege":I
    const/4 v0, 0x1

    if-eqz v5, :cond_0

    .line 2181
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 2182
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2181
    move-object/from16 v9, p1

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/os/storage/StorageManager;->checkPermissionReadImages(ZIILjava/lang/String;)Z

    goto :goto_0

    .line 2180
    :cond_0
    move-object/from16 v9, p1

    .line 2185
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    .line 2185
    const-string v15, "getWallpaper"

    move/from16 v12, p5

    invoke-static/range {v10 .. v16}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2188
    .end local p5    # "wallpaperUserId":I
    .local v6, "wallpaperUserId":I
    const/4 v7, 0x2

    if-eq v3, v0, :cond_2

    if-ne v3, v7, :cond_1

    goto :goto_1

    .line 2189
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2192
    :cond_2
    :goto_1
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2194
    if-ne v3, v7, :cond_3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_2
    move-object v7, v0

    .line 2195
    .local v7, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v10, v0

    .line 2196
    .local v10, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v11, 0x0

    if-nez v10, :cond_4

    .line 2200
    monitor-exit v8

    return-object v11

    .line 2203
    :cond_4
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v0

    .line 2205
    .local v12, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-eqz v4, :cond_5

    .line 2206
    :try_start_1
    const-string/jumbo v0, "width"

    iget v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {v4, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2207
    const-string v0, "height"

    iget v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v4, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 2216
    :catch_0
    move-exception v0

    goto :goto_4

    .line 2209
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 2210
    invoke-static {v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2212
    :cond_6
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_7

    .line 2213
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v11

    .line 2215
    :cond_7
    :try_start_3
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    const/high16 v13, 0x10000000

    invoke-static {v0, v13}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v8

    return-object v0

    .line 2218
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    const-string v13, "WallpaperManagerService"

    const-string v14, "Error getting wallpaper"

    invoke-static {v13, v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2220
    nop

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    monitor-exit v8

    return-object v11

    .line 2221
    .end local v7    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    .end local v10    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v12    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
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

    .line 2340
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2341
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2343
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

    .line 2346
    const/4 v2, 0x0

    .line 2349
    .local v2, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2350
    if-ne p1, v1, :cond_2

    .line 2351
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v2, v1

    goto :goto_1

    .line 2364
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2356
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 2357
    invoke-direct {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    move-object v2, v1

    .line 2360
    :cond_3
    if-nez v2, :cond_4

    .line 2361
    const/4 v0, 0x0

    monitor-exit v3

    return-object v0

    .line 2363
    :cond_4
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 2364
    .local v0, "shouldExtract":Z
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2366
    if-eqz v0, :cond_6

    .line 2367
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2370
    :cond_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2371
    :try_start_1
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    monitor-exit v1

    return-object v3

    .line 2372
    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 2364
    .end local v0    # "shouldExtract":Z
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getWallpaperIdForUser(II)I
    .locals 7
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2239
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2239
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getWallpaperIdForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2242
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2243
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2247
    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2248
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2249
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2250
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v2, :cond_3

    .line 2251
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    monitor-exit v1

    return v3

    .line 2253
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    monitor-exit v1

    .line 2254
    const/4 v1, -0x1

    return v1

    .line 2253
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

    .line 2226
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2226
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getWallpaperInfo"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2228
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2229
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2230
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    .line 2231
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v0

    return-object v2

    .line 2233
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2234
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWidthHint(I)I
    .locals 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2099
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2100
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2103
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2104
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    .line 2105
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    .line 2106
    .local v2, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    monitor-exit v0

    return v3

    .line 2108
    .end local v2    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2101
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

    .line 2110
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

    .line 2011
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2013
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2015
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2017
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2018
    nop

    .line 2019
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

    .line 2021
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2022
    goto :goto_0

    .line 2024
    :cond_0
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2025
    .local v7, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v7, :cond_1

    .line 2027
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 2028
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v7, v6

    .line 2030
    :cond_1
    if-eqz v7, :cond_2

    iget-object v6, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2031
    const/4 v4, 0x1

    monitor-exit v0

    return v4

    .line 2033
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    goto :goto_0

    .line 2034
    .end local v1    # "ident":J
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    monitor-exit v0

    .line 2035
    return v6

    .line 2017
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Ljava/lang/String;
    throw v3

    .line 2034
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

    .line 1652
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1653
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1658
    invoke-direct {p0, v0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1659
    invoke-direct {p0, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1660
    return-void
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2823
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2824
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2825
    .local v1, "uidPackages":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2826
    .local v2, "uidMatchPackage":Z
    if-nez v2, :cond_0

    .line 2827
    const/4 v3, 0x0

    return v3

    .line 2830
    :cond_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 2831
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 2834
    :cond_1
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 2835
    .local v4, "um":Landroid/os/UserManager;
    const-string/jumbo v6, "no_set_wallpaper"

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5

    .line 2832
    .end local v4    # "um":Landroid/os/UserManager;
    :cond_2
    :goto_0
    return v5
.end method

.method public isWallpaperBackupEligible(II)Z
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 2844
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2845
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0

    .line 2846
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_0
    nop

    .line 2847
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 2841
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

    .line 2817
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

    .line 372
    iget v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 373
    return-void
.end method

.method public synthetic lambda$switchUser$4$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 2
    .param p1, "systemWallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "lockWallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1851
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1852
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1853
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1854
    return-void
.end method

.method public synthetic lambda$switchUser$5$WallpaperManagerService(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1860
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/wallpaper/OpWallpaperHelperInjector;->setupDefaultKeyguardWallpaper(Landroid/content/Context;I)V

    .line 1861
    return-void
.end method

.method public synthetic lambda$updateFallbackConnection$3$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1
    .param p1, "fallbackConnection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1069
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1072
    :cond_0
    return-void
.end method

.method makeWallpaperIdLocked()I
    .locals 1

    .line 1033
    :goto_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 1034
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-eqz v0, :cond_0

    .line 1035
    return v0

    .line 1034
    :cond_0
    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 1773
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 1774
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    goto :goto_0

    .line 1775
    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 1776
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 1778
    :cond_1
    :goto_0
    return-void
.end method

.method onRemoveUser(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 1817
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    .line 1819
    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1820
    .local v0, "wallpaperDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1821
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 1822
    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1823
    .local v5, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1822
    nop

    .end local v5    # "filename":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1825
    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1826
    monitor-exit v1

    .line 1827
    return-void

    .line 1826
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onUnlockUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1782
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1783
    :try_start_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_1

    .line 1784
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1786
    nop

    .line 1787
    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1788
    .local v1, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1789
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1796
    .end local v1    # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1797
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1798
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1810
    .local v1, "relabeler":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1813
    .end local v1    # "relabeler":Ljava/lang/Runnable;
    :cond_1
    monitor-exit v0

    .line 1814
    return-void

    .line 1813
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .locals 7
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 2260
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "registerWallpaperColorsCallback"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2262
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2265
    .local v1, "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-nez v1, :cond_0

    .line 2266
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 2267
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2269
    :cond_0
    nop

    .line 2270
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 2271
    .local v2, "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-nez v2, :cond_1

    .line 2272
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    .line 2273
    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2275
    :cond_1
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2276
    nop

    .end local v1    # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    .end local v2    # "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    monitor-exit v0

    .line 2277
    return-void

    .line 2276
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

    .line 2048
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2049
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2050
    return-void

    .line 2054
    :cond_0
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2055
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2057
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2058
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2059
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 2060
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_8

    if-lez p2, :cond_8

    .line 2064
    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2068
    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    .line 2069
    .local v4, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ne p1, v5, :cond_1

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-eq p2, v5, :cond_6

    .line 2070
    :cond_1
    iput p1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 2071
    iput p2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 2072
    if-nez p4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2073
    :cond_2
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_3

    monitor-exit v0

    return-void

    .line 2074
    :cond_3
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_6

    .line 2075
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2076
    invoke-virtual {v5, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v5

    .line 2077
    .local v5, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-eqz v5, :cond_4

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    .line 2078
    .local v6, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_0
    if-eqz v6, :cond_5

    .line 2080
    :try_start_1
    invoke-interface {v6, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2082
    goto :goto_1

    .line 2081
    :catch_0
    move-exception v2

    .line 2083
    :goto_1
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_2

    .line 2084
    :cond_5
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    .line 2088
    iput-boolean v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDimensionsChanged:Z

    .line 2092
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v5    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .end local v6    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_6
    :goto_2
    monitor-exit v0

    .line 2093
    return-void

    .line 2065
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

    .line 2061
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    .restart local p4    # "displayId":I
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "width and height must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p4    # "displayId":I
    throw v2

    .line 2092
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

    .line 2135
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2137
    return-void

    .line 2139
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2140
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2143
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2144
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 2145
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ltz v4, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v4, :cond_6

    .line 2149
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    .line 2150
    .local v4, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2151
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2152
    if-nez p3, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2153
    :cond_1
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_2

    monitor-exit v0

    return-void

    .line 2154
    :cond_2
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_5

    .line 2155
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2156
    invoke-virtual {v5, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v5

    .line 2157
    .local v5, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 2158
    .local v6, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_0
    if-eqz v6, :cond_4

    .line 2160
    :try_start_1
    invoke-interface {v6, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2162
    goto :goto_1

    .line 2161
    :catch_0
    move-exception v2

    .line 2163
    :goto_1
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_2

    .line 2164
    :cond_4
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    .line 2168
    iput-boolean v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mPaddingChanged:Z

    .line 2172
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v5    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .end local v6    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_5
    :goto_2
    monitor-exit v0

    .line 2173
    return-void

    .line 2146
    .restart local v1    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "padding must be positive: "

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

    .line 2141
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

    .line 2172
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

    .line 2306
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2307
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    .line 2308
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2310
    .local v1, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 2311
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2313
    :cond_0
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .local v2, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    goto :goto_0

    .line 2315
    .end local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_1
    const/4 v2, 0x0

    .line 2317
    .end local v1    # "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2319
    if-eqz v2, :cond_2

    .line 2321
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2324
    goto :goto_1

    .line 2322
    :catch_0
    move-exception v0

    .line 2326
    :cond_2
    :goto_1
    return-void

    .line 2317
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

    .line 2330
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2331
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2332
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 2333
    monitor-exit v0

    .line 2334
    const/4 v0, 0x1

    return v0

    .line 2333
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

    .line 2388
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

    .line 2390
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2392
    and-int/lit8 v0, p6, 0x3

    if-eqz v0, :cond_6

    .line 2398
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2403
    :cond_0
    if-nez p3, :cond_1

    .line 2404
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p3, v0

    goto :goto_0

    .line 2406
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_4

    move-object v0, p3

    .line 2413
    .end local p3    # "cropHint":Landroid/graphics/Rect;
    .local v0, "cropHint":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2421
    const/4 p3, 0x1

    if-ne p6, p3, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2425
    invoke-direct {p0, p8}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 2428
    :cond_2
    invoke-direct {p0, p8, p6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 2429
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2431
    .local v3, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 2432
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v5, :cond_3

    .line 2433
    iput-boolean p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2434
    iput p6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 2435
    iput-object p7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 2436
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2437
    iput-boolean p4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2439
    :cond_3
    nop

    .line 2441
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 2439
    return-object v5

    .line 2441
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception p3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 2443
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

    .line 2409
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

    .line 2399
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 2393
    :cond_6
    const-string v0, "Must specify a valid wallpaper category to set"

    .line 2394
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2524
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 2525
    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2516
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2517
    invoke-direct {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 2519
    :cond_0
    return-void
.end method

.method public settingsRestored()V
    .locals 11

    .line 3241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5

    .line 3247
    const/4 v0, 0x0

    .line 3248
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v1, 0x0

    .line 3249
    .local v1, "success":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3250
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3251
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v4

    .line 3252
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3253
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3254
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 3255
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3256
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3261
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3263
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 3267
    :cond_1
    const-string v4, ""

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3269
    const/4 v1, 0x1

    goto :goto_0

    .line 3272
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v1, v4

    .line 3276
    :goto_0
    if-eqz v1, :cond_3

    .line 3277
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3278
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3282
    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3284
    if-nez v1, :cond_4

    .line 3285
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

    .line 3286
    const-string v2, ""

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3287
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3290
    :cond_4
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3291
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3292
    monitor-exit v4

    .line 3293
    return-void

    .line 3292
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3282
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 3242
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v1    # "success":Z
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "settingsRestored() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1756
    if-eqz p1, :cond_0

    .line 1757
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v0, :cond_0

    .line 1758
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1759
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1762
    :cond_0
    return-void
.end method

.method stopObserversLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1765
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1766
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1767
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1768
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1769
    return-void
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 1832
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1833
    :try_start_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_0

    .line 1834
    monitor-exit v0

    return-void

    .line 1836
    :cond_0
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1837
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1838
    .local v1, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1839
    .local v2, "tmpLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 1841
    .local v3, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v4, :cond_2

    .line 1842
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1843
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 1845
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1846
    .end local v2    # "tmpLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1850
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$xeJGAwCI8tssclwKFf8jMsYdoKQ;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$xeJGAwCI8tssclwKFf8jMsYdoKQ;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1858
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1859
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$T0_AqEZbb981DGpVUrLSw9u11Og;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$T0_AqEZbb981DGpVUrLSw9u11Og;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1864
    :cond_3
    return-void

    .line 1846
    .end local v1    # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v3    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 15
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 1867
    move-object v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1868
    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    .line 1869
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    :goto_0
    move-object v11, v0

    .line 1871
    .local v11, "cname":Landroid/content/ComponentName;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 1874
    const/4 v1, 0x0

    .line 1876
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

    .line 1879
    goto :goto_1

    .line 1878
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1881
    .end local v1    # "si":Landroid/content/pm/ServiceInfo;
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    :goto_1
    const/4 v12, 0x1

    if-nez v0, :cond_1

    .line 1882
    :try_start_2
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper; clearing"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    iget v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v13, p2

    :try_start_3
    invoke-virtual {p0, v10, v12, v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_2

    .line 1885
    :cond_1
    move-object/from16 v13, p2

    const-string v1, "WallpaperManagerService"

    const-string v2, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    iget-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iput-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1890
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const-string/jumbo v3, "wallpaper_lock_orig"

    const-string/jumbo v4, "wallpaper_lock"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v14, v1

    .line 1892
    .local v14, "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0, v14, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1893
    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v14

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1894
    iput-boolean v12, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    goto :goto_2

    .line 1871
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v14    # "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    move-object/from16 v13, p2

    .line 1897
    .end local v11    # "cname":Landroid/content/ComponentName;
    :goto_2
    monitor-exit v9

    .line 1898
    return-void

    .line 1897
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

    .line 1677
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initialize()V

    .line 1679
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1682
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1684
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1688
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1691
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1695
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1703
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1704
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1705
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1716
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1717
    .local v2, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1732
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    const-string v5, "WallpaperManagerService"

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    goto :goto_0

    .line 1739
    :catch_0
    move-exception v3

    .line 1740
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1742
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .locals 7
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 2282
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "unregisterWallpaperColorsCallback"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2284
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2287
    .local v1, "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-eqz v1, :cond_0

    .line 2288
    nop

    .line 2289
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 2290
    .local v2, "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-eqz v2, :cond_0

    .line 2291
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2294
    .end local v1    # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    .end local v2    # "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    :cond_0
    monitor-exit v0

    .line 2295
    return-void

    .line 2294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2479
    if-nez p1, :cond_0

    const-string p1, ""

    .line 2481
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 2482
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2483
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 2484
    nop

    .line 2485
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    .line 2484
    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2489
    :cond_1
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2491
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2492
    return-object v0

    .line 2494
    :cond_2
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v3

    iput v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2496
    if-eqz p3, :cond_3

    .line 2497
    const-string v3, "android.service.wallpaper.extra.ID"

    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2500
    :cond_3
    iput-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2505
    return-object v2

    .line 2506
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 2507
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2509
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    return-object v0
.end method
