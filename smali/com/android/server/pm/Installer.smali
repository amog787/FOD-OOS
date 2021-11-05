.class public Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Installer$InstallerException;
    }
.end annotation


# static fields
.field public static final DEXOPT_BOOTCOMPLETE:I = 0x8

.field public static final DEXOPT_DEBUGGABLE:I = 0x4

.field public static final DEXOPT_ENABLE_HIDDEN_API_CHECKS:I = 0x400

.field public static final DEXOPT_FORCE:I = 0x40

.field public static final DEXOPT_FOR_RESTORE:I = 0x2000

.field public static final DEXOPT_GENERATE_APP_IMAGE:I = 0x1000

.field public static final DEXOPT_GENERATE_COMPACT_DEX:I = 0x800

.field public static final DEXOPT_IDLE_BACKGROUND_JOB:I = 0x200

.field public static final DEXOPT_PROFILE_GUIDED:I = 0x10

.field public static final DEXOPT_PUBLIC:I = 0x2

.field public static final DEXOPT_SECONDARY_DEX:I = 0x20

.field public static final DEXOPT_STORAGE_CE:I = 0x80

.field public static final DEXOPT_STORAGE_DE:I = 0x100

.field public static final FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES:I = 0x20000

.field public static final FLAG_CLEAR_CACHE_ONLY:I = 0x10

.field public static final FLAG_CLEAR_CODE_CACHE_ONLY:I = 0x20

.field public static final FLAG_FORCE:I = 0x2000

.field public static final FLAG_FREE_CACHE_NOOP:I = 0x400

.field public static final FLAG_FREE_CACHE_V2:I = 0x100

.field public static final FLAG_FREE_CACHE_V2_DEFY_QUOTA:I = 0x200

.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1

.field public static final FLAG_STORAGE_EXTERNAL:I = 0x4

.field public static final FLAG_USE_QUOTA:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field private volatile mInstalld:Landroid/os/IInstalld;

.field private final mIsolated:Z

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isolated"    # Z

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 111
    iput-boolean p2, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/Installer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/Installer;

    .line 44
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method private static assertValidInstructionSet(Ljava/lang/String;)V
    .locals 5
    .param p0, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 823
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 824
    .local v3, "abi":Ljava/lang/String;
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 825
    return-void

    .line 823
    .end local v3    # "abi":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    :cond_1
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid instruction set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkBeforeRemote()Z
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    const-string v1, "Installer"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is holding 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 169
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 168
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "Ignoring request because this installer is isolated"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    return v0

    .line 175
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private connect()V
    .locals 5

    .line 132
    const-string/jumbo v0, "installd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 133
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    new-instance v1, Lcom/android/server/pm/Installer$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$1;-><init>(Lcom/android/server/pm/Installer;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 147
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 148
    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 150
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->invalidateMounts()V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :goto_1
    goto :goto_2

    .line 151
    :catch_1
    move-exception v1

    goto :goto_1

    .line 154
    :cond_1
    const-string v1, "Installer"

    const-string/jumbo v2, "installd not found; trying again"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/-$$Lambda$Installer$SebeftIfAJ7KsTmM0tju6PfW4Pc;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$Installer$SebeftIfAJ7KsTmM0tju6PfW4Pc;-><init>(Lcom/android/server/pm/Installer;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    :goto_2
    return-void
.end method


# virtual methods
.method public assertFsverityRootHashMatches(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "expectedHash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 579
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->assertFsverityRootHashMatches(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    nop

    .line 586
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public checkProfileSize(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 406
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 408
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->checkProfileSize(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    nop

    .line 242
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 458
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    nop

    .line 464
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "outDexFile"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "systemProfile"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 428
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 430
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    .locals 10
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "appId"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 183
    :cond_0
    move-object v1, p0

    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/os/IInstalld;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v2

    throw v2
.end method

.method public createAppDataBatched([Ljava/lang/String;[Ljava/lang/String;II[I[Ljava/lang/String;[I)V
    .locals 16
    .param p1, "uuids"    # [Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "appIds"    # [I
    .param p6, "seInfos"    # [Ljava/lang/String;
    .param p7, "targetSdkVersions"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 195
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    const/16 v2, 0x100

    .line 197
    .local v2, "batchSize":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_0
    array-length v0, v1

    if-ge v3, v0, :cond_2

    .line 198
    add-int/lit16 v0, v3, 0x100

    .line 199
    .local v0, "to":I
    array-length v4, v1

    if-le v0, v4, :cond_1

    .line 200
    array-length v0, v1

    move v4, v0

    goto :goto_1

    .line 199
    :cond_1
    move v4, v0

    .line 204
    .end local v0    # "to":I
    .local v4, "to":I
    :goto_1
    move-object/from16 v5, p0

    :try_start_0
    iget-object v6, v5, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 205
    move-object/from16 v14, p2

    :try_start_1
    invoke-static {v14, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    move-object/from16 v15, p5

    :try_start_2
    invoke-static {v15, v3, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v11

    move-object/from16 v13, p6

    invoke-static {v13, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Ljava/lang/String;

    .line 207
    move-object/from16 v10, p7

    invoke-static {v10, v3, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    .line 204
    move/from16 v9, p3

    move/from16 v10, p4

    move-object v13, v0

    invoke-interface/range {v6 .. v13}, Landroid/os/IInstalld;->createAppDataBatched([Ljava/lang/String;[Ljava/lang/String;II[I[Ljava/lang/String;[I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    nop

    .line 197
    .end local v4    # "to":I
    add-int/lit16 v3, v3, 0x100

    goto :goto_0

    .line 208
    .restart local v4    # "to":I
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v14, p2

    :goto_2
    move-object/from16 v15, p5

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v6

    throw v6

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "to":I
    :cond_2
    move-object/from16 v5, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    .line 212
    .end local v3    # "i":I
    return-void
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oatDir"    # Ljava/lang/String;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 522
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 524
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    nop

    .line 528
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "classpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 616
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 618
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public createUserData(Ljava/lang/String;III)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "userSerial"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 477
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    nop

    .line 483
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .param p3, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 556
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 558
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    nop

    .line 564
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    nop

    .line 252
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyAppDataSnapshot(Ljava/lang/String;IJII)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "ceSnapshotInode"    # J
    .param p5, "snapshotId"    # I
    .param p6, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 756
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 759
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    const/4 v0, 0x1

    return v0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyAppProfiles(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 467
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 469
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    nop

    .line 473
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "retainSnapshotIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 781
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 784
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    const/4 v0, 0x1

    return v0

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 626
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 628
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    nop

    .line 632
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 486
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    nop

    .line 492
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I
    .param p6, "outputPath"    # Ljava/lang/String;
    .param p7, "dexFlags"    # I
    .param p8, "compilerFilter"    # Ljava/lang/String;
    .param p9, "volumeUuid"    # Ljava/lang/String;
    .param p10, "sharedLibraries"    # Ljava/lang/String;
    .param p11, "seInfo"    # Ljava/lang/String;
    .param p12, "downgrade"    # Z
    .param p13, "targetSdkVersion"    # I
    .param p14, "profileName"    # Ljava/lang/String;
    .param p15, "dexMetadataPath"    # Ljava/lang/String;
    .param p16, "compilationReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 377
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v15, p1

    invoke-interface {v0, v15}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 379
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v14, p6

    invoke-interface {v0, v14}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 380
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v13, p15

    invoke-interface {v0, v13}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    move-object/from16 v12, p0

    :try_start_0
    iget-object v1, v12, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-interface/range {v1 .. v17}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    nop

    .line 389
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "codePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 417
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 418
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public fixupAppData(Ljava/lang/String;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    nop

    .line 261
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public freeCache(Ljava/lang/String;JJI)V
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "targetFreeBytes"    # J
    .param p4, "cacheReservedBytes"    # J
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 496
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 498
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    nop

    .line 502
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 335
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    .locals 12
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "appId"    # I
    .param p6, "ceDataInodes"    # [J
    .param p7, "codePaths"    # [Ljava/lang/String;
    .param p8, "stats"    # Landroid/content/pm/PackageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 278
    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    if-eqz v9, :cond_1

    .line 280
    array-length v1, v9

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v9, v2

    .line 281
    .local v3, "codePath":Ljava/lang/String;
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 280
    .end local v3    # "codePath":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_1
    move-object v11, p0

    :try_start_0
    iget-object v1, v11, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v1

    .line 287
    .local v1, "res":[J
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->codeSize:J

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->codeSize:J

    .line 288
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v0, 0x1

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->dataSize:J

    .line 289
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v0, 0x2

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 290
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 v0, 0x3

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 291
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 v0, 0x4

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 292
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 v0, 0x5

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v1    # "res":[J
    nop

    .line 296
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getExternalSize(Ljava/lang/String;II[I)[J
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "appIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [J

    return-object v0

    .line 318
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 355
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "appIds"    # [I
    .param p5, "stats"    # Landroid/content/pm/PackageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 303
    .local v0, "res":[J
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    .line 304
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    .line 305
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 306
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 307
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 v3, 0x4

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 308
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 v3, 0x5

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0    # "res":[J
    nop

    .line 312
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
    .locals 7
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "volumeUuid"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 605
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 606
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public installApkVerity(Ljava/lang/String;Ljava/io/FileDescriptor;I)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "verityInput"    # Ljava/io/FileDescriptor;
    .param p3, "contentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 568
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 569
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->installApkVerity(Ljava/lang/String;Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    nop

    .line 575
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public invalidateMounts()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 635
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 637
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    nop

    .line 641
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 644
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 646
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public synthetic lambda$connect$0$Installer()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    .line 157
    return-void
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "fromBase"    # Ljava/lang/String;
    .param p3, "toBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 532
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 533
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 534
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    nop

    .line 540
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "nativeLibPath32"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    nop

    .line 518
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 393
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 395
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    nop

    .line 232
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public migrateLegacyObbData()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 799
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 802
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0}, Landroid/os/IInstalld;->migrateLegacyObbData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    const/4 v0, 0x1

    return v0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .param p3, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 544
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 546
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    nop

    .line 552
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "fromUuid"    # Ljava/lang/String;
    .param p2, "toUuid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appId"    # I
    .param p5, "seInfo"    # Ljava/lang/String;
    .param p6, "targetSdkVersion"    # I
    .param p7, "fromCodePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    move-object v1, p0

    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    nop

    .line 273
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v2

    throw v2
.end method

.method public onPrivateVolumeRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 668
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 670
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    nop

    .line 674
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public onStart()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    .line 129
    :goto_0
    return-void
.end method

.method public prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "profileName"    # Ljava/lang/String;
    .param p5, "codePath"    # Ljava/lang/String;
    .param p6, "dexMetadataPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 678
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 679
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p5}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 680
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p6}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 682
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "isas"    # [Ljava/lang/String;
    .param p5, "volumeUuid"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 590
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 591
    aget-object v1, p4, v0

    invoke-static {v1}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 594
    :cond_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "seInfo"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "snapshotId"    # I
    .param p6, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 729
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 732
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    const/4 v0, 0x1

    return v0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "appId"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    nop

    .line 222
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public rmPackageDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 448
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    nop

    .line 455
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 437
    invoke-static {p2}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 438
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    nop

    .line 445
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public setAppQuota(Ljava/lang/String;IIJ)V
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "cacheQuota"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 363
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    nop

    .line 369
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public setBackupRestoreState(I)Z
    .locals 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 812
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 814
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->setBackupRestoreState(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .locals 0
    .param p1, "warnIfHeld"    # Ljava/lang/Object;

    .line 119
    iput-object p1, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public snapshotAppData(Ljava/lang/String;III)J
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "snapshotId"    # I
    .param p4, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 704
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 707
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v3, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public tryMountDataMirror(Ljava/lang/String;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 656
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 658
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    nop

    .line 662
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method
