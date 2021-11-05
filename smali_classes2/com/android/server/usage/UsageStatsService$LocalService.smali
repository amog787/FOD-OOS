.class final Lcom/android/server/usage/UsageStatsService$LocalService;
.super Landroid/app/usage/UsageStatsManagerInternal;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .line 2139
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "x1"    # Lcom/android/server/usage/UsageStatsService$1;

    .line 2139
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(ILjava/lang/String;[B)V
    .locals 4
    .param p1, "user"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "payload"    # [B

    .line 2287
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1800(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2288
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->access$2000(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2289
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to apply restored payload for locked user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    monitor-exit v0

    return-void

    .line 2293
    :cond_0
    if-nez p1, :cond_2

    .line 2294
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p1}, Lcom/android/server/usage/UsageStatsService;->access$2100(Lcom/android/server/usage/UsageStatsService;I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 2295
    .local v1, "userStats":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v1, :cond_1

    .line 2296
    monitor-exit v0

    return-void

    .line 2298
    :cond_1
    invoke-virtual {v1, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->applyRestoredPayload(Ljava/lang/String;[B)V

    .line 2300
    .end local v1    # "userStats":Lcom/android/server/usage/UserUsageStatsService;
    :cond_2
    monitor-exit v0

    .line 2301
    return-void

    .line 2300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "nowElapsed"    # J

    .line 2240
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v0

    return v0
.end method

.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2358
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(ILjava/lang/String;)[B
    .locals 5
    .param p1, "user"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 2263
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1800(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->access$2000(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2265
    const-string v1, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get backup payload for locked user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    monitor-exit v0

    return-object v2

    .line 2273
    :cond_0
    if-nez p1, :cond_2

    .line 2274
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p1}, Lcom/android/server/usage/UsageStatsService;->access$2100(Lcom/android/server/usage/UsageStatsService;I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 2275
    .local v1, "userStats":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v1, :cond_1

    .line 2276
    monitor-exit v0

    return-object v2

    .line 2278
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/server/usage/UserUsageStatsService;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2280
    .end local v1    # "userStats":Lcom/android/server/usage/UserUsageStatsService;
    :cond_2
    monitor-exit v0

    return-object v2

    .line 2282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdleUidsForUser(I)[I
    .locals 1
    .param p1, "userId"    # I

    .line 2245
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->getIdleUidsForUser(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2323
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAppIdle(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uidForAppId"    # I
    .param p3, "userId"    # I

    .line 2233
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2233
    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method public onActiveAdminAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2333
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->addActiveDeviceAdmin(Ljava/lang/String;I)V

    .line 2334
    return-void
.end method

.method public onAdminDataAvailable()V
    .locals 1

    .line 2343
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->onAdminDataAvailable()V

    .line 2344
    return-void
.end method

.method public prepareForPossibleShutdown()V
    .locals 1

    .line 2258
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->prepareForPossibleShutdown()V

    .line 2259
    return-void
.end method

.method public prepareShutdown()V
    .locals 1

    .line 2253
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->shutdown()V

    .line 2254
    return-void
.end method

.method public pruneUninstalledPackagesData(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 2363
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsService;->access$2200(Lcom/android/server/usage/UsageStatsService;I)Z

    move-result v0

    return v0
.end method

.method public queryEventsForUser(IJJI)Landroid/app/usage/UsageEvents;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "flags"    # I

    .line 2313
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object v0

    return-object v0
.end method

.method public queryUsageStatsForUser(IIJJZ)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "intervalType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .param p7, "obfuscateInstantApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 2307
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public reportAppJobState(Ljava/lang/String;IIJ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "numDeferredJobs"    # I
    .param p4, "timeSinceLastJobRun"    # J

    .line 2329
    return-void
.end method

.method public reportConfigurationChange(Landroid/content/res/Configuration;I)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "userId"    # I

    .line 2177
    if-nez p1, :cond_0

    .line 2178
    const-string v0, "UsageStatsService"

    const-string v1, "Configuration event reported with a null config"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    return-void

    .line 2182
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/4 v1, 0x5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2183
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2184
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 2185
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p2, v0}, Lcom/android/server/usage/UsageStatsService;->access$100(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    .line 2186
    return-void
.end method

.method public reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2228
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2229
    return-void
.end method

.method public reportEvent(Landroid/content/ComponentName;IIILandroid/content/ComponentName;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "eventType"    # I
    .param p4, "instanceId"    # I
    .param p5, "taskRoot"    # Landroid/content/ComponentName;

    .line 2144
    if-nez p1, :cond_0

    .line 2145
    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a component name"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    return-void

    .line 2149
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2150
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2151
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 2152
    iput p4, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 2153
    if-nez p5, :cond_1

    .line 2154
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 2155
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_0

    .line 2157
    :cond_1
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 2158
    invoke-virtual {p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 2160
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p2, v0}, Lcom/android/server/usage/UsageStatsService;->access$100(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    .line 2161
    return-void
.end method

.method public reportEvent(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "eventType"    # I

    .line 2165
    if-nez p1, :cond_0

    .line 2166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event reported without a package name, eventType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    return-void

    .line 2170
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2171
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2172
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p2, v0}, Lcom/android/server/usage/UsageStatsService;->access$100(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    .line 2173
    return-void
.end method

.method public reportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2353
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->postReportExemptedSyncStart(Ljava/lang/String;I)V

    .line 2354
    return-void
.end method

.method public reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2191
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2196
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0xc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2197
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2198
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 2199
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p3, v0}, Lcom/android/server/usage/UsageStatsService;->access$100(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    .line 2200
    return-void

    .line 2192
    .end local v0    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_1
    :goto_0
    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a package name or a channel ID"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    return-void
.end method

.method public reportLocusUpdate(Landroid/content/ComponentName;ILandroid/content/LocusId;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "locusId"    # Landroid/content/LocusId;
    .param p4, "appToken"    # Landroid/os/IBinder;

    .line 2218
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0x1e

    invoke-direct {v0, v3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2219
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p3}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 2220
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2221
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 2222
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 2223
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p2, v0}, Lcom/android/server/usage/UsageStatsService;->access$100(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    .line 2224
    return-void
.end method

.method public reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2204
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2209
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2210
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2211
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 2212
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p3, v0}, Lcom/android/server/usage/UsageStatsService;->access$100(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    .line 2213
    return-void

    .line 2205
    .end local v0    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_1
    :goto_0
    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a package name or a shortcut ID"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    return-void
.end method

.method public reportSyncScheduled(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "exempted"    # Z

    .line 2348
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->postReportSyncScheduled(Ljava/lang/String;IZ)V

    .line 2349
    return-void
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2338
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->setActiveAdminApps(Ljava/util/Set;I)V

    .line 2339
    return-void
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 2318
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/usage/AppStandbyInternal;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 2319
    return-void
.end method

.method public updatePackageMappingsData()Z
    .locals 1

    .line 2368
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$2300(Lcom/android/server/usage/UsageStatsService;)Z

    move-result v0

    return v0
.end method
