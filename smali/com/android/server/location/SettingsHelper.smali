.class public Lcom/android/server/location/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;,
        Lcom/android/server/location/SettingsHelper$LongGlobalSetting;,
        Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;,
        Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;,
        Lcom/android/server/location/SettingsHelper$ObservingSetting;,
        Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;,
        Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_BACKGROUND_THROTTLE_PROXIMITY_ALERT_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_COARSE_LOCATION_ACCURACY_M:F = 2000.0f

.field private static final LOCATION_PACKAGE_BLACKLIST:Ljava/lang/String; = "locationPackagePrefixBlacklist"

.field private static final LOCATION_PACKAGE_WHITELIST:Ljava/lang/String; = "locationPackagePrefixWhitelist"


# instance fields
.field private final mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

.field private final mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

.field private final mContext:Landroid/content/Context;

.field private final mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

.field private final mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

.field private final mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

.field private final mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    const-string/jumbo v1, "location_mode"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    .line 110
    new-instance v0, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    const-string/jumbo v1, "location_background_throttle_interval_ms"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    .line 112
    new-instance v0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    const-string/jumbo v1, "locationPackagePrefixBlacklist"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    .line 114
    new-instance v0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    const-string/jumbo v1, "locationPackagePrefixWhitelist"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    .line 116
    new-instance v6, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    sget-object v3, Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;->INSTANCE:Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;

    const-string/jumbo v2, "location_background_throttle_package_whitelist"

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v6, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    .line 119
    new-instance v6, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    sget-object v3, Lcom/android/server/location/-$$Lambda$SettingsHelper$Ez8giHaZAPYwS7zICeUtrlXPpBo;->INSTANCE:Lcom/android/server/location/-$$Lambda$SettingsHelper$Ez8giHaZAPYwS7zICeUtrlXPpBo;

    const-string/jumbo v2, "location_ignore_settings_package_whitelist"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v6, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    .line 122
    return-void
.end method

.method static synthetic lambda$new$0()Landroid/util/ArraySet;
    .locals 1

    .line 118
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1()Landroid/util/ArraySet;
    .locals 1

    .line 121
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowIgnoreLocationSettings()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 187
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 188
    return-void
.end method

.method public addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 236
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 237
    return-void
.end method

.method public addOnIgnoreSettingsPackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 260
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 261
    return-void
.end method

.method public addOnLocationEnabledChangedListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;

    .line 164
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 165
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 328
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 329
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 331
    .local v1, "userId":I
    const-string v2, "Location Enabled: "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, v1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 334
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v2, v1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v2

    .line 335
    .local v2, "locationPackageBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 336
    const-string v3, "Location Blacklisted Packages:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 338
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 339
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 340
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 343
    iget-object v3, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v3, v1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v3

    .line 345
    .local v3, "locationPackageWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 346
    const-string v4, "Location Whitelisted Packages:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 348
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 349
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 350
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 351
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 355
    .end local v3    # "locationPackageWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    .line 356
    invoke-virtual {v3}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v3

    .line 357
    .local v3, "backgroundThrottlePackageWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 358
    const-string v4, "Throttling Whitelisted Packages:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 360
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 361
    .restart local v5    # "packageName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 362
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_2

    .line 363
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 366
    :cond_4
    iget-object v4, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v4}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v4

    .line 367
    .local v4, "ignoreSettingsPackageWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 368
    const-string v5, "Bypass Whitelisted Packages:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 370
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 371
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 372
    .end local v6    # "packageName":Ljava/lang/String;
    goto :goto_3

    .line 373
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 375
    :cond_6
    return-void
.end method

.method public getBackgroundThrottleIntervalMs()J
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->getValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundThrottlePackageWhitelist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundThrottleProximityAlertIntervalMs()J
    .locals 6

    .line 275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 277
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_background_throttle_proximity_alert_interval_ms"

    const-wide/32 v4, 0x1b7740

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    return-wide v2

    .line 281
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    throw v2
.end method

.method public getCoarseLocationAccuracyM()F
    .locals 5

    .line 290
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 292
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    .line 293
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "locationCoarseAccuracy"

    const/high16 v4, 0x44fa0000    # 2000.0f

    .line 292
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    return v2

    .line 297
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 298
    throw v2
.end method

.method public getIgnoreSettingsPackageWhitelist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isLocationEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->getValueForUser(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLocationPackageBlacklisted(ILjava/lang/String;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v0

    .line 203
    .local v0, "locationPackageBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 204
    return v2

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "locationPackageWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 209
    .local v4, "locationWhitelistPackage":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 210
    return v2

    .line 212
    .end local v4    # "locationWhitelistPackage":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 214
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 215
    .local v4, "locationBlacklistPackage":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 216
    const/4 v2, 0x1

    return v2

    .line 218
    .end local v4    # "locationBlacklistPackage":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 220
    :cond_4
    return v2
.end method

.method public onSystemReady()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    invoke-static {v0}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->access$400(Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->register()V

    .line 128
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->register()V

    .line 129
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->register()V

    .line 130
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->register()V

    .line 131
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->register()V

    .line 132
    return-void
.end method

.method public removeOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 195
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 196
    return-void
.end method

.method public removeOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 244
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 245
    return-void
.end method

.method public removeOnIgnoreSettingsPackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 268
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 269
    return-void
.end method

.method public removeOnLocationEnabledChangedListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;

    .line 171
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 172
    return-void
.end method

.method public setLocationEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 147
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    .line 150
    if-eqz p1, :cond_0

    .line 151
    const/4 v4, 0x3

    goto :goto_0

    .line 152
    :cond_0
    const/4 v4, 0x0

    .line 147
    :goto_0
    invoke-static {v2, v3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    nop

    .line 157
    return-void

    .line 155
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    throw v2
.end method

.method public setLocationProviderAllowed(Ljava/lang/String;ZI)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 307
    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 314
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    .line 315
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_providers_allowed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    if-eqz p2, :cond_1

    const-string v5, "+"

    goto :goto_0

    :cond_1
    const-string v5, "-"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-static {v2, v3, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    nop

    .line 322
    return-void

    .line 320
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    throw v2

    .line 308
    .end local v0    # "identity":J
    :cond_2
    :goto_1
    return-void
.end method
