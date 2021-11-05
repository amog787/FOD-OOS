.class Lcom/android/server/AppStateTracker$FeatureFlagsObserver;
.super Landroid/database/ContentObserver;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeatureFlagsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/AppStateTracker;

    .line 201
    iput-object p1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 203
    return-void
.end method


# virtual methods
.method isForcedAppStandbyEnabled()Z
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    const-string v1, "forced_app_standby_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTracker;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method isForcedAppStandbyForSmallBatteryEnabled()Z
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    const-string v1, "forced_app_standby_for_small_battery_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTracker;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 225
    const-string v0, "forced_app_standby_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result v0

    .line 227
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v2, v2, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-ne v2, v0, :cond_0

    .line 229
    monitor-exit v1

    return-void

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iput-boolean v0, v2, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    .line 236
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyForcedAppStandbyFeatureFlagChanged()V

    .line 238
    .end local v0    # "enabled":Z
    goto :goto_0

    .line 236
    .restart local v0    # "enabled":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 238
    .end local v0    # "enabled":Z
    :cond_1
    const-string v0, "forced_app_standby_for_small_battery_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result v0

    .line 241
    .restart local v0    # "enabled":Z
    iget-object v1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 242
    :try_start_2
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v2, v2, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    if-ne v2, v0, :cond_2

    .line 243
    monitor-exit v1

    return-void

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iput-boolean v0, v2, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    .line 250
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v2}, Lcom/android/server/AppStateTracker;->access$300(Lcom/android/server/AppStateTracker;)V

    .line 251
    monitor-exit v1

    .line 252
    .end local v0    # "enabled":Z
    goto :goto_0

    .line 251
    .restart local v0    # "enabled":Z
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 253
    .end local v0    # "enabled":Z
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected feature flag uri encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStateTracker"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void
.end method

.method register()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    const-string v1, "forced_app_standby_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "forced_app_standby_for_small_battery_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    return-void
.end method
