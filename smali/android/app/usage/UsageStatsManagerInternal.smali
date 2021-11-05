.class public abstract Landroid/app/usage/UsageStatsManagerInternal;
.super Ljava/lang/Object;
.source "UsageStatsManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract applyRestoredPayload(ILjava/lang/String;[B)V
.end method

.method public abstract getAppStandbyBucket(Ljava/lang/String;IJ)I
.end method

.method public abstract getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
.end method

.method public abstract getBackupPayload(ILjava/lang/String;)[B
.end method

.method public abstract getIdleUidsForUser(I)[I
.end method

.method public abstract getTimeSinceLastJobRun(Ljava/lang/String;I)J
.end method

.method public abstract isAppIdle(Ljava/lang/String;II)Z
.end method

.method public abstract onActiveAdminAdded(Ljava/lang/String;I)V
.end method

.method public abstract onAdminDataAvailable()V
.end method

.method public abstract prepareForPossibleShutdown()V
.end method

.method public abstract prepareShutdown()V
.end method

.method public abstract pruneUninstalledPackagesData(I)Z
.end method

.method public abstract queryEventsForUser(IJJI)Landroid/app/usage/UsageEvents;
.end method

.method public abstract queryUsageStatsForUser(IIJJZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reportAppJobState(Ljava/lang/String;IIJ)V
.end method

.method public abstract reportConfigurationChange(Landroid/content/res/Configuration;I)V
.end method

.method public abstract reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract reportEvent(Landroid/content/ComponentName;IIILandroid/content/ComponentName;)V
.end method

.method public abstract reportEvent(Ljava/lang/String;II)V
.end method

.method public abstract reportExemptedSyncStart(Ljava/lang/String;I)V
.end method

.method public abstract reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract reportLocusUpdate(Landroid/content/ComponentName;ILandroid/content/LocusId;Landroid/os/IBinder;)V
.end method

.method public abstract reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract reportSyncScheduled(Ljava/lang/String;IZ)V
.end method

.method public abstract setActiveAdminApps(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setLastJobRunTime(Ljava/lang/String;IJ)V
.end method

.method public abstract updatePackageMappingsData()Z
.end method
