.class public Lcom/android/server/pm/PackageInstallerService;
.super Landroid/content/pm/IPackageInstaller$Stub;
.source "PackageInstallerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageSessionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerService$InternalCallback;,
        Lcom/android/server/pm/PackageInstallerService$Callbacks;,
        Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    }
.end annotation


# static fields
.field private static final ADB_DEV_MODE:I = 0x24

.field private static final LOGD:Z = false

.field private static final MAX_ACTIVE_SESSIONS_NO_PERMISSION:J = 0x32L

.field private static final MAX_ACTIVE_SESSIONS_WITH_PERMISSION:J = 0x400L

.field private static final MAX_AGE_MILLIS:J = 0xf731400L

.field private static final MAX_HISTORICAL_SESSIONS:J = 0x100000L

.field private static final MAX_TIME_SINCE_UPDATE_MILLIS:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final TAG_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final sStageFilter:Ljava/io/FilenameFilter;


# instance fields
.field private final mAllocatedSessions:Landroid/util/SparseBooleanArray;

.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private volatile mBypassNextStagedInstallerCheck:Z

.field private final mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

.field private final mInstallHandler:Landroid/os/Handler;

.field private final mInstallThread:Landroid/os/HandlerThread;

.field private final mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private final mLegacySessions:Landroid/util/SparseBooleanArray;

.field private volatile mOkToSendBroadcasts:Z

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRandom:Ljava/util/Random;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionsDir:Ljava/io/File;

.field private final mSessionsFile:Landroid/util/AtomicFile;

.field private final mStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/util/function/Supplier;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p3, "apexParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    invoke-direct {p0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 171
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 177
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    .line 180
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    .line 183
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 190
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 194
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    .line 206
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 208
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 210
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageInstaller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 211
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 213
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 217
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 218
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "install_sessions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "package-session"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    .line 220
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "install_sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 223
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 224
    new-instance v0, Lcom/android/server/pm/StagingManager;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/pm/StagingManager;-><init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/Context;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/StagingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;
    .param p1, "x1"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;
    .param p1, "x1"    # I

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .line 114
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/PackageInstallerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .line 114
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 428
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 429
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 430
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 431
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v2

    .line 435
    .local v2, "installerUid":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 436
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 435
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 437
    return-void
.end method

.method private allocateSessionIdLocked()I
    .locals 5

    .line 804
    const/4 v0, 0x0

    .line 807
    .local v0, "n":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 808
    .local v1, "sessionId":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 809
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 810
    return v1

    .line 812
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "n":I
    .local v2, "n":I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    .line 814
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to allocate session ID"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildAppIconFile(I)Ljava/io/File;
    .locals 4
    .param p1, "sessionId"    # I

    .line 468
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_icon."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildExternalStageCid(I)Ljava/lang/String;
    .locals 2
    .param p1, "sessionId"    # I

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "smdl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;

    .line 827
    iget-boolean v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 829
    .local v0, "sessionStagingDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "session_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 831
    .end local v0    # "sessionStagingDir":Ljava/io/File;
    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "basePackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1132
    const/4 v0, 0x0

    .line 1134
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-interface {v1, p2, v2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1137
    goto :goto_0

    .line 1136
    :catch_0
    move-exception v1

    .line 1138
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1142
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1143
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1144
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1147
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1143
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1149
    .local v2, "packageIcon":Landroid/graphics/Bitmap;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1150
    .local v3, "packageLabel":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x108034a

    .line 1151
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1154
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1155
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1156
    invoke-virtual {v5, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1157
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1158
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 1150
    return-object v4

    .line 1139
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "packageIcon":Landroid/graphics/Bitmap;
    .end local v3    # "packageLabel":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification not built for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageInstaller"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v1, 0x0

    return-object v1
.end method

.method private buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "volumeUuid"    # Ljava/lang/String;

    .line 822
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 823
    .local v0, "sessionStagingDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vmdl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .locals 39
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    const/16 v1, 0x5a

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 494
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 495
    .local v14, "callingUid":I
    iget-object v2, v15, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "createSession"

    move v3, v14

    move/from16 v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 498
    iget-object v1, v15, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "no_install_apps"

    move/from16 v12, p3

    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 502
    iget-object v1, v13, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v1, :cond_1

    iget-object v1, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 503
    const-string v2, "com.android.permission.USE_INSTALLER_V2"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You need the com.android.permission.USE_INSTALLER_V2 permission to use a data loader"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :cond_1
    :goto_0
    iget-object v1, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/16 v2, 0xff

    if-eqz v1, :cond_2

    iget-object v1, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 513
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 514
    const/4 v1, 0x0

    iput-object v1, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 517
    :cond_2
    iget-object v1, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-static {v1, v3}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 520
    iget-object v1, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 521
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_3

    .line 522
    iget-object v1, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    move-object v10, v1

    .line 524
    .local v10, "requestedInstallerPackageName":Ljava/lang/String;
    const/16 v1, 0x7d0

    const/4 v2, 0x2

    if-eq v14, v1, :cond_8

    if-nez v14, :cond_4

    goto :goto_2

    .line 530
    :cond_4
    if-eq v14, v3, :cond_5

    .line 532
    iget-object v4, v15, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v4, v14, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 536
    :cond_5
    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 537
    iget-object v4, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 539
    iget-object v4, v15, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v4, v14, v10}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 543
    :cond_6
    iget v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v4, v4, -0x21

    iput v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 544
    iget v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v4, v4, -0x41

    iput v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 545
    iget v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 546
    iget v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v4, v2

    iput v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 547
    iget v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    iget-object v4, v15, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 548
    invoke-virtual {v4, v14}, Lcom/android/server/pm/PackageManagerService;->isCallerVerifier(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 549
    iget v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v5, -0x10001

    and-int/2addr v4, v5

    iput v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 553
    :cond_7
    move-object v9, v0

    goto :goto_3

    .line 525
    :cond_8
    :goto_2
    iget v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 528
    const/4 v0, 0x0

    move-object v9, v0

    .line 553
    .end local p2    # "installerPackageName":Ljava/lang/String;
    .local v9, "installerPackageName":Ljava/lang/String;
    :goto_3
    const/4 v0, 0x0

    .line 554
    .local v0, "originatingPackageName":Ljava/lang/String;
    iget v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_9

    iget v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    if-eq v4, v14, :cond_9

    .line 556
    iget-object v4, v15, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v7, v13, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-virtual {v4, v7}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_9

    array-length v7, v4

    if-lez v7, :cond_9

    .line 559
    aget-object v0, v4, v6

    move-object v8, v0

    goto :goto_4

    .line 563
    .end local v4    # "packages":[Ljava/lang/String;
    :cond_9
    move-object v8, v0

    .end local v0    # "originatingPackageName":Ljava/lang/String;
    .local v8, "originatingPackageName":Ljava/lang/String;
    :goto_4
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_b

    invoke-direct {v15, v14}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    .line 566
    :cond_a
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v4, -0x100001

    and-int/2addr v0, v4

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 567
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_6

    .line 564
    :cond_b
    :goto_5
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v4, 0x100000

    or-int/2addr v0, v4

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 570
    :goto_6
    if-eq v14, v3, :cond_c

    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/16 v3, 0x24

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_c

    .line 574
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v3, -0x80001

    and-int/2addr v0, v3

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 577
    :cond_c
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_7

    :cond_d
    move v0, v6

    :goto_7
    move/from16 v29, v0

    .line 578
    .local v29, "isApex":Z
    iget-boolean v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_e

    if-eqz v29, :cond_f

    .line 579
    :cond_e
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INSTALL_PACKAGES"

    const-string v7, "PackageInstaller"

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_f
    if-eqz v29, :cond_12

    .line 583
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 587
    iget-boolean v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_10

    goto :goto_8

    .line 588
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APEX files can only be installed as part of a staged session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This device doesn\'t support the installation of APEX files"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_12
    :goto_8
    iget-boolean v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_15

    invoke-direct {v15, v14}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 594
    iget-boolean v0, v15, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    if-eqz v0, :cond_13

    .line 595
    iput-boolean v6, v15, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    goto :goto_9

    .line 596
    :cond_13
    invoke-direct {v15, v10}, Lcom/android/server/pm/PackageInstallerService;->isStagedInstallerAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_9

    .line 597
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Installer not allowed to commit staged install"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_15
    :goto_9
    iget-boolean v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_1f

    .line 603
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_17

    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 604
    const-string v4, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_16

    goto :goto_a

    .line 606
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to use the PackageManager.INSTALL_GRANT_RUNTIME_PERMISSIONS flag"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_17
    :goto_a
    iget-object v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    .line 613
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 615
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v4

    .line 616
    .local v4, "iconSize":I
    iget-object v5, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/lit8 v7, v4, 0x2

    if-gt v5, v7, :cond_18

    iget-object v5, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 617
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v7, v4, 0x2

    if-le v5, v7, :cond_19

    .line 618
    :cond_18
    iget-object v5, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-static {v5, v4, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 623
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v4    # "iconSize":I
    :cond_19
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-eq v0, v3, :cond_1b

    if-ne v0, v2, :cond_1a

    goto :goto_b

    .line 628
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid install mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_1b
    :goto_b
    nop

    .line 633
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1d

    .line 634
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v13}, Lcom/android/internal/content/PackageHelper;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_c

    .line 635
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No suitable internal storage available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_1d
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1e

    .line 640
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_c

    .line 642
    :cond_1e
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 646
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 648
    .local v2, "ident":J
    :try_start_0
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v13}, Lcom/android/internal/content/PackageHelper;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    goto :goto_c

    .line 650
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    throw v0

    .line 655
    .end local v2    # "ident":J
    :cond_1f
    :goto_c
    iget-object v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 656
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v2, v13, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->retainHardAndSoftRestrictedPermissions(Ljava/util/List;)V

    .line 662
    :cond_20
    iget-object v2, v15, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 664
    :try_start_1
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-static {v0, v14}, Lcom/android/server/pm/PackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    move-result v0

    .line 665
    .local v0, "activeCount":I
    iget-object v3, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-nez v3, :cond_22

    .line 667
    int-to-long v3, v0

    const-wide/16 v16, 0x400

    cmp-long v3, v3, v16

    if-gez v3, :cond_21

    goto :goto_d

    .line 668
    :cond_21
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many active sessions for UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v8    # "originatingPackageName":Ljava/lang/String;
    .end local v9    # "installerPackageName":Ljava/lang/String;
    .end local v10    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v14    # "callingUid":I
    .end local v29    # "isApex":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local p3    # "userId":I
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 682
    .end local v0    # "activeCount":I
    .restart local v8    # "originatingPackageName":Ljava/lang/String;
    .restart local v9    # "installerPackageName":Ljava/lang/String;
    .restart local v10    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v14    # "callingUid":I
    .restart local v29    # "isApex":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local p3    # "userId":I
    :catchall_1
    move-exception v0

    move-object/from16 v35, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object v6, v13

    move v7, v14

    move-object v4, v15

    goto/16 :goto_10

    .line 671
    .restart local v0    # "activeCount":I
    :cond_22
    int-to-long v3, v0

    const-wide/16 v16, 0x32

    cmp-long v3, v3, v16

    if-gez v3, :cond_29

    .line 675
    :goto_d
    :try_start_3
    iget-object v3, v15, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 676
    .local v3, "historicalCount":I
    int-to-long v4, v3

    const-wide/32 v16, 0x100000

    cmp-long v4, v4, v16

    if-gez v4, :cond_28

    .line 681
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v4

    move v5, v4

    .line 682
    .end local v0    # "activeCount":I
    .end local v3    # "historicalCount":I
    .local v5, "sessionId":I
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 686
    .local v30, "createdMillis":J
    const/4 v0, 0x0

    .line 687
    .local v0, "stageDir":Ljava/io/File;
    const/4 v2, 0x0

    .line 688
    .local v2, "stageCid":Ljava/lang/String;
    iget-boolean v3, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v3, :cond_24

    .line 689
    iget v3, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_23

    .line 690
    invoke-direct {v15, v5, v13}, Lcom/android/server/pm/PackageInstallerService;->buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;

    move-result-object v0

    move-object/from16 v32, v0

    move-object/from16 v33, v2

    goto :goto_e

    .line 692
    :cond_23
    invoke-direct {v15, v5}, Lcom/android/server/pm/PackageInstallerService;->buildExternalStageCid(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v32, v0

    move-object/from16 v33, v2

    goto :goto_e

    .line 688
    :cond_24
    move-object/from16 v32, v0

    move-object/from16 v33, v2

    .line 697
    .end local v0    # "stageDir":Ljava/io/File;
    .end local v2    # "stageCid":Ljava/lang/String;
    .local v32, "stageDir":Ljava/io/File;
    .local v33, "stageCid":Ljava/lang/String;
    :goto_e
    iget-boolean v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    if-eqz v0, :cond_25

    .line 698
    if-eq v14, v1, :cond_25

    if-eqz v14, :cond_25

    .line 699
    iput-boolean v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 702
    :cond_25
    invoke-static {v9, v8, v10}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v34

    .local v34, "installSource":Lcom/android/server/pm/InstallSource;
    move-object/from16 v11, v34

    .line 704
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession;

    move-object v1, v0

    iget-object v2, v15, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v3, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v4, v15, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v15, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 705
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, v15, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, ""

    move/from16 p2, v5

    .end local v5    # "sessionId":I
    .local p2, "sessionId":I
    move-object/from16 v5, p0

    move-object/from16 v35, v8

    .end local v8    # "originatingPackageName":Ljava/lang/String;
    .local v35, "originatingPackageName":Ljava/lang/String;
    move/from16 v8, p2

    move-object/from16 v36, v9

    .end local v9    # "installerPackageName":Ljava/lang/String;
    .local v36, "installerPackageName":Ljava/lang/String;
    move/from16 v9, p3

    move-object/from16 v37, v10

    .end local v10    # "requestedInstallerPackageName":Ljava/lang/String;
    .local v37, "requestedInstallerPackageName":Ljava/lang/String;
    move v10, v14

    move-object/from16 v12, p1

    move/from16 v38, v14

    .end local v14    # "callingUid":I
    .local v38, "callingUid":I
    move-wide/from16 v13, v30

    move-object/from16 v15, v32

    move-object/from16 v16, v33

    invoke-direct/range {v1 .. v28}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;ZZZZ[IIZZZILjava/lang/String;)V

    .line 710
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    move-object/from16 v4, p0

    iget-object v3, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v3

    .line 711
    :try_start_5
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v5, p2

    .end local p2    # "sessionId":I
    .restart local v5    # "sessionId":I
    :try_start_6
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 712
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 713
    move-object/from16 v6, p1

    iget-boolean v0, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_26

    .line 714
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 717
    :cond_26
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-nez v0, :cond_27

    .line 718
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->access$200(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    .line 720
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V

    .line 721
    return v5

    .line 712
    :catchall_2
    move-exception v0

    move-object/from16 v6, p1

    goto :goto_f

    .end local v5    # "sessionId":I
    .restart local p2    # "sessionId":I
    :catchall_3
    move-exception v0

    move-object/from16 v6, p1

    move/from16 v5, p2

    .end local p2    # "sessionId":I
    .restart local v5    # "sessionId":I
    :goto_f
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_f

    .line 682
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v5    # "sessionId":I
    .end local v30    # "createdMillis":J
    .end local v32    # "stageDir":Ljava/io/File;
    .end local v33    # "stageCid":Ljava/lang/String;
    .end local v34    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v35    # "originatingPackageName":Ljava/lang/String;
    .end local v36    # "installerPackageName":Ljava/lang/String;
    .end local v37    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v38    # "callingUid":I
    .restart local v8    # "originatingPackageName":Ljava/lang/String;
    .restart local v9    # "installerPackageName":Ljava/lang/String;
    .restart local v10    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v14    # "callingUid":I
    :catchall_5
    move-exception v0

    move-object/from16 v35, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object v6, v13

    move-object v4, v15

    move v7, v14

    .end local v8    # "originatingPackageName":Ljava/lang/String;
    .end local v9    # "installerPackageName":Ljava/lang/String;
    .end local v10    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v14    # "callingUid":I
    .restart local v35    # "originatingPackageName":Ljava/lang/String;
    .restart local v36    # "installerPackageName":Ljava/lang/String;
    .restart local v37    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v38    # "callingUid":I
    goto :goto_10

    .line 677
    .end local v35    # "originatingPackageName":Ljava/lang/String;
    .end local v36    # "installerPackageName":Ljava/lang/String;
    .end local v37    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v38    # "callingUid":I
    .local v0, "activeCount":I
    .restart local v3    # "historicalCount":I
    .restart local v8    # "originatingPackageName":Ljava/lang/String;
    .restart local v9    # "installerPackageName":Ljava/lang/String;
    .restart local v10    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v14    # "callingUid":I
    :cond_28
    move-object/from16 v35, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object v6, v13

    move/from16 v38, v14

    move-object v4, v15

    .end local v8    # "originatingPackageName":Ljava/lang/String;
    .end local v9    # "installerPackageName":Ljava/lang/String;
    .end local v10    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v14    # "callingUid":I
    .restart local v35    # "originatingPackageName":Ljava/lang/String;
    .restart local v36    # "installerPackageName":Ljava/lang/String;
    .restart local v37    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v38    # "callingUid":I
    :try_start_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many historical sessions for UID "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move/from16 v7, v38

    .end local v38    # "callingUid":I
    .local v7, "callingUid":I
    :try_start_9
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "callingUid":I
    .end local v29    # "isApex":Z
    .end local v35    # "originatingPackageName":Ljava/lang/String;
    .end local v36    # "installerPackageName":Ljava/lang/String;
    .end local v37    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local p3    # "userId":I
    throw v1

    .line 682
    .end local v0    # "activeCount":I
    .end local v3    # "historicalCount":I
    .restart local v29    # "isApex":Z
    .restart local v35    # "originatingPackageName":Ljava/lang/String;
    .restart local v36    # "installerPackageName":Ljava/lang/String;
    .restart local v37    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v38    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local p3    # "userId":I
    :catchall_6
    move-exception v0

    move/from16 v7, v38

    .end local v38    # "callingUid":I
    .restart local v7    # "callingUid":I
    goto :goto_10

    .line 672
    .end local v7    # "callingUid":I
    .end local v35    # "originatingPackageName":Ljava/lang/String;
    .end local v36    # "installerPackageName":Ljava/lang/String;
    .end local v37    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v0    # "activeCount":I
    .restart local v8    # "originatingPackageName":Ljava/lang/String;
    .restart local v9    # "installerPackageName":Ljava/lang/String;
    .restart local v10    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v14    # "callingUid":I
    :cond_29
    move-object/from16 v35, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object v6, v13

    move v7, v14

    move-object v4, v15

    .end local v8    # "originatingPackageName":Ljava/lang/String;
    .end local v9    # "installerPackageName":Ljava/lang/String;
    .end local v10    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v14    # "callingUid":I
    .restart local v7    # "callingUid":I
    .restart local v35    # "originatingPackageName":Ljava/lang/String;
    .restart local v36    # "installerPackageName":Ljava/lang/String;
    .restart local v37    # "requestedInstallerPackageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many active sessions for UID "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "callingUid":I
    .end local v29    # "isApex":Z
    .end local v35    # "originatingPackageName":Ljava/lang/String;
    .end local v36    # "installerPackageName":Ljava/lang/String;
    .end local v37    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local p3    # "userId":I
    throw v1

    .line 682
    .end local v0    # "activeCount":I
    .restart local v8    # "originatingPackageName":Ljava/lang/String;
    .restart local v9    # "installerPackageName":Ljava/lang/String;
    .restart local v10    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v14    # "callingUid":I
    .restart local v29    # "isApex":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local p3    # "userId":I
    :catchall_7
    move-exception v0

    move-object/from16 v35, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object v6, v13

    move v7, v14

    move-object v4, v15

    .end local v8    # "originatingPackageName":Ljava/lang/String;
    .end local v9    # "installerPackageName":Ljava/lang/String;
    .end local v10    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v14    # "callingUid":I
    .restart local v7    # "callingUid":I
    .restart local v35    # "originatingPackageName":Ljava/lang/String;
    .restart local v36    # "installerPackageName":Ljava/lang/String;
    .restart local v37    # "requestedInstallerPackageName":Ljava/lang/String;
    :goto_10
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_10

    .line 499
    .end local v7    # "callingUid":I
    .end local v29    # "isApex":Z
    .end local v35    # "originatingPackageName":Ljava/lang/String;
    .end local v36    # "installerPackageName":Ljava/lang/String;
    .end local v37    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v14    # "callingUid":I
    .local p2, "installerPackageName":Ljava/lang/String;
    :cond_2a
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "User restriction prevents installing"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getSessionCount(Landroid/util/SparseArray;I)I
    .locals 5
    .param p1, "installerUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;I)I"
        }
    .end annotation

    .line 1043
    .local p0, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/PackageInstallerSession;>;"
    const/4 v0, 0x0

    .line 1044
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1045
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1046
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 1047
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1048
    add-int/lit8 v0, v0, 0x1

    .line 1045
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1051
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method private getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 818
    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private isCalledBySystemOrShell(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 725
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1056
    .local v0, "callingUid":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1057
    return v1

    .line 1059
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isStageName(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 324
    const-string/jumbo v0, "vmdl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ".tmp"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 325
    .local v0, "isFile":Z
    :goto_0
    const-string/jumbo v4, "smdl"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 326
    .local v1, "isContainer":Z
    :goto_1
    const-string/jumbo v4, "smdl2tmp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 327
    .local v4, "isLegacyContainer":Z
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    return v2
.end method

.method private isStagedInstallerAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "installerName"    # Ljava/lang/String;

    .line 730
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getWhitelistedStagedInstallers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$registerCallback$0(II)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "eventUserId"    # I

    .line 1011
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 1162
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1163
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    if-eqz p0, :cond_0

    .line 1164
    array-length v1, p0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 1165
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1167
    :cond_0
    return-object v0
.end method

.method private openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 794
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 798
    monitor-exit v0

    return-object v1

    .line 795
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "sessionId":I
    throw v2

    .line 799
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "sessionId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static prepareStageDir(Ljava/io/File;)V
    .locals 4
    .param p0, "stageDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 840
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 841
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    nop

    .line 847
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    return-void

    .line 848
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restorecon session dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare session dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 836
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session dir already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readSessionsLocked()V
    .locals 14

    .line 358
    const-string v0, "PackageInstaller"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 360
    const/4 v1, 0x0

    .line 362
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 363
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 364
    .local v2, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 367
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v11, v3

    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v3, v12, :cond_6

    .line 368
    const/4 v3, 0x2

    if-ne v11, v3, :cond_0

    .line 369
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 370
    .local v13, "tag":Ljava/lang/String;
    const-string/jumbo v3, "session"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    .line 373
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 374
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 373
    move-object v3, v2

    move-object v10, p0

    invoke-static/range {v3 .. v10}, Lcom/android/server/pm/PackageInstallerSession;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    nop

    .line 381
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long/2addr v4, v6

    .line 383
    .local v4, "age":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getUpdatedMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 385
    .local v6, "timeSinceUpdate":J
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 386
    const-wide/32 v8, 0x240c8400

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    .line 387
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 388
    const/4 v8, 0x0

    .local v8, "valid":Z
    goto :goto_1

    .line 390
    .end local v8    # "valid":Z
    :cond_1
    const/4 v8, 0x1

    .restart local v8    # "valid":Z
    goto :goto_1

    .line 392
    .end local v8    # "valid":Z
    :cond_2
    const-wide/32 v8, 0xf731400

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    .line 393
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Abandoning old session created at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v8, 0x0

    .restart local v8    # "valid":Z
    goto :goto_1

    .line 397
    .end local v8    # "valid":Z
    :cond_3
    const/4 v8, 0x1

    .line 400
    .restart local v8    # "valid":Z
    :goto_1
    if-eqz v8, :cond_4

    .line 401
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v10, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v9, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 406
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 408
    :goto_2
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    iget v10, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v9, v10, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 376
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v4    # "age":J
    .end local v6    # "timeSinceUpdate":J
    .end local v8    # "valid":Z
    :catch_0
    move-exception v3

    .line 377
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Could not read session"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    goto/16 :goto_0

    .line 410
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v13    # "tag":Ljava/lang/String;
    :cond_5
    :goto_3
    goto/16 :goto_0

    .line 367
    .end local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "type":I
    :cond_6
    goto :goto_5

    .line 417
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 414
    :catch_1
    move-exception v2

    .line 415
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Failed reading install sessions"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_6

    :goto_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 418
    throw v0

    .line 412
    :catch_2
    move-exception v0

    .line 417
    :goto_5
    nop

    :goto_6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 418
    nop

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 421
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 422
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->onAfterSessionRead()V

    .line 420
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 424
    .end local v0    # "i":I
    :cond_7
    return-void
.end method

.method private reconcileStagesLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 298
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 299
    .local v0, "stagingDir":Ljava/io/File;
    sget-object v1, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    .line 300
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 299
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 303
    .local v1, "unclaimedStages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 304
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 305
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 303
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 310
    .local v3, "stage":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting orphan stage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageInstaller"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 312
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    .line 313
    monitor-exit v4

    .line 314
    .end local v3    # "stage":Ljava/io/File;
    goto :goto_1

    .line 313
    .restart local v3    # "stage":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 315
    .end local v3    # "stage":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private writeSessionsAsync()V
    .locals 2

    .line 472
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerService$2;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    return-void
.end method

.method private writeSessionsLocked()V
    .locals 8

    .line 443
    const-string/jumbo v0, "sessions"

    const/4 v1, 0x0

    .line 445
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 447
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 448
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 449
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 450
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 452
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 453
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    .line 454
    .local v6, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/pm/PackageInstallerSession;->write(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/File;)V

    .line 452
    .end local v6    # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 456
    .end local v5    # "i":I
    :cond_0
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 459
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "size":I
    goto :goto_1

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 462
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public abandonSession(I)V
    .locals 5
    .param p1, "sessionId"    # I

    .line 773
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 775
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 779
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 780
    return-void

    .line 776
    .restart local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "sessionId":I
    throw v2

    .line 779
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "sessionId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public allocateExternalStageCidLegacy()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 348
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    .line 349
    .local v1, "sessionId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smdl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 351
    .end local v1    # "sessionId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "isEphemeral"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 334
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    .line 335
    .local v1, "sessionId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 336
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 337
    .local v2, "sessionStageDir":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :try_start_1
    monitor-exit v0

    return-object v2

    .line 342
    .end local v1    # "sessionId":I
    .end local v2    # "sessionStageDir":Ljava/io/File;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "isEphemeral":Z
    throw v2

    .line 342
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "isEphemeral":Z
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bypassNextStagedInstallerCheck(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 1035
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 1039
    return-void

    .line 1036
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller not allowed to bypass staged installer check"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .locals 2
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 485
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1253
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1254
    :try_start_0
    const-string v1, "Active install sessions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    .local v1, "finalizedSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1259
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1260
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 1261
    .local v4, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1262
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    goto :goto_1

    .line 1265
    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1266
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1259
    .end local v4    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1268
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1269
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1271
    const-string v3, "Finalized install sessions:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1273
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v3

    .line 1274
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 1275
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 1276
    .restart local v4    # "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1277
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1274
    .end local v4    # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1279
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1280
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1282
    const-string v3, "Historical install sessions:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1284
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v2, v3

    .line 1285
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v2, :cond_3

    .line 1286
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1285
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1289
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1290
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1292
    const-string v3, "Legacy install sessions:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1294
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1296
    nop

    .end local v1    # "finalizedSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local v2    # "N":I
    monitor-exit v0

    .line 1297
    return-void

    .line 1296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 883
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 884
    .local v6, "callingUid":I
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getAllSessions"

    move v1, v6

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 889
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 890
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 891
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget v4, v3, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-nez v4, :cond_1

    .line 892
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 893
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 896
    .end local v2    # "i":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 896
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 902
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getMySessions"

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 908
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 909
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 911
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    const/4 v4, 0x0

    const/16 v5, 0x3e8

    .line 912
    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    .line 913
    .local v4, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v5, p2, :cond_0

    .line 914
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v5

    if-nez v5, :cond_0

    .line 915
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v4    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 918
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 918
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .locals 2
    .param p1, "sessionId"    # I

    .line 1028
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1029
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    monitor-exit v0

    return-object v1

    .line 1030
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 4
    .param p1, "sessionId"    # I

    .line 858
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 861
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 862
    :cond_0
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    goto :goto_0

    .line 863
    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    .line 861
    return-object v2

    .line 864
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStagedSessions()Landroid/content/pm/ParceledListSlice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 871
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 872
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 873
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 874
    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 877
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 877
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installFlags"    # I
    .param p3, "installReason"    # I
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/IntentSender;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 991
    .local p6, "whiteListedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move v2, p5

    move v3, p2

    move v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)I

    .line 993
    return-void
.end method

.method okToSendBroadcasts()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return v0
.end method

.method public onPrivateVolumeMounted(Ljava/lang/String;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 319
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 320
    monitor-exit v0

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .locals 2
    .param p1, "sessionId"    # I

    .line 785
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .locals 6
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "userId"    # I

    .line 1009
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1010
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1009
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "registerCallback"

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1011
    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageInstallerService$vra5ZkE3juVvcgDBu5xv0wVzno8;

    invoke-direct {v0, p2}, Lcom/android/server/pm/-$$Lambda$PackageInstallerService$vra5ZkE3juVvcgDBu5xv0wVzno8;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    .line 1012
    return-void
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "userCheck"    # Ljava/util/function/IntPredicate;

    .line 1018
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->register(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    .line 1019
    return-void
.end method

.method restoreAndApplyStagedSessionIfNeeded()V
    .locals 7

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "stagedSessionsToRestore":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 267
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v1

    .line 275
    .local v1, "isDeviceUpgrading":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 276
    .restart local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4

    if-nez v4, :cond_2

    .line 278
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An orphan staged session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is found, parent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 282
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/pm/StagingManager;->restoreSession(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 283
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_1

    .line 293
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 294
    return-void

    .line 271
    .end local v1    # "isDeviceUpgrading":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setPermissionsResult(IZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z

    .line 997
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const-string v2, "PackageInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 1001
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPermissionsResult(Z)V

    .line 1004
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    monitor-exit v0

    .line 1005
    return-void

    .line 1004
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 7

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 233
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager;->systemReady()V

    .line 235
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 236
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->readSessionsLocked()V

    .line 238
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 240
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 244
    .local v1, "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 246
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget v4, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 244
    nop

    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 251
    .local v3, "icon":Ljava/io/File;
    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting orphan icon "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 253
    nop

    .end local v3    # "icon":Ljava/io/File;
    goto :goto_1

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()V

    .line 259
    .end local v1    # "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .locals 16
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .param p5, "userId"    # I

    .line 925
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v11, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 926
    .local v12, "callingUid":I
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string/jumbo v10, "uninstall"

    move v6, v12

    move/from16 v7, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 927
    const/16 v0, 0x7d0

    if-eq v12, v0, :cond_0

    if-eqz v12, :cond_0

    .line 928
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v12, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 933
    :cond_0
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 934
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 935
    .local v13, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v0, 0x0

    if-eqz v13, :cond_1

    .line 936
    invoke-virtual {v13, v3, v12}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    move v14, v5

    .line 938
    .local v14, "canSilentlyInstallPackage":Z
    new-instance v15, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 939
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v15

    move-object/from16 v7, p4

    move v9, v14

    move/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 941
    .local v5, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 944
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v11, v4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    goto :goto_1

    .line 945
    :cond_2
    if-eqz v14, :cond_3

    .line 948
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 950
    .local v6, "ident":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v8

    invoke-virtual {v0, v2, v8, v11, v4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 953
    nop

    .line 954
    const/16 v0, 0x71

    .line 955
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 956
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 957
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 958
    .end local v6    # "ident":J
    goto :goto_1

    .line 952
    .restart local v6    # "ident":J
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 953
    throw v0

    .line 959
    .end local v6    # "ident":J
    :cond_3
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v3, v0, v11}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 960
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1c

    const/4 v8, 0x0

    if-lt v6, v7, :cond_4

    .line 961
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "package"

    invoke-static {v9, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 968
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const-string v8, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 969
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onUserActionRequired(Landroid/content/Intent;)V

    .line 971
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    :goto_1
    return-void
.end method

.method public uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    .locals 14
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .param p4, "userId"    # I

    .line 976
    move-object v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 977
    .local v7, "callingUid":I
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "uninstall"

    move v2, v7

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 979
    const/16 v1, 0x7d0

    if-eq v7, v1, :cond_0

    if-eqz v7, :cond_0

    .line 980
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v2, p2

    invoke-virtual {v1, v7, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    goto :goto_0

    .line 979
    :cond_0
    move-object/from16 v2, p2

    .line 983
    :goto_0
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 984
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v8, v1

    move-object/from16 v10, p3

    move/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 985
    .local v1, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v4

    move-object v5, p1

    move/from16 v6, p4

    invoke-virtual {v3, p1, v4, v6}, Lcom/android/server/pm/PackageManagerService;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 986
    return-void
.end method

.method public unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;

    .line 1023
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->unregister(Landroid/content/pm/IPackageInstallerCallback;)V

    .line 1024
    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "sessionId"    # I
    .param p2, "appIcon"    # Landroid/graphics/Bitmap;

    .line 735
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 736
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 737
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 742
    if-eqz p2, :cond_1

    .line 743
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 745
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    .line 746
    .local v3, "iconSize":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    if-gt v4, v5, :cond_0

    .line 747
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    if-le v4, v5, :cond_1

    .line 748
    :cond_0
    const/4 v4, 0x1

    invoke-static {p2, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object p2, v4

    .line 752
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "iconSize":I
    :cond_1
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 753
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 755
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 756
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 757
    return-void

    .line 738
    .restart local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "sessionId":I
    .end local p2    # "appIcon":Landroid/graphics/Bitmap;
    throw v2

    .line 756
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "sessionId":I
    .restart local p2    # "appIcon":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSessionAppLabel(ILjava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "appLabel"    # Ljava/lang/String;

    .line 761
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 763
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 766
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 767
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 768
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 769
    return-void

    .line 764
    .restart local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "sessionId":I
    .end local p2    # "appLabel":Ljava/lang/String;
    throw v2

    .line 768
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "sessionId":I
    .restart local p2    # "appLabel":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
