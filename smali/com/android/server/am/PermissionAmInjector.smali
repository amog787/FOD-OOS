.class public Lcom/android/server/am/PermissionAmInjector;
.super Ljava/lang/Object;
.source "PermissionAmInjector.java"


# static fields
.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "PermissionAmInjector"

.field private static mAms:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x10

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/PermissionAmInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initInstance(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 34
    sget-boolean v0, Lcom/android/server/am/PermissionAmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    sput-object p0, Lcom/android/server/am/PermissionAmInjector;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 36
    return-void
.end method

.method public static isRequestPermission(Z)V
    .locals 3
    .param p0, "request"    # Z

    .line 39
    sget-boolean v0, Lcom/android/server/am/PermissionAmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isRequestPermission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionAmInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    const-string v0, "PermissionAmInjector"

    const-string v1, "Only applications are allowed to call isRequestPermission!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 45
    :cond_1
    sget-object v0, Lcom/android/server/am/PermissionAmInjector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 46
    sget-object v1, Lcom/android/server/am/PermissionAmInjector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 47
    .local v1, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz p0, :cond_2

    .line 48
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->permRequestInc()V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->permRequestDec()V

    .line 52
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
