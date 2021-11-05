.class public Lcom/android/server/pm/dex/ArtManagerService;
.super Landroid/content/pm/dex/IArtManager$Stub;
.source "ArtManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;
    }
.end annotation


# static fields
.field private static final BOOT_IMAGE_ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field private static final BOOT_IMAGE_PROFILE_NAME:Ljava/lang/String; = "android.prof"

.field private static final DEBUG:Z

.field public static final DEXOPT_REASON_WITH_DEX_METADATA_ANNOTATION:Ljava/lang/String; = "-dm"

.field private static final TAG:Ljava/lang/String; = "ArtManagerService"

.field private static final TRON_COMPILATION_FILTER_ASSUMED_VERIFIED:I = 0x2

.field private static final TRON_COMPILATION_FILTER_ASSUMED_VERIFIED_IORAP:I = 0xf

.field private static final TRON_COMPILATION_FILTER_ERROR:I = 0x0

.field private static final TRON_COMPILATION_FILTER_EVERYTHING:I = 0xb

.field private static final TRON_COMPILATION_FILTER_EVERYTHING_IORAP:I = 0x18

.field private static final TRON_COMPILATION_FILTER_EVERYTHING_PROFILE:I = 0xa

.field private static final TRON_COMPILATION_FILTER_EVERYTHING_PROFILE_IORAP:I = 0x17

.field private static final TRON_COMPILATION_FILTER_EXTRACT:I = 0x3

.field private static final TRON_COMPILATION_FILTER_EXTRACT_IORAP:I = 0x10

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK:I = 0xc

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK:I = 0xd

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK_IORAP:I = 0x1a

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_IORAP:I = 0x19

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK:I = 0xe

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK_IORAP:I = 0x1b

.field private static final TRON_COMPILATION_FILTER_QUICKEN:I = 0x5

.field private static final TRON_COMPILATION_FILTER_QUICKEN_IORAP:I = 0x12

.field private static final TRON_COMPILATION_FILTER_SPACE:I = 0x7

.field private static final TRON_COMPILATION_FILTER_SPACE_IORAP:I = 0x14

.field private static final TRON_COMPILATION_FILTER_SPACE_PROFILE:I = 0x6

.field private static final TRON_COMPILATION_FILTER_SPACE_PROFILE_IORAP:I = 0x13

.field private static final TRON_COMPILATION_FILTER_SPEED:I = 0x9

.field private static final TRON_COMPILATION_FILTER_SPEED_IORAP:I = 0x16

.field private static final TRON_COMPILATION_FILTER_SPEED_PROFILE:I = 0x8

.field private static final TRON_COMPILATION_FILTER_SPEED_PROFILE_IORAP:I = 0x15

.field private static final TRON_COMPILATION_FILTER_UNKNOWN:I = 0x1

.field private static final TRON_COMPILATION_FILTER_VERIFY:I = 0x4

.field private static final TRON_COMPILATION_FILTER_VERIFY_IORAP:I = 0x11

.field private static final TRON_COMPILATION_REASON_AB_OTA:I = 0x6

.field private static final TRON_COMPILATION_REASON_BG_DEXOPT:I = 0x5

.field private static final TRON_COMPILATION_REASON_BOOT:I = 0x3

.field private static final TRON_COMPILATION_REASON_ERROR:I = 0x0

.field private static final TRON_COMPILATION_REASON_FIRST_BOOT:I = 0x2

.field private static final TRON_COMPILATION_REASON_INACTIVE:I = 0x7

.field private static final TRON_COMPILATION_REASON_INSTALL:I = 0x4

.field private static final TRON_COMPILATION_REASON_INSTALL_WITH_DEX_METADATA:I = 0x9

.field private static final TRON_COMPILATION_REASON_SHARED:I = 0x8

.field private static final TRON_COMPILATION_REASON_UNKNOWN:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    const-string v0, "ArtManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    .line 103
    invoke-static {}, Lcom/android/server/pm/dex/ArtManagerService;->verifyTronLoggingConstants()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;
    .param p4, "installLock"    # Ljava/lang/Object;

    .line 107
    invoke-direct {p0}, Landroid/content/pm/dex/IArtManager$Stub;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 110
    iput-object p3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 111
    iput-object p4, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    .line 114
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    new-instance v1, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;-><init>(Lcom/android/server/pm/dex/ArtManagerService;Lcom/android/server/pm/dex/ArtManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationFilterTronValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkAndroidPermissions(ILjava/lang/String;)Z
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_RUNTIME_PROFILES"

    const-string v2, "ArtManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 124
    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 132
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return v1

    .line 126
    :cond_1
    return v1
.end method

.method private checkShellPermissions(ILjava/lang/String;I)Z
    .locals 5
    .param p1, "profileType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 148
    const/4 v0, 0x0

    const/16 v1, 0x7d0

    if-eq p3, v1, :cond_0

    .line 149
    return v0

    .line 151
    :cond_0
    sget-boolean v1, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 152
    return v2

    .line 154
    :cond_1
    if-ne p1, v2, :cond_2

    .line 156
    return v0

    .line 158
    :cond_2
    const/4 v1, 0x0

    .line 160
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p2, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v3

    .line 164
    :goto_0
    if-nez v1, :cond_3

    .line 165
    return v0

    .line 169
    :cond_3
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method private createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "classpath"    # Ljava/lang/String;
    .param p4, "appId"    # I
    .param p5, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 267
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p4, p1, p2, p3}, Lcom/android/server/pm/Installer;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :try_start_1
    monitor-exit v0

    return-void

    .line 276
    :cond_0
    nop

    .line 277
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    invoke-static {p1, p2}, Landroid/content/pm/dex/ArtManager;->getProfileSnapshotFileForName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 282
    .local v0, "snapshotProfile":Ljava/io/File;
    const/4 v2, 0x0

    .line 284
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    const/high16 v3, 0x10000000

    :try_start_2
    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 285
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 288
    :cond_1
    invoke-direct {p0, p1, v2, p5}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_1

    .line 286
    :cond_2
    :goto_0
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 294
    :goto_1
    goto :goto_2

    .line 290
    :catch_0
    move-exception v3

    .line 291
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open snapshot profile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ArtManagerService"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 295
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 277
    .end local v0    # "snapshotProfile":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 273
    :catch_1
    move-exception v2

    .line 274
    .local v2, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_3
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 275
    monitor-exit v0

    return-void

    .line 277
    .end local v2    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 298
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying profile snapshot for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Installer;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    goto :goto_0

    .line 309
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_1
    const-string v2, "ArtManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to destroy profile snapshot for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_0
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getCompilationFilterTronValue(Ljava/lang/String;)I
    .locals 24
    .param p0, "compilationFilter"    # Ljava/lang/String;

    .line 626
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v5, 0x13

    const/16 v6, 0x12

    const/16 v7, 0x11

    const/16 v8, 0x10

    const/16 v9, 0xf

    const/16 v10, 0xe

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "run-from-apk-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v11

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v1, "quicken-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v1, "space-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v1, "speed-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v1, "run-from-apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v12

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "everything-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v1, "quicken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v19

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "everything-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "everything"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v13

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v1, "space-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v18

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v1, "run-from-apk-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v1, "speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v15

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v1, "space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v17

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v23

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "assume-verified-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v1, "run-from-vdex-fallback-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v1, "space-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v1, "verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v20

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v1, "run-from-vdex-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    goto :goto_1

    :sswitch_14
    const-string/jumbo v1, "run-from-apk-fallback-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto :goto_1

    :sswitch_15
    const-string/jumbo v1, "speed-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v16

    goto :goto_1

    :sswitch_16
    const-string v1, "extract"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v21

    goto :goto_1

    :sswitch_17
    const-string v1, "extract-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_1

    :sswitch_18
    const-string/jumbo v1, "verify-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_19
    const-string v1, "everything-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v14

    goto :goto_1

    :sswitch_1a
    const-string v1, "assume-verified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v22

    goto :goto_1

    :sswitch_1b
    const-string/jumbo v1, "speed-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 660
    const/4 v1, 0x1

    return v1

    .line 659
    :pswitch_0
    const/16 v1, 0x1b

    return v1

    .line 657
    :pswitch_1
    const/16 v1, 0x1a

    return v1

    .line 655
    :pswitch_2
    const/16 v1, 0x19

    return v1

    .line 654
    :pswitch_3
    const/16 v1, 0x18

    return v1

    .line 653
    :pswitch_4
    const/16 v1, 0x17

    return v1

    .line 651
    :pswitch_5
    return v2

    .line 650
    :pswitch_6
    return v3

    .line 649
    :pswitch_7
    return v4

    .line 648
    :pswitch_8
    return v5

    .line 647
    :pswitch_9
    return v6

    .line 646
    :pswitch_a
    return v7

    .line 645
    :pswitch_b
    return v8

    .line 644
    :pswitch_c
    return v9

    .line 643
    :pswitch_d
    return v10

    .line 641
    :pswitch_e
    return v11

    .line 639
    :pswitch_f
    return v12

    .line 638
    :pswitch_10
    return v13

    .line 637
    :pswitch_11
    return v14

    .line 636
    :pswitch_12
    return v15

    .line 635
    :pswitch_13
    return v16

    .line 634
    :pswitch_14
    return v17

    .line 633
    :pswitch_15
    return v18

    .line 632
    :pswitch_16
    return v19

    .line 631
    :pswitch_17
    return v20

    .line 630
    :pswitch_18
    return v21

    .line 629
    :pswitch_19
    return v22

    .line 627
    :cond_1
    return v23

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dd94aef -> :sswitch_1b
        -0x74ad4b37 -> :sswitch_1a
        -0x6b7d2b71 -> :sswitch_19
        -0x65cd9119 -> :sswitch_18
        -0x65986311 -> :sswitch_17
        -0x4dcd237f -> :sswitch_16
        -0x4358c9dd -> :sswitch_15
        -0x405bb3de -> :sswitch_14
        -0x35c83f13 -> :sswitch_13
        -0x30df7787 -> :sswitch_12
        -0x29c91470 -> :sswitch_11
        -0x10fa53b6 -> :sswitch_10
        -0x2ad7fa5 -> :sswitch_f
        0x3061f37 -> :sswitch_e
        0x5c4d208 -> :sswitch_d
        0x688f106 -> :sswitch_c
        0x6890047 -> :sswitch_b
        0xf517369 -> :sswitch_a
        0x14c5f7e2 -> :sswitch_9
        0x17efcab3 -> :sswitch_8
        0x23319da1 -> :sswitch_7
        0x273d6b56 -> :sswitch_6
        0x3374d27d -> :sswitch_5
        0x36f5967b -> :sswitch_4
        0x3a695435 -> :sswitch_3
        0x4e7b79b4 -> :sswitch_2
        0x585ef804 -> :sswitch_1
        0x71a3adf4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getCompilationReasonTronValue(Ljava/lang/String;)I
    .locals 11
    .param p0, "compilationReason"    # Ljava/lang/String;

    .line 604
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "install"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v0, "install-dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "inactive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v0, "boot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_5
    const-string v0, "first-boot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "shared"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_8
    const-string v0, "ab-ota"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_9
    const-string v0, "bg-dexopt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 618
    return v1

    .line 617
    :pswitch_0
    return v2

    .line 613
    :pswitch_1
    return v3

    .line 612
    :pswitch_2
    return v4

    .line 611
    :pswitch_3
    return v5

    .line 610
    :pswitch_4
    return v6

    .line 609
    :pswitch_5
    return v7

    .line 608
    :pswitch_6
    return v8

    .line 607
    :pswitch_7
    return v9

    .line 606
    :pswitch_8
    return v10

    :sswitch_data_0
    .sparse-switch
        -0x754fea3c -> :sswitch_9
        -0x54fec890 -> :sswitch_8
        -0x35db539b -> :sswitch_7
        -0x10fa53b6 -> :sswitch_6
        -0xc5e4811 -> :sswitch_5
        0x2e3af2 -> :sswitch_4
        0x1785c6b -> :sswitch_3
        0x5c4d208 -> :sswitch_2
        0x35aae5fb -> :sswitch_1
        0x74ae259b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;
    .locals 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 526
    .local v0, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isHasCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "splitCodePaths":[Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v2

    .line 532
    .local v2, "splitFlags":[I
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "splitNames":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 534
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 535
    aget v5, v2, v4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    .line 536
    aget-object v5, v1, v4

    aget-object v6, v3, v4

    invoke-static {v6}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 540
    .end local v4    # "i":I
    :cond_2
    return-object v0
.end method

.method static synthetic lambda$postError$0(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V
    .locals 3
    .param p0, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p1, "errCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 360
    :try_start_0
    invoke-interface {p0, p1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to callback after profile snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArtManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$postSuccess$1(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .locals 4
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 377
    const-string v0, "ArtManagerService"

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-interface {p1, p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onSuccess(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 380
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The snapshot FD became invalid before posting the result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :goto_0
    nop

    :goto_1
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 389
    goto :goto_2

    .line 388
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onSuccess after profile snapshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 390
    :goto_2
    return-void

    .line 388
    :goto_3
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 389
    throw v0
.end method

.method private postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "errCode"    # I

    .line 354
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;

    invoke-direct {v1, p1, p3, p2}, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;-><init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method private postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 369
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method private snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 215
    const/4 v0, 0x0

    .line 224
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 227
    goto :goto_0

    .line 225
    :catch_0
    move-exception v2

    .line 228
    :goto_0
    if-nez v0, :cond_0

    .line 229
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 230
    return-void

    .line 233
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 234
    .local v1, "pathFound":Z
    const/4 v2, 0x0

    .line 235
    .local v2, "splitName":Ljava/lang/String;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "splitCodePaths":[Ljava/lang/String;
    const/4 v4, 0x1

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    .line 237
    array-length v5, v3

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 238
    aget-object v6, v3, v5

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 239
    const/4 v1, 0x1

    .line 240
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v2, v6, v5

    .line 241
    goto :goto_2

    .line 237
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 245
    .end local v5    # "i":I
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 246
    invoke-direct {p0, p3, p1, v4}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 247
    return-void

    .line 251
    :cond_3
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 252
    .local v4, "appId":I
    if-gez v4, :cond_4

    .line 253
    const/4 v5, 0x2

    invoke-direct {p0, p3, p1, v5}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppId is -1 for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ArtManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 258
    :cond_4
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v9, v4

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 261
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .locals 8
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 338
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "BOOTCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 339
    const-string v1, "SYSTEMSERVERCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 338
    const-string v1, ":"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "classpath":Ljava/lang/String;
    const-string v3, "android"

    const-string v4, "android.prof"

    const/4 v6, -0x1

    move-object v2, p0

    move-object v5, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 345
    const-string v1, "android"

    const-string v2, "android.prof"

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method private static verifyTronLoggingConstants()V
    .locals 6

    .line 665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 666
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 667
    .local v1, "reason":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v2

    .line 668
    .local v2, "value":I
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 665
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    .restart local v1    # "reason":Ljava/lang/String;
    .restart local v2    # "value":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compilation reason not configured for TRON logging: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 674
    .end local v0    # "i":I
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clearAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 454
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 455
    .local v0, "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 456
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 457
    .local v2, "profileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/Installer;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v2    # "profileName":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 461
    .end local v0    # "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArtManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_1
    return-void
.end method

.method public compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 488
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "apkPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {p1, v3}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v3

    .line 492
    .local v3, "dataDir":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/code_cache/compiled_view.dex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, "outDexFile":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v5

    if-nez v5, :cond_1

    .line 494
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Compiling layouts in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 506
    .local v5, "callingId":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 507
    :try_start_2
    iget-object v8, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 508
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v9

    .line 507
    invoke-virtual {v8, v2, v1, v4, v9}, Lcom/android/server/pm/Installer;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 511
    :try_start_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 507
    return v8

    .line 509
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "apkPath":Ljava/lang/String;
    .end local v3    # "dataDir":Ljava/io/File;
    .end local v4    # "outDexFile":Ljava/lang/String;
    .end local v5    # "callingId":J
    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 511
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local v3    # "dataDir":Ljava/io/File;
    .restart local v4    # "outDexFile":Ljava/lang/String;
    .restart local v5    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_1
    move-exception v7

    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    nop

    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 500
    .end local v5    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_1
    :goto_0
    return v0

    .line 514
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "apkPath":Ljava/lang/String;
    .end local v3    # "dataDir":Ljava/io/File;
    .end local v4    # "outDexFile":Ljava/lang/String;
    :catchall_2
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "PackageManager"

    const-string v3, "Failed to compile layouts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    return v0
.end method

.method public dumpProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 468
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 470
    .local v0, "sharedGid":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 471
    .local v1, "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 472
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 473
    .local v3, "codePath":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 474
    .local v4, "profileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7, v4, v3}, Lcom/android/server/pm/Installer;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 476
    monitor-exit v5

    .line 471
    .end local v3    # "codePath":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 476
    .restart local v3    # "codePath":Ljava/lang/String;
    .restart local v4    # "profileName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "sharedGid":I
    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_start_2
    throw v6
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 480
    .end local v1    # "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "codePath":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    .restart local v0    # "sharedGid":I
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_0
    goto :goto_1

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "ArtManagerService"

    const-string v3, "Failed to dump profiles"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_1
    return-void
.end method

.method public isRuntimeProfilingEnabled(ILjava/lang/String;)Z
    .locals 6
    .param p1, "profileType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 315
    .local v0, "callingUid":I
    const/4 v1, 0x0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    return v1

    .line 319
    :cond_0
    const-string v2, "dalvik.vm.usejitprofiles"

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 324
    nop

    .line 326
    const-string v4, "dalvik.vm.profilebootclasspath"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 324
    const-string/jumbo v5, "persist.device_config.runtime_native_boot.profilebootclasspath"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 327
    .local v4, "profileBootClassPath":Z
    sget-boolean v5, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v5, :cond_1

    sget-boolean v5, Landroid/os/Build;->IS_ENG:Z

    if-eqz v5, :cond_2

    .line 328
    :cond_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    nop

    .line 327
    :goto_0
    return v1

    .line 331
    .end local v4    # "profileBootClassPath":Z
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid profile type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_4
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V
    .locals 16
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "user"    # I
    .param p3, "updateReferenceProfileContent"    # Z

    .line 402
    move-object/from16 v1, p0

    move/from16 v9, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    .line 403
    .local v10, "appId":I
    if-gez v9, :cond_0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ArtManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void

    .line 407
    :cond_0
    if-gez v10, :cond_1

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid app id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ArtManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void

    .line 412
    :cond_1
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v0

    move-object v11, v0

    .line 413
    .local v11, "codePathsProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v12, v0

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_5

    .line 414
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 415
    .local v13, "codePath":Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 416
    .local v6, "profileName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 420
    .local v0, "dexMetadataPath":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 421
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 422
    .local v2, "dexMetadata":Ljava/io/File;
    if-nez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v0, v3

    move-object v14, v0

    goto :goto_2

    .line 420
    .end local v2    # "dexMetadata":Ljava/io/File;
    :cond_3
    move-object v14, v0

    .line 424
    .end local v0    # "dexMetadataPath":Ljava/lang/String;
    .local v14, "dexMetadataPath":Ljava/lang/String;
    :goto_2
    iget-object v15, v1, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v15
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p2

    move v5, v10

    move-object v7, v13

    move-object v8, v14

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 427
    .local v0, "result":Z
    if-nez v0, :cond_4

    .line 428
    const-string v2, "ArtManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to prepare profile for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v0    # "result":Z
    :cond_4
    monitor-exit v15

    .line 413
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v13    # "codePath":Ljava/lang/String;
    .end local v14    # "dexMetadataPath":Ljava/lang/String;
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 431
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v13    # "codePath":Ljava/lang/String;
    .restart local v14    # "dexMetadataPath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v10    # "appId":I
    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "user":I
    .end local p3    # "updateReferenceProfileContent":Z
    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 435
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v11    # "codePathsProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v13    # "codePath":Ljava/lang/String;
    .end local v14    # "dexMetadataPath":Ljava/lang/String;
    .restart local v10    # "appId":I
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "user":I
    .restart local p3    # "updateReferenceProfileContent":Z
    :cond_5
    goto :goto_3

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare profile for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ArtManagerService"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_3
    return-void
.end method

.method public prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IZ)V
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "user"    # [I
    .param p3, "updateReferenceProfileContent"    # Z

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 445
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/pm/dex/ArtManagerService;->prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .locals 5
    .param p1, "profileType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 179
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/dex/ArtManagerService;->checkShellPermissions(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {p4, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 185
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 192
    .local v1, "bootImageProfile":Z
    :goto_1
    if-nez v1, :cond_2

    .line 193
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 194
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 198
    :cond_2
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/dex/ArtManagerService;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 202
    sget-boolean v2, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested snapshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ArtManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_3
    if-eqz v1, :cond_4

    .line 207
    invoke-direct {p0, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_2

    .line 209
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 211
    :goto_2
    return-void

    .line 199
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Runtime profiling is not enabled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
