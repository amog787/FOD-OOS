.class public final Lcom/android/server/timezone/RulesManagerService;
.super Landroid/app/timezone/IRulesManager$Stub;
.source "RulesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;,
        Lcom/android/server/timezone/RulesManagerService$InstallRunnable;,
        Lcom/android/server/timezone/RulesManagerService$Lifecycle;
    }
.end annotation


# static fields
.field static final DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

.field static final REQUIRED_QUERY_PERMISSION:Ljava/lang/String; = "android.permission.QUERY_TIME_ZONE_RULES"

.field static final REQUIRED_UPDATER_PERMISSION:Ljava/lang/String; = "android.permission.UPDATE_TIME_ZONE_RULES"

.field private static final TAG:Ljava/lang/String; = "timezone.RulesManagerService"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

.field private final mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;

.field private final mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackageTracker:Lcom/android/server/timezone/PackageTracker;

.field private final mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Landroid/app/timezone/DistroFormatVersion;

    .line 72
    invoke-static {}, Llibcore/timezone/TzDataSetVersion;->currentFormatMajorVersion()I

    move-result v1

    .line 73
    invoke-static {}, Llibcore/timezone/TzDataSetVersion;->currentFormatMinorVersion()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/timezone/DistroFormatVersion;-><init>(II)V

    sput-object v0, Lcom/android/server/timezone/RulesManagerService;->DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/android/server/timezone/PermissionHelper;Ljava/util/concurrent/Executor;Lcom/android/server/timezone/RulesManagerIntentHelper;Lcom/android/server/timezone/PackageTracker;Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;)V
    .locals 2
    .param p1, "permissionHelper"    # Lcom/android/server/timezone/PermissionHelper;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "intentHelper"    # Lcom/android/server/timezone/RulesManagerIntentHelper;
    .param p4, "packageTracker"    # Lcom/android/server/timezone/PackageTracker;
    .param p5, "timeZoneDistroInstaller"    # Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    .line 125
    invoke-direct {p0}, Landroid/app/timezone/IRulesManager$Stub;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    .line 127
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 128
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService;->mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;

    .line 129
    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    .line 130
    iput-object p5, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    .line 131
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 64
    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->create(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 64
    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezone/RulesManagerService;

    .line 64
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/timezone/RulesManagerService;
    .param p1, "x1"    # Landroid/app/timezone/ICallback;
    .param p2, "x2"    # I

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/server/timezone/RulesManagerService;->sendFinishedStatus(Landroid/app/timezone/ICallback;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezone/RulesManagerService;

    .line 64
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezone/RulesManagerService;

    .line 64
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezone/RulesManagerService;

    .line 64
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;

    return-object v0
.end method

.method private static create(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    new-instance v1, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, "helper":Lcom/android/server/timezone/RulesManagerServiceHelperImpl;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Llibcore/timezone/TimeZoneDataFiles;->getTimeZoneModuleTzVersionFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 112
    .local v6, "baseVersionFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Llibcore/timezone/TimeZoneDataFiles;->getDataTimeZoneRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 113
    .local v7, "tzDataDir":Ljava/io/File;
    new-instance v8, Lcom/android/server/timezone/RulesManagerService;

    .line 117
    invoke-static {p0}, Lcom/android/server/timezone/PackageTracker;->create(Landroid/content/Context;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v4

    new-instance v5, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    const-string v0, "timezone.RulesManagerService"

    invoke-direct {v5, v0, v6, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    move-object v0, v8

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezone/RulesManagerService;-><init>(Lcom/android/server/timezone/PermissionHelper;Ljava/util/concurrent/Executor;Lcom/android/server/timezone/RulesManagerIntentHelper;Lcom/android/server/timezone/PackageTracker;Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;)V

    .line 113
    return-object v8
.end method

.method private static createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;
    .locals 4
    .param p0, "checkTokenBytes"    # [B

    .line 565
    :try_start_0
    invoke-static {p0}, Lcom/android/server/timezone/CheckToken;->fromByteArray([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .local v0, "checkToken":Lcom/android/server/timezone/CheckToken;
    nop

    .line 570
    return-object v0

    .line 566
    .end local v0    # "checkToken":Lcom/android/server/timezone/CheckToken;
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read token bytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static distroStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "distroStatus"    # I

    .line 574
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 581
    const-string v0, "Unknown"

    return-object v0

    .line 578
    :cond_0
    const-string v0, "Installed"

    return-object v0

    .line 576
    :cond_1
    const-string v0, "None"

    return-object v0
.end method

.method private getRulesStateInternal()Landroid/app/timezone/RulesState;
    .locals 15

    .line 147
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readBaseVersion()Llibcore/timezone/TzDataSetVersion;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .local v0, "baseVersion":Llibcore/timezone/TzDataSetVersion;
    nop

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "distroStatus":I
    const/4 v2, 0x0

    .line 162
    .local v2, "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getInstalledDistroVersion()Lcom/android/timezone/distro/DistroVersion;

    move-result-object v3

    .line 163
    .local v3, "installedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    if-nez v3, :cond_0

    .line 164
    const/4 v1, 0x1

    .line 165
    const/4 v2, 0x0

    goto :goto_0

    .line 167
    :cond_0
    const/4 v1, 0x2

    .line 168
    new-instance v4, Landroid/app/timezone/DistroRulesVersion;

    iget-object v5, v3, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v6, v3, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-direct {v4, v5, v6}, Landroid/app/timezone/DistroRulesVersion;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 174
    :goto_0
    goto :goto_1

    .line 172
    .end local v3    # "installedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    :catch_0
    move-exception v3

    .line 173
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "timezone.RulesManagerService"

    const-string v5, "Failed to read installed distro."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    .local v3, "operationInProgress":Z
    const/4 v4, 0x0

    .line 180
    .local v4, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    const/4 v5, 0x0

    .line 181
    .local v5, "stagedOperationStatus":I
    if-nez v3, :cond_3

    .line 184
    :try_start_3
    iget-object v6, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v6}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getStagedDistroOperation()Lcom/android/timezone/distro/StagedDistroOperation;

    move-result-object v6

    .line 185
    .local v6, "stagedDistroOperation":Lcom/android/timezone/distro/StagedDistroOperation;
    if-nez v6, :cond_1

    .line 186
    const/4 v5, 0x1

    goto :goto_2

    .line 187
    :cond_1
    iget-boolean v7, v6, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    if-eqz v7, :cond_2

    .line 188
    const/4 v5, 0x2

    goto :goto_2

    .line 191
    :cond_2
    const/4 v5, 0x3

    .line 192
    iget-object v7, v6, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    .line 193
    .local v7, "stagedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    new-instance v8, Landroid/app/timezone/DistroRulesVersion;

    iget-object v9, v7, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v10, v7, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-direct {v8, v9, v10}, Landroid/app/timezone/DistroRulesVersion;-><init>(Ljava/lang/String;I)V
    :try_end_3
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v8

    .line 199
    .end local v7    # "stagedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    :goto_2
    goto :goto_3

    .line 197
    .end local v6    # "stagedDistroOperation":Lcom/android/timezone/distro/StagedDistroOperation;
    :catch_1
    move-exception v6

    .line 198
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v7, "timezone.RulesManagerService"

    const-string v8, "Failed to read staged distro."

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    new-instance v14, Landroid/app/timezone/RulesState;

    invoke-virtual {v0}, Llibcore/timezone/TzDataSetVersion;->getRulesVersion()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/server/timezone/RulesManagerService;->DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

    move-object v6, v14

    move v9, v3

    move v10, v5

    move-object v11, v4

    move v12, v1

    move-object v13, v2

    invoke-direct/range {v6 .. v13}, Landroid/app/timezone/RulesState;-><init>(Ljava/lang/String;Landroid/app/timezone/DistroFormatVersion;ZILandroid/app/timezone/DistroRulesVersion;ILandroid/app/timezone/DistroRulesVersion;)V

    monitor-exit p0

    return-object v14

    .line 204
    .end local v0    # "baseVersion":Llibcore/timezone/TzDataSetVersion;
    .end local v1    # "distroStatus":I
    .end local v2    # "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .end local v3    # "operationInProgress":Z
    .end local v4    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .end local v5    # "stagedOperationStatus":I
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 151
    :catch_2
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "timezone.RulesManagerService"

    const-string v2, "Failed to read base rules version"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private sendFinishedStatus(Landroid/app/timezone/ICallback;I)V
    .locals 3
    .param p1, "callback"    # Landroid/app/timezone/ICallback;
    .param p2, "resultCode"    # I

    .line 419
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/timezone/ICallback;->onFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "timezone.RulesManagerService"

    const-string v2, "Unable to notify observer of result"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static stagedOperationToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "stagedOperationType"    # I

    .line 586
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 595
    const-string v0, "Unknown"

    return-object v0

    .line 592
    :cond_0
    const-string v0, "Install"

    return-object v0

    .line 590
    :cond_1
    const-string v0, "Uninstall"

    return-object v0

    .line 588
    :cond_2
    const-string v0, "None"

    return-object v0
.end method

.method private static toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 600
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v1, "timezone.RulesManagerService"

    invoke-interface {v0, v1, p2}, Lcom/android/server/timezone/PermissionHelper;->checkDumpPermission(Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    return-void

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/android/server/timezone/RulesManagerService;->getRulesStateInternal()Landroid/app/timezone/RulesState;

    move-result-object v0

    .line 444
    .local v0, "rulesState":Landroid/app/timezone/RulesState;
    const-string v1, ","

    if-eqz p3, :cond_e

    array-length v2, p3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 447
    const/4 v2, 0x0

    aget-object v3, p3, v2

    const-string v4, "-format_state"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    aget-object v4, p3, v3

    if-eqz v4, :cond_e

    .line 448
    aget-object v3, p3, v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_d

    aget-char v5, v3, v2

    .line 449
    .local v5, "c":C
    const/16 v6, 0x69

    if-eq v5, v6, :cond_a

    const/16 v6, 0x74

    if-eq v5, v6, :cond_7

    const/16 v6, 0x6f

    if-eq v5, v6, :cond_5

    const/16 v6, 0x70

    if-eq v5, v6, :cond_3

    packed-switch v5, :pswitch_data_0

    .line 528
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 470
    :pswitch_0
    const-string v6, "Unknown"

    .line 471
    .local v6, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->getDistroStatus()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/timezone/RulesManagerService;->distroStatusToString(I)Ljava/lang/String;

    move-result-object v6

    .line 474
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current install state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    goto/16 :goto_3

    .line 461
    .end local v6    # "value":Ljava/lang/String;
    :pswitch_1
    const-string v6, "Unknown"

    .line 462
    .restart local v6    # "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->getBaseRulesVersion()Ljava/lang/String;

    move-result-object v6

    .line 465
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Base rules version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    goto/16 :goto_3

    .line 521
    .end local v6    # "value":Ljava/lang/String;
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Active rules version (ICU, ZoneInfoDb, TimeZoneFinder): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-static {}, Llibcore/timezone/ZoneInfoDb;->getInstance()Llibcore/timezone/ZoneInfoDb;

    move-result-object v7

    invoke-virtual {v7}, Llibcore/timezone/ZoneInfoDb;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-static {}, Llibcore/timezone/TimeZoneFinder;->getInstance()Llibcore/timezone/TimeZoneFinder;

    move-result-object v7

    invoke-virtual {v7}, Llibcore/timezone/TimeZoneFinder;->getIanaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 521
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    goto/16 :goto_3

    .line 452
    :cond_3
    const-string v6, "Unknown"

    .line 453
    .restart local v6    # "value":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 454
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->isOperationInProgress()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    .line 456
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Operation in progress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    goto :goto_3

    .line 494
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    const-string v6, "Unknown"

    .line 495
    .restart local v6    # "value":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 496
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->getStagedOperationType()I

    move-result v7

    .line 497
    .local v7, "stagedOperationType":I
    invoke-static {v7}, Lcom/android/server/timezone/RulesManagerService;->stagedOperationToString(I)Ljava/lang/String;

    move-result-object v6

    .line 499
    .end local v7    # "stagedOperationType":I
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Staged operation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    goto :goto_3

    .line 505
    .end local v6    # "value":Ljava/lang/String;
    :cond_7
    const-string v6, "Unknown"

    .line 506
    .restart local v6    # "value":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 507
    nop

    .line 508
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->getStagedDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;

    move-result-object v7

    .line 509
    .local v7, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    if-nez v7, :cond_8

    .line 510
    const-string v6, "<None>"

    goto :goto_1

    .line 512
    :cond_8
    invoke-virtual {v7}, Landroid/app/timezone/DistroRulesVersion;->toDumpString()Ljava/lang/String;

    move-result-object v6

    .line 515
    .end local v7    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :cond_9
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Staged rules version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    goto :goto_3

    .line 479
    .end local v6    # "value":Ljava/lang/String;
    :cond_a
    const-string v6, "Unknown"

    .line 480
    .restart local v6    # "value":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 481
    nop

    .line 482
    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->getInstalledDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;

    move-result-object v7

    .line 483
    .local v7, "installedRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    if-nez v7, :cond_b

    .line 484
    const-string v6, "<None>"

    goto :goto_2

    .line 486
    :cond_b
    invoke-virtual {v7}, Landroid/app/timezone/DistroRulesVersion;->toDumpString()Ljava/lang/String;

    move-result-object v6

    .line 489
    .end local v7    # "installedRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :cond_c
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Installed rules version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    nop

    .line 448
    .end local v5    # "c":C
    .end local v6    # "value":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 532
    :cond_d
    return-void

    .line 536
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RulesManagerService state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/timezone/RulesManagerService;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active rules version (ICU, ZoneInfoDB, TimeZoneFinder): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-static {}, Llibcore/timezone/ZoneInfoDb;->getInstance()Llibcore/timezone/ZoneInfoDb;

    move-result-object v3

    invoke-virtual {v3}, Llibcore/timezone/ZoneInfoDb;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-static {}, Llibcore/timezone/TimeZoneFinder;->getInstance()Llibcore/timezone/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/timezone/TimeZoneFinder;->getIanaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Distro state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/timezone/RulesState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v1, p2}, Lcom/android/server/timezone/PackageTracker;->dump(Ljava/io/PrintWriter;)V

    .line 543
    return-void

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRulesState()Landroid/app/timezone/RulesState;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v1, "android.permission.QUERY_TIME_ZONE_RULES"

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/android/server/timezone/RulesManagerService;->getRulesStateInternal()Landroid/app/timezone/RulesState;

    move-result-object v0

    return-object v0
.end method

.method notifyIdle()V
    .locals 3

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "packageChanged":Z
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/timezone/PackageTracker;->triggerUpdateIfNeeded(Z)V

    .line 553
    return-void
.end method

.method public requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I
    .locals 6
    .param p1, "distroParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "checkTokenBytes"    # [B
    .param p3, "callback"    # Landroid/app/timezone/ICallback;

    .line 211
    const/4 v0, 0x1

    .line 213
    .local v0, "closeParcelFileDescriptorOnExit":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v2, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v1, v2}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "checkToken":Lcom/android/server/timezone/CheckToken;
    if-eqz p2, :cond_0

    .line 217
    invoke-static {p2}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v2

    move-object v1, v2

    .line 219
    :cond_0
    invoke-static {v1}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeTimezoneRequestInstall(Ljava/lang/String;)V

    .line 221
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    if-eqz p1, :cond_5

    .line 225
    if-eqz p3, :cond_4

    .line 228
    :try_start_1
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 229
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 248
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    goto :goto_0

    .line 249
    :catch_0
    move-exception v2

    .line 250
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "timezone.RulesManagerService"

    const-string v5, "Failed to close distroParcelFileDescriptor"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return v3

    .line 231
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;

    invoke-direct {v3, p0, p1, v1, p3}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;-><init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 239
    const/4 v0, 0x0

    .line 241
    const/4 v2, 0x0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 248
    :try_start_4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 251
    goto :goto_1

    .line 249
    :catch_1
    move-exception v3

    .line 250
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "timezone.RulesManagerService"

    const-string v5, "Failed to close distroParcelFileDescriptor"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    return v2

    .line 226
    :cond_4
    :try_start_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "observer == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "closeParcelFileDescriptorOnExit":Z
    .end local v1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .end local p0    # "this":Lcom/android/server/timezone/RulesManagerService;
    .end local p1    # "distroParcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "checkTokenBytes":[B
    .end local p3    # "callback":Landroid/app/timezone/ICallback;
    throw v2

    .line 223
    .restart local v0    # "closeParcelFileDescriptorOnExit":Z
    .restart local v1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .restart local p0    # "this":Lcom/android/server/timezone/RulesManagerService;
    .restart local p1    # "distroParcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "checkTokenBytes":[B
    .restart local p3    # "callback":Landroid/app/timezone/ICallback;
    :cond_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "distroParcelFileDescriptor == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "closeParcelFileDescriptorOnExit":Z
    .end local v1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .end local p0    # "this":Lcom/android/server/timezone/RulesManagerService;
    .end local p1    # "distroParcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "checkTokenBytes":[B
    .end local p3    # "callback":Landroid/app/timezone/ICallback;
    throw v2

    .line 242
    .restart local v0    # "closeParcelFileDescriptorOnExit":Z
    .restart local v1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .restart local p0    # "this":Lcom/android/server/timezone/RulesManagerService;
    .restart local p1    # "distroParcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "checkTokenBytes":[B
    .restart local p3    # "callback":Landroid/app/timezone/ICallback;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "closeParcelFileDescriptorOnExit":Z
    .end local p0    # "this":Lcom/android/server/timezone/RulesManagerService;
    .end local p1    # "distroParcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "checkTokenBytes":[B
    .end local p3    # "callback":Landroid/app/timezone/ICallback;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 246
    .end local v1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .restart local v0    # "closeParcelFileDescriptorOnExit":Z
    .restart local p0    # "this":Lcom/android/server/timezone/RulesManagerService;
    .restart local p1    # "distroParcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "checkTokenBytes":[B
    .restart local p3    # "callback":Landroid/app/timezone/ICallback;
    :catchall_1
    move-exception v1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 248
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 251
    goto :goto_2

    .line 249
    :catch_2
    move-exception v2

    .line 250
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "timezone.RulesManagerService"

    const-string v4, "Failed to close distroParcelFileDescriptor"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    :goto_2
    throw v1
.end method

.method public requestNothing([BZ)V
    .locals 2
    .param p1, "checkTokenBytes"    # [B
    .param p2, "success"    # Z

    .line 427
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v1, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "checkToken":Lcom/android/server/timezone/CheckToken;
    if-eqz p1, :cond_0

    .line 430
    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0

    .line 432
    :cond_0
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneRequestNothing(Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 434
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneNothingComplete(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public requestUninstall([BLandroid/app/timezone/ICallback;)I
    .locals 3
    .param p1, "checkTokenBytes"    # [B
    .param p2, "callback"    # Landroid/app/timezone/ICallback;

    .line 334
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v1, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "checkToken":Lcom/android/server/timezone/CheckToken;
    if-eqz p1, :cond_0

    .line 338
    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0

    .line 340
    :cond_0
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneRequestUninstall(Ljava/lang/String;)V

    .line 341
    monitor-enter p0

    .line 342
    if-eqz p2, :cond_2

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 347
    monitor-exit p0

    return v2

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 352
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;-><init>(Lcom/android/server/timezone/RulesManagerService;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 354
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 355
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 343
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "callback == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .end local p0    # "this":Lcom/android/server/timezone/RulesManagerService;
    .end local p1    # "checkTokenBytes":[B
    .end local p2    # "callback":Landroid/app/timezone/ICallback;
    throw v1

    .line 355
    .restart local v0    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .restart local p0    # "this":Lcom/android/server/timezone/RulesManagerService;
    .restart local p1    # "checkTokenBytes":[B
    .restart local p2    # "callback":Landroid/app/timezone/ICallback;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v0}, Lcom/android/server/timezone/PackageTracker;->start()Z

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RulesManagerService{mOperationInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
