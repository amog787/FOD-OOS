.class public Lcom/android/server/content/SyncLogger;
.super Ljava/lang/Object;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncLogger$RotatingFileLogger;
    }
.end annotation


# static fields
.field public static final CALLING_UID_SELF:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SyncLogger"

.field private static sInstance:Lcom/android/server/content/SyncLogger;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/content/SyncLogger;
    .locals 4

    const-class v0, Lcom/android/server/content/SyncLogger;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    if-nez v1, :cond_3

    .line 76
    const-string v1, "debug.synclog"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "flag":Ljava/lang/String;
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v2, :cond_0

    const-string v2, "1"

    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SyncLogger"

    const/4 v3, 0x2

    .line 80
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 81
    .local v2, "enable":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 82
    new-instance v3, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    invoke-direct {v3}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;-><init>()V

    sput-object v3, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    goto :goto_1

    .line 84
    :cond_2
    new-instance v3, Lcom/android/server/content/SyncLogger;

    invoke-direct {v3}, Lcom/android/server/content/SyncLogger;-><init>()V

    sput-object v3, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    .line 87
    .end local v1    # "flag":Ljava/lang/String;
    .end local v2    # "enable":Z
    :cond_3
    :goto_1
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static logSafe(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;

    .line 317
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static logSafe(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Ljava/lang/String;
    .locals 1
    .param p0, "asc"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 329
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "operation"    # Lcom/android/server/content/SyncOperation;

    .line 325
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static logSafe(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;
    .locals 1
    .param p0, "endPoint"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 321
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 112
    return-void
.end method

.method public enabled()Z
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 105
    const-string v0, ""

    return-object v0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # [Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public purgeOldLogs()V
    .locals 0

    .line 101
    return-void
.end method
