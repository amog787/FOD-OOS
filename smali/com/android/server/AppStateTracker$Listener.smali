.class public abstract Lcom/android/server/AppStateTracker$Listener;
.super Ljava/lang/Object;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTracker$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTracker;
    .param p2, "x2"    # I

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker$Listener;->onUidActiveStateChanged(Lcom/android/server/AppStateTracker;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTracker$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTracker;
    .param p2, "x2"    # I

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker$Listener;->onUidForegroundStateChanged(Lcom/android/server/AppStateTracker;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTracker$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTracker;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppStateTracker$Listener;->onRunAnyAppOpsChanged(Lcom/android/server/AppStateTracker;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTracker$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTracker;

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$Listener;->onPowerSaveUnwhitelisted(Lcom/android/server/AppStateTracker;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTracker$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTracker;

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$Listener;->onPowerSaveWhitelistedChanged(Lcom/android/server/AppStateTracker;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTracker$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTracker;

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$Listener;->onTempPowerSaveWhitelistChanged(Lcom/android/server/AppStateTracker;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTracker$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTracker;

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$Listener;->onExemptChanged(Lcom/android/server/AppStateTracker;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTracker$Listener;
    .param p1, "x1"    # Lcom/android/server/AppStateTracker;

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$Listener;->onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTracker;)V

    return-void
.end method

.method private onExemptChanged(Lcom/android/server/AppStateTracker;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/server/AppStateTracker;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    .line 335
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    .line 336
    return-void
.end method

.method private onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTracker;)V
    .locals 1
    .param p1, "sender"    # Lcom/android/server/AppStateTracker;

    .line 342
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    .line 344
    invoke-virtual {p1}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    .line 347
    :cond_0
    return-void
.end method

.method private onPowerSaveUnwhitelisted(Lcom/android/server/AppStateTracker;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/server/AppStateTracker;

    .line 304
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    .line 305
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    .line 306
    return-void
.end method

.method private onPowerSaveWhitelistedChanged(Lcom/android/server/AppStateTracker;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/server/AppStateTracker;

    .line 313
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    .line 314
    return-void
.end method

.method private onRunAnyAppOpsChanged(Lcom/android/server/AppStateTracker;ILjava/lang/String;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/server/AppStateTracker;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 264
    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/AppStateTracker$Listener;->updateJobsForUidPackage(ILjava/lang/String;Z)V

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/AppStateTracker;->areAlarmsRestricted(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTracker$Listener;->unblockAlarmsForUidPackage(ILjava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/AppStateTracker;->areAlarmsRestricted(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    .line 273
    :cond_1
    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/android/server/AppStateTracker;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " toggled into fg service restriction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStateTracker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTracker$Listener;->stopForegroundServicesForUidPackage(ILjava/lang/String;)V

    .line 278
    :cond_2
    return-void
.end method

.method private onTempPowerSaveWhitelistChanged(Lcom/android/server/AppStateTracker;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/server/AppStateTracker;

    .line 324
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    .line 327
    return-void
.end method

.method private onUidActiveStateChanged(Lcom/android/server/AppStateTracker;I)V
    .locals 1
    .param p1, "sender"    # Lcom/android/server/AppStateTracker;
    .param p2, "uid"    # I

    .line 291
    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v0

    .line 293
    .local v0, "isActive":Z
    invoke-virtual {p0, p2, v0}, Lcom/android/server/AppStateTracker$Listener;->updateJobsForUid(IZ)V

    .line 295
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0, p2}, Lcom/android/server/AppStateTracker$Listener;->unblockAlarmsForUid(I)V

    .line 298
    :cond_0
    return-void
.end method

.method private onUidForegroundStateChanged(Lcom/android/server/AppStateTracker;I)V
    .locals 1
    .param p1, "sender"    # Lcom/android/server/AppStateTracker;
    .param p2, "uid"    # I

    .line 284
    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTracker;->isUidInForeground(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/AppStateTracker$Listener;->onUidForeground(IZ)V

    .line 285
    return-void
.end method


# virtual methods
.method public onUidForeground(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 402
    return-void
.end method

.method public stopForegroundServicesForUidPackage(ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 375
    return-void
.end method

.method public unblockAlarmsForUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 388
    return-void
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 394
    return-void
.end method

.method public unblockAllUnrestrictedAlarms()V
    .locals 0

    .line 382
    return-void
.end method

.method public updateAllJobs()V
    .locals 0

    .line 354
    return-void
.end method

.method public updateJobsForUid(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isNowActive"    # Z

    .line 361
    return-void
.end method

.method public updateJobsForUidPackage(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isNowActive"    # Z

    .line 368
    return-void
.end method
