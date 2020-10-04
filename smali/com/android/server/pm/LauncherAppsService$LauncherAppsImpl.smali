.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.super Landroid/content/pm/ILauncherApps$Stub;
.source "LauncherAppsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LauncherAppsImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;,
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LauncherAppsService"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field mLauncherIconWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList<",
            "Landroid/content/pm/IOnAppsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field private final mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

.field private final mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field private final mUm:Landroid/os/UserManager;

.field private final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    invoke-direct {p0}, Landroid/content/pm/ILauncherApps$Stub;-><init>()V

    .line 134
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 138
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$1;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    .line 150
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 151
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 152
    const-class v0, Landroid/os/UserManagerInternal;

    .line 153
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 152
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 154
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 155
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 154
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 156
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 157
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 156
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 158
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 159
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 158
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 160
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 161
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 160
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 162
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    .line 163
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 168
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5020020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mLauncherIconWhiteList:Ljava/util/List;

    .line 171
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .param p1, "x1"    # Landroid/os/UserHandle;
    .param p2, "x2"    # Landroid/os/UserHandle;
    .param p3, "x3"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object v0
.end method

.method private canAccessProfile(ILjava/lang/String;)Z
    .locals 7
    .param p1, "targetUserId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    move-result v0

    .line 321
    .local v0, "callingUserId":I
    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 325
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 326
    .local v4, "callingUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 327
    const-string v1, "LauncherAppsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for another profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not allowed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 329
    return v1

    .line 332
    .end local v4    # "callingUserInfo":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 333
    nop

    .line 335
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5, p1, p2, v1}, Landroid/os/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result v1

    return v1

    .line 332
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    throw v1
.end method

.method private ensureShortcutPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 695
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 697
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    .line 699
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v3

    .line 698
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    return-void

    .line 700
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller can\'t access shortcut information"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCallingUserId()I
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getHiddenAppActivityInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 360
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 363
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 364
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 365
    .local v1, "pmInt":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 368
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 365
    const/high16 v3, 0xc0000

    invoke-virtual {v1, v0, v3, p2, v2}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v2

    .line 369
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 370
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    return-object v3

    .line 372
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    if-nez v0, :cond_0

    .line 274
    nop

    .line 275
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerService;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-object v0
.end method

.method private hasApplicationDeclaredActivities(Landroid/content/pm/PackageParser$Package;)Z
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 512
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 513
    return v1

    .line 515
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    return v1

    .line 520
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 521
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    .line 520
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    return v1

    .line 524
    :cond_2
    return v2
.end method

.method private hasComponentsAndRequestsPermissions(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 472
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 473
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 474
    .local v0, "pmInt":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 475
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 477
    return v2

    .line 479
    :cond_0
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    return v2

    .line 482
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->hasApplicationDeclaredActivities(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    .line 483
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    .line 484
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 485
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 486
    return v2

    .line 492
    :cond_2
    const/4 v3, 0x1

    new-array v4, v3, [I

    const/16 v5, 0x16

    aput v5, v4, v2

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 493
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 494
    invoke-static {p1}, Lcom/android/server/pm/OpReserveAppInjector;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 495
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 496
    :cond_3
    return v2

    .line 503
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mLauncherIconWhiteList:Ljava/util/List;

    if-eqz v4, :cond_5

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 504
    return v2

    .line 508
    :cond_5
    return v3
.end method

.method private isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 4
    .param p1, "listeningUser"    # Landroid/os/UserHandle;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "debugMsg"    # Ljava/lang/String;

    .line 968
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 969
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 968
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/os/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isManagedProfileAdmin(Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 529
    .local v0, "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 530
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 531
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 532
    goto :goto_1

    .line 534
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    .line 535
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 536
    goto :goto_1

    .line 538
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 539
    const/4 v4, 0x1

    return v4

    .line 529
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 577
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot retrieve activities"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    const/4 v0, 0x0

    return-object v0

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 582
    .local v0, "callingUid":I
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v1

    .line 584
    .local v1, "ident":J
    :try_start_0
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 585
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 586
    .local v3, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v4, 0xc0000

    .line 589
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 586
    invoke-virtual {v3, p2, v4, v0, v5}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v4

    .line 590
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 590
    return-object v5

    .line 592
    .end local v3    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    throw v3
.end method

.method private shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 460
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isManagedProfileAdmin(Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    return v0

    .line 468
    :cond_1
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->hasComponentsAndRequestsPermissions(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 461
    :cond_2
    :goto_0
    return v0
.end method

.method private startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 5
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "publisherPackage"    # Ljava/lang/String;
    .param p3, "startActivityOptions"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 810
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, p2, p4, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesAsPackage(Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v1

    .line 812
    .local v1, "code":I
    invoke-static {v1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    const/4 v0, 0x1

    return v0

    .line 815
    :cond_0
    const-string v2, "LauncherAppsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t start activity, code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    return v0

    .line 818
    .end local v1    # "code":I
    :catch_0
    move-exception v1

    .line 822
    .local v1, "e":Ljava/lang/SecurityException;
    return v0
.end method

.method private startWatchingPackageBroadcasts()V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 285
    return-void
.end method

.method private stopWatchingPackageBroadcasts()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->unregister()V

    .line 295
    return-void
.end method


# virtual methods
.method public addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startWatchingPackageBroadcasts()V

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 220
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    new-instance v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 221
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;-><init>(Landroid/os/UserHandle;Ljava/lang/String;II)V

    .line 220
    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkCallbackCount()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V

    .line 305
    :cond_0
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllSessions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    .line 260
    .local v1, "userIds":[I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 262
    .local v2, "token":J
    :try_start_0
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v1, v5

    .line 263
    .local v6, "userId":I
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/pm/PackageInstallerService;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 264
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    .line 263
    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    nop

    .end local v6    # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 267
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    nop

    .line 269
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v4

    .line 267
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getAppUsageLimit(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 676
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot access usage limit"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 678
    return-object v1

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 685
    invoke-virtual {v0, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    move-result-object v0

    .line 686
    .local v0, "data":Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    if-nez v0, :cond_1

    .line 687
    return-object v1

    .line 689
    :cond_1
    new-instance v1, Landroid/content/pm/LauncherApps$AppUsageLimit;

    .line 690
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->getTotalUsageLimit()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->getUsageRemaining()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/content/pm/LauncherApps$AppUsageLimit;-><init>(JJ)V

    .line 689
    return-object v1

    .line 681
    .end local v0    # "data":Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not the recents app"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check package"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    const/4 v0, 0x0

    return-object v0

    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 661
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 663
    .local v1, "ident":J
    :try_start_0
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 664
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 665
    .local v3, "pmInt":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 666
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 665
    invoke-virtual {v3, p2, p3, v0, v4}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    nop

    .line 669
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    return-object v4

    .line 669
    .end local v3    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 393
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 389
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 395
    .local v0, "launcherActivities":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_hidden_icon_apps_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 397
    return-object v0

    .line 399
    :cond_0
    if-nez v0, :cond_1

    .line 401
    const/4 v1, 0x0

    return-object v1

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v1

    .line 405
    .local v1, "callingUid":I
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 407
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 409
    nop

    .line 455
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 409
    return-object v0

    .line 411
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 413
    nop

    .line 455
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 413
    return-object v0

    .line 416
    :cond_3
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 417
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    .line 418
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 419
    .local v5, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/4 v6, 0x0

    if-eqz p2, :cond_6

    .line 422
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v7, :cond_4

    .line 423
    nop

    .line 455
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 423
    return-object v0

    .line 425
    :cond_4
    nop

    .line 426
    :try_start_3
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 425
    invoke-virtual {v5, p2, v6, v1, v7}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 427
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, p3, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 428
    invoke-direct {p0, p2, v1, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getHiddenAppActivityInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 429
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_5

    .line 430
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_5
    new-instance v7, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v7, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 455
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 433
    return-object v7

    .line 435
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    :try_start_4
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 436
    .local v7, "visiblePackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 437
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 438
    nop

    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 439
    :cond_7
    nop

    .line 440
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 439
    invoke-virtual {v5, v6, v8, v1}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(III)Ljava/util/List;

    move-result-object v6

    .line 441
    .local v6, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 442
    .local v9, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 443
    invoke-direct {p0, p3, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 444
    goto :goto_1

    .line 446
    :cond_8
    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10, v1, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getHiddenAppActivityInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 448
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_9

    .line 449
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v9    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    :cond_9
    goto :goto_1

    .line 453
    :cond_a
    new-instance v8, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v8, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 455
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 453
    return-object v8

    .line 455
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v6    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7    # "visiblePackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    throw v4
.end method

.method public getShortcutConfigActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 571
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutConfigActivityIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check package"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 601
    return-object v1

    .line 603
    :cond_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 607
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 609
    .local v9, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x54000000

    const/4 v7, 0x0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 613
    .local v2, "pi":Landroid/app/PendingIntent;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    return-object v1

    .line 615
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 757
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 758
    const-string v0, "Cannot access shortcuts"

    invoke-direct {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 759
    const/4 v0, 0x0

    return-object v0

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 745
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 746
    const-string v0, "Cannot access shortcuts"

    invoke-direct {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    const/4 v0, 0x0

    return v0

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShortcuts(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "changedSince"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "shortcutIds"    # Ljava/util/List;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "flags"    # I
    .param p8, "targetUser"    # Landroid/os/UserHandle;

    .line 710
    move-object v0, p0

    move-object/from16 v13, p1

    const-string v1, "com.android.settings"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 714
    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "Cannot get shortcuts"

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 715
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 717
    :cond_1
    if-eqz p5, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    .line 718
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "To query by shortcut ID, package name must also be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    :cond_3
    :goto_0
    new-instance v14, Landroid/content/pm/ParceledListSlice;

    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 724
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 726
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 727
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v12

    .line 724
    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v12}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v1

    invoke-direct {v14, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 723
    return-object v14
.end method

.method public getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 644
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot get launcher extras"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    const/4 v0, 0x0

    return-object v0

    .line 647
    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 648
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 649
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public hasShortcutHostPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 768
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    .line 770
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v3

    .line 769
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method injectBinderCallingPid()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 180
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingPid()I

    move-result v0

    return v0
.end method

.method injectBinderCallingUid()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 175
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUid()I

    move-result v0

    return v0
.end method

.method final injectCallingUserId()I
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method injectClearCallingIdentity()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method injectRestoreCallingIdentity(J)V
    .locals 0
    .param p1, "token"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 195
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    return-void
.end method

.method public isActivityEnabled(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check component"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 831
    return v1

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 835
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 837
    .local v2, "ident":J
    :try_start_0
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 838
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 839
    .local v4, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v5, 0xc0000

    .line 842
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 839
    invoke-virtual {v4, p2, v5, v0, v6}, Landroid/content/pm/PackageManagerInternal;->getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 847
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    .line 849
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 847
    return v1

    .line 849
    .end local v4    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public isPackageEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check package"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 623
    return v1

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 627
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 629
    .local v2, "ident":J
    :try_start_0
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 630
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 631
    .local v4, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v5, 0xc0000

    .line 634
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 631
    invoke-virtual {v4, p2, v5, v0, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 635
    .local v5, "info":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    .line 637
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    return v1

    .line 637
    .end local v4    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public synthetic lambda$registerPackageInstallerCallback$0$LauncherAppsService$LauncherAppsImpl(Landroid/os/UserHandle;I)Z
    .locals 2
    .param p1, "callingIdUserHandle"    # Landroid/os/UserHandle;
    .param p2, "eventUserId"    # I

    .line 251
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v1, "shouldReceiveEvent"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "targetUser"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 733
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot pin shortcuts"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    return-void

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 739
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 738
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 740
    return-void
.end method

.method postToPackageMonitorHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 974
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 975
    return-void
.end method

.method public registerPackageInstallerCallback(Ljava/lang/String;Landroid/content/pm/IPackageInstallerCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageInstallerCallback;

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 249
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 250
    .local v0, "callingIdUserHandle":Landroid/os/UserHandle;
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;)V

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/PackageInstallerService;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    .line 253
    return-void
.end method

.method public removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 236
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V

    .line 239
    :cond_0
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveActivity(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot resolve activity"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    const/4 v0, 0x0

    return-object v0

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 554
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 556
    .local v1, "ident":J
    :try_start_0
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 557
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 558
    .local v3, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v4, 0xc0000

    .line 561
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 558
    invoke-virtual {v3, p2, v4, v0, v5}, Landroid/content/pm/PackageManagerInternal;->getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 558
    return-object v4

    .line 563
    .end local v3    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public shouldHideFromSuggestions(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 377
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "cannot get shouldHideFromSuggestions"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 378
    return v1

    .line 380
    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 382
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->getDistractingPackageRestrictions(Ljava/lang/String;I)I

    move-result v2

    .line 383
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public showAppDetailsAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 13
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;
    .param p5, "opts"    # Landroid/os/Bundle;
    .param p6, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    move-object v1, p0

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v2, "Cannot show app details"

    invoke-direct {p0, v0, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    return-void

    .line 950
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 952
    .local v2, "ident":J
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string/jumbo v6, "package"

    const/4 v7, 0x0

    .line 954
    invoke-static {v6, v0, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 955
    .local v4, "intent":Landroid/content/Intent;
    const v5, 0x10008000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 956
    move-object/from16 v5, p4

    :try_start_1
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    .end local v0    # "packageName":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    nop

    .line 960
    iget-object v7, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 961
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 960
    move-object v8, p1

    move-object v9, p2

    move-object v10, v4

    move-object/from16 v11, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 962
    return-void

    .line 958
    .end local v4    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v5, p4

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 17
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;
    .param p5, "opts"    # Landroid/os/Bundle;
    .param p6, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 880
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v3, "Cannot start activity"

    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    return-void

    .line 887
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v3, p6

    invoke-static {v3, v0}, Lcom/android/server/pm/OpLauncherAppsServiceInjector;->checkParallelUserstate(Landroid/os/UserHandle;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 888
    return-void

    .line 891
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 892
    .local v4, "launchIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    move-object/from16 v11, p4

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 894
    const/high16 v0, 0x10200000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 896
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    const/4 v5, 0x0

    .line 900
    .local v5, "canLaunch":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v12

    .line 901
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 903
    .local v13, "ident":J
    :try_start_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 904
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 908
    .local v0, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v6, 0xc0000

    .line 911
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 908
    invoke-virtual {v0, v4, v6, v12, v7}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v6

    .line 912
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 913
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_5

    .line 914
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 915
    .local v9, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 917
    iget-boolean v10, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v10, :cond_2

    .line 924
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 926
    const/4 v5, 0x1

    .line 927
    move-object/from16 v16, v0

    move v15, v5

    goto :goto_2

    .line 918
    :cond_2
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .local v16, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const-string v0, "Cannot launch non-exported components "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4    # "launchIntent":Landroid/content/Intent;
    .end local v5    # "canLaunch":Z
    .end local v12    # "callingUid":I
    .end local v13    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "component":Landroid/content/ComponentName;
    .end local p4    # "sourceBounds":Landroid/graphics/Rect;
    .end local p5    # "opts":Landroid/os/Bundle;
    .end local p6    # "user":Landroid/os/UserHandle;
    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 916
    .end local v16    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v4    # "launchIntent":Landroid/content/Intent;
    .restart local v5    # "canLaunch":Z
    .restart local v12    # "callingUid":I
    .restart local v13    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "component":Landroid/content/ComponentName;
    .restart local p4    # "sourceBounds":Landroid/graphics/Rect;
    .restart local p5    # "opts":Landroid/os/Bundle;
    .restart local p6    # "user":Landroid/os/UserHandle;
    :cond_3
    move-object/from16 v16, v0

    .end local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v16    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    goto :goto_1

    .line 915
    .end local v16    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    :cond_4
    move-object/from16 v16, v0

    .line 913
    .end local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v9    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    goto :goto_0

    .end local v16    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v16    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    move v15, v5

    .line 930
    .end local v5    # "canLaunch":Z
    .end local v8    # "i":I
    .local v15, "canLaunch":Z
    :goto_2
    if-eqz v15, :cond_6

    .line 935
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "size":I
    .end local v16    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    nop

    .line 937
    iget-object v5, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 938
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 937
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v4

    move-object/from16 v9, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 939
    return-void

    .line 931
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "size":I
    .restart local v16    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4    # "launchIntent":Landroid/content/Intent;
    .end local v12    # "callingUid":I
    .end local v13    # "ident":J
    .end local v15    # "canLaunch":Z
    .end local p0    # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "component":Landroid/content/ComponentName;
    .end local p4    # "sourceBounds":Landroid/graphics/Rect;
    .end local p5    # "opts":Landroid/os/Bundle;
    .end local p6    # "user":Landroid/os/UserHandle;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "size":I
    .end local v16    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v4    # "launchIntent":Landroid/content/Intent;
    .restart local v12    # "callingUid":I
    .restart local v13    # "ident":J
    .restart local v15    # "canLaunch":Z
    .restart local p0    # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "component":Landroid/content/ComponentName;
    .restart local p4    # "sourceBounds":Landroid/graphics/Rect;
    .restart local p5    # "opts":Landroid/os/Bundle;
    .restart local p6    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v0

    move v5, v15

    goto :goto_3

    .end local v15    # "canLaunch":Z
    .restart local v5    # "canLaunch":Z
    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startSessionDetailsActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;
    .param p5, "opts"    # Landroid/os/Bundle;
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 857
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 858
    .local v6, "userId":I
    const-string v0, "Cannot start details activity"

    invoke-direct {p0, v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    return-void

    .line 862
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 864
    const-string/jumbo v2, "market"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 865
    const-string v2, "details"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p3, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 866
    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 867
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 863
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 868
    const-string v2, "android-app"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 869
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 868
    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 870
    .local v7, "i":Landroid/content/Intent;
    invoke-virtual {v7, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 872
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, p5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 874
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcutId"    # Ljava/lang/String;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;
    .param p5, "startActivityOptions"    # Landroid/os/Bundle;
    .param p6, "targetUserId"    # I

    .line 776
    move-object v0, p0

    move/from16 v9, p6

    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 777
    const-string v1, "Cannot start activity"

    invoke-direct {p0, v9, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    .line 778
    return v10

    .line 785
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 787
    const-string v1, "android"

    move-object v11, p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v9, :cond_3

    .line 788
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_2
    move-object v11, p1

    .line 791
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 792
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 793
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v8

    .line 791
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v8}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    move-result-object v1

    .line 794
    .local v1, "intents":[Landroid/content/Intent;
    if-eqz v1, :cond_5

    array-length v2, v1

    if-nez v2, :cond_4

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    goto :goto_1

    .line 799
    :cond_4
    aget-object v2, v1, v10

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 800
    aget-object v2, v1, v10

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 802
    move-object v2, p2

    move-object/from16 v4, p5

    invoke-direct {p0, v1, p2, v4, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v5

    return v5

    .line 794
    :cond_5
    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 795
    :goto_1
    return v10
.end method

.method verifyCallingPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 341
    const/4 v0, -0x1

    .line 343
    .local v0, "packageUid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const v2, 0xc2000

    .line 347
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 343
    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 349
    goto :goto_0

    .line 348
    :catch_0
    move-exception v1

    .line 350
    :goto_0
    if-gez v0, :cond_0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherAppsService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 356
    return-void

    .line 354
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling package name mismatch"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
