.class public Lcom/android/server/am/AppErrorsInjector;
.super Ljava/lang/Object;
.source "AppErrorsInjector.java"


# static fields
.field private static final BAD_PROCESS_COUNT:I = 0x14

.field private static final BAD_PROCESS_TIMEOUT:J = 0x1d4c0L

.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final TAG:Ljava/lang/String; = "AppErrorsInjector"

.field private static mBadProcessCount:I

.field private static mBadProcessTimeout:J

.field private static mCheckKilledResetTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mCheckKilledTotalCounts:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/AppErrorsInjector;->DEBUG:Z

    .line 32
    const-string v0, "AppErrorsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/AppErrorsInjector;->DEBUG_INJECTOR:Z

    .line 37
    const-wide/32 v0, 0x1d4c0

    sput-wide v0, Lcom/android/server/am/AppErrorsInjector;->mBadProcessTimeout:J

    .line 38
    const/16 v0, 0x14

    sput v0, Lcom/android/server/am/AppErrorsInjector;->mBadProcessCount:I

    .line 41
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    sput-object v0, Lcom/android/server/am/AppErrorsInjector;->mCheckKilledResetTimes:Lcom/android/internal/app/ProcessMap;

    .line 42
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    sput-object v0, Lcom/android/server/am/AppErrorsInjector;->mCheckKilledTotalCounts:Lcom/android/internal/app/ProcessMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addToBadLocked(Lcom/android/internal/app/ProcessMap;Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "time"    # J
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 82
    .local p0, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    const-string v0, "AppErrorsInjector"

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v9, Lcom/android/server/am/AppErrors$BadProcessInfo;

    const/4 v8, 0x0

    move-object v3, v9

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v9}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToBad() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static configBadProcess(JI)V
    .locals 2
    .param p0, "timeout"    # J
    .param p2, "count"    # I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configBadProcess: timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppErrorsInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sput-wide p0, Lcom/android/server/am/AppErrorsInjector;->mBadProcessTimeout:J

    .line 94
    sput p2, Lcom/android/server/am/AppErrorsInjector;->mBadProcessCount:I

    .line 95
    return-void
.end method

.method static handleAppKilledLocked(Lcom/android/internal/app/ProcessMap;Lcom/android/server/am/ProcessRecord;)Z
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")Z"
        }
    .end annotation

    .line 46
    .local p0, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    if-eqz p1, :cond_4

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 51
    .local v7, "now":J
    sget-object v0, Lcom/android/server/am/AppErrorsInjector;->mCheckKilledResetTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 52
    .local v0, "lastResetTime":Ljava/lang/Long;
    sget-object v1, Lcom/android/server/am/AppErrorsInjector;->mCheckKilledTotalCounts:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/Integer;

    .line 54
    .local v9, "totalCount":Ljava/lang/Integer;
    const/4 v10, 0x1

    if-nez v0, :cond_1

    .line 55
    sget-object v1, Lcom/android/server/am/AppErrorsInjector;->mCheckKilledResetTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/android/server/am/AppErrorsInjector;->mCheckKilledTotalCounts:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 60
    .local v11, "count":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, v7, v1

    sget-wide v3, Lcom/android/server/am/AppErrorsInjector;->mBadProcessTimeout:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 61
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/android/server/am/AppErrorsInjector;->mBadProcessCount:I

    if-lt v1, v2, :cond_2

    .line 62
    const-string/jumbo v5, "killed too many times."

    const-string/jumbo v6, "killed too many times."

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/AppErrorsInjector;->addToBadLocked(Lcom/android/internal/app/ProcessMap;Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_2
    sget-object v1, Lcom/android/server/am/AppErrorsInjector;->mCheckKilledResetTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/android/server/am/AppErrorsInjector;->mCheckKilledTotalCounts:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 70
    return v10

    .line 73
    :cond_3
    sget-object v1, Lcom/android/server/am/AppErrorsInjector;->mCheckKilledTotalCounts:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v11    # "count":Ljava/lang/Integer;
    :goto_0
    return v10

    .line 47
    .end local v0    # "lastResetTime":Ljava/lang/Long;
    .end local v7    # "now":J
    .end local v9    # "totalCount":Ljava/lang/Integer;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
