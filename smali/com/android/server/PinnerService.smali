.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$PinnerHandler;,
        Lcom/android/server/PinnerService$PinnedApp;,
        Lcom/android/server/PinnerService$PinRange;,
        Lcom/android/server/PinnerService$PinnedFile;,
        Lcom/android/server/PinnerService$BinderService;,
        Lcom/android/server/PinnerService$PinRangeSourceStream;,
        Lcom/android/server/PinnerService$PinRangeSourceStatic;,
        Lcom/android/server/PinnerService$PinRangeSource;,
        Lcom/android/server/PinnerService$AppKey;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_CAMERA:I = 0x0

.field private static final KEY_HOME:I = 0x1

.field private static final MATCH_FLAGS:I = 0xd0000

.field private static final MAX_CAMERA_PIN_SIZE:I = 0x5000000

.field private static final MAX_HOME_PIN_SIZE:I = 0x600000

.field private static final PAGE_SIZE:I

.field private static final PIN_META_FILENAME:Ljava/lang/String; = "pinlist.meta"

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mBinderService:Lcom/android/server/PinnerService$BinderService;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mPendingRepin:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedApps:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/PinnerService$PinnedApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedFiles:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    .line 135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 140
    new-instance v0, Lcom/android/server/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 160
    .local v0, "shouldPinCamera":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 162
    .local v1, "shouldPinHome":Z
    if-eqz v0, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    if-eqz v1, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_1
    new-instance v2, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 170
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v2, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 171
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 172
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    .line 174
    iget-object v2, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 176
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUidListener()V

    .line 182
    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUserSetupCompleteListener()V

    .line 183
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PinnerService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PinnerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PinnerService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;
    .param p1, "x1"    # I

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 87
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1200(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PinnerService;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 87
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/PinnerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 87
    invoke-direct {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 87
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/PinnerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PinnerService;
    .param p1, "x1"    # I

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidActive(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/PinnerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PinnerService;
    .param p1, "x1"    # I

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidGone(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 87
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 87
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 87
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .line 850
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I
    .param p3, "defaultToSystemApp"    # Z

    .line 401
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 402
    return-object v0

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xd0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 412
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_1

    .line 413
    return-object v0

    .line 416
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v3}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 417
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 420
    :cond_2
    if-eqz p3, :cond_6

    .line 421
    iget-object v3, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 422
    invoke-virtual {v3, p1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 423
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 424
    .local v3, "systemAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 425
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 427
    if-nez v3, :cond_3

    .line 428
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    .line 431
    :cond_3
    return-object v0

    .line 434
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    :goto_1
    goto :goto_0

    .line 435
    :cond_5
    return-object v3

    .line 438
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "systemAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    return-object v0
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p1, "userHandle"    # I

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, "cameraIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 378
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_0

    .line 379
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 380
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 386
    :cond_0
    if-nez v3, :cond_1

    .line 387
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 388
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 391
    :cond_1
    return-object v3
.end method

.method private getHomeInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "userHandle"    # I

    .line 395
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 396
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "key"    # I
    .param p2, "userHandle"    # I

    .line 506
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 512
    const/4 v0, 0x0

    return-object v0

    .line 510
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getHomeInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 508
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method private getNameForKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I

    .line 520
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 526
    const/4 v0, 0x0

    return-object v0

    .line 524
    :cond_0
    const-string v0, "Home"

    return-object v0

    .line 522
    :cond_1
    const-string v0, "Camera"

    return-object v0
.end method

.method private getSizeLimitForKey(I)I
    .locals 1
    .param p1, "key"    # I

    .line 534
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 540
    const/4 v0, 0x0

    return v0

    .line 538
    :cond_0
    const/high16 v0, 0x600000

    return v0

    .line 536
    :cond_1
    const/high16 v0, 0x5000000

    return v0
.end method

.method private getUidForKey(I)I
    .locals 2
    .param p1, "key"    # I

    .line 491
    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    .line 493
    .local v0, "existing":Lcom/android/server/PinnerService$PinnedApp;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    if-eqz v1, :cond_0

    .line 494
    iget v1, v0, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    goto :goto_0

    .line 495
    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit p0

    .line 493
    return v1

    .line 496
    .end local v0    # "existing":Lcom/android/server/PinnerService$PinnedApp;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePinOnStart()V
    .locals 9

    .line 239
    const-string v0, "dalvik.vm.boot-image"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "bootImage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 241
    .local v1, "filesToPin":[Ljava/lang/String;
    const-string v2, "apex.art"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 251
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 252
    .local v5, "fileToPin":Ljava/lang/String;
    const v6, 0x7fffffff

    invoke-static {v5, v6, v3}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v6

    .line 255
    .local v6, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v6, :cond_1

    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to pin file = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PinnerService"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    goto :goto_2

    .line 260
    :cond_1
    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v7, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    monitor-exit p0

    .line 251
    .end local v5    # "fileToPin":Ljava/lang/String;
    .end local v6    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 262
    .restart local v5    # "fileToPin":Ljava/lang/String;
    .restart local v6    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 264
    .end local v5    # "fileToPin":Ljava/lang/String;
    .end local v6    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :cond_2
    return-void
.end method

.method private handleUidActive(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 335
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 336
    return-void
.end method

.method private handleUidGone(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 322
    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 326
    .local v1, "key":I
    if-ne v1, v3, :cond_0

    .line 327
    monitor-exit p0

    return-void

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 332
    return-void

    .line 330
    .end local v1    # "key":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 365
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$6bekYOn4YXi0x7vYNWO40QyA-s8(Lcom/android/server/PinnerService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    return-void
.end method

.method public static synthetic lambda$GeEX-8XoHeV0LEszxat7jOSlrs4(Lcom/android/server/PinnerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinApps(I)V

    return-void
.end method

.method private static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 699
    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 700
    .local v0, "pinMetaEntry":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    .line 701
    .local v1, "pinMetaStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 703
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 709
    goto :goto_0

    .line 704
    :catch_0
    move-exception v2

    .line 705
    .local v2, "ex":Ljava/io/IOException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 706
    const-string v4, "error reading pin metadata \"%s\": pinning as blob"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 705
    const-string v4, "PinnerService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method private static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .line 679
    const/4 v0, 0x0

    .line 681
    .local v0, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 688
    goto :goto_0

    .line 682
    :catch_0
    move-exception v1

    .line 683
    .local v1, "ex":Ljava/io/IOException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 684
    const-string v3, "could not open \"%s\" as zip: pinning as blob"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 683
    const-string v3, "PinnerService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method private pinApp(IIZ)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "userHandle"    # I
    .param p3, "force"    # Z

    .line 468
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getUidForKey(I)I

    move-result v0

    .line 472
    .local v0, "uid":I
    if-nez p3, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 473
    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    monitor-exit p0

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 478
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->unpinApp(I)V

    .line 479
    invoke-direct {p0, p1, p2}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 480
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 481
    invoke-direct {p0, p1, v1}, Lcom/android/server/PinnerService;->pinApp(ILandroid/content/pm/ApplicationInfo;)V

    .line 483
    :cond_1
    return-void
.end method

.method private pinApp(ILandroid/content/pm/ApplicationInfo;)V
    .locals 12
    .param p1, "key"    # I
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 551
    if-nez p2, :cond_0

    .line 552
    return-void

    .line 555
    :cond_0
    new-instance v0, Lcom/android/server/PinnerService$PinnedApp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/PinnerService$PinnedApp;-><init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/PinnerService$1;)V

    .line 556
    .local v0, "pinnedApp":Lcom/android/server/PinnerService$PinnedApp;
    monitor-enter p0

    .line 557
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 561
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getSizeLimitForKey(I)I

    move-result v1

    .line 562
    .local v1, "pinSizeLimit":I
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 563
    .local v2, "apk":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3

    .line 564
    .local v3, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v3, :cond_1

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to pin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PinnerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void

    .line 571
    :cond_1
    monitor-enter p0

    .line 572
    :try_start_1
    iget-object v4, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 576
    const-string v4, "arm"

    .line 577
    .local v4, "arch":Ljava/lang/String;
    iget-object v5, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 578
    iget-object v5, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v5}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "64"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 582
    :cond_2
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {v5}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "64"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 588
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 589
    .local v5, "baseCodePath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 591
    .local v7, "files":[Ljava/lang/String;
    :try_start_2
    invoke-static {v5, v4}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v8

    .line 592
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_1

    .line 593
    :goto_2
    if-nez v7, :cond_4

    .line 594
    return-void

    .line 598
    :cond_4
    array-length v8, v7

    move-object v9, v3

    move v3, v6

    .end local v3    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    .local v9, "pf":Lcom/android/server/PinnerService$PinnedFile;
    :goto_3
    if-ge v3, v8, :cond_6

    aget-object v10, v7, v3

    .line 599
    .local v10, "file":Ljava/lang/String;
    invoke-static {v10, v1, v6}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v9

    .line 600
    if-eqz v9, :cond_5

    .line 601
    monitor-enter p0

    .line 602
    :try_start_3
    iget-object v11, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 598
    .end local v10    # "file":Ljava/lang/String;
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 609
    :cond_6
    return-void

    .line 573
    .end local v4    # "arch":Ljava/lang/String;
    .end local v5    # "baseCodePath":Ljava/lang/String;
    .end local v7    # "files":[Ljava/lang/String;
    .end local v9    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    .restart local v3    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 558
    .end local v1    # "pinSizeLimit":I
    .end local v2    # "apk":Ljava/lang/String;
    .end local v3    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private pinApps(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 447
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 448
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 449
    .local v2, "key":I
    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 447
    .end local v2    # "key":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 451
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;
    .locals 5
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "maxBytesToPin"    # I
    .param p2, "attemptPinIntrospection"    # Z

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "fileAsZip":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 654
    .local v1, "pinRangeStream":Ljava/io/InputStream;
    if-eqz p2, :cond_0

    .line 655
    :try_start_0
    invoke-static {p0}, Lcom/android/server/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 669
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 658
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 659
    invoke-static {v0, p0}, Lcom/android/server/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 662
    :cond_1
    const-string v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pinRangeStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    if-eqz v1, :cond_2

    .line 665
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStream;

    invoke-direct {v2, v1}, Lcom/android/server/PinnerService$PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 666
    :cond_2
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStatic;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-direct {v2, v3, v4}, Lcom/android/server/PinnerService$PinRangeSourceStatic;-><init>(II)V

    :goto_1
    nop

    .line 667
    .local v2, "pinRangeSource":Lcom/android/server/PinnerService$PinRangeSource;
    invoke-static {p0, p1, v2}, Lcom/android/server/PinnerService;->pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 670
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 667
    return-object v3

    .line 669
    .end local v2    # "pinRangeSource":Lcom/android/server/PinnerService$PinRangeSource;
    :goto_2
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 670
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;
    .locals 19
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "maxBytesToPin"    # I
    .param p2, "pinRangeSource"    # Lcom/android/server/PinnerService$PinRangeSource;

    .line 779
    move-object/from16 v7, p0

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v1, v0

    .line 780
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, -0x1

    .line 781
    .local v2, "address":J
    const/4 v4, 0x0

    .line 784
    .local v4, "mapSize":I
    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v5, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v0, v5

    sget v5, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v5

    .line 787
    .local v0, "openFlags":I
    const/4 v5, 0x0

    invoke-static {v7, v0, v5}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v16
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 788
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .local v16, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v10, v1, Landroid/system/StructStat;->st_size:J

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    long-to-int v6, v10

    .line 789
    .end local v4    # "mapSize":I
    .local v6, "mapSize":I
    const-wide/16 v10, 0x0

    int-to-long v12, v6

    :try_start_2
    sget v14, Landroid/system/OsConstants;->PROT_READ:I

    sget v15, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v17, 0x0

    invoke-static/range {v10 .. v18}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 794
    .end local v2    # "address":J
    .local v10, "address":J
    :try_start_3
    new-instance v1, Lcom/android/server/PinnerService$PinRange;

    invoke-direct {v1}, Lcom/android/server/PinnerService$PinRange;-><init>()V

    move-object v12, v1

    .line 795
    .local v12, "pinRange":Lcom/android/server/PinnerService$PinRange;
    const/4 v1, 0x0

    .line 798
    .local v1, "bytesPinned":I
    sget v2, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v2, p1, v2
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v2, :cond_0

    .line 799
    :try_start_4
    sget v2, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v2, p1, v2
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int v2, p1, v2

    move v13, v1

    move v14, v2

    .end local p1    # "maxBytesToPin":I
    .local v2, "maxBytesToPin":I
    goto :goto_0

    .line 842
    .end local v0    # "openFlags":I
    .end local v1    # "bytesPinned":I
    .end local v2    # "maxBytesToPin":I
    .end local v12    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local p1    # "maxBytesToPin":I
    :catchall_0
    move-exception v0

    move/from16 v14, p1

    move-object/from16 v15, p2

    goto/16 :goto_2

    .line 838
    :catch_0
    move-exception v0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_1

    .line 798
    .restart local v0    # "openFlags":I
    .restart local v1    # "bytesPinned":I
    .restart local v12    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    :cond_0
    move/from16 v14, p1

    move v13, v1

    .line 802
    .end local v1    # "bytesPinned":I
    .end local p1    # "maxBytesToPin":I
    .local v13, "bytesPinned":I
    .local v14, "maxBytesToPin":I
    :goto_0
    if-ge v13, v14, :cond_3

    move-object/from16 v15, p2

    :try_start_5
    invoke-virtual {v15, v12}, Lcom/android/server/PinnerService$PinRangeSource;->read(Lcom/android/server/PinnerService$PinRange;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 803
    iget v1, v12, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 804
    .local v1, "pinStart":I
    iget v2, v12, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 805
    .local v2, "pinLength":I
    invoke-static {v5, v1, v6}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v1, v3

    .line 806
    sub-int v3, v6, v1

    invoke-static {v5, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    .line 807
    sub-int v3, v14, v13

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    .line 816
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v1, v3

    add-int/2addr v2, v3

    .line 817
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v1, v3

    sub-int/2addr v1, v3

    .line 818
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v2, v3

    if-eqz v3, :cond_1

    .line 819
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    sget v4, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v4, v2, v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 821
    :cond_1
    sub-int v3, v14, v13

    invoke-static {v5, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    .line 823
    if-lez v2, :cond_2

    .line 830
    int-to-long v3, v1

    add-long/2addr v3, v10

    int-to-long v8, v2

    invoke-static {v3, v4, v8, v9}, Landroid/system/Os;->mlock(JJ)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 832
    :cond_2
    add-int/2addr v13, v2

    .line 833
    .end local v1    # "pinStart":I
    .end local v2    # "pinLength":I
    goto :goto_0

    .line 842
    .end local v0    # "openFlags":I
    .end local v12    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .end local v13    # "bytesPinned":I
    :catchall_1
    move-exception v0

    goto/16 :goto_2

    .line 838
    :catch_1
    move-exception v0

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_1

    .line 802
    .restart local v0    # "openFlags":I
    .restart local v12    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local v13    # "bytesPinned":I
    :cond_3
    move-object/from16 v15, p2

    .line 835
    :cond_4
    :try_start_6
    new-instance v8, Lcom/android/server/PinnerService$PinnedFile;
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v1, v8

    move-wide v2, v10

    move v4, v6

    move-object/from16 v5, p0

    move v9, v6

    .end local v6    # "mapSize":I
    .local v9, "mapSize":I
    move v6, v13

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JILjava/lang/String;I)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v1, v8

    .line 836
    .local v1, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    const-wide/16 v2, -0x1

    .line 837
    .end local v10    # "address":J
    .local v2, "address":J
    nop

    .line 842
    invoke-static/range {v16 .. v16}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 843
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    .line 844
    int-to-long v4, v9

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 837
    :cond_5
    return-object v1

    .line 842
    .end local v0    # "openFlags":I
    .end local v1    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    .end local v2    # "address":J
    .end local v12    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .end local v13    # "bytesPinned":I
    .restart local v10    # "address":J
    :catchall_2
    move-exception v0

    move v6, v9

    goto/16 :goto_2

    .line 838
    :catch_2
    move-exception v0

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_1

    .line 842
    .end local v9    # "mapSize":I
    .restart local v6    # "mapSize":I
    :catchall_3
    move-exception v0

    move v9, v6

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto/16 :goto_2

    .line 838
    .end local v9    # "mapSize":I
    .restart local v6    # "mapSize":I
    :catch_3
    move-exception v0

    move v9, v6

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto/16 :goto_1

    .line 842
    .end local v9    # "mapSize":I
    .end local v14    # "maxBytesToPin":I
    .restart local v6    # "mapSize":I
    .restart local p1    # "maxBytesToPin":I
    :catchall_4
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v14, p1

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto/16 :goto_2

    .line 838
    .end local v9    # "mapSize":I
    .restart local v6    # "mapSize":I
    :catch_4
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v14, p1

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto :goto_1

    .line 842
    .end local v9    # "mapSize":I
    .end local v10    # "address":J
    .restart local v2    # "address":J
    .restart local v6    # "mapSize":I
    :catchall_5
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v14, p1

    move-wide v10, v2

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto :goto_2

    .line 838
    .end local v9    # "mapSize":I
    .restart local v6    # "mapSize":I
    :catch_5
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v14, p1

    move v4, v9

    move-object/from16 v1, v16

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto :goto_1

    .line 842
    .end local v9    # "mapSize":I
    .restart local v4    # "mapSize":I
    :catchall_6
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v14, p1

    move-wide v10, v2

    move v6, v4

    goto :goto_2

    .line 838
    :catch_6
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v14, p1

    move-object/from16 v1, v16

    goto :goto_1

    .line 842
    .end local v16    # "fd":Ljava/io/FileDescriptor;
    .local v1, "fd":Ljava/io/FileDescriptor;
    :catchall_7
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v14, p1

    move-object/from16 v16, v1

    move-wide v10, v2

    move v6, v4

    goto :goto_2

    .line 838
    :catch_7
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v14, p1

    .line 839
    .end local p1    # "maxBytesToPin":I
    .local v0, "ex":Landroid/system/ErrnoException;
    .restart local v14    # "maxBytesToPin":I
    :goto_1
    :try_start_8
    const-string v5, "PinnerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not pin file "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 840
    const/4 v5, 0x0

    .line 842
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 843
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-ltz v6, :cond_6

    .line 844
    int-to-long v8, v4

    invoke-static {v2, v3, v8, v9}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 840
    :cond_6
    return-object v5

    .line 842
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catchall_8
    move-exception v0

    move-object/from16 v16, v1

    move-wide v10, v2

    move v6, v4

    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "address":J
    .end local v4    # "mapSize":I
    .restart local v6    # "mapSize":I
    .restart local v10    # "address":J
    .restart local v16    # "fd":Ljava/io/FileDescriptor;
    :goto_2
    invoke-static/range {v16 .. v16}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 843
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-ltz v1, :cond_7

    .line 844
    int-to-long v1, v6

    invoke-static {v10, v11, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_7
    throw v0
.end method

.method private registerUidListener()V
    .locals 5

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    new-instance v1, Lcom/android/server/PinnerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/PinnerService$3;-><init>(Lcom/android/server/PinnerService;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    const-string/jumbo v4, "system"

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PinnerService"

    const-string v2, "Failed to register uid observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private registerUserSetupCompleteListener()V
    .locals 5

    .line 272
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 274
    .local v0, "userSetupCompleteUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/PinnerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/PinnerService$2;-><init>(Lcom/android/server/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 284
    return-void
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "thing"    # Ljava/io/Closeable;

    .line 884
    if-eqz p0, :cond_0

    .line 886
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    goto :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring error closing resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PinnerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static safeClose(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 865
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 873
    .local v0, "ex":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EBADF:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 874
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 878
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_1
    :goto_0
    return-void
.end method

.method private static safeMunmap(JJ)V
    .locals 3
    .param p0, "address"    # J
    .param p2, "mapSize"    # J

    .line 855
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v1, "PinnerService"

    const-string v2, "ignoring error in unmap"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :goto_0
    return-void
.end method

.method private sendPinAppMessage(IIZ)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "userHandle"    # I
    .param p3, "force"    # Z

    .line 457
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$6bekYOn4YXi0x7vYNWO40QyA-s8;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$6bekYOn4YXi0x7vYNWO40QyA-s8;

    .line 458
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 457
    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 459
    return-void
.end method

.method private sendPinAppsMessage(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 442
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 442
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    return-void
.end method

.method private unpinApp(I)V
    .locals 3
    .param p1, "key"    # I

    .line 351
    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    .line 353
    .local v0, "app":Lcom/android/server/PinnerService$PinnedApp;
    if-nez v0, :cond_0

    .line 354
    monitor-exit p0

    return-void

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 358
    .local v0, "pinnedAppFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    .line 360
    .local v2, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    invoke-virtual {v2}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .line 361
    .end local v2    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_0

    .line 362
    :cond_1
    return-void

    .line 358
    .end local v0    # "pinnedAppFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateActiveState(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "active"    # Z

    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 341
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedApp;

    .line 342
    .local v1, "app":Lcom/android/server/PinnerService$PinnedApp;
    iget v2, v1, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    if-ne v2, p1, :cond_0

    .line 343
    iput-boolean p2, v1, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    .line 340
    .end local v1    # "app":Lcom/android/server/PinnerService$PinnedApp;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 346
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 190
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$1;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    .line 191
    iget-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    const-string/jumbo v1, "pinner"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PinnerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 192
    const-class v0, Lcom/android/server/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/PinnerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 196
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 206
    iget-object v0, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 209
    :cond_0
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 213
    iget-object v0, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 216
    :cond_0
    return-void
.end method

.method public update(Landroid/util/ArraySet;Z)V
    .locals 6
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 224
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 225
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 226
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 227
    .local v2, "key":I
    invoke-direct {p0, v2, v0}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 228
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating pinned files for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " force="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PinnerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, v2, v0, p2}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    .line 225
    .end local v2    # "key":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
