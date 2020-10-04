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

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 140
    .local v1, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 141
    const-string v2, "No current user. Only primary user is allowed to take bugreports."

    invoke-direct {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    .line 143
    :cond_0
    if-nez v1, :cond_1

    .line 144
    const-string v2, "No primary user. Only primary user is allowed to take bugreports."

    invoke-direct {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    .line 146
    :cond_1
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_2

    .line 147
    const-string v2, "Current user not primary user. Only primary user is allowed to take bugreports."

    invoke-direct {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    .line 150
    :cond_2
    return-void
.end method

.method private isDumpstateBinderServiceRunningLocked()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 187
    const-string v0, "dumpstate"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v0

    .line 188
    .local v0, "ds":Landroid/os/IDumpstate;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private logAndThrow(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 243
    const-string v0, "BugreportManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportError(Landroid/os/IDumpstateListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/os/IDumpstateListener;
    .param p2, "errorCode"    # I

    .line 235
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 238
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

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 205
    const-string v0, "ctl.start"

    const-string v1, "bugreportd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "ds":Landroid/os/IDumpstate;
    const/4 v1, 0x0

    .line 209
    .local v1, "timedOut":Z
    const/4 v2, 0x0

    .line 210
    .local v2, "totalTimeWaitedMillis":I
    const/16 v3, 0x1f4

    .line 211
    .local v3, "seedWaitTimeMillis":I
    :goto_0
    const-string/jumbo v4, "ms)"

    const-string v5, "BugreportManagerService"

    if-nez v1, :cond_2

    .line 213
    const-string v6, "dumpstate"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    const-string v6, "Got bugreport service handle."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    goto :goto_2

    .line 218
    :cond_0
    int-to-long v6, v3

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting to get dumpstate service handle ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    add-int/2addr v2, v3

    .line 222
    mul-int/lit8 v3, v3, 0x2

    .line 223
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

    .line 225
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timed out waiting to get dumpstate service handle ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_3
    return-object v0
.end method

.method private startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "bugreportFd"    # Ljava/io/FileDescriptor;
    .param p4, "screenshotFd"    # Ljava/io/FileDescriptor;
    .param p5, "bugreportMode"    # I
    .param p6, "listener"    # Landroid/os/IDumpstateListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->isDumpstateBinderServiceRunningLocked()Z

    move-result v0

    const-string v1, "BugreportManagerService"

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "\'dumpstate\' is already running. Cannot start a new bugreport while another one is currently in progress."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x5

    invoke-direct {p0, p6, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 161
    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v0

    .line 165
    .local v0, "ds":Landroid/os/IDumpstate;
    if-nez v0, :cond_1

    .line 166
    const-string v2, "Unable to get bugreport service"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x2

    invoke-direct {p0, p6, v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 168
    return-void

    .line 172
    :cond_1
    new-instance v7, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    invoke-direct {v7, p0, p6, v0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;)V

    .line 174
    .local v7, "myListener":Landroid/os/IDumpstateListener;
    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    :try_start_0
    invoke-interface/range {v1 .. v7}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->cancelBugreport()V

    .line 183
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private validateBugreportMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 115
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

    .line 121
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

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelBugreport()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "startBugreport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    const-string v1, "ctl.stop"

    const-string v2, "bugreportd"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setListener(Ljava/lang/String;Landroid/os/IDumpstateListener;Z)Landroid/os/IDumpstateToken;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IDumpstateListener;
    .param p3, "getSectionDetails"    # Z

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setListener is not allowed on this service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    .locals 15
    .param p1, "callingUidUnused"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "bugreportFd"    # Ljava/io/FileDescriptor;
    .param p4, "screenshotFd"    # Ljava/io/FileDescriptor;
    .param p5, "bugreportMode"    # I
    .param p6, "listener"    # Landroid/os/IDumpstateListener;

    .line 77
    move-object v8, p0

    move-object/from16 v9, p2

    iget-object v0, v8, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "startBugreport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move/from16 v10, p5

    invoke-direct {p0, v10}, Lcom/android/server/os/BugreportManagerServiceImpl;->validateBugreportMode(I)V

    .line 82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 84
    .local v11, "identity":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->ensureIsPrimaryUser()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    nop

    .line 89
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 90
    .local v13, "callingUid":I
    iget-object v0, v8, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v13, v9}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 92
    iget-object v0, v8, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v14, v8, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 97
    move-object v1, p0

    move v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/android/server/os/BugreportManagerServiceImpl;->startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V

    .line 99
    monitor-exit v14

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not whitelisted to use Bugreport API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    .end local v13    # "callingUid":I
    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method
