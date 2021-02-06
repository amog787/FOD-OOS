.class Lcom/android/server/usage/AppStandbyController$Injector;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field mAutoRestrictedBucketDelayMs:J

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBootPhase:I

.field private final mContext:Landroid/content/Context;

.field private mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mLooper:Landroid/os/Looper;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mPowerWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1982
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    .line 1986
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    .line 1990
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 1991
    iput-object p2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mLooper:Landroid/os/Looper;

    .line 1992
    return-void
.end method


# virtual methods
.method currentTimeMillis()J
    .locals 2

    .line 2039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2169
    const-string v0, "mPowerWhitelistedApps=["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 2171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2172
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2173
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2174
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2171
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2176
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2177
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2179
    return-void

    .line 2176
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method elapsedRealtime()J
    .locals 2

    .line 2035
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getActiveNetworkScorer()Ljava/lang/String;
    .locals 2

    .line 2132
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string v1, "network_score"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 2134
    .local v0, "nsm":Landroid/net/NetworkScoreManager;
    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getAppIdleSettings()Ljava/lang/String;
    .locals 2

    .line 2143
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_idle_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAutoRestrictedBucketDelayMs()J
    .locals 2

    .line 2099
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    return-wide v0
.end method

.method getBootPhase()I
    .locals 1

    .line 2026
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 1995
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDataSystemDirectory()Ljava/io/File;
    .locals 1

    .line 2090
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getLooper()Landroid/os/Looper;
    .locals 1

    .line 1999
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 2107
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method getRunningUserIds()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2119
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getValidCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 2153
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v0

    .line 2154
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 2155
    .local v1, "aPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-ltz v0, :cond_1

    if-eqz v1, :cond_1

    .line 2157
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCrossProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    .line 2159
    invoke-virtual {v2, p1, v0}, Landroid/content/pm/CrossProfileAppsInternal;->verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2165
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/CrossProfileAppsInternal;->getTargetUserProfiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2160
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    if-nez v1, :cond_2

    .line 2161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null package retrieved for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppStandbyController"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method isAppIdleEnabled()Z
    .locals 5

    .line 2043
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2045
    .local v0, "buildFlag":Z
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_standby_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 2047
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "adaptive_battery_management_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2049
    .local v1, "runtimeFlag":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    return v3
.end method

.method public isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2139
    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCharging()Z
    .locals 1

    .line 2053
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    return v0
.end method

.method isDefaultDisplayOn()Z
    .locals 3

    .line 2123
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 2123
    :cond_0
    return v1
.end method

.method public isDeviceIdleMode()Z
    .locals 1

    .line 2149
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    return v0
.end method

.method isNonIdleWhitelisted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2057
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 2058
    const/4 v0, 0x0

    return v0

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 2061
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2062
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isPackageEphemeral(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2111
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isPackageInstalled(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 2115
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRestrictedBucketEnabled()Z
    .locals 3

    .line 2084
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_restricted_bucket"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method noteEvent(ILjava/lang/String;I)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2103
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    .line 2104
    return-void
.end method

.method onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 2003
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 2004
    nop

    .line 2005
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2004
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 2006
    nop

    .line 2007
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2006
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 2008
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2009
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2011
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 2012
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryManager:Landroid/os/BatteryManager;

    .line 2013
    const-class v0, Landroid/content/pm/CrossProfileAppsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/CrossProfileAppsInternal;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    .line 2016
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 2017
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2018
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2019
    :cond_0
    const-wide/32 v1, 0x2932e00

    iput-wide v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    .line 2022
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_1
    iput p1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    .line 2023
    return-void
.end method

.method registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2128
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 2129
    return-void
.end method

.method updatePowerWhitelistCache()V
    .locals 6

    .line 2068
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 2069
    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0

    .line 2070
    .local v0, "whitelistedPkgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2071
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 2072
    array-length v2, v0

    .line 2073
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2074
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2073
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2076
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_0
    monitor-exit v1

    .line 2080
    .end local v0    # "whitelistedPkgs":[Ljava/lang/String;
    goto :goto_1

    .line 2076
    .restart local v0    # "whitelistedPkgs":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/usage/AppStandbyController$Injector;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2077
    .end local v0    # "whitelistedPkgs":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/usage/AppStandbyController$Injector;
    :catch_0
    move-exception v0

    .line 2079
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AppStandbyController"

    const-string v2, "Failed to get power whitelist"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2081
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
