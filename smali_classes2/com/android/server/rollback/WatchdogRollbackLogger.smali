.class public final Lcom/android/server/rollback/WatchdogRollbackLogger;
.super Ljava/lang/Object;
.source "WatchdogRollbackLogger.java"


# static fields
.field private static final LOGGING_PARENT_KEY:Ljava/lang/String; = "android.content.pm.LOGGING_PARENT"

.field private static final TAG:Ljava/lang/String; = "WatchdogRollbackLogger"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "failingPackage"    # Landroid/content/pm/VersionedPackage;

    .line 89
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLoggingParentName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "logPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 91
    return-object v1

    .line 94
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 95
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 98
    .local v1, "loggingParent":Landroid/content/pm/VersionedPackage;
    nop

    .line 99
    return-object v1

    .line 96
    .end local v1    # "loggingParent":Landroid/content/pm/VersionedPackage;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1
.end method

.method private static getLogPackages(Landroid/content/Context;Ljava/util/List;)Ljava/util/Set;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 110
    .local p1, "failedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 111
    .local v0, "parentPackages":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/VersionedPackage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, "failedPackageName":Ljava/lang/String;
    new-instance v3, Landroid/content/pm/VersionedPackage;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v2    # "failedPackageName":Ljava/lang/String;
    goto :goto_0

    .line 114
    :cond_0
    return-object v0
.end method

.method private static getLoggingParentName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const v1, 0x40000080    # 2.0000305f

    .line 66
    .local v1, "flags":I
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 67
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_0

    .line 68
    return-object v2

    .line 70
    :cond_0
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.content.pm.LOGGING_PARENT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 71
    .end local v1    # "flags":I
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to discover logging parent package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WatchdogRollbackLogger"

    invoke-static {v4, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    return-object v2
.end method

.method public static logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "failingNativeProcess"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 175
    .local p1, "failedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLogPackages(Landroid/content/Context;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 176
    .local v0, "logPackages":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/VersionedPackage;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/VersionedPackage;

    .line 177
    .local v2, "logPackage":Landroid/content/pm/VersionedPackage;
    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-static {v2, v3, v4, p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 181
    .end local v2    # "logPackage":Landroid/content/pm/VersionedPackage;
    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method public static logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V
    .locals 9
    .param p0, "logPackage"    # Landroid/content/pm/VersionedPackage;
    .param p1, "type"    # I
    .param p2, "rollbackReason"    # I
    .param p3, "failingPackageName"    # Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watchdog event occurred with type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " logPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " rollbackReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failedPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v2, "WatchdogRollbackLogger"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 199
    const/16 v2, 0x93

    .line 202
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v5

    new-array v8, v0, [B

    .line 199
    move v3, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IILjava/lang/String;[B)V

    goto :goto_0

    .line 210
    :cond_0
    const/16 v2, 0x93

    const/4 v5, 0x0

    new-array v8, v0, [B

    const-string v4, ""

    move v3, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IILjava/lang/String;[B)V

    .line 219
    :goto_0
    return-void
.end method

.method static logRollbackStatusOnBoot(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rollbackId"    # I
    .param p2, "logPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p3, "recentlyCommittedRollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 122
    .local v0, "packageInstaller":Landroid/content/pm/PackageInstaller;
    const/4 v1, 0x0

    .line 123
    .local v1, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/RollbackInfo;

    .line 124
    .local v3, "info":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 125
    move-object v1, v3

    .line 126
    goto :goto_1

    .line 128
    .end local v3    # "info":Landroid/content/rollback/RollbackInfo;
    :cond_0
    goto :goto_0

    .line 130
    :cond_1
    :goto_1
    const-string v2, "WatchdogRollbackLogger"

    if-nez v1, :cond_2

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rollback info not found for last staged rollback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 137
    :cond_2
    const/4 v3, 0x0

    .line 138
    .local v3, "oldLoggingPackage":Landroid/content/pm/VersionedPackage;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 139
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/rollback/PackageRollbackInfo;

    .line 140
    .local v5, "packageRollback":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 141
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v3

    .line 142
    goto :goto_3

    .line 144
    .end local v5    # "packageRollback":Landroid/content/rollback/PackageRollbackInfo;
    :cond_3
    goto :goto_2

    .line 147
    :cond_4
    :goto_3
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v4

    .line 148
    .local v4, "sessionId":I
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    .line 149
    .local v5, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-nez v5, :cond_5

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "On boot completed, could not load session id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_5
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v2

    const-string v6, ""

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    .line 155
    const/4 v2, 0x2

    invoke-static {v3, v2, v7, v6}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_4

    .line 158
    :cond_6
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 159
    const/4 v2, 0x3

    invoke-static {v3, v2, v7, v6}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 163
    :cond_7
    :goto_4
    return-void
.end method

.method static mapFailureReasonToMetric(I)I
    .locals 1
    .param p0, "failureReason"    # I

    .line 223
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 233
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_0
    return v0

    .line 229
    :cond_1
    return v0

    .line 227
    :cond_2
    return v0

    .line 225
    :cond_3
    return v0
.end method

.method private static rollbackReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 253
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 265
    const-string v0, "UNKNOWN"

    return-object v0

    .line 263
    :cond_0
    const-string v0, "REASON_NATIVE_CRASH_DURING_BOOT"

    return-object v0

    .line 261
    :cond_1
    const-string v0, "REASON_APP_NOT_RESPONDING"

    return-object v0

    .line 259
    :cond_2
    const-string v0, "REASON_APP_CRASH"

    return-object v0

    .line 257
    :cond_3
    const-string v0, "REASON_EXPLICIT_HEALTH_CHECK"

    return-object v0

    .line 255
    :cond_4
    const-string v0, "REASON_NATIVE_CRASH"

    return-object v0
.end method

.method private static rollbackTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 238
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 248
    const-string v0, "UNKNOWN"

    return-object v0

    .line 246
    :cond_0
    const-string v0, "ROLLBACK_BOOT_TRIGGERED"

    return-object v0

    .line 244
    :cond_1
    const-string v0, "ROLLBACK_FAILURE"

    return-object v0

    .line 242
    :cond_2
    const-string v0, "ROLLBACK_SUCCESS"

    return-object v0

    .line 240
    :cond_3
    const-string v0, "ROLLBACK_INITIATE"

    return-object v0
.end method
