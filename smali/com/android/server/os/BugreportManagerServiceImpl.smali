.class Lcom/android/server/os/BugreportManagerServiceImpl;
.super Landroid/os/IDumpstate$Stub;
.source "BugreportManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
    }
.end annotation


# static fields
.field private static final BUGREPORT_SERVICE:Ljava/lang/String; = "bugreportd"

.field private static final DEFAULT_BUGREPORT_SERVICE_TIMEOUT_MILLIS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "BugreportManagerService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBugreportWhitelistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Landroid/os/IDumpstate$Stub;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 60
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 61
    nop

    .line 62
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getBugreportWhitelistedPackages()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/os/BugreportManagerServiceImpl;

    .line 48
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private ensureIsPrimaryUser()V
    .locals 4

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 144
    .local v1, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 145
    const-string v2, "No current user. Only primary user is allowed to take bugreports."

    invoke-direct {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    .line 147
    :cond_0
    if-nez v1, :cond_1

    .line 148
    const-string v2, "No primary user. Only primary user is allowed to take bugreports."

    invoke-direct {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    .line 150
    :cond_1
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_2

    .line 151
    const-string v2, "Current user not primary user. Only primary user is allowed to take bugreports."

    invoke-direct {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    .line 154
    :cond_2
    return-void
.end method

.method private getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;
    .locals 1

    .line 198
    const-string v0, "dumpstate"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v0

    return-object v0
.end method

.method private isDumpstateBinderServiceRunningLocked()Z
    .locals 1

    .line 191
    invoke-direct {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logAndThrow(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 252
    const-string v0, "BugreportManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportError(Landroid/os/IDumpstateListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/os/IDumpstateListener;
    .param p2, "errorCode"    # I

    .line 244
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError() transaction threw RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BugreportManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;
    .locals 8

    .line 215
    const-string v0, "ctl.start"

    const-string v1, "bugreportd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "ds":Landroid/os/IDumpstate;
    const/4 v1, 0x0

    .line 219
    .local v1, "timedOut":Z
    const/4 v2, 0x0

    .line 220
    .local v2, "totalTimeWaitedMillis":I
    const/16 v3, 0x1f4

    .line 221
    .local v3, "seedWaitTimeMillis":I
    :goto_0
    const-string/jumbo v4, "ms)"

    const-string v5, "BugreportManagerService"

    if-nez v1, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    const-string v6, "Got bugreport service handle."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    goto :goto_2

    .line 227
    :cond_0
    int-to-long v6, v3

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting to get dumpstate service handle ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    add-int/2addr v2, v3

    .line 231
    mul-int/lit8 v3, v3, 0x2

    .line 232
    int-to-long v4, v2

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v1, v4

    goto :goto_0

    .line 234
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timed out waiting to get dumpstate service handle ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_3
    return-object v0
.end method

.method private startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;Z)V
    .locals 12
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "bugreportFd"    # Ljava/io/FileDescriptor;
    .param p4, "screenshotFd"    # Ljava/io/FileDescriptor;
    .param p5, "bugreportMode"    # I
    .param p6, "listener"    # Landroid/os/IDumpstateListener;
    .param p7, "isScreenshotRequested"    # Z

    .line 160
    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->isDumpstateBinderServiceRunningLocked()Z

    move-result v0

    const-string v3, "BugreportManagerService"

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "\'dumpstate\' is already running. Cannot start a new bugreport while another one is currently in progress."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x5

    invoke-direct {p0, v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 165
    return-void

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v11

    .line 169
    .local v11, "ds":Landroid/os/IDumpstate;
    if-nez v11, :cond_1

    .line 170
    const-string v0, "Unable to get bugreport service"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 172
    return-void

    .line 176
    :cond_1
    new-instance v9, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    invoke-direct {v9, p0, v2, v11}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;)V

    .line 178
    .local v9, "myListener":Landroid/os/IDumpstateListener;
    move-object v3, v11

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v10, p7

    :try_start_0
    invoke-interface/range {v3 .. v10}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->cancelBugreport()V

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private validateBugreportMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 119
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown bugreport mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BugreportManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelBugreport()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "cancelBugreport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v1

    .line 102
    .local v1, "ds":Landroid/os/IDumpstate;
    if-nez v1, :cond_0

    .line 103
    const-string v2, "BugreportManagerService"

    const-string v3, "cancelBugreport: Could not find native dumpstate service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 107
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/os/IDumpstate;->cancelBugreport()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BugreportManagerService"

    const-string v4, "RemoteException in cancelBugreport"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string v2, "ctl.stop"

    const-string v3, "bugreportd"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v1    # "ds":Landroid/os/IDumpstate;
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;Z)V
    .locals 16
    .param p1, "callingUidUnused"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "bugreportFd"    # Ljava/io/FileDescriptor;
    .param p4, "screenshotFd"    # Ljava/io/FileDescriptor;
    .param p5, "bugreportMode"    # I
    .param p6, "listener"    # Landroid/os/IDumpstateListener;
    .param p7, "isScreenshotRequested"    # Z

    .line 70
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    iget-object v0, v9, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "startBugreport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move/from16 v11, p5

    invoke-direct {v9, v11}, Lcom/android/server/os/BugreportManagerServiceImpl;->validateBugreportMode(I)V

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 77
    .local v12, "identity":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->ensureIsPrimaryUser()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    nop

    .line 82
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 83
    .local v14, "callingUid":I
    iget-object v0, v9, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v14, v10}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 85
    iget-object v0, v9, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v15, v9, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 90
    move-object/from16 v1, p0

    move v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/os/BugreportManagerServiceImpl;->startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;Z)V

    .line 92
    monitor-exit v15

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not whitelisted to use Bugreport API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    .end local v14    # "callingUid":I
    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    throw v1
.end method
