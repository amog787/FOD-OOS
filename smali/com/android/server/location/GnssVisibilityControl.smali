.class Lcom/android/server/location/GnssVisibilityControl;
.super Ljava/lang/Object;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssVisibilityControl$NfwNotification;,
        Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    }
.end annotation


# static fields
.field private static final ARRAY_MAP_INITIAL_CAPACITY_PROXY_APPS_STATE:I = 0x5

.field private static final DEBUG:Z

.field private static final LOCATION_ICON_DISPLAY_DURATION_MILLIS:J = 0x1388L

.field private static final LOCATION_PERMISSION_NAME:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

.field private static final ON_GPS_ENABLED_CHANGED_TIMEOUT_MILLIS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "GnssVisibilityControl"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssVisibilityControl"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsGpsEnabled:Z

.field private final mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mProxyAppsState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-string v0, "GnssVisibilityControl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/location/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "niHandler"    # Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 97
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$cq648s0kLZajRjefd-RR_iUZoiQ;

    invoke-direct {v0, p0}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$cq648s0kLZajRjefd-RR_iUZoiQ;-><init>(Lcom/android/server/location/GnssVisibilityControl;)V

    iput-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 101
    iput-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 102
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 103
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GnssVisibilityControl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p3, p0, Lcom/android/server/location/GnssVisibilityControl;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 106
    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 107
    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 111
    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$FLGfeDaxF8J3CE9m-TcOXh5j6ow;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$FLGfeDaxF8J3CE9m-TcOXh5j6ow;-><init>(Lcom/android/server/location/GnssVisibilityControl;)V

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssVisibilityControl;->handleProxyAppPackageUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V
    .locals 2
    .param p1, "proxyAppState"    # Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    .param p2, "uid"    # I
    .param p3, "proxyAppPkgName"    # Ljava/lang/String;

    .line 559
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/location/GnssVisibilityControl;->updateLocationIcon(ZILjava/lang/String;)Z

    .line 560
    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$302(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Z)Z

    .line 561
    :cond_0
    sget-boolean v0, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location icon off. Uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxyAppPkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssVisibilityControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_1
    return-void
.end method

.method private static createEmergencyLocationUserNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 633
    const v0, 0x10402d4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "firstLineText":Ljava/lang/String;
    const v1, 0x10402c2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "secondLineText":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "accessibilityServicesText":Ljava/lang/String;
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 637
    const v4, 0x1080818

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 638
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 639
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 640
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 641
    const v4, 0x106001c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 643
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 644
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 645
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 646
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 647
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 636
    return-object v3
.end method

.method private disableNfwLocationAccess()V
    .locals 1

    .line 280
    sget-object v0, Lcom/android/server/location/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private getLocationPermissionEnabledProxyApps()[Ljava/lang/String;
    .locals 7

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "countLocationPermissionEnabledProxyApps":I
    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    .line 423
    .local v2, "proxyAppState":Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    invoke-static {v2}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    add-int/lit8 v0, v0, 0x1

    .line 426
    .end local v2    # "proxyAppState":Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    :cond_0
    goto :goto_0

    .line 428
    :cond_1
    const/4 v1, 0x0

    .line 429
    .local v1, "i":I
    new-array v2, v0, [Ljava/lang/String;

    .line 431
    .local v2, "locationPermissionEnabledProxyApps":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 432
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 433
    .local v5, "proxyApp":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    invoke-static {v6}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 434
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    aput-object v5, v2, v1

    move v1, v6

    .line 436
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;>;"
    .end local v5    # "proxyApp":Ljava/lang/String;
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 437
    :cond_3
    return-object v2
.end method

.method private getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "proxyAppPkgName"    # Ljava/lang/String;

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v1, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssVisibilityControl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleEmergencyNfwNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V
    .locals 4
    .param p1, "nfwNotification"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "isPermissionMismatched":Z
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v1

    const-string v2, "GnssVisibilityControl"

    if-nez v1, :cond_0

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency non-framework location request incorrectly rejected. Notification: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v0, 0x1

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v1

    if-nez v1, :cond_1

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency state mismatch. Device currently not in user initiated emergency session. Notification: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, 0x1

    .line 609
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GnssVisibilityControl;->logEvent(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;Z)V

    .line 611
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$800(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->postEmergencyLocationUserNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V

    .line 614
    :cond_2
    return-void
.end method

.method private handleGpsEnabledChanged(Z)V
    .locals 2
    .param p1, "isGpsEnabled"    # Z

    .line 263
    sget-boolean v0, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGpsEnabledChanged, mIsGpsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isGpsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssVisibilityControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    .line 271
    iget-boolean v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez v0, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->disableNfwLocationAccess()V

    .line 273
    return-void

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->getLocationPermissionEnabledProxyApps()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private handleInitialize()V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->listenForProxyAppsPackageUpdates()V

    .line 154
    return-void
.end method

.method private handleLocationIconTimeout(Ljava/lang/String;)V
    .locals 3
    .param p1, "proxyAppPkgName"    # Ljava/lang/String;

    .line 550
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 551
    .local v0, "proxyAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/location/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    .line 555
    :cond_0
    return-void
.end method

.method private handleNfwNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V
    .locals 9
    .param p1, "nfwNotification"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 441
    sget-boolean v0, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    const-string v1, "GnssVisibilityControl"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-framework location access notification: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$400(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->handleEmergencyNfwNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V

    .line 445
    return-void

    .line 448
    :cond_1
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$500(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "proxyAppPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    .line 450
    .local v2, "proxyAppState":Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v3

    .line 451
    .local v3, "isLocationRequestAccepted":Z
    invoke-direct {p0, v2, p1}, Lcom/android/server/location/GnssVisibilityControl;->isPermissionMismatched(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v4

    .line 453
    .local v4, "isPermissionMismatched":Z
    invoke-direct {p0, p1, v4}, Lcom/android/server/location/GnssVisibilityControl;->logEvent(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;Z)V

    .line 455
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$700(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 463
    if-nez v3, :cond_3

    .line 464
    sget-boolean v5, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-framework location request rejected. ProxyAppPackageName field is not set in the notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Number of configured proxy apps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 467
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 465
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2
    return-void

    .line 472
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ProxyAppPackageName field is not set. AppOps service not notified for notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 477
    :cond_4
    if-nez v2, :cond_5

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find proxy app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in the value specified for config parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "NFW_PROXY_APPS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". AppOps service not notified for notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void

    .line 485
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 486
    .local v5, "proxyAppInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v5, :cond_6

    .line 487
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proxy app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not found. AppOps service not notified for notification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void

    .line 492
    :cond_6
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$800(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 493
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v2, p1, v6, v0}, Lcom/android/server/location/GnssVisibilityControl;->showLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/GnssVisibilityControl$NfwNotification;ILjava/lang/String;)V

    .line 494
    iget-object v6, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v7, 0x1

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7, v8, v0}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    .line 499
    :cond_7
    if-eqz v4, :cond_8

    .line 500
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission mismatch. Proxy app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " location permission is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-static {v2}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " and GNSS HAL enabled is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " but GNSS non-framework location access response type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$900(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for notification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 500
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_8
    return-void
.end method

.method private handlePermissionsChanged(I)V
    .locals 7
    .param p1, "uid"    # I

    .line 353
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 358
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 359
    .local v2, "proxyAppPkgName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 360
    .local v3, "proxyAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, p1, :cond_2

    .line 361
    goto :goto_0

    .line 364
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result v0

    .line 366
    .local v0, "isLocationPermissionEnabled":Z
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    .line 367
    .local v4, "proxyAppState":Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    invoke-static {v4}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v5

    if-eq v0, v5, :cond_3

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " location permission changed. IsLocationPermissionEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GnssVisibilityControl"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v4, v0}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$102(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Z)Z

    .line 371
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    .line 373
    :cond_3
    return-void

    .line 375
    .end local v0    # "isLocationPermissionEnabled":Z
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;>;"
    .end local v2    # "proxyAppPkgName":Ljava/lang/String;
    .end local v3    # "proxyAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "proxyAppState":Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    :cond_4
    return-void
.end method

.method private handleProxyAppPackageUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    .line 187
    .local v0, "proxyAppState":Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    if-nez v0, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    sget-boolean v1, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    const-string v2, "Proxy app "

    const-string v3, "GnssVisibilityControl"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " package changed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result v1

    .line 193
    .local v1, "updatedLocationPermission":Z
    invoke-static {v0}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v4

    if-eq v4, v1, :cond_2

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " location permission changed. IsLocationPermissionEnabled: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v0, v1}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$102(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Z)Z

    .line 198
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    .line 200
    :cond_2
    return-void
.end method

.method private handleUpdateProxyApps(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p1, "nfwLocationAccessProxyApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->isProxyAppListUpdated(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 207
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 211
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->resetProxyAppsState()V

    .line 212
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    .line 214
    :cond_1
    return-void

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    goto :goto_0

    .line 220
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->resetProxyAppsState()V

    .line 223
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    .local v1, "proxyAppPkgName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;-><init>(ZLcom/android/server/location/GnssVisibilityControl$1;)V

    .line 226
    .local v2, "proxyAppState":Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    iget-object v3, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v1    # "proxyAppPkgName":Ljava/lang/String;
    .end local v2    # "proxyAppState":Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    goto :goto_1

    .line 229
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    .line 230
    return-void
.end method

.method private hasLocationPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPermissionMismatched(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .locals 2
    .param p1, "proxyAppState"    # Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    .param p2, "nfwNotification"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 513
    invoke-static {p2}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v0

    .line 514
    .local v0, "isLocationRequestAccepted":Z
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 514
    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    return v1
.end method

.method private isProxyAppInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 391
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 392
    .local v0, "proxyAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isProxyAppListUpdated(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 250
    .local p1, "nfwLocationAccessProxyApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 251
    return v2

    .line 254
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    .local v1, "nfwLocationAccessProxyApp":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 256
    return v2

    .line 258
    .end local v1    # "nfwLocationAccessProxyApp":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 259
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$FLGfeDaxF8J3CE9m-TcOXh5j6ow(Lcom/android/server/location/GnssVisibilityControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->handleInitialize()V

    return-void
.end method

.method private listenForProxyAppsPackageUpdates()V
    .locals 7

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/location/GnssVisibilityControl$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/GnssVisibilityControl$1;-><init>(Lcom/android/server/location/GnssVisibilityControl;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 183
    return-void
.end method

.method private logEvent(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;Z)V
    .locals 10
    .param p1, "notification"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;
    .param p2, "isPermissionMismatched"    # Z

    .line 651
    nop

    .line 652
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$500(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1000(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B

    move-result v2

    .line 654
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1100(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v3

    .line 655
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1200(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B

    move-result v4

    .line 656
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1300(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v5

    .line 657
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1400(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B

    move-result v6

    .line 658
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1500(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v7

    .line 659
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v8

    .line 651
    const/16 v0, 0x83

    move v9, p2

    invoke-static/range {v0 .. v9}, Landroid/util/StatsLog;->write(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZZ)I

    .line 661
    return-void
.end method

.method private native native_enable_nfw_location_access([Ljava/lang/String;)Z
.end method

.method private postEmergencyLocationUserNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V
    .locals 5
    .param p1, "nfwNotification"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 618
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 619
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 620
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not notify user of emergency location request. Notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssVisibilityControl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .line 626
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 627
    invoke-static {v3}, Lcom/android/server/location/GnssVisibilityControl;->createEmergencyLocationUserNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 626
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 628
    return-void
.end method

.method private resetProxyAppsState()V
    .locals 6

    .line 234
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    .line 236
    .local v2, "proxyAppState":Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    invoke-static {v2}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$300(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    goto :goto_0

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 242
    .local v3, "proxyAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1

    .line 243
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/location/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    .line 245
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;>;"
    .end local v2    # "proxyAppState":Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    .end local v3    # "proxyAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 247
    return-void
.end method

.method private runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 674
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$ezKd0QctWKgyrEvPFQUXWNBxlNg;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$ezKd0QctWKgyrEvPFQUXWNBxlNg;-><init>(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 667
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 668
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 671
    :cond_0
    return-void
.end method

.method private sendHighPowerMonitoringBroadcast()V
    .locals 3

    .line 591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 593
    return-void
.end method

.method private setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V
    .locals 5
    .param p1, "locationPermissionEnabledProxyApps"    # [Ljava/lang/String;

    .line 409
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "proxyAppsStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating non-framework location access proxy apps in the GNSS HAL to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssVisibilityControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->native_enable_nfw_location_access([Ljava/lang/String;)Z

    move-result v1

    .line 413
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update non-framework location access proxy apps in the GNSS HAL to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    return-void
.end method

.method private shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "proxyAppPkgName"    # Ljava/lang/String;

    .line 387
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->isProxyAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->hasLocationPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/GnssVisibilityControl$NfwNotification;ILjava/lang/String;)V
    .locals 6
    .param p1, "proxyAppState"    # Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    .param p2, "nfwNotification"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;
    .param p3, "uid"    # I
    .param p4, "proxyAppPkgName"    # Ljava/lang/String;

    .line 522
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$300(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v0

    .line 523
    .local v0, "isLocationIconOn":Z
    const-string v1, "GnssVisibilityControl"

    if-nez v0, :cond_1

    .line 524
    const/4 v2, 0x1

    invoke-direct {p0, v2, p3, p4}, Lcom/android/server/location/GnssVisibilityControl;->updateLocationIcon(ZILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show Location icon for notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void

    .line 528
    :cond_0
    invoke-static {p1, v2}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$302(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Z)Z

    goto :goto_0

    .line 531
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 535
    :goto_0
    sget-boolean v2, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location icon on. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v3, "Extending"

    goto :goto_1

    :cond_2
    const-string v3, "Setting"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " icon display timer. Uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", proxyAppPkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_3
    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$3hQO4NR8YgRdTo_ZUTbEKP4-TIU;

    invoke-direct {v3, p0, p4}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$3hQO4NR8YgRdTo_ZUTbEKP4-TIU;-><init>(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 541
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/location/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show location icon for the full duration for notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_4
    return-void
.end method

.method private updateLocationIcon(ZILjava/lang/String;)Z
    .locals 4
    .param p1, "displayLocationIcon"    # Z
    .param p2, "uid"    # I
    .param p3, "proxyAppPkgName"    # Ljava/lang/String;

    .line 568
    const/16 v0, 0x2a

    const/16 v1, 0x29

    if-eqz p1, :cond_1

    .line 571
    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v1, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 573
    return v3

    .line 575
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 578
    return v3

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v1, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 584
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->sendHighPowerMonitoringBroadcast()V

    .line 585
    const/4 v0, 0x1

    return v0
.end method

.method private updateNfwLocationAccessProxyAppsInGnssHal()V
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez v0, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->getLocationPermissionEnabledProxyApps()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    .line 405
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$GnssVisibilityControl(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->handlePermissionsChanged(I)V

    return-void
.end method

.method public synthetic lambda$new$1$GnssVisibilityControl(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 98
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$nmfWkQtbYmj8KoGmFncGZnuzWS0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$nmfWkQtbYmj8KoGmFncGZnuzWS0;-><init>(Lcom/android/server/location/GnssVisibilityControl;I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onConfigurationUpdated$4$GnssVisibilityControl(Ljava/util/List;)V
    .locals 0
    .param p1, "nfwLocationAccessProxyApps"    # Ljava/util/List;

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->handleUpdateProxyApps(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$onGpsEnabledChanged$2$GnssVisibilityControl(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->handleGpsEnabledChanged(Z)V

    return-void
.end method

.method public synthetic lambda$reportNfwNotification$3$GnssVisibilityControl(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 11
    .param p1, "proxyAppPackageName"    # Ljava/lang/String;
    .param p2, "protocolStack"    # B
    .param p3, "otherProtocolStackName"    # Ljava/lang/String;
    .param p4, "requestor"    # B
    .param p5, "requestorId"    # Ljava/lang/String;
    .param p6, "responseType"    # B
    .param p7, "inEmergencyMode"    # Z
    .param p8, "isCachedLocation"    # Z

    .line 141
    new-instance v10, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;-><init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZLcom/android/server/location/GnssVisibilityControl$1;)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lcom/android/server/location/GnssVisibilityControl;->handleNfwNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V

    return-void
.end method

.method public synthetic lambda$runEventAndReleaseWakeLock$6$GnssVisibilityControl(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 676
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 679
    nop

    .line 680
    return-void

    .line 678
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method public synthetic lambda$showLocationIcon$5$GnssVisibilityControl(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyAppPkgName"    # Ljava/lang/String;

    .line 539
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->handleLocationIconTimeout(Ljava/lang/String;)V

    return-void
.end method

.method onConfigurationUpdated(Lcom/android/server/location/GnssConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lcom/android/server/location/GnssConfiguration;

    .line 148
    invoke-virtual {p1}, Lcom/android/server/location/GnssConfiguration;->getProxyApps()Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "nfwLocationAccessProxyApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$YLPk0FuuEUrv7lfRNYvhNb6uKic;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$YLPk0FuuEUrv7lfRNYvhNb6uKic;-><init>(Lcom/android/server/location/GnssVisibilityControl;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method onGpsEnabledChanged(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .line 123
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$WNe_V-oiVnZtOTinPJBWWgUSctQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$WNe_V-oiVnZtOTinPJBWWgUSctQ;-><init>(Lcom/android/server/location/GnssVisibilityControl;Z)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    return-void

    .line 132
    :cond_0
    if-nez p1, :cond_1

    .line 133
    const-string v0, "GnssVisibilityControl"

    const-string v1, "Native call to disable non-framework location access in GNSS HAL may get executed after native_cleanup()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    return-void
.end method

.method reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 11
    .param p1, "proxyAppPackageName"    # Ljava/lang/String;
    .param p2, "protocolStack"    # B
    .param p3, "otherProtocolStackName"    # Ljava/lang/String;
    .param p4, "requestor"    # B
    .param p5, "requestorId"    # Ljava/lang/String;
    .param p6, "responseType"    # B
    .param p7, "inEmergencyMode"    # Z
    .param p8, "isCachedLocation"    # Z

    .line 141
    new-instance v10, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;-><init>(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lcom/android/server/location/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method
